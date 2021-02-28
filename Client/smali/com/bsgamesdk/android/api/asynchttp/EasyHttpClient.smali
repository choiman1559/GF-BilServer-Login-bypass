.class public Lcom/bsgamesdk/android/api/asynchttp/EasyHttpClient;
.super Lorg/apache/http/impl/client/DefaultHttpClient;


# direct methods
.method public constructor <init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/params/HttpParams;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    return-void
.end method


# virtual methods
.method public executeForContent(Lorg/apache/http/client/methods/HttpRequestBase;)Ljava/io/InputStream;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/bsgamesdk/android/api/asynchttp/EasyHttpClient;->executeForEntity(Lorg/apache/http/client/methods/HttpRequestBase;)Lorg/apache/http/HttpEntity;

    move-result-object v1

    :try_start_4
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v1

    if-eqz v1, :cond_18

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_19

    :cond_18
    :goto_18
    return-object v0

    :cond_19
    const-string v2, "deflate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2e

    new-instance v1, Ljava/util/zip/InflaterInputStream;

    new-instance v2, Ljava/util/zip/Inflater;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/zip/Inflater;-><init>(Z)V

    invoke-direct {v1, v0, v2}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    move-object v0, v1

    goto :goto_18

    :cond_2e
    const-string v2, "gzip"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_3b} :catch_3d

    move-object v0, v1

    goto :goto_18

    :catch_3d
    move-exception v0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "\u6570\u636e\u5f02\u5e38,\u8bf7\u91cd\u8bd5!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public executeForEntity(Lorg/apache/http/client/methods/HttpRequestBase;)Lorg/apache/http/HttpEntity;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    const-string v2, ""

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p0, p1}, Lcom/bsgamesdk/android/api/asynchttp/EasyHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v3, 0xc8

    if-eq v0, v3, :cond_ab

    const-string v2, ""

    invoke-virtual {p1}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v0

    if-eqz v0, :cond_32

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_32

    const/16 v3, 0x3f

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v3, :cond_a1

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_32
    :goto_32
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_39} :catch_51

    move-result v0

    const/16 v3, 0x193

    if-ne v0, v3, :cond_a3

    :try_start_3e
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_49} :catch_d5

    :goto_49
    :try_start_49
    new-instance v0, Lcom/bsgamesdk/android/api/asynchttp/HTTPFobiddenException;

    const-string v3, ""

    invoke-direct {v0, v3}, Lcom/bsgamesdk/android/api/asynchttp/HTTPFobiddenException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_51} :catch_51

    :catch_51
    move-exception v0

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "url:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_73
    if-eqz v1, :cond_93

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\uff0cHTTP "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_93
    instance-of v0, v0, Lcom/bsgamesdk/android/api/asynchttp/HTTPFobiddenException;

    if-eqz v0, :cond_cb

    new-instance v0, Lcom/bsgamesdk/android/api/asynchttp/HTTPFobiddenException;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bsgamesdk/android/api/asynchttp/HTTPFobiddenException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a1
    move-object v2, v0

    goto :goto_32

    :cond_a3
    :try_start_a3
    new-instance v0, Lorg/apache/http/HttpException;

    const-string v3, ""

    invoke-direct {v0, v3}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_ab
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_ae
    .catch Ljava/lang/Throwable; {:try_start_a3 .. :try_end_ae} :catch_51

    move-result-object v0

    return-object v0

    :cond_b0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "msg:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_73

    :cond_cb
    new-instance v0, Lorg/apache/http/HttpException;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_d5
    move-exception v0

    goto/16 :goto_49
.end method

.method public executeForNothing(Lorg/apache/http/client/methods/HttpRequestBase;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/bsgamesdk/android/api/asynchttp/EasyHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    return-void
.end method

.method public executeForString(Lorg/apache/http/client/methods/HttpRequestBase;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/bsgamesdk/android/api/asynchttp/EasyHttpClient;->executeForContent(Lorg/apache/http/client/methods/HttpRequestBase;)Ljava/io/InputStream;

    move-result-object v2

    :try_start_5
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    const-string v4, "utf-8"

    invoke-direct {v3, v2, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_11
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_11} :catch_4b
    .catchall {:try_start_5 .. :try_end_11} :catchall_3e

    :try_start_11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_16
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_33

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_24
    .catch Ljava/lang/OutOfMemoryError; {:try_start_11 .. :try_end_24} :catch_25
    .catchall {:try_start_11 .. :try_end_24} :catchall_49

    goto :goto_16

    :catch_25
    move-exception v3

    :goto_26
    :try_start_26
    invoke-static {v1}, Lcom/bsgamesdk/android/api/l;->a(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/bsgamesdk/android/api/l;->a(Ljava/io/Closeable;)V
    :try_end_2c
    .catchall {:try_start_26 .. :try_end_2c} :catchall_49

    invoke-static {v1}, Lcom/bsgamesdk/android/api/l;->a(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/bsgamesdk/android/api/l;->a(Ljava/io/Closeable;)V

    :goto_32
    return-object v0

    :cond_33
    :try_start_33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_36
    .catch Ljava/lang/OutOfMemoryError; {:try_start_33 .. :try_end_36} :catch_25
    .catchall {:try_start_33 .. :try_end_36} :catchall_49

    move-result-object v0

    invoke-static {v1}, Lcom/bsgamesdk/android/api/l;->a(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/bsgamesdk/android/api/l;->a(Ljava/io/Closeable;)V

    goto :goto_32

    :catchall_3e
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_42
    invoke-static {v1}, Lcom/bsgamesdk/android/api/l;->a(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/bsgamesdk/android/api/l;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_49
    move-exception v0

    goto :goto_42

    :catch_4b
    move-exception v1

    move-object v1, v0

    goto :goto_26
.end method

.method public executeGetForBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;,
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/api/asynchttp/EasyHttpClient;->executeGetForBitmap(Lorg/apache/http/client/methods/HttpRequestBase;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public executeGetForBitmap(Lorg/apache/http/client/methods/HttpRequestBase;)Landroid/graphics/Bitmap;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;,
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/bsgamesdk/android/api/asynchttp/EasyHttpClient;->executeForEntity(Lorg/apache/http/client/methods/HttpRequestBase;)Lorg/apache/http/HttpEntity;

    move-result-object v0

    :try_start_4
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_19

    move-result-object v0

    :try_start_8
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_12

    move-result-object v1

    if-eqz v0, :cond_11

    :try_start_e
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_11
    return-object v1

    :catchall_12
    move-exception v1

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_18
    throw v1
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_19} :catch_19

    :catch_19
    move-exception v0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "\u6570\u636e\u5f02\u5e38,\u8bf7\u91cd\u8bd5!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public executeGetForJSONObject(Lorg/apache/http/client/methods/HttpRequestBase;)Lorg/json/JSONObject;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;,
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/bsgamesdk/android/api/asynchttp/EasyHttpClient;->executeForString(Lorg/apache/http/client/methods/HttpRequestBase;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    new-instance v0, Lorg/json/JSONException;

    const-string v1, "empty response"

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    :try_start_12
    new-instance v1, Lorg/json/JSONTokener;

    invoke-direct {v1, v0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    const-class v1, Lorg/json/JSONObject;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_49

    new-instance v0, Lorg/json/JSONException;

    const-string v1, "failed to parse response"

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2b
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_2b} :catch_2b

    :catch_2b
    move-exception v0

    new-instance v1, Lorg/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NumberFormatException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_49
    :try_start_49
    check-cast v0, Lorg/json/JSONObject;
    :try_end_4b
    .catch Ljava/lang/NumberFormatException; {:try_start_49 .. :try_end_4b} :catch_2b

    return-object v0
.end method
