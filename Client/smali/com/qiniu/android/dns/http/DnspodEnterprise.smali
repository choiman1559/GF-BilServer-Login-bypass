.class public final Lcom/qiniu/android/dns/http/DnspodEnterprise;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qiniu/android/dns/IResolver;


# instance fields
.field private final id:Ljava/lang/String;

.field private final ip:Ljava/lang/String;

.field private final key:Ljavax/crypto/spec/SecretKeySpec;

.field private final timeout:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string v0, "119.29.29.29"

    invoke-direct {p0, p1, p2, v0}, Lcom/qiniu/android/dns/http/DnspodEnterprise;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const/16 v0, 0xa

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/qiniu/android/dns/http/DnspodEnterprise;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qiniu/android/dns/http/DnspodEnterprise;->id:Ljava/lang/String;

    iput-object p3, p0, Lcom/qiniu/android/dns/http/DnspodEnterprise;->ip:Ljava/lang/String;

    iput p4, p0, Lcom/qiniu/android/dns/http/DnspodEnterprise;->timeout:I

    :try_start_9
    const-string v0, "utf-8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9 .. :try_end_e} :catch_19

    move-result-object v0

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "DES"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v1, p0, Lcom/qiniu/android/dns/http/DnspodEnterprise;->key:Ljavax/crypto/spec/SecretKeySpec;

    return-void

    :catch_19
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private decrypt(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    :try_start_0
    const-string v0, "DES/ECB/PKCS5Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/qiniu/android/dns/http/DnspodEnterprise;->key:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-static {v1}, Lcom/qiniu/android/dns/util/Hex;->decodeHex([C)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    new-instance v0, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_22

    :goto_21
    return-object v0

    :catch_22
    move-exception v0

    const-string v0, ""

    goto :goto_21
.end method

.method private encrypt(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    :try_start_0
    const-string v0, "DES/ECB/PKCS5Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/qiniu/android/dns/http/DnspodEnterprise;->key:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    const-string v1, "utf-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/qiniu/android/dns/util/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qiniu/android/dns/http/DnspodEnterprise;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_32} :catch_34

    move-result-object v0

    :goto_33
    return-object v0

    :catch_34
    move-exception v0

    const-string v0, ""

    goto :goto_33
.end method


# virtual methods
.method public resolve(Lcom/qiniu/android/dns/Domain;Lcom/qiniu/android/dns/NetworkInfo;)[Lcom/qiniu/android/dns/Record;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    new-instance v0, Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/qiniu/android/dns/http/DnspodEnterprise;->ip:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/d?ttl=1&dn="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p1, Lcom/qiniu/android/dns/Domain;->domain:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/qiniu/android/dns/http/DnspodEnterprise;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "&id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/qiniu/android/dns/http/DnspodEnterprise;->id:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const/16 v3, 0xbb8

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget v3, p0, Lcom/qiniu/android/dns/http/DnspodEnterprise;->timeout:I

    mul-int/lit16 v3, v3, 0x3e8

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v5, 0xc8

    if-eq v3, v5, :cond_55

    move-object v0, v4

    :goto_54
    return-object v0

    :cond_55
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v3

    if-lez v3, :cond_5f

    const/16 v5, 0x400

    if-le v3, v5, :cond_61

    :cond_5f
    move-object v0, v4

    goto :goto_54

    :cond_61
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    new-array v3, v3, [B

    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v5

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    if-gtz v5, :cond_72

    move-object v0, v4

    goto :goto_54

    :cond_72
    new-instance v0, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-direct {v0, v3, v1, v5, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-direct {p0, v0}, Lcom/qiniu/android/dns/http/DnspodEnterprise;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v5, 0x2

    if-eq v3, v5, :cond_8b

    move-object v0, v4

    goto :goto_54

    :cond_8b
    const/4 v3, 0x1

    :try_start_8c
    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_91} :catch_9f

    move-result v3

    aget-object v0, v0, v1

    const-string v5, ";"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v0, v8

    if-nez v0, :cond_a2

    move-object v0, v4

    goto :goto_54

    :catch_9f
    move-exception v0

    move-object v0, v4

    goto :goto_54

    :cond_a2
    array-length v0, v8

    new-array v7, v0, [Lcom/qiniu/android/dns/Record;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v10, 0x3e8

    div-long/2addr v4, v10

    move v6, v1

    :goto_ad
    array-length v0, v8

    if-ge v6, v0, :cond_bd

    new-instance v0, Lcom/qiniu/android/dns/Record;

    aget-object v1, v8, v6

    invoke-direct/range {v0 .. v5}, Lcom/qiniu/android/dns/Record;-><init>(Ljava/lang/String;IIJ)V

    aput-object v0, v7, v6

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_ad

    :cond_bd
    move-object v0, v7

    goto :goto_54
.end method
