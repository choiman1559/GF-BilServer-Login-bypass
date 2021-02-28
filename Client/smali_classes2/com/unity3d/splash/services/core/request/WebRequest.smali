.class public Lcom/unity3d/splash/services/core/request/WebRequest;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/splash/services/core/request/WebRequest$RequestType;
    }
.end annotation


# instance fields
.field private _body:Ljava/lang/String;

.field private _canceled:Z

.field private _connectTimeout:I

.field private _contentLength:J

.field private _headers:Ljava/util/Map;

.field private _progressListener:Lcom/unity3d/splash/services/core/request/IWebRequestProgressListener;

.field private _readTimeout:I

.field private _requestType:Ljava/lang/String;

.field private _responseCode:I

.field private _responseHeaders:Ljava/util/Map;

.field private _url:Ljava/net/URL;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 10

    const/16 v4, 0x7530

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/unity3d/splash/services/core/request/WebRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;II)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/unity3d/splash/services/core/request/WebRequest$RequestType;->GET:Lcom/unity3d/splash/services/core/request/WebRequest$RequestType;

    invoke-virtual {v0}, Lcom/unity3d/splash/services/core/request/WebRequest$RequestType;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/splash/services/core/request/WebRequest;->_requestType:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/unity3d/splash/services/core/request/WebRequest;->_responseCode:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/unity3d/splash/services/core/request/WebRequest;->_contentLength:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/splash/services/core/request/WebRequest;->_canceled:Z

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/unity3d/splash/services/core/request/WebRequest;->_url:Ljava/net/URL;

    iput-object p2, p0, Lcom/unity3d/splash/services/core/request/WebRequest;->_requestType:Ljava/lang/String;

    iput-object p3, p0, Lcom/unity3d/splash/services/core/request/WebRequest;->_headers:Ljava/util/Map;

    iput p4, p0, Lcom/unity3d/splash/services/core/request/WebRequest;->_connectTimeout:I

    iput p5, p0, Lcom/unity3d/splash/services/core/request/WebRequest;->_readTimeout:I

    return-void
.end method

.method private getHttpUrlConnectionWithHeaders()Ljava/net/HttpURLConnection;
    .registers 8

    invoke-virtual {p0}, Lcom/unity3d/splash/services/core/request/WebRequest;->getUrl()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b0

    :try_start_10
    invoke-virtual {p0}, Lcom/unity3d/splash/services/core/request/WebRequest;->getUrl()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_1a} :catch_96

    move-object v2, v0

    :goto_1b
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    invoke-virtual {p0}, Lcom/unity3d/splash/services/core/request/WebRequest;->getConnectTimeout()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {p0}, Lcom/unity3d/splash/services/core/request/WebRequest;->getReadTimeout()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    :try_start_2d
    invoke-virtual {p0}, Lcom/unity3d/splash/services/core/request/WebRequest;->getRequestType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_34
    .catch Ljava/net/ProtocolException; {:try_start_2d .. :try_end_34} :catch_104

    invoke-virtual {p0}, Lcom/unity3d/splash/services/core/request/WebRequest;->getHeaders()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_12c

    invoke-virtual {p0}, Lcom/unity3d/splash/services/core/request/WebRequest;->getHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_12c

    invoke-virtual {p0}, Lcom/unity3d/splash/services/core/request/WebRequest;->getHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_50
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/unity3d/splash/services/core/request/WebRequest;->getHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Setting header: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/unity3d/splash/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6a

    :catch_96
    move-exception v0

    new-instance v1, Lcom/unity3d/splash/services/core/request/NetworkIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Open HTTPS connection: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/unity3d/splash/services/core/request/NetworkIOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b0
    invoke-virtual {p0}, Lcom/unity3d/splash/services/core/request/WebRequest;->getUrl()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e7

    :try_start_c0
    invoke-virtual {p0}, Lcom/unity3d/splash/services/core/request/WebRequest;->getUrl()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_ca
    .catch Ljava/io/IOException; {:try_start_c0 .. :try_end_ca} :catch_cd

    move-object v2, v0

    goto/16 :goto_1b

    :catch_cd
    move-exception v0

    new-instance v1, Lcom/unity3d/splash/services/core/request/NetworkIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Open HTTP connection: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/unity3d/splash/services/core/request/NetworkIOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid url-protocol in url: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/unity3d/splash/services/core/request/WebRequest;->getUrl()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_104
    move-exception v0

    new-instance v1, Lcom/unity3d/splash/services/core/request/NetworkIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Set Request Method: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/unity3d/splash/services/core/request/WebRequest;->getRequestType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/unity3d/splash/services/core/request/NetworkIOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_12c
    return-object v2
.end method


# virtual methods
.method public cancel()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unity3d/splash/services/core/request/WebRequest;->_canceled:Z

    return-void
.end method

.method public getBody()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unity3d/splash/services/core/request/WebRequest;->_body:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectTimeout()I
    .registers 2

    iget v0, p0, Lcom/unity3d/splash/services/core/request/WebRequest;->_connectTimeout:I

    return v0
.end method

.method public getContentLength()J
    .registers 3

    iget-wide v0, p0, Lcom/unity3d/splash/services/core/request/WebRequest;->_contentLength:J

    return-wide v0
.end method

.method public getHeaders()Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/unity3d/splash/services/core/request/WebRequest;->_headers:Ljava/util/Map;

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unity3d/splash/services/core/request/WebRequest;->_url:Ljava/net/URL;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/unity3d/splash/services/core/request/WebRequest;->_url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getReadTimeout()I
    .registers 2

    iget v0, p0, Lcom/unity3d/splash/services/core/request/WebRequest;->_readTimeout:I

    return v0
.end method

.method public getRequestType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unity3d/splash/services/core/request/WebRequest;->_requestType:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseCode()I
    .registers 2

    iget v0, p0, Lcom/unity3d/splash/services/core/request/WebRequest;->_responseCode:I

    return v0
.end method

.method public getResponseHeaders()Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/unity3d/splash/services/core/request/WebRequest;->_responseHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public getUrl()Ljava/net/URL;
    .registers 2

    iget-object v0, p0, Lcom/unity3d/splash/services/core/request/WebRequest;->_url:Ljava/net/URL;

    return-object v0
.end method

.method public isCanceled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/unity3d/splash/services/core/request/WebRequest;->_canceled:Z

    return v0
.end method

.method public makeRequest()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p0, v0}, Lcom/unity3d/splash/services/core/request/WebRequest;->makeStreamRequest(Ljava/io/OutputStream;)J

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public makeStreamRequest(Ljava/io/OutputStream;)J
    .registers 13

    const/4 v7, 0x0

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/unity3d/splash/services/core/request/WebRequest;->getHttpUrlConnectionWithHeaders()Ljava/net/HttpURLConnection;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    invoke-virtual {p0}, Lcom/unity3d/splash/services/core/request/WebRequest;->getRequestType()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/unity3d/splash/services/core/request/WebRequest$RequestType;->POST:Lcom/unity3d/splash/services/core/request/WebRequest$RequestType;

    invoke-virtual {v1}, Lcom/unity3d/splash/services/core/request/WebRequest$RequestType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-virtual {v8, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 v2, 0x0

    :try_start_1d
    new-instance v1, Ljava/io/PrintWriter;

    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-direct {v0, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-direct {v1, v0, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_2e} :catch_151
    .catchall {:try_start_1d .. :try_end_2e} :catchall_14e

    :try_start_2e
    invoke-virtual {p0}, Lcom/unity3d/splash/services/core/request/WebRequest;->getBody()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_ab

    invoke-virtual {p0}, Lcom/unity3d/splash/services/core/request/WebRequest;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_3b
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_3e} :catch_b3
    .catchall {:try_start_2e .. :try_end_3e} :catchall_d2

    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    :cond_41
    :try_start_41
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    iput v0, p0, Lcom/unity3d/splash/services/core/request/WebRequest;->_responseCode:I
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_47} :catch_d9
    .catch Ljava/lang/RuntimeException; {:try_start_41 .. :try_end_47} :catch_f3

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/unity3d/splash/services/core/request/WebRequest;->_contentLength:J

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_5a

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/splash/services/core/request/WebRequest;->_responseHeaders:Ljava/util/Map;

    :cond_5a
    :try_start_5a
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_10d

    move-result-object v0

    move-object v6, v0

    :goto_5f
    iget-object v0, p0, Lcom/unity3d/splash/services/core/request/WebRequest;->_progressListener:Lcom/unity3d/splash/services/core/request/IWebRequestProgressListener;

    if-eqz v0, :cond_76

    iget-object v0, p0, Lcom/unity3d/splash/services/core/request/WebRequest;->_progressListener:Lcom/unity3d/splash/services/core/request/IWebRequestProgressListener;

    invoke-virtual {p0}, Lcom/unity3d/splash/services/core/request/WebRequest;->getUrl()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/unity3d/splash/services/core/request/WebRequest;->_contentLength:J

    iget v4, p0, Lcom/unity3d/splash/services/core/request/WebRequest;->_responseCode:I

    iget-object v5, p0, Lcom/unity3d/splash/services/core/request/WebRequest;->_responseHeaders:Ljava/util/Map;

    invoke-interface/range {v0 .. v5}, Lcom/unity3d/splash/services/core/request/IWebRequestProgressListener;->onRequestStart(Ljava/lang/String;JILjava/util/Map;)V

    :cond_76
    new-instance v9, Ljava/io/BufferedInputStream;

    invoke-direct {v9, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const-wide/16 v2, 0x0

    const/16 v0, 0x1000

    new-array v10, v0, [B

    move v0, v7

    :goto_82
    invoke-virtual {p0}, Lcom/unity3d/splash/services/core/request/WebRequest;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_147

    const/4 v1, -0x1

    if-eq v0, v1, :cond_147

    :try_start_8b
    invoke-virtual {v9, v10}, Ljava/io/BufferedInputStream;->read([B)I
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_8e} :catch_12d

    move-result v6

    if-lez v6, :cond_155

    invoke-virtual {p1, v10, v7, v6}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v0, v6

    add-long/2addr v2, v0

    iget-object v0, p0, Lcom/unity3d/splash/services/core/request/WebRequest;->_progressListener:Lcom/unity3d/splash/services/core/request/IWebRequestProgressListener;

    if-eqz v0, :cond_155

    iget-object v0, p0, Lcom/unity3d/splash/services/core/request/WebRequest;->_progressListener:Lcom/unity3d/splash/services/core/request/IWebRequestProgressListener;

    invoke-virtual {p0}, Lcom/unity3d/splash/services/core/request/WebRequest;->getUrl()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    iget-wide v4, p0, Lcom/unity3d/splash/services/core/request/WebRequest;->_contentLength:J

    invoke-interface/range {v0 .. v5}, Lcom/unity3d/splash/services/core/request/IWebRequestProgressListener;->onRequestProgress(Ljava/lang/String;JJ)V

    move v0, v6

    goto :goto_82

    :cond_ab
    :try_start_ab
    invoke-virtual {p0}, Lcom/unity3d/splash/services/core/request/WebRequest;->getBody()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_b2
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_b2} :catch_b3
    .catchall {:try_start_ab .. :try_end_b2} :catchall_d2

    goto :goto_3b

    :catch_b3
    move-exception v0

    :goto_b4
    :try_start_b4
    const-string v2, "Error while writing POST params"

    invoke-static {v2, v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    new-instance v2, Lcom/unity3d/splash/services/core/request/NetworkIOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error writing POST params: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/unity3d/splash/services/core/request/NetworkIOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_d2
    .catchall {:try_start_b4 .. :try_end_d2} :catchall_d2

    :catchall_d2
    move-exception v0

    :goto_d3
    if-eqz v1, :cond_d8

    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    :cond_d8
    throw v0

    :catch_d9
    move-exception v0

    new-instance v1, Lcom/unity3d/splash/services/core/request/NetworkIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Response code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/unity3d/splash/services/core/request/NetworkIOException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_f3
    move-exception v0

    new-instance v1, Lcom/unity3d/splash/services/core/request/NetworkIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Response code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/unity3d/splash/services/core/request/NetworkIOException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_10d
    move-exception v1

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_158

    new-instance v0, Lcom/unity3d/splash/services/core/request/NetworkIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t open error stream: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/unity3d/splash/services/core/request/NetworkIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_12d
    move-exception v0

    new-instance v1, Lcom/unity3d/splash/services/core/request/NetworkIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Network exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/unity3d/splash/services/core/request/NetworkIOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_147
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-wide v2

    :catchall_14e
    move-exception v0

    move-object v1, v2

    goto :goto_d3

    :catch_151
    move-exception v0

    move-object v1, v2

    goto/16 :goto_b4

    :cond_155
    move v0, v6

    goto/16 :goto_82

    :cond_158
    move-object v6, v0

    goto/16 :goto_5f
.end method

.method public setBody(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/unity3d/splash/services/core/request/WebRequest;->_body:Ljava/lang/String;

    return-void
.end method

.method public setConnectTimeout(I)V
    .registers 2

    iput p1, p0, Lcom/unity3d/splash/services/core/request/WebRequest;->_connectTimeout:I

    return-void
.end method

.method public setProgressListener(Lcom/unity3d/splash/services/core/request/IWebRequestProgressListener;)V
    .registers 2

    iput-object p1, p0, Lcom/unity3d/splash/services/core/request/WebRequest;->_progressListener:Lcom/unity3d/splash/services/core/request/IWebRequestProgressListener;

    return-void
.end method

.method public setReadTimeout(I)V
    .registers 2

    iput p1, p0, Lcom/unity3d/splash/services/core/request/WebRequest;->_readTimeout:I

    return-void
.end method
