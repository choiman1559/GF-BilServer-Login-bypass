.class public Lcom/lohanry/android/framework/network/httprequest/JsonBodyRequest;
.super Lcom/lohanry/android/framework/network/httprequest/BaseRequest;
.source "JsonBodyRequest.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mJsonData:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/lohanry/android/framework/network/httprequest/BaseRequest;-><init>()V

    .line 16
    const-class v0, Lcom/lohanry/android/framework/network/httprequest/JsonBodyRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lohanry/android/framework/network/httprequest/JsonBodyRequest;->TAG:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/lohanry/android/framework/network/httprequest/JsonBodyRequest;->mJsonData:Ljava/lang/String;

    .line 20
    const-string v0, "application/json; charset=utf-8"

    invoke-virtual {p0, v0}, Lcom/lohanry/android/framework/network/httprequest/JsonBodyRequest;->setMediaType(Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method private getJsonData()Ljava/lang/String;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lohanry/android/framework/network/httprequest/JsonBodyRequest;->mJsonData:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getOKHttpGetRequest()Lokhttp3/Request;
    .registers 4

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lohanry/android/framework/network/httprequest/JsonBodyRequest;->TAG:Ljava/lang/String;

    const-string v1, "Get:"

    invoke-static {v0, v1}, Lcom/lohanry/android/framework/tools/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/lohanry/android/framework/network/httprequest/JsonBodyRequest;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRequestUrl():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lohanry/android/framework/network/httprequest/JsonBodyRequest;->getRequestUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lohanry/android/framework/tools/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/lohanry/android/framework/network/httprequest/JsonBodyRequest;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMediaType():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lohanry/android/framework/network/httprequest/JsonBodyRequest;->getMediaType()Lokhttp3/MediaType;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/MediaType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lohanry/android/framework/tools/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/lohanry/android/framework/network/httprequest/JsonBodyRequest;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getJsonData():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/lohanry/android/framework/network/httprequest/JsonBodyRequest;->getJsonData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lohanry/android/framework/tools/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {p0}, Lcom/lohanry/android/framework/network/httprequest/JsonBodyRequest;->getRequestUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    return-object v0
.end method

.method public getOKHttpGetRequest(Lokhttp3/RequestBody;)Lokhttp3/Request;
    .registers 4
    .param p1, "body"    # Lokhttp3/RequestBody;

    .prologue
    .line 76
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getOKHttpPostRequest()Lokhttp3/Request;
    .registers 5

    .prologue
    .line 44
    iget-object v1, p0, Lcom/lohanry/android/framework/network/httprequest/JsonBodyRequest;->TAG:Ljava/lang/String;

    const-string v2, "Post:"

    invoke-static {v1, v2}, Lcom/lohanry/android/framework/tools/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object v1, p0, Lcom/lohanry/android/framework/network/httprequest/JsonBodyRequest;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRequestUrl():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lohanry/android/framework/network/httprequest/JsonBodyRequest;->getRequestUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lohanry/android/framework/tools/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object v1, p0, Lcom/lohanry/android/framework/network/httprequest/JsonBodyRequest;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMediaType():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lohanry/android/framework/network/httprequest/JsonBodyRequest;->getMediaType()Lokhttp3/MediaType;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/MediaType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lohanry/android/framework/tools/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object v1, p0, Lcom/lohanry/android/framework/network/httprequest/JsonBodyRequest;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getJsonData():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/lohanry/android/framework/network/httprequest/JsonBodyRequest;->getJsonData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lohanry/android/framework/tools/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/lohanry/android/framework/network/httprequest/JsonBodyRequest;->getMediaType()Lokhttp3/MediaType;

    move-result-object v1

    invoke-direct {p0}, Lcom/lohanry/android/framework/network/httprequest/JsonBodyRequest;->getJsonData()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 49
    .local v0, "body":Lokhttp3/RequestBody;
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    .line 50
    invoke-virtual {p0}, Lcom/lohanry/android/framework/network/httprequest/JsonBodyRequest;->getRequestUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 51
    invoke-virtual {v1, v0}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 52
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    .line 49
    return-object v1
.end method

.method public getOKHttpPostRequest(Lokhttp3/RequestBody;)Lokhttp3/Request;
    .registers 4
    .param p1, "body"    # Lokhttp3/RequestBody;

    .prologue
    .line 71
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getOKHttpRequest()Lokhttp3/Request;
    .registers 4

    .prologue
    .line 31
    sget-object v0, Lcom/lohanry/android/framework/network/httprequest/JsonBodyRequest$1;->$SwitchMap$com$lohanry$android$framework$network$httprequest$BaseRequest$RequestType:[I

    invoke-virtual {p0}, Lcom/lohanry/android/framework/network/httprequest/JsonBodyRequest;->getRequestType()Lcom/lohanry/android/framework/network/httprequest/BaseRequest$RequestType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lohanry/android/framework/network/httprequest/BaseRequest$RequestType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3c

    .line 37
    iget-object v0, p0, Lcom/lohanry/android/framework/network/httprequest/JsonBodyRequest;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u65e0\u6cd5\u5904\u7406\u7684\u7f51\u7edc\u8bf7\u6c42:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lohanry/android/framework/network/httprequest/JsonBodyRequest;->getRequestType()Lcom/lohanry/android/framework/network/httprequest/BaseRequest$RequestType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lohanry/android/framework/network/httprequest/BaseRequest$RequestType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lohanry/android/framework/tools/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const/4 v0, 0x0

    :goto_30
    return-object v0

    .line 33
    :pswitch_31
    invoke-virtual {p0}, Lcom/lohanry/android/framework/network/httprequest/JsonBodyRequest;->getOKHttpGetRequest()Lokhttp3/Request;

    move-result-object v0

    goto :goto_30

    .line 35
    :pswitch_36
    invoke-virtual {p0}, Lcom/lohanry/android/framework/network/httprequest/JsonBodyRequest;->getOKHttpPostRequest()Lokhttp3/Request;

    move-result-object v0

    goto :goto_30

    .line 31
    nop

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_31
        :pswitch_36
    .end packed-switch
.end method

.method public getOKHttpRequest(Lokhttp3/RequestBody;)Lokhttp3/Request;
    .registers 4
    .param p1, "body"    # Lokhttp3/RequestBody;

    .prologue
    .line 66
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setJsonData(Ljava/lang/String;)V
    .registers 2
    .param p1, "t"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/lohanry/android/framework/network/httprequest/JsonBodyRequest;->mJsonData:Ljava/lang/String;

    .line 28
    return-void
.end method
