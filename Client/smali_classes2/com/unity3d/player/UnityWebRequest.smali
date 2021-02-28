.class Lcom/unity3d/player/UnityWebRequest;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/Map;

.field private e:I

.field private f:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v0

    if-nez v0, :cond_e

    new-instance v0, Ljava/net/CookieManager;

    invoke-direct {v0}, Ljava/net/CookieManager;-><init>()V

    invoke-static {v0}, Ljava/net/CookieHandler;->setDefault(Ljava/net/CookieHandler;)V

    :cond_e
    return-void
.end method

.method constructor <init>(JLjava/lang/String;Ljava/util/Map;Ljava/lang/String;I)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/unity3d/player/UnityWebRequest;->a:J

    iput-object p5, p0, Lcom/unity3d/player/UnityWebRequest;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/unity3d/player/UnityWebRequest;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/unity3d/player/UnityWebRequest;->d:Ljava/util/Map;

    iput p6, p0, Lcom/unity3d/player/UnityWebRequest;->e:I

    return-void
.end method

.method private static native contentLengthCallback(JI)V
.end method

.method private static native downloadCallback(JLjava/nio/ByteBuffer;I)Z
.end method

.method private static native errorCallback(JILjava/lang/String;)V
.end method

.method private hasTimedOut()Z
    .registers 7

    const/4 v0, 0x0

    iget v1, p0, Lcom/unity3d/player/UnityWebRequest;->e:I

    if-gtz v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/unity3d/player/UnityWebRequest;->f:J

    sub-long/2addr v2, v4

    iget v1, p0, Lcom/unity3d/player/UnityWebRequest;->e:I

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-ltz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method private static native headerCallback(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private static native responseCodeCallback(JI)V
.end method

.method private runSafe()V
    .registers 12

    const/4 v5, 0x0

    const/4 v10, -0x1

    const/16 v9, 0xe

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/unity3d/player/UnityWebRequest;->f:J

    :try_start_a
    new-instance v4, Ljava/net/URL;

    iget-object v2, p0, Lcom/unity3d/player/UnityWebRequest;->b:Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    iget v2, p0, Lcom/unity3d/player/UnityWebRequest;->e:I

    invoke-virtual {v3, v2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    iget v2, p0, Lcom/unity3d/player/UnityWebRequest;->e:I

    invoke-virtual {v3, v2}, Ljava/net/URLConnection;->setReadTimeout(I)V

    instance-of v2, v3, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v2, :cond_30

    invoke-static {}, Lcom/unity3d/player/a;->a()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v6

    if-eqz v6, :cond_30

    move-object v0, v3

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v2, v0

    invoke-virtual {v2, v6}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_30
    .catch Ljava/net/MalformedURLException; {:try_start_a .. :try_end_30} :catch_4c
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_30} :catch_55

    :cond_30
    invoke-virtual {v4}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    const-string v6, "file"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5e

    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5e

    const-string v2, "file:// must use an absolute path"

    invoke-virtual {p0, v2}, Lcom/unity3d/player/UnityWebRequest;->malformattedUrlCallback(Ljava/lang/String;)V

    :goto_4b
    return-void

    :catch_4c
    move-exception v2

    invoke-virtual {v2}, Ljava/net/MalformedURLException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/unity3d/player/UnityWebRequest;->malformattedUrlCallback(Ljava/lang/String;)V

    goto :goto_4b

    :catch_55
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/unity3d/player/UnityWebRequest;->errorCallback(Ljava/lang/String;)V

    goto :goto_4b

    :cond_5e
    instance-of v2, v3, Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_6f

    :try_start_62
    move-object v0, v3

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    iget-object v4, p0, Lcom/unity3d/player/UnityWebRequest;->c:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V
    :try_end_6f
    .catch Ljava/net/ProtocolException; {:try_start_62 .. :try_end_6f} :catch_99

    :cond_6f
    iget-object v2, p0, Lcom/unity3d/player/UnityWebRequest;->d:Ljava/util/Map;

    if-eqz v2, :cond_a2

    iget-object v2, p0, Lcom/unity3d/player/UnityWebRequest;->d:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_7d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7d

    :catch_99
    move-exception v2

    invoke-virtual {v2}, Ljava/net/ProtocolException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/unity3d/player/UnityWebRequest;->badProtocolCallback(Ljava/lang/String;)V

    goto :goto_4b

    :cond_a2
    const/high16 v2, 0x20000

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {p0, v5}, Lcom/unity3d/player/UnityWebRequest;->uploadCallback(Ljava/nio/ByteBuffer;)I

    move-result v2

    if-lez v2, :cond_ea

    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Ljava/net/URLConnection;->setDoOutput(Z)V

    :try_start_b2
    invoke-virtual {v3}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-virtual {p0, v4}, Lcom/unity3d/player/UnityWebRequest;->uploadCallback(Ljava/nio/ByteBuffer;)I

    move-result v2

    :goto_ba
    if-lez v2, :cond_ea

    invoke-direct {p0}, Lcom/unity3d/player/UnityWebRequest;->hasTimedOut()Z

    move-result v7

    if-eqz v7, :cond_da

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    iget-wide v2, p0, Lcom/unity3d/player/UnityWebRequest;->a:J

    const/16 v4, 0xe

    const-string v5, "WebRequest timed out."

    invoke-static {v2, v3, v4, v5}, Lcom/unity3d/player/UnityWebRequest;->errorCallback(JILjava/lang/String;)V
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_ce} :catch_d0

    goto/16 :goto_4b

    :catch_d0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/unity3d/player/UnityWebRequest;->errorCallback(Ljava/lang/String;)V

    goto/16 :goto_4b

    :cond_da
    :try_start_da
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v8

    invoke-virtual {v6, v7, v8, v2}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {p0, v4}, Lcom/unity3d/player/UnityWebRequest;->uploadCallback(Ljava/nio/ByteBuffer;)I
    :try_end_e8
    .catch Ljava/lang/Exception; {:try_start_da .. :try_end_e8} :catch_d0

    move-result v2

    goto :goto_ba

    :cond_ea
    instance-of v2, v3, Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_f8

    move-object v2, v3

    check-cast v2, Ljava/net/HttpURLConnection;

    :try_start_f1
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/unity3d/player/UnityWebRequest;->responseCodeCallback(I)V
    :try_end_f8
    .catch Ljava/net/UnknownHostException; {:try_start_f1 .. :try_end_f8} :catch_17d
    .catch Ljavax/net/ssl/SSLException; {:try_start_f1 .. :try_end_f8} :catch_187
    .catch Ljava/net/SocketTimeoutException; {:try_start_f1 .. :try_end_f8} :catch_18d
    .catch Ljava/io/IOException; {:try_start_f1 .. :try_end_f8} :catch_199

    :cond_f8
    invoke-virtual {v3}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/unity3d/player/UnityWebRequest;->headerCallback(Ljava/util/Map;)V

    if-eqz v2, :cond_109

    const-string v6, "content-length"

    invoke-interface {v2, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11c

    :cond_109
    invoke-virtual {v3}, Ljava/net/URLConnection;->getContentLength()I

    move-result v6

    if-eq v6, v10, :cond_11c

    const-string v6, "content-length"

    invoke-virtual {v3}, Ljava/net/URLConnection;->getContentLength()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/unity3d/player/UnityWebRequest;->headerCallback(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11c
    if-eqz v2, :cond_126

    const-string v6, "content-type"

    invoke-interface {v2, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_135

    :cond_126
    invoke-virtual {v3}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_135

    const-string v2, "content-type"

    invoke-virtual {v3}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v2, v6}, Lcom/unity3d/player/UnityWebRequest;->headerCallback(Ljava/lang/String;Ljava/lang/String;)V

    :cond_135
    invoke-virtual {v3}, Ljava/net/URLConnection;->getContentLength()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/unity3d/player/UnityWebRequest;->contentLengthCallback(I)V

    :try_start_13c
    instance-of v2, v3, Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_1de

    move-object v0, v3

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/unity3d/player/UnityWebRequest;->responseCodeCallback(I)V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    :goto_14f
    if-nez v2, :cond_155

    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    :cond_155
    invoke-static {v2}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v2

    :goto_15d
    if-eq v2, v10, :cond_1b1

    invoke-direct {p0}, Lcom/unity3d/player/UnityWebRequest;->hasTimedOut()Z

    move-result v5

    if-eqz v5, :cond_1a3

    invoke-interface {v3}, Ljava/nio/channels/ReadableByteChannel;->close()V

    iget-wide v2, p0, Lcom/unity3d/player/UnityWebRequest;->a:J

    const/16 v4, 0xe

    const-string v5, "WebRequest timed out."

    invoke-static {v2, v3, v4, v5}, Lcom/unity3d/player/UnityWebRequest;->errorCallback(JILjava/lang/String;)V
    :try_end_171
    .catch Ljava/net/UnknownHostException; {:try_start_13c .. :try_end_171} :catch_173
    .catch Ljavax/net/ssl/SSLException; {:try_start_13c .. :try_end_171} :catch_1b6
    .catch Ljava/net/SocketTimeoutException; {:try_start_13c .. :try_end_171} :catch_1bc
    .catch Ljava/io/IOException; {:try_start_13c .. :try_end_171} :catch_1c8
    .catch Ljava/lang/Exception; {:try_start_13c .. :try_end_171} :catch_1d4

    goto/16 :goto_4b

    :catch_173
    move-exception v2

    invoke-virtual {v2}, Ljava/net/UnknownHostException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/unity3d/player/UnityWebRequest;->unknownHostCallback(Ljava/lang/String;)V

    goto/16 :goto_4b

    :catch_17d
    move-exception v2

    invoke-virtual {v2}, Ljava/net/UnknownHostException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/unity3d/player/UnityWebRequest;->unknownHostCallback(Ljava/lang/String;)V

    goto/16 :goto_4b

    :catch_187
    move-exception v2

    invoke-virtual {p0, v2}, Lcom/unity3d/player/UnityWebRequest;->sslCannotConnectCallback(Ljavax/net/ssl/SSLException;)V

    goto/16 :goto_4b

    :catch_18d
    move-exception v2

    iget-wide v4, p0, Lcom/unity3d/player/UnityWebRequest;->a:J

    invoke-virtual {v2}, Ljava/net/SocketTimeoutException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v5, v9, v2}, Lcom/unity3d/player/UnityWebRequest;->errorCallback(JILjava/lang/String;)V

    goto/16 :goto_4b

    :catch_199
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/unity3d/player/UnityWebRequest;->errorCallback(Ljava/lang/String;)V

    goto/16 :goto_4b

    :cond_1a3
    :try_start_1a3
    invoke-virtual {p0, v4, v2}, Lcom/unity3d/player/UnityWebRequest;->downloadCallback(Ljava/nio/ByteBuffer;I)Z

    move-result v2

    if-eqz v2, :cond_1b1

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-interface {v3, v4}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v2

    goto :goto_15d

    :cond_1b1
    invoke-interface {v3}, Ljava/nio/channels/ReadableByteChannel;->close()V
    :try_end_1b4
    .catch Ljava/net/UnknownHostException; {:try_start_1a3 .. :try_end_1b4} :catch_173
    .catch Ljavax/net/ssl/SSLException; {:try_start_1a3 .. :try_end_1b4} :catch_1b6
    .catch Ljava/net/SocketTimeoutException; {:try_start_1a3 .. :try_end_1b4} :catch_1bc
    .catch Ljava/io/IOException; {:try_start_1a3 .. :try_end_1b4} :catch_1c8
    .catch Ljava/lang/Exception; {:try_start_1a3 .. :try_end_1b4} :catch_1d4

    goto/16 :goto_4b

    :catch_1b6
    move-exception v2

    invoke-virtual {p0, v2}, Lcom/unity3d/player/UnityWebRequest;->sslCannotConnectCallback(Ljavax/net/ssl/SSLException;)V

    goto/16 :goto_4b

    :catch_1bc
    move-exception v2

    iget-wide v4, p0, Lcom/unity3d/player/UnityWebRequest;->a:J

    invoke-virtual {v2}, Ljava/net/SocketTimeoutException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v5, v9, v2}, Lcom/unity3d/player/UnityWebRequest;->errorCallback(JILjava/lang/String;)V

    goto/16 :goto_4b

    :catch_1c8
    move-exception v2

    iget-wide v4, p0, Lcom/unity3d/player/UnityWebRequest;->a:J

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v5, v9, v2}, Lcom/unity3d/player/UnityWebRequest;->errorCallback(JILjava/lang/String;)V

    goto/16 :goto_4b

    :catch_1d4
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/unity3d/player/UnityWebRequest;->errorCallback(Ljava/lang/String;)V

    goto/16 :goto_4b

    :cond_1de
    move-object v2, v5

    goto/16 :goto_14f
.end method

.method private static native uploadCallback(JLjava/nio/ByteBuffer;)I
.end method


# virtual methods
.method protected badProtocolCallback(Ljava/lang/String;)V
    .registers 5

    iget-wide v0, p0, Lcom/unity3d/player/UnityWebRequest;->a:J

    const/4 v2, 0x4

    invoke-static {v0, v1, v2, p1}, Lcom/unity3d/player/UnityWebRequest;->errorCallback(JILjava/lang/String;)V

    return-void
.end method

.method protected contentLengthCallback(I)V
    .registers 4

    iget-wide v0, p0, Lcom/unity3d/player/UnityWebRequest;->a:J

    invoke-static {v0, v1, p1}, Lcom/unity3d/player/UnityWebRequest;->contentLengthCallback(JI)V

    return-void
.end method

.method protected downloadCallback(Ljava/nio/ByteBuffer;I)Z
    .registers 5

    iget-wide v0, p0, Lcom/unity3d/player/UnityWebRequest;->a:J

    invoke-static {v0, v1, p1, p2}, Lcom/unity3d/player/UnityWebRequest;->downloadCallback(JLjava/nio/ByteBuffer;I)Z

    move-result v0

    return v0
.end method

.method protected errorCallback(Ljava/lang/String;)V
    .registers 5

    iget-wide v0, p0, Lcom/unity3d/player/UnityWebRequest;->a:J

    const/4 v2, 0x2

    invoke-static {v0, v1, v2, p1}, Lcom/unity3d/player/UnityWebRequest;->errorCallback(JILjava/lang/String;)V

    return-void
.end method

.method protected headerCallback(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-wide v0, p0, Lcom/unity3d/player/UnityWebRequest;->a:J

    invoke-static {v0, v1, p1, p2}, Lcom/unity3d/player/UnityWebRequest;->headerCallback(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected headerCallback(Ljava/util/Map;)V
    .registers 6

    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    return-void

    :cond_9
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_27

    const-string v1, "Status"

    :cond_27
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_31
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/unity3d/player/UnityWebRequest;->headerCallback(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_31
.end method

.method protected malformattedUrlCallback(Ljava/lang/String;)V
    .registers 5

    iget-wide v0, p0, Lcom/unity3d/player/UnityWebRequest;->a:J

    const/4 v2, 0x5

    invoke-static {v0, v1, v2, p1}, Lcom/unity3d/player/UnityWebRequest;->errorCallback(JILjava/lang/String;)V

    return-void
.end method

.method protected responseCodeCallback(I)V
    .registers 4

    iget-wide v0, p0, Lcom/unity3d/player/UnityWebRequest;->a:J

    invoke-static {v0, v1, p1}, Lcom/unity3d/player/UnityWebRequest;->responseCodeCallback(JI)V

    return-void
.end method

.method public run()V
    .registers 2

    :try_start_0
    invoke-direct {p0}, Lcom/unity3d/player/UnityWebRequest;->runSafe()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityWebRequest;->errorCallback(Ljava/lang/String;)V

    goto :goto_3
.end method

.method protected sslCannotConnectCallback(Ljavax/net/ssl/SSLException;)V
    .registers 6

    invoke-virtual {p1}, Ljavax/net/ssl/SSLException;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v0, 0x10

    :goto_6
    if-eqz p1, :cond_e

    instance-of v2, p1, Ljavax/net/ssl/SSLKeyException;

    if-eqz v2, :cond_14

    const/16 v0, 0x17

    :cond_e
    :goto_e
    iget-wide v2, p0, Lcom/unity3d/player/UnityWebRequest;->a:J

    invoke-static {v2, v3, v0, v1}, Lcom/unity3d/player/UnityWebRequest;->errorCallback(JILjava/lang/String;)V

    return-void

    :cond_14
    instance-of v2, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-nez v2, :cond_1c

    instance-of v2, p1, Ljava/security/cert/CertPathValidatorException;

    if-eqz v2, :cond_1f

    :cond_1c
    const/16 v0, 0x19

    goto :goto_e

    :cond_1f
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_6
.end method

.method protected unknownHostCallback(Ljava/lang/String;)V
    .registers 5

    iget-wide v0, p0, Lcom/unity3d/player/UnityWebRequest;->a:J

    const/4 v2, 0x7

    invoke-static {v0, v1, v2, p1}, Lcom/unity3d/player/UnityWebRequest;->errorCallback(JILjava/lang/String;)V

    return-void
.end method

.method protected uploadCallback(Ljava/nio/ByteBuffer;)I
    .registers 4

    iget-wide v0, p0, Lcom/unity3d/player/UnityWebRequest;->a:J

    invoke-static {v0, v1, p1}, Lcom/unity3d/player/UnityWebRequest;->uploadCallback(JLjava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method
