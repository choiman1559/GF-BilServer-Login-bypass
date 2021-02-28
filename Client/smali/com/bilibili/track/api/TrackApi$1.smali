.class final Lcom/bilibili/track/api/TrackApi$1;
.super Ljava/lang/Object;

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/track/api/TrackApi;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bilibili/track/api/RequestCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$handler:Lcom/bilibili/track/api/HttpRequestHandler;


# direct methods
.method constructor <init>(Lcom/bilibili/track/api/HttpRequestHandler;)V
    .registers 2

    iput-object p1, p0, Lcom/bilibili/track/api/TrackApi$1;->val$handler:Lcom/bilibili/track/api/HttpRequestHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .registers 5

    iget-object v0, p0, Lcom/bilibili/track/api/TrackApi$1;->val$handler:Lcom/bilibili/track/api/HttpRequestHandler;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bilibili/track/api/HttpRequestHandler;->onFailed(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v2

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v0, 0x400

    new-array v0, v0, [B

    :goto_11
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_2b

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d
    .catchall {:try_start_0 .. :try_end_1c} :catchall_84

    goto :goto_11

    :catch_1d
    move-exception v0

    :try_start_1e
    iget-object v0, p0, Lcom/bilibili/track/api/TrackApi$1;->val$handler:Lcom/bilibili/track/api/HttpRequestHandler;

    const-string v1, "\u6570\u636e\u7c7b\u578b\u9519\u8bef"

    invoke-virtual {v0, v1}, Lcom/bilibili/track/api/HttpRequestHandler;->onFailed(Ljava/lang/String;)V
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_84

    iget-object v0, p0, Lcom/bilibili/track/api/TrackApi$1;->val$handler:Lcom/bilibili/track/api/HttpRequestHandler;

    invoke-virtual {v0}, Lcom/bilibili/track/api/HttpRequestHandler;->onFinished()V

    :goto_2a
    return-void

    :cond_2b
    :try_start_2b
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TrackingData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RemoteConfig=> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/bilibili/deviceutils/DeviceLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_47} :catch_1d
    .catchall {:try_start_2b .. :try_end_47} :catchall_84

    const/4 v1, 0x0

    :try_start_48
    new-instance v4, Lcopy/google/json/JSON;

    invoke-direct {v4}, Lcopy/google/json/JSON;-><init>()V

    new-instance v5, Lcom/bilibili/track/api/TrackApi$1$1;

    invoke-direct {v5, p0}, Lcom/bilibili/track/api/TrackApi$1$1;-><init>(Lcom/bilibili/track/api/TrackApi$1;)V

    invoke-virtual {v5}, Lcom/bilibili/track/api/TrackApi$1$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lcopy/google/json/JSON;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/track/config/BaseData;
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_5c} :catch_79
    .catchall {:try_start_48 .. :try_end_5c} :catchall_84

    :goto_5c
    if-eqz v0, :cond_7c

    :try_start_5e
    invoke-virtual {v0}, Lcom/bilibili/track/config/BaseData;->getData()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7c

    iget-object v1, p0, Lcom/bilibili/track/api/TrackApi$1;->val$handler:Lcom/bilibili/track/api/HttpRequestHandler;

    invoke-virtual {v0}, Lcom/bilibili/track/config/BaseData;->getData()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bilibili/track/api/HttpRequestHandler;->onSuccess(Ljava/lang/Object;)V

    :goto_6d
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_73} :catch_1d
    .catchall {:try_start_5e .. :try_end_73} :catchall_84

    iget-object v0, p0, Lcom/bilibili/track/api/TrackApi$1;->val$handler:Lcom/bilibili/track/api/HttpRequestHandler;

    invoke-virtual {v0}, Lcom/bilibili/track/api/HttpRequestHandler;->onFinished()V

    goto :goto_2a

    :catch_79
    move-exception v0

    move-object v0, v1

    goto :goto_5c

    :cond_7c
    :try_start_7c
    iget-object v0, p0, Lcom/bilibili/track/api/TrackApi$1;->val$handler:Lcom/bilibili/track/api/HttpRequestHandler;

    const-string v1, "\u6570\u636e\u4e3a\u7a7a"

    invoke-virtual {v0, v1}, Lcom/bilibili/track/api/HttpRequestHandler;->onFailed(Ljava/lang/String;)V
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_83} :catch_1d
    .catchall {:try_start_7c .. :try_end_83} :catchall_84

    goto :goto_6d

    :catchall_84
    move-exception v0

    iget-object v1, p0, Lcom/bilibili/track/api/TrackApi$1;->val$handler:Lcom/bilibili/track/api/HttpRequestHandler;

    invoke-virtual {v1}, Lcom/bilibili/track/api/HttpRequestHandler;->onFinished()V

    throw v0
.end method
