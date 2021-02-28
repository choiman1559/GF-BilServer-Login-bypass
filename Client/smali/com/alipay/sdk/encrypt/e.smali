.class public Lcom/alipay/sdk/encrypt/e;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "RSA"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 9

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "RSA"

    invoke-static {v1, p1}, Lcom/alipay/sdk/encrypt/e;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v1

    const-string v2, "RSA/ECB/PKCS1Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    const/4 v2, 0x1

    invoke-virtual {v5, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v5}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v3

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_20} :catch_47
    .catchall {:try_start_1 .. :try_end_20} :catchall_57

    const/4 v1, 0x0

    move v4, v1

    :goto_22
    :try_start_22
    array-length v1, v6

    if-ge v4, v1, :cond_38

    array-length v1, v6

    sub-int/2addr v1, v4

    if-ge v1, v3, :cond_36

    array-length v1, v6

    sub-int/2addr v1, v4

    :goto_2b
    invoke-virtual {v5, v6, v4, v1}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    add-int v1, v4, v3

    move v4, v1

    goto :goto_22

    :cond_36
    move v1, v3

    goto :goto_2b

    :cond_38
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_3b} :catch_67
    .catchall {:try_start_22 .. :try_end_3b} :catchall_65

    move-result-object v0

    if-eqz v2, :cond_41

    :try_start_3e
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_42

    :cond_41
    :goto_41
    return-object v0

    :catch_42
    move-exception v1

    invoke-static {v1}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V

    goto :goto_41

    :catch_47
    move-exception v1

    move-object v2, v0

    :goto_49
    :try_start_49
    invoke-static {v1}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_65

    if-eqz v2, :cond_41

    :try_start_4e
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_52

    goto :goto_41

    :catch_52
    move-exception v1

    invoke-static {v1}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V

    goto :goto_41

    :catchall_57
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_5a
    if-eqz v2, :cond_5f

    :try_start_5c
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_60

    :cond_5f
    :goto_5f
    throw v0

    :catch_60
    move-exception v1

    invoke-static {v1}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V

    goto :goto_5f

    :catchall_65
    move-exception v0

    goto :goto_5a

    :catch_67
    move-exception v1

    goto :goto_49
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Ljava/security/PublicKey;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p1}, Lcom/alipay/sdk/encrypt/a;->a(Ljava/lang/String;)[B

    move-result-object v0

    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    return-object v0
.end method
