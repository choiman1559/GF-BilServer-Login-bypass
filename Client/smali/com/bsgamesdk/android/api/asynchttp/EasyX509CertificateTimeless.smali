.class public Lcom/bsgamesdk/android/api/asynchttp/EasyX509CertificateTimeless;
.super Ljava/security/cert/X509Certificate;


# instance fields
.field private a:Ljava/security/cert/X509Certificate;


# direct methods
.method public constructor <init>(Ljava/security/cert/X509Certificate;)V
    .registers 2

    invoke-direct {p0}, Ljava/security/cert/X509Certificate;-><init>()V

    iput-object p1, p0, Lcom/bsgamesdk/android/api/asynchttp/EasyX509CertificateTimeless;->a:Ljava/security/cert/X509Certificate;

    return-void
.end method

.method public static getTimelessX509CertificateTimeless(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    :cond_3
    :goto_3
    return-object p0

    :cond_4
    instance-of v0, p0, Lcom/bsgamesdk/android/api/asynchttp/EasyX509CertificateTimeless;

    if-nez v0, :cond_3

    new-instance v0, Lcom/bsgamesdk/android/api/asynchttp/EasyX509CertificateTimeless;

    invoke-direct {v0, p0}, Lcom/bsgamesdk/android/api/asynchttp/EasyX509CertificateTimeless;-><init>(Ljava/security/cert/X509Certificate;)V

    move-object p0, v0

    goto :goto_3
.end method

.method public static getTimelessX509CertificatesTimeless([Ljava/security/cert/X509Certificate;)[Ljava/security/cert/X509Certificate;
    .registers 4

    if-nez p0, :cond_3

    :goto_2
    return-object p0

    :cond_3
    array-length v0, p0

    new-array v1, v0, [Ljava/security/cert/X509Certificate;

    const/4 v0, 0x0

    :goto_7
    array-length v2, p0

    if-ge v0, v2, :cond_15

    aget-object v2, p0, v0

    invoke-static {v2}, Lcom/bsgamesdk/android/api/asynchttp/EasyX509CertificateTimeless;->getTimelessX509CertificateTimeless(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_15
    move-object p0, v1

    goto :goto_2
.end method


# virtual methods
.method public checkValidity()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateExpiredException;,
            Ljava/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bsgamesdk/android/api/asynchttp/EasyX509CertificateTimeless;->a:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->checkValidity()V

    return-void
.end method

.method public checkValidity(Ljava/util/Date;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateExpiredException;,
            Ljava/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bsgamesdk/android/api/asynchttp/EasyX509CertificateTimeless;->a:Ljava/security/cert/X509Certificate;

    iget-object v1, p0, Lcom/bsgamesdk/android/api/asynchttp/EasyX509CertificateTimeless;->a:Ljava/security/cert/X509Certificate;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V

    return-void
.end method

.method public getBasicConstraints()I
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/api/asynchttp/EasyX509CertificateTimeless;->a:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    move-result v0

    return v0
.end method

.method public getCriticalExtensionOIDs()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bsgamesdk/android/api/asynchttp/EasyX509CertificateTimeless;->a:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bsgamesdk/android/api/asynchttp/EasyX509CertificateTimeless;->a:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public getExtensionValue(Ljava/lang/String;)[B
    .registers 3

    iget-object v0, p0, Lcom/bsgamesdk/android/api/asynchttp/EasyX509CertificateTimeless;->a:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, p1}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getIssuerDN()Ljava/security/Principal;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/api/asynchttp/EasyX509CertificateTimeless;->a:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public getIssuerUniqueID()[Z
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/api/asynchttp/EasyX509CertificateTimeless;->a:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerUniqueID()[Z

    move-result-object v0

    return-object v0
.end method

.method public getKeyUsage()[Z
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/api/asynchttp/EasyX509CertificateTimeless;->a:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v0

    return-object v0
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bsgamesdk/android/api/asynchttp/EasyX509CertificateTimeless;->a:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getNonCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getNotAfter()Ljava/util/Date;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/api/asynchttp/EasyX509CertificateTimeless;->a:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getNotBefore()Ljava/util/Date;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/api/asynchttp/EasyX509CertificateTimeless;->a:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/api/asynchttp/EasyX509CertificateTimeless;->a:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    return-object v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/api/asynchttp/EasyX509CertificateTimeless;->a:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getSigAlgName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/api/asynchttp/EasyX509CertificateTimeless;->a:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSigAlgOID()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/api/asynchttp/EasyX509CertificateTimeless;->a:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSigAlgOID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSigAlgParams()[B
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/api/asynchttp/EasyX509CertificateTimeless;->a:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSigAlgParams()[B

    move-result-object v0

    return-object v0
.end method

.method public getSignature()[B
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/api/asynchttp/EasyX509CertificateTimeless;->a:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSignature()[B

    move-result-object v0

    return-object v0
.end method

.method public getSubjectDN()Ljava/security/Principal;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/api/asynchttp/EasyX509CertificateTimeless;->a:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public getSubjectUniqueID()[Z
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/api/asynchttp/EasyX509CertificateTimeless;->a:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectUniqueID()[Z

    move-result-object v0

    return-object v0
.end method

.method public getTBSCertificate()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bsgamesdk/android/api/asynchttp/EasyX509CertificateTimeless;->a:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getTBSCertificate()[B

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/api/asynchttp/EasyX509CertificateTimeless;->a:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getVersion()I

    move-result v0

    return v0
.end method

.method public hasUnsupportedCriticalExtension()Z
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/api/asynchttp/EasyX509CertificateTimeless;->a:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->hasUnsupportedCriticalExtension()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/api/asynchttp/EasyX509CertificateTimeless;->a:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public verify(Ljava/security/PublicKey;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bsgamesdk/android/api/asynchttp/EasyX509CertificateTimeless;->a:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, p1}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    return-void
.end method

.method public verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bsgamesdk/android/api/asynchttp/EasyX509CertificateTimeless;->a:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, p1, p2}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V

    return-void
.end method
