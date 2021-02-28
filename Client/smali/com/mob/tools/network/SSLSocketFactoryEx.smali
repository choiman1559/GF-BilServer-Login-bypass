.class public Lcom/mob/tools/network/SSLSocketFactoryEx;
.super Lorg/apache/http/conn/ssl/SSLSocketFactory;
.source "SSLSocketFactoryEx.java"


# instance fields
.field sslContext:Ljavax/net/ssl/SSLContext;


# direct methods
.method public constructor <init>(Ljava/security/KeyStore;)V
    .registers 6
    .param p1, "truststore"    # Ljava/security/KeyStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 22
    invoke-direct {p0, p1}, Lorg/apache/http/conn/ssl/SSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    .line 18
    const-string v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    iput-object v1, p0, Lcom/mob/tools/network/SSLSocketFactoryEx;->sslContext:Ljavax/net/ssl/SSLContext;

    .line 23
    const/4 v1, 0x1

    new-array v0, v1, [Ljavax/net/ssl/TrustManager;

    const/4 v1, 0x0

    new-instance v2, Lcom/mob/tools/network/NetworkHelper$SimpleX509TrustManager;

    invoke-direct {v2, v3}, Lcom/mob/tools/network/NetworkHelper$SimpleX509TrustManager;-><init>(Ljava/security/KeyStore;)V

    aput-object v2, v0, v1

    .line 24
    .local v0, "trustManager":[Ljavax/net/ssl/TrustManager;
    iget-object v1, p0, Lcom/mob/tools/network/SSLSocketFactoryEx;->sslContext:Ljavax/net/ssl/SSLContext;

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v3, v0, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 25
    return-void
.end method


# virtual methods
.method public allowAllHostnameVerifier()V
    .registers 2

    .prologue
    .line 39
    sget-object v0, Lcom/mob/tools/network/SSLSocketFactoryEx;->STRICT_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {p0, v0}, Lcom/mob/tools/network/SSLSocketFactoryEx;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 40
    return-void
.end method

.method public createSocket()Ljava/net/Socket;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/mob/tools/network/SSLSocketFactoryEx;->sslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .registers 6
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "autoClose"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lcom/mob/tools/network/SSLSocketFactoryEx;->sslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method
