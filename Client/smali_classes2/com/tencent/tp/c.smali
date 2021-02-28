.class public Lcom/tencent/tp/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/security/cert/X509Certificate;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/tp/c;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/tencent/tp/c;->b:Ljava/lang/String;

    return-void
.end method

.method private d()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tp/c;->c:Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-direct {p0}, Lcom/tencent/tp/c;->e()V

    goto :goto_4
.end method

.method private e()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tp/c;->b:Ljava/lang/String;

    if-nez v0, :cond_f

    invoke-static {}, Lcom/tencent/tp/v;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tp/c;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/tp/c;->b:Ljava/lang/String;

    if-nez v0, :cond_f

    :cond_e
    :goto_e
    return-void

    :cond_f
    iget-object v0, p0, Lcom/tencent/tp/c;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tp/c;->b:Ljava/lang/String;

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v0, :cond_e

    array-length v1, v0

    if-lez v1, :cond_e

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    const-string v1, "S.509"

    invoke-static {v1}, Lcom/tencent/tp/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    iput-object v0, p0, Lcom/tencent/tp/c;->c:Ljava/security/cert/X509Certificate;

    goto :goto_e
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 6

    const/4 v1, 0x0

    const/4 v4, -0x1

    :try_start_2
    invoke-direct {p0}, Lcom/tencent/tp/c;->d()V

    iget-object v0, p0, Lcom/tencent/tp/c;->c:Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/tencent/tp/c;->c:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2c

    const-string v3, "MNV"

    invoke-static {v3}, Lcom/tencent/tp/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v4, :cond_2c

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    invoke-interface {v0}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2b
    return-object v0

    :cond_2c
    if-eqz v2, :cond_4c

    const-string v3, "YNV"

    invoke-static {v3}, Lcom/tencent/tp/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v4, :cond_4c

    check-cast v0, Ljava/security/interfaces/DSAPublicKey;

    invoke-interface {v0}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_47} :catch_49

    move-result-object v0

    goto :goto_2b

    :catch_49
    move-exception v0

    move-object v0, v1

    goto :goto_2b

    :cond_4c
    move-object v0, v1

    goto :goto_2b
.end method

.method public b()Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/tencent/tp/c;->d()V

    iget-object v1, p0, Lcom/tencent/tp/c;->c:Ljava/security/cert/X509Certificate;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/tencent/tp/c;->c:Ljava/security/cert/X509Certificate;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v1

    invoke-interface {v1}, Ljava/security/Principal;->toString()Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_11} :catch_13

    move-result-object v0

    :cond_12
    :goto_12
    return-object v0

    :catch_13
    move-exception v1

    goto :goto_12
.end method

.method public c()Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/tencent/tp/c;->d()V

    iget-object v1, p0, Lcom/tencent/tp/c;->c:Ljava/security/cert/X509Certificate;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/tencent/tp/c;->c:Ljava/security/cert/X509Certificate;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v1

    invoke-interface {v1}, Ljava/security/Principal;->toString()Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_11} :catch_13

    move-result-object v0

    :cond_12
    :goto_12
    return-object v0

    :catch_13
    move-exception v1

    goto :goto_12
.end method
