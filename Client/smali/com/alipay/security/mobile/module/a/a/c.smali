.class public final Lcom/alipay/security/mobile/module/a/a/c;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "idnjfhncnsfuobcnt847y929o449u474w7j3h22aoddc98euk#%&&)*&^%#"

    sput-object v0, Lcom/alipay/security/mobile/module/a/a/c;->a:Ljava/lang/String;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .registers 3

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    const/4 v0, 0x0

    :goto_6
    sget-object v2, Lcom/alipay/security/mobile/module/a/a/c;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_2a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/alipay/security/mobile/module/a/a/c;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x4

    goto :goto_6

    :cond_2a
    return-object v1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    :try_start_0
    invoke-static {p0}, Lcom/alipay/security/mobile/module/a/a/c;->a(Ljava/lang/String;)Ljavax/crypto/spec/PBEKeySpec;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {}, Lcom/alipay/security/mobile/module/a/a/c;->b()[B

    move-result-object v2

    const-string v3, "PBKDF2WithHmacSHA1"

    invoke-static {v3}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v3

    invoke-interface {v3}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v3

    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    const-string v5, "AES"

    invoke-direct {v4, v3, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v3, "AES/CBC/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    const/4 v5, 0x1

    new-instance v6, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v6, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v3, v5, v4, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v0}, Ljavax/crypto/spec/PBEKeySpec;->getSalt()[B

    move-result-object v0

    array-length v2, v0

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result v4

    add-int/2addr v2, v4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Ljavax/crypto/Cipher;->doFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/module/a/a/c;->a([B)Ljava/lang/String;
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_50} :catch_52

    move-result-object v0

    :goto_51
    return-object v0

    :catch_52
    move-exception v0

    const/4 v0, 0x0

    goto :goto_51
.end method

.method private static a([B)Ljava/lang/String;
    .registers 6

    if-nez p0, :cond_5

    const-string v0, ""

    :goto_4
    return-object v0

    :cond_5
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v0, 0x0

    :goto_e
    array-length v2, p0

    if-ge v0, v2, :cond_2f

    aget-byte v2, p0, v0

    const-string v3, "0123456789ABCDEF"

    shr-int/lit8 v4, v2, 0x4

    and-int/lit8 v4, v4, 0xf

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "0123456789ABCDEF"

    and-int/lit8 v2, v2, 0xf

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_2f
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method private static a(Ljava/lang/String;)Ljavax/crypto/spec/PBEKeySpec;
    .registers 9

    const/4 v7, 0x0

    const/4 v6, 0x1

    new-instance v0, Ljava/lang/String;

    const-string v1, "amF2YS5zZWN1cml0eS5TZWN1cmVSYW5kb20="

    invoke-static {v1}, Lcom/alipay/security/mobile/module/a/a/a;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x10

    new-array v2, v2, [B

    const-string v3, "nextBytes"

    new-array v4, v6, [Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v2, v3, v7

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/16 v3, 0xa

    const/16 v4, 0x80

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    return-object v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const/4 v1, 0x0

    const/16 v7, 0x10

    :try_start_3
    invoke-static {p0}, Lcom/alipay/security/mobile/module/a/a/c;->a(Ljava/lang/String;)Ljavax/crypto/spec/PBEKeySpec;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v3, v0, 0x2

    new-array v4, v3, [B

    const/4 v0, 0x0

    :goto_10
    if-ge v0, v3, :cond_2b

    mul-int/lit8 v5, v0, 0x2

    mul-int/lit8 v6, v0, 0x2

    add-int/lit8 v6, v6, 0x2

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->byteValue()B

    move-result v5

    aput-byte v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_2b
    invoke-static {}, Lcom/alipay/security/mobile/module/a/a/c;->b()[B

    move-result-object v0

    array-length v3, v4

    if-gt v3, v7, :cond_3e

    move-object v2, v1

    :goto_33
    if-nez v2, :cond_80

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0

    :catch_3b
    move-exception v0

    :cond_3c
    move-object v0, v1

    :goto_3d
    return-object v0

    :cond_3e
    new-instance v3, Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {v2}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object v2

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    const/16 v6, 0xa

    const/16 v7, 0x80

    invoke-direct {v3, v2, v5, v6, v7}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    const-string v2, "PBKDF2WithHmacSHA1"

    invoke-static {v2}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v2

    invoke-interface {v2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v2

    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v5, "AES"

    invoke-direct {v3, v2, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v2, "AES/CBC/PKCS5Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    const/4 v5, 0x2

    new-instance v6, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v6, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v2, v5, v3, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    const/16 v0, 0x10

    array-length v3, v4

    add-int/lit8 v3, v3, -0x10

    invoke-virtual {v2, v4, v0, v3}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v0

    move-object v2, v0

    goto :goto_33

    :cond_80
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Lcom/alipay/security/mobile/module/a/a;->c(Ljava/lang/String;)Z
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_88} :catch_3b

    move-result v2

    if-eqz v2, :cond_3c

    goto :goto_3d
.end method

.method private static b()[B
    .registers 4

    :try_start_0
    const-string v1, "AsAgAtA5A6AdAgABABACADAfAsAdAfAsAgAaAgA3A5A6=8=0"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_8
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x2

    goto :goto_8

    :cond_18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/module/a/a/a;->a(Ljava/lang/String;)[B
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_21

    move-result-object v0

    :goto_20
    return-object v0

    :catch_21
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_20
.end method
