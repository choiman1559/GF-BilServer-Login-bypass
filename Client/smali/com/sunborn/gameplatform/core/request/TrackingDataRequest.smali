.class public Lcom/sunborn/gameplatform/core/request/TrackingDataRequest;
.super Lcom/lohanry/android/framework/network/httprequest/BaseRequest;
.source "TrackingDataRequest.java"


# instance fields
.field private TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/lohanry/android/framework/network/httprequest/BaseRequest;-><init>()V

    .line 18
    const-string v0, "TrackingDataRequest"

    iput-object v0, p0, Lcom/sunborn/gameplatform/core/request/TrackingDataRequest;->TAG:Ljava/lang/String;

    .line 20
    invoke-virtual {p0, p1}, Lcom/sunborn/gameplatform/core/request/TrackingDataRequest;->setRequestUrl(Ljava/lang/String;)V

    .line 21
    sget-object v0, Lcom/lohanry/android/framework/network/httprequest/BaseRequest$RequestType;->GET:Lcom/lohanry/android/framework/network/httprequest/BaseRequest$RequestType;

    invoke-virtual {p0, v0}, Lcom/sunborn/gameplatform/core/request/TrackingDataRequest;->setRequestType(Lcom/lohanry/android/framework/network/httprequest/BaseRequest$RequestType;)V

    .line 22
    return-void
.end method


# virtual methods
.method public getOKHttpGetRequest()Lokhttp3/Request;
    .registers 4

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sunborn/gameplatform/core/request/TrackingDataRequest;->TAG:Ljava/lang/String;

    const-string v1, "Get:"

    invoke-static {v0, v1}, Lcom/lohanry/android/framework/tools/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/sunborn/gameplatform/core/request/TrackingDataRequest;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRequestUrl():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sunborn/gameplatform/core/request/TrackingDataRequest;->getRequestUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lohanry/android/framework/tools/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/sunborn/gameplatform/core/request/TrackingDataRequest;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMediaType():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sunborn/gameplatform/core/request/TrackingDataRequest;->getMediaType()Lokhttp3/MediaType;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/MediaType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lohanry/android/framework/tools/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {p0}, Lcom/sunborn/gameplatform/core/request/TrackingDataRequest;->getRequestUrl()Ljava/lang/String;

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
    .line 54
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getOKHttpPostRequest()Lokhttp3/Request;
    .registers 3

    .prologue
    .line 31
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unsupported post request"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getOKHttpPostRequest(Lokhttp3/RequestBody;)Lokhttp3/Request;
    .registers 4
    .param p1, "body"    # Lokhttp3/RequestBody;

    .prologue
    .line 49
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getOKHttpRequest()Lokhttp3/Request;
    .registers 2

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/sunborn/gameplatform/core/request/TrackingDataRequest;->getOKHttpGetRequest()Lokhttp3/Request;

    move-result-object v0

    return-object v0
.end method

.method public getOKHttpRequest(Lokhttp3/RequestBody;)Lokhttp3/Request;
    .registers 4
    .param p1, "body"    # Lokhttp3/RequestBody;

    .prologue
    .line 44
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
