.class public Lcom/sunborn/gameplatform/core/action/SunbornCreateOrderAction;
.super Lcom/lohanry/android/framework/action/BaseHttpAction;
.source "SunbornCreateOrderAction.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private final delay:J

.field private mMaxTimes:I

.field private mOrderBean:Lcom/sunborn/gameplatform/core/module/SunbirCreateOrderBean;

.field private request:Lcom/sunborn/gameplatform/core/request/SunbornCreateOrderRequest;
    .annotation runtime Lcom/lohanry/android/framework/annotation/Inject;
    .end annotation
.end field

.field private requestJson:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/lohanry/android/framework/action/BaseHttpAction;-><init>()V

    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sunborn/gameplatform/core/action/SunbornCreateOrderAction;->TAG:Ljava/lang/String;

    .line 23
    const/4 v0, 0x3

    iput v0, p0, Lcom/sunborn/gameplatform/core/action/SunbornCreateOrderAction;->mMaxTimes:I

    .line 24
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/sunborn/gameplatform/core/action/SunbornCreateOrderAction;->delay:J

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/sunborn/gameplatform/core/action/SunbornCreateOrderAction;->requestJson:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getErrorMsg()Ljava/lang/String;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sunborn/gameplatform/core/action/SunbornCreateOrderAction;->mOrderBean:Lcom/sunborn/gameplatform/core/module/SunbirCreateOrderBean;

    if-nez v0, :cond_7

    .line 76
    const-string v0, "\u672a\u5b9a\u4e49\u7684\u9519\u8bef\u4fe1\u606f"

    .line 77
    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/sunborn/gameplatform/core/action/SunbornCreateOrderAction;->mOrderBean:Lcom/sunborn/gameplatform/core/module/SunbirCreateOrderBean;

    invoke-virtual {v0}, Lcom/sunborn/gameplatform/core/module/SunbirCreateOrderBean;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public getOrderBean()Lcom/sunborn/gameplatform/core/module/SunbirCreateOrderBean;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sunborn/gameplatform/core/action/SunbornCreateOrderAction;->mOrderBean:Lcom/sunborn/gameplatform/core/module/SunbirCreateOrderBean;

    return-object v0
.end method

.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;Z)Z
    .registers 5
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "e"    # Ljava/io/IOException;
    .param p3, "finalRequest"    # Z

    .prologue
    .line 42
    if-eqz p3, :cond_5

    invoke-virtual {p0}, Lcom/sunborn/gameplatform/core/action/SunbornCreateOrderAction;->onError()V

    .line 43
    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;Z)Z
    .registers 7
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "response"    # Lokhttp3/Response;
    .param p3, "finalRequest"    # Z

    .prologue
    const/4 v2, 0x0

    .line 48
    const-class v1, Lcom/sunborn/gameplatform/core/module/SunbirCreateOrderBean;

    invoke-static {p2, v1}, Lcom/sunborn/gameplatform/core/common/HttpResultService;->HandlerBaseResultBean(Lokhttp3/Response;Ljava/lang/Class;)Lcom/sunborn/gameplatform/core/module/BaseResultBean;

    move-result-object v1

    check-cast v1, Lcom/sunborn/gameplatform/core/module/SunbirCreateOrderBean;

    iput-object v1, p0, Lcom/sunborn/gameplatform/core/action/SunbornCreateOrderAction;->mOrderBean:Lcom/sunborn/gameplatform/core/module/SunbirCreateOrderBean;

    .line 49
    iget-object v1, p0, Lcom/sunborn/gameplatform/core/action/SunbornCreateOrderAction;->mOrderBean:Lcom/sunborn/gameplatform/core/module/SunbirCreateOrderBean;

    invoke-virtual {v1}, Lcom/sunborn/gameplatform/core/module/SunbirCreateOrderBean;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "msgCode":Ljava/lang/String;
    iget-object v1, p0, Lcom/sunborn/gameplatform/core/action/SunbornCreateOrderAction;->mOrderBean:Lcom/sunborn/gameplatform/core/module/SunbirCreateOrderBean;

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lcom/sunborn/gameplatform/core/action/SunbornCreateOrderAction;->mOrderBean:Lcom/sunborn/gameplatform/core/module/SunbirCreateOrderBean;

    .line 51
    invoke-virtual {v1}, Lcom/sunborn/gameplatform/core/module/SunbirCreateOrderBean;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sunborn/gameplatform/core/common/SUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lcom/sunborn/gameplatform/core/action/SunbornCreateOrderAction;->mOrderBean:Lcom/sunborn/gameplatform/core/module/SunbirCreateOrderBean;

    iget-object v1, v1, Lcom/sunborn/gameplatform/core/module/SunbirCreateOrderBean;->payplat_order_id:Ljava/lang/String;

    .line 52
    invoke-static {v1}, Lcom/sunborn/gameplatform/core/common/SUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3a

    iget-object v1, p0, Lcom/sunborn/gameplatform/core/action/SunbornCreateOrderAction;->mOrderBean:Lcom/sunborn/gameplatform/core/module/SunbirCreateOrderBean;

    iget-object v1, v1, Lcom/sunborn/gameplatform/core/module/SunbirCreateOrderBean;->order_sign:Ljava/lang/String;

    .line 53
    invoke-static {v1}, Lcom/sunborn/gameplatform/core/common/SUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 55
    invoke-virtual {p0}, Lcom/sunborn/gameplatform/core/action/SunbornCreateOrderAction;->onSuccess()V

    .line 56
    const/4 v1, 0x1

    .line 61
    :goto_39
    return v1

    .line 57
    :cond_3a
    if-eqz p3, :cond_41

    .line 58
    invoke-virtual {p0}, Lcom/sunborn/gameplatform/core/action/SunbornCreateOrderAction;->onError()V

    move v1, v2

    .line 59
    goto :goto_39

    :cond_41
    move v1, v2

    .line 61
    goto :goto_39
.end method

.method public submit(Ljava/util/HashMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p1, "jsonMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lcom/sunborn/gameplatform/core/action/SunbornCreateOrderAction;->onBegin()V

    .line 34
    const-string v0, "game_channel_id"

    invoke-static {}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->getInstance()Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;

    move-result-object v1

    iget-object v1, v1, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->game_channel_id:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string v0, "channel_id"

    invoke-static {}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->getInstance()Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;

    move-result-object v1

    iget-object v1, v1, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->platform_channel_id:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    invoke-static {p1}, Lcom/sunborn/gameplatform/core/common/SUtils;->convertToJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sunborn/gameplatform/core/action/SunbornCreateOrderAction;->requestJson:Ljava/lang/String;

    .line 37
    iget-object v0, p0, Lcom/sunborn/gameplatform/core/action/SunbornCreateOrderAction;->request:Lcom/sunborn/gameplatform/core/request/SunbornCreateOrderRequest;

    iget-object v1, p0, Lcom/sunborn/gameplatform/core/action/SunbornCreateOrderAction;->requestJson:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sunborn/gameplatform/core/request/SunbornCreateOrderRequest;->setJsonData(Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/sunborn/gameplatform/core/action/SunbornCreateOrderAction;->request:Lcom/sunborn/gameplatform/core/request/SunbornCreateOrderRequest;

    invoke-virtual {p0, v0}, Lcom/sunborn/gameplatform/core/action/SunbornCreateOrderAction;->requestHttp(Lcom/lohanry/android/framework/network/httprequest/BaseRequest;)V

    .line 39
    return-void
.end method
