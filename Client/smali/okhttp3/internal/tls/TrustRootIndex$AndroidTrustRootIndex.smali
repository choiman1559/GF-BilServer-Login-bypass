.class final Lokhttp3/internal/tls/TrustRootIndex$AndroidTrustRootIndex;
.super Lokhttp3/internal/tls/TrustRootIndex;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/tls/TrustRootIndex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AndroidTrustRootIndex"
.end annotation


# instance fields
.field private final findByIssuerAndSignatureMethod:Ljava/lang/reflect/Method;

.field private final trustManager:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method constructor <init>(Ljavax/net/ssl/X509TrustManager;Ljava/lang/reflect/Method;)V
    .registers 3

    invoke-direct {p0}, Lokhttp3/internal/tls/TrustRootIndex;-><init>()V

    iput-object p2, p0, Lokhttp3/internal/tls/TrustRootIndex$AndroidTrustRootIndex;->findByIssuerAndSignatureMethod:Ljava/lang/reflect/Method;

    iput-object p1, p0, Lokhttp3/internal/tls/TrustRootIndex$AndroidTrustRootIndex;->trustManager:Ljavax/net/ssl/X509TrustManager;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    instance-of v2, p1, Lokhttp3/internal/tls/TrustRootIndex$AndroidTrustRootIndex;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Lokhttp3/internal/tls/TrustRootIndex$AndroidTrustRootIndex;

    iget-object v2, p0, Lokhttp3/internal/tls/TrustRootIndex$AndroidTrustRootIndex;->trustManager:Ljavax/net/ssl/X509TrustManager;

    iget-object v3, p1, Lokhttp3/internal/tls/TrustRootIndex$AndroidTrustRootIndex;->trustManager:Ljavax/net/ssl/X509TrustManager;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, p0, Lokhttp3/internal/tls/TrustRootIndex$AndroidTrustRootIndex;->findByIssuerAndSignatureMethod:Ljava/lang/reflect/Method;

    iget-object v3, p1, Lokhttp3/internal/tls/TrustRootIndex$AndroidTrustRootIndex;->findByIssuerAndSignatureMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_21
    move v0, v1

    goto :goto_4
.end method

.method public findByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .registers 7

    const/4 v1, 0x0

    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/tls/TrustRootIndex$AndroidTrustRootIndex;->findByIssuerAndSignatureMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lokhttp3/internal/tls/TrustRootIndex$AndroidTrustRootIndex;->trustManager:Ljavax/net/ssl/X509TrustManager;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/TrustAnchor;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;
    :try_end_16
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_16} :catch_1a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_16} :catch_21

    move-result-object v0

    :goto_17
    return-object v0

    :cond_18
    move-object v0, v1

    goto :goto_17

    :catch_1a
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :catch_21
    move-exception v0

    move-object v0, v1

    goto :goto_17
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lokhttp3/internal/tls/TrustRootIndex$AndroidTrustRootIndex;->trustManager:Ljavax/net/ssl/X509TrustManager;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lokhttp3/internal/tls/TrustRootIndex$AndroidTrustRootIndex;->findByIssuerAndSignatureMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    return v0
.end method
