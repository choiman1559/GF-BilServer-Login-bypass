.class public Lcom/tencent/tp/f;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Z
    .registers 1

    invoke-static {}, Lcom/tencent/tp/f;->b()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-static {}, Lcom/tencent/tp/f;->c()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-static {}, Lcom/tencent/tp/f;->d()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static b()Z
    .registers 2

    const-string v0, "123456"

    const-string v1, "456"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v0

    return v0
.end method

.method public static c()Z
    .registers 6

    :try_start_0
    const-string v0, "NCV1rdocMNV"

    invoke-static {v0}, Lcom/tencent/tp/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    new-instance v1, Ljava/security/spec/RSAPublicKeySpec;

    new-instance v2, Ljava/math/BigInteger;

    const-string v3, "123456"

    const/16 v4, 0x10

    invoke-direct {v2, v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v3, Ljava/math/BigInteger;

    const-string v4, "11"

    const/16 v5, 0x10

    invoke-direct {v3, v4, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-direct {v1, v2, v3}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const-string v2, "MNV"

    invoke-static {v2}, Lcom/tencent/tp/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    const-string v1, "367"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->update([B)V

    const-string v1, "123098"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->verify([B)Z
    :try_end_44
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_44} :catch_4d
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_44} :catch_4b
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_44} :catch_49
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_44} :catch_46

    move-result v0

    :goto_45
    return v0

    :catch_46
    move-exception v0

    :goto_47
    const/4 v0, 0x0

    goto :goto_45

    :catch_49
    move-exception v0

    goto :goto_47

    :catch_4b
    move-exception v0

    goto :goto_47

    :catch_4d
    move-exception v0

    goto :goto_47
.end method

.method public static d()Z
    .registers 6

    :try_start_0
    const-string v0, "NCV1rdocMNV"

    invoke-static {v0}, Lcom/tencent/tp/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    new-instance v1, Ljava/security/spec/RSAPublicKeySpec;

    new-instance v2, Ljava/math/BigInteger;

    const-string v3, "12345678"

    const/16 v4, 0x10

    invoke-direct {v2, v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v3, Ljava/math/BigInteger;

    const-string v4, "11"

    const/16 v5, 0x10

    invoke-direct {v3, v4, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-direct {v1, v2, v3}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const-string v2, "MNV"

    invoke-static {v2}, Lcom/tencent/tp/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    const-string v1, "367"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->update([B)V

    const-string v1, "123908"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Ljava/security/Signature;->verify([BII)Z
    :try_end_46
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_46} :catch_4f
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_46} :catch_4d
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_46} :catch_4b
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_46} :catch_48

    move-result v0

    :goto_47
    return v0

    :catch_48
    move-exception v0

    :goto_49
    const/4 v0, 0x0

    goto :goto_47

    :catch_4b
    move-exception v0

    goto :goto_49

    :catch_4d
    move-exception v0

    goto :goto_49

    :catch_4f
    move-exception v0

    goto :goto_49
.end method
