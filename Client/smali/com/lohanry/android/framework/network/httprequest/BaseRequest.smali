.class public abstract Lcom/lohanry/android/framework/network/httprequest/BaseRequest;
.super Ljava/lang/Object;
.source "BaseRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lohanry/android/framework/network/httprequest/BaseRequest$RequestType;
    }
.end annotation


# static fields
.field public static final JSON_MEDIA_TYPE:Ljava/lang/String; = "application/json; charset=utf-8"

.field public static final WWW_FORM_MEDIA_TYPE:Ljava/lang/String; = "application/x-www-form-urlencoded; charset=utf-8"


# instance fields
.field private TAG:Ljava/lang/String;

.field private delayTime:J

.field private mBaseRequestResultCallBack:Lcom/lohanry/android/framework/network/callback/BaseRequestResultCallBack;

.field private mMediaType:Lokhttp3/MediaType;

.field private mRequestType:Lcom/lohanry/android/framework/network/httprequest/BaseRequest$RequestType;

.field private mRequestUrl:Ljava/lang/String;

.field private maxRequestTime:I

.field private totalRequestTime:I


# direct methods
.method protected constructor <init>()V
    .registers 3

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-class v0, Lcom/lohanry/android/framework/network/httprequest/BaseRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lohanry/android/framework/network/httprequest/BaseRequest;->TAG:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/lohanry/android/framework/network/httprequest/BaseRequest;->mRequestUrl:Ljava/lang/String;

    .line 28
    sget-object v0, Lcom/lohanry/android/framework/network/httprequest/BaseRequest$RequestType;->GET:Lcom/lohanry/android/framework/network/httprequest/BaseRequest$RequestType;

    iput-object v0, p0, Lcom/lohanry/android/framework/network/httprequest/BaseRequest;->mRequestType:Lcom/lohanry/android/framework/network/httprequest/BaseRequest$RequestType;

    .line 29
    const-string v0, "application/x-www-form-urlencoded; charset=utf-8"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    iput-object v0, p0, Lcom/lohanry/android/framework/network/httprequest/BaseRequest;->mMediaType:Lokhttp3/MediaType;

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/lohanry/android/framework/network/httprequest/BaseRequest;->totalRequestTime:I

    .line 32
    const/4 v0, 0x1

    iput v0, p0, Lcom/lohanry/android/framework/network/httprequest/BaseRequest;->maxRequestTime:I

    .line 33
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lohanry/android/framework/network/httprequest/BaseRequest;->delayTime:J

    .line 64
    return-void
.end method


# virtual methods
.method public addTotalRequestTime(I)V
    .registers 3
    .param p1, "times"    # I

    .prologue
    .line 48
    iget v0, p0, Lcom/lohanry/android/framework/network/httprequest/BaseRequest;->totalRequestTime:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/lohanry/android/framework/network/httprequest/BaseRequest;->totalRequestTime:I

    .line 49
    return-void
.end method

.method public clearTotalRequestTime()V
    .registers 2

    .prologue
    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/lohanry/android/framework/network/httprequest/BaseRequest;->totalRequestTime:I

    .line 41
    return-void
.end method

.method public getDelayTime()J
    .registers 3

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/lohanry/android/framework/network/httprequest/BaseRequest;->delayTime:J

    return-wide v0
.end method

.method public getMaxRequestTime()I
    .registers 2

    .prologue
    .line 44
    iget v0, p0, Lcom/lohanry/android/framework/network/httprequest/BaseRequest;->maxRequestTime:I

    return v0
.end method

.method public getMediaType()Lokhttp3/MediaType;
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/lohanry/android/framework/network/httprequest/BaseRequest;->mMediaType:Lokhttp3/MediaType;

    return-object v0
.end method

.method public abstract getOKHttpGetRequest()Lokhttp3/Request;
.end method

.method public abstract getOKHttpGetRequest(Lokhttp3/RequestBody;)Lokhttp3/Request;
.end method

.method public abstract getOKHttpPostRequest()Lokhttp3/Request;
.end method

.method public abstract getOKHttpPostRequest(Lokhttp3/RequestBody;)Lokhttp3/Request;
.end method

.method public abstract getOKHttpRequest()Lokhttp3/Request;
.end method

.method public abstract getOKHttpRequest(Lokhttp3/RequestBody;)Lokhttp3/Request;
.end method

.method protected getRequestType()Lcom/lohanry/android/framework/network/httprequest/BaseRequest$RequestType;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/lohanry/android/framework/network/httprequest/BaseRequest;->mRequestType:Lcom/lohanry/android/framework/network/httprequest/BaseRequest$RequestType;

    return-object v0
.end method

.method protected getRequestUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/lohanry/android/framework/network/httprequest/BaseRequest;->mRequestUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalRequestTime()I
    .registers 2

    .prologue
    .line 36
    iget v0, p0, Lcom/lohanry/android/framework/network/httprequest/BaseRequest;->totalRequestTime:I

    return v0
.end method

.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;Z)Z
    .registers 5
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "e"    # Ljava/io/IOException;
    .param p3, "finalRequest"    # Z

    .prologue
    .line 108
    iget-object v0, p0, Lcom/lohanry/android/framework/network/httprequest/BaseRequest;->mBaseRequestResultCallBack:Lcom/lohanry/android/framework/network/callback/BaseRequestResultCallBack;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/lohanry/android/framework/network/httprequest/BaseRequest;->mBaseRequestResultCallBack:Lcom/lohanry/android/framework/network/callback/BaseRequestResultCallBack;

    invoke-interface {v0, p1, p2, p3}, Lcom/lohanry/android/framework/network/callback/BaseRequestResultCallBack;->onFailure(Lokhttp3/Call;Ljava/io/IOException;Z)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;Z)Z
    .registers 5
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "response"    # Lokhttp3/Response;
    .param p3, "finalRequest"    # Z

    .prologue
    .line 113
    iget-object v0, p0, Lcom/lohanry/android/framework/network/httprequest/BaseRequest;->mBaseRequestResultCallBack:Lcom/lohanry/android/framework/network/callback/BaseRequestResultCallBack;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/lohanry/android/framework/network/httprequest/BaseRequest;->mBaseRequestResultCallBack:Lcom/lohanry/android/framework/network/callback/BaseRequestResultCallBack;

    invoke-interface {v0, p1, p2, p3}, Lcom/lohanry/android/framework/network/callback/BaseRequestResultCallBack;->onResponse(Lokhttp3/Call;Lokhttp3/Response;Z)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public setBaseRequestResultCallBack(Lcom/lohanry/android/framework/network/callback/BaseRequestResultCallBack;)V
    .registers 2
    .param p1, "baseRequestResultCallBack"    # Lcom/lohanry/android/framework/network/callback/BaseRequestResultCallBack;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/lohanry/android/framework/network/httprequest/BaseRequest;->mBaseRequestResultCallBack:Lcom/lohanry/android/framework/network/callback/BaseRequestResultCallBack;

    .line 68
    return-void
.end method

.method public setDelayTime(J)V
    .registers 4
    .param p1, "delayTime"    # J

    .prologue
    .line 60
    iput-wide p1, p0, Lcom/lohanry/android/framework/network/httprequest/BaseRequest;->delayTime:J

    .line 61
    return-void
.end method

.method public setMaxRequestTime(I)V
    .registers 2
    .param p1, "maxRequestTime"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/lohanry/android/framework/network/httprequest/BaseRequest;->maxRequestTime:I

    .line 57
    return-void
.end method

.method protected setMediaType(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 104
    invoke-static {p1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    iput-object v0, p0, Lcom/lohanry/android/framework/network/httprequest/BaseRequest;->mMediaType:Lokhttp3/MediaType;

    .line 105
    return-void
.end method

.method public setRequestType(Lcom/lohanry/android/framework/network/httprequest/BaseRequest$RequestType;)V
    .registers 2
    .param p1, "t"    # Lcom/lohanry/android/framework/network/httprequest/BaseRequest$RequestType;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/lohanry/android/framework/network/httprequest/BaseRequest;->mRequestType:Lcom/lohanry/android/framework/network/httprequest/BaseRequest$RequestType;

    .line 89
    return-void
.end method

.method public setRequestUrl(Ljava/lang/String;)V
    .registers 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/lohanry/android/framework/network/httprequest/BaseRequest;->mRequestUrl:Ljava/lang/String;

    .line 97
    return-void
.end method
