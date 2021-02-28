.class public final Lcom/qiniu/android/dns/http/DnspodFree;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qiniu/android/dns/IResolver;


# instance fields
.field private final ip:Ljava/lang/String;

.field private final timeout:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "119.29.29.29"

    invoke-direct {p0, v0}, Lcom/qiniu/android/dns/http/DnspodFree;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/16 v0, 0xa

    invoke-direct {p0, p1, v0}, Lcom/qiniu/android/dns/http/DnspodFree;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qiniu/android/dns/http/DnspodFree;->ip:Ljava/lang/String;

    iput p2, p0, Lcom/qiniu/android/dns/http/DnspodFree;->timeout:I

    return-void
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

    iget-object v5, p0, Lcom/qiniu/android/dns/http/DnspodFree;->ip:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/d?ttl=1&dn="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p1, Lcom/qiniu/android/dns/Domain;->domain:Ljava/lang/String;

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

    iget v3, p0, Lcom/qiniu/android/dns/http/DnspodFree;->timeout:I

    mul-int/lit16 v3, v3, 0x3e8

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v5, 0xc8

    if-eq v3, v5, :cond_45

    move-object v0, v4

    :goto_44
    return-object v0

    :cond_45
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v3

    if-lez v3, :cond_4f

    const/16 v5, 0x400

    if-le v3, v5, :cond_51

    :cond_4f
    move-object v0, v4

    goto :goto_44

    :cond_51
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    new-array v3, v3, [B

    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v5

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    if-gtz v5, :cond_62

    move-object v0, v4

    goto :goto_44

    :cond_62
    new-instance v0, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-direct {v0, v3, v1, v5, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v5, 0x2

    if-eq v3, v5, :cond_77

    move-object v0, v4

    goto :goto_44

    :cond_77
    const/4 v3, 0x1

    :try_start_78
    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_7d} :catch_8b

    move-result v3

    aget-object v0, v0, v1

    const-string v5, ";"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v0, v8

    if-nez v0, :cond_8e

    move-object v0, v4

    goto :goto_44

    :catch_8b
    move-exception v0

    move-object v0, v4

    goto :goto_44

    :cond_8e
    array-length v0, v8

    new-array v7, v0, [Lcom/qiniu/android/dns/Record;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v10, 0x3e8

    div-long/2addr v4, v10

    move v6, v1

    :goto_99
    array-length v0, v8

    if-ge v6, v0, :cond_a9

    new-instance v0, Lcom/qiniu/android/dns/Record;

    aget-object v1, v8, v6

    invoke-direct/range {v0 .. v5}, Lcom/qiniu/android/dns/Record;-><init>(Ljava/lang/String;IIJ)V

    aput-object v0, v7, v6

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_99

    :cond_a9
    move-object v0, v7

    goto :goto_44
.end method
