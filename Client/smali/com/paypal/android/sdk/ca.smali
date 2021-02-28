.class public Lcom/paypal/android/sdk/ca;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/paypal/android/sdk/ca;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/paypal/android/sdk/ca;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(IZZLjava/lang/String;Ljava/lang/String;)Lokhttp3/OkHttpClient$Builder;
    .registers 9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Creating okhttp client.  networkTimeout="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isTrustAll="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", useSslPinning="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userAgent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", baseUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Lokhttp3/ConnectionSpec;

    const/4 v2, 0x0

    sget-object v3, Lokhttp3/ConnectionSpec;->MODERN_TLS:Lokhttp3/ConnectionSpec;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->connectionSpecs(Ljava/util/List;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->longValue()J

    move-result-wide v2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->longValue()J

    move-result-wide v2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->interceptors()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/paypal/android/sdk/cd;

    invoke-direct {v2, p3}, Lcom/paypal/android/sdk/cd;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez p1, :cond_74

    if-eqz p2, :cond_75

    :try_start_71
    invoke-static {v0}, Lcom/paypal/android/sdk/ca;->a(Lokhttp3/OkHttpClient$Builder;)V

    :cond_74
    :goto_74
    return-object v0

    :cond_75
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    invoke-virtual {v1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/ca;->a(Lokhttp3/OkHttpClient$Builder;[Ljavax/net/ssl/TrustManager;)V
    :try_end_88
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_71 .. :try_end_88} :catch_89
    .catch Ljava/security/KeyManagementException; {:try_start_71 .. :try_end_88} :catch_96
    .catch Ljava/security/KeyStoreException; {:try_start_71 .. :try_end_88} :catch_90
    .catch Ljava/security/cert/CertificateException; {:try_start_71 .. :try_end_88} :catch_92
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_88} :catch_94

    goto :goto_74

    :catch_89
    move-exception v0

    :goto_8a
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_90
    move-exception v0

    goto :goto_8a

    :catch_92
    move-exception v0

    goto :goto_8a

    :catch_94
    move-exception v0

    goto :goto_8a

    :catch_96
    move-exception v0

    goto :goto_8a
.end method

.method private static a(Lokhttp3/OkHttpClient$Builder;)V
    .registers 7

    const/4 v2, 0x0

    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    invoke-virtual {v3, v2, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    invoke-static {}, Lcom/paypal/android/sdk/cb;->a()Ljava/io/InputStream;

    move-result-object v4

    :try_start_16
    invoke-static {}, Lcom/paypal/android/sdk/cb;->a()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/cert/CertificateFactory;->generateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_22
    :goto_22
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/Certificate;

    instance-of v2, v1, Ljava/security/cert/X509Certificate;

    if-eqz v2, :cond_22

    move-object v0, v1

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v2

    invoke-interface {v2}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2, v1}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    :try_end_41
    .catchall {:try_start_16 .. :try_end_41} :catchall_42

    goto :goto_22

    :catchall_42
    move-exception v1

    :try_start_43
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_61
    .catch Ljava/lang/NullPointerException; {:try_start_43 .. :try_end_46} :catch_63

    :goto_46
    throw v1

    :cond_47
    :try_start_47
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    invoke-virtual {v1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/paypal/android/sdk/ca;->a(Lokhttp3/OkHttpClient$Builder;[Ljavax/net/ssl/TrustManager;)V
    :try_end_59
    .catchall {:try_start_47 .. :try_end_59} :catchall_42

    :try_start_59
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_5d
    .catch Ljava/lang/NullPointerException; {:try_start_59 .. :try_end_5c} :catch_5f

    :goto_5c
    return-void

    :catch_5d
    move-exception v1

    goto :goto_5c

    :catch_5f
    move-exception v1

    goto :goto_5c

    :catch_61
    move-exception v2

    goto :goto_46

    :catch_63
    move-exception v2

    goto :goto_46
.end method

.method private static a(Lokhttp3/OkHttpClient$Builder;[Ljavax/net/ssl/TrustManager;)V
    .registers 5

    const/4 v2, 0x0

    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    aget-object v0, p1, v2

    instance-of v0, v0, Ljavax/net/ssl/X509TrustManager;

    if-nez v0, :cond_24

    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected number of trust managers:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    aget-object v0, p1, v2

    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    new-instance v1, Lcom/paypal/android/sdk/cc;

    invoke-direct {v1, v0}, Lcom/paypal/android/sdk/cc;-><init>(Ljavax/net/ssl/TrustManager;)V

    invoke-virtual {p0, v1, v0}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    return-void
.end method
