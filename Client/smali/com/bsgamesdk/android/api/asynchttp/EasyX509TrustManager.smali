.class public Lcom/bsgamesdk/android/api/asynchttp/EasyX509TrustManager;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# instance fields
.field private a:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method public constructor <init>(Ljava/security/KeyStore;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bsgamesdk/android/api/asynchttp/EasyX509TrustManager;->a:Ljavax/net/ssl/X509TrustManager;

    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    array-length v1, v0

    if-nez v1, :cond_20

    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    const-string v1, "no trust manager found"

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    iput-object v0, p0, Lcom/bsgamesdk/android/api/asynchttp/EasyX509TrustManager;->a:Ljavax/net/ssl/X509TrustManager;

    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bsgamesdk/android/api/asynchttp/EasyX509TrustManager;->a:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    if-eqz p1, :cond_d

    :try_start_2
    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->checkValidity()V

    :goto_c
    return-void

    :cond_d
    invoke-static {p1}, Lcom/bsgamesdk/android/api/asynchttp/EasyX509CertificateTimeless;->getTimelessX509CertificatesTimeless([Ljava/security/cert/X509Certificate;)[Ljava/security/cert/X509Certificate;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/api/asynchttp/EasyX509TrustManager;->a:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v1, v0, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_16} :catch_17

    goto :goto_c

    :catch_17
    move-exception v0

    goto :goto_c
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/api/asynchttp/EasyX509TrustManager;->a:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method
