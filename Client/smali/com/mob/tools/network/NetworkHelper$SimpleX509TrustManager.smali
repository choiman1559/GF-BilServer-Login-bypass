.class public final Lcom/mob/tools/network/NetworkHelper$SimpleX509TrustManager;
.super Ljava/lang/Object;
.source "NetworkHelper.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/tools/network/NetworkHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SimpleX509TrustManager"
.end annotation


# instance fields
.field private standardTrustManager:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method public constructor <init>(Ljava/security/KeyStore;)V
    .registers 9
    .param p1, "keystore"    # Ljava/security/KeyStore;

    .prologue
    const/4 v6, 0x0

    .line 1373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1376
    :try_start_4
    const-string v3, "X509"

    invoke-static {v3}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v1

    .line 1377
    .local v1, "tmf":Ljavax/net/ssl/TrustManagerFactory;
    invoke-virtual {v1, p1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 1378
    invoke-virtual {v1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v2

    .line 1379
    .local v2, "trustManagers":[Ljavax/net/ssl/TrustManager;
    if-eqz v2, :cond_16

    array-length v3, v2

    if-nez v3, :cond_43

    .line 1380
    :cond_16
    new-instance v3, Ljava/security/NoSuchAlgorithmException;

    const-string v4, "no trust manager found."

    invoke-direct {v3, v4}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1e} :catch_1e

    .line 1383
    .end local v1    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .end local v2    # "trustManagers":[Ljavax/net/ssl/TrustManager;
    :catch_1e
    move-exception v0

    .line 1384
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to initialize the standard trust manager: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 1385
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/mob/tools/network/NetworkHelper$SimpleX509TrustManager;->standardTrustManager:Ljavax/net/ssl/X509TrustManager;

    .line 1387
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_42
    return-void

    .line 1382
    .restart local v1    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .restart local v2    # "trustManagers":[Ljavax/net/ssl/TrustManager;
    :cond_43
    const/4 v3, 0x0

    :try_start_44
    aget-object v3, v2, v3

    check-cast v3, Ljavax/net/ssl/X509TrustManager;

    iput-object v3, p0, Lcom/mob/tools/network/NetworkHelper$SimpleX509TrustManager;->standardTrustManager:Ljavax/net/ssl/X509TrustManager;
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_4a} :catch_1e

    goto :goto_42
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 3
    .param p1, "certificates"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 1392
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 5
    .param p1, "certificates"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 1396
    if-nez p1, :cond_a

    .line 1397
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "there were no certificates."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1399
    :cond_a
    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    .line 1401
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->checkValidity()V

    .line 1407
    :goto_14
    return-void

    .line 1402
    :cond_15
    iget-object v0, p0, Lcom/mob/tools/network/NetworkHelper$SimpleX509TrustManager;->standardTrustManager:Ljavax/net/ssl/X509TrustManager;

    if-eqz v0, :cond_1f

    .line 1403
    iget-object v0, p0, Lcom/mob/tools/network/NetworkHelper$SimpleX509TrustManager;->standardTrustManager:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    goto :goto_14

    .line 1405
    :cond_1f
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "there were one more certificates but no trust manager found."

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .registers 2

    .prologue
    .line 1411
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    return-object v0
.end method
