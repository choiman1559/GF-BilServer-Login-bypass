.class public Lcom/sunborn/gameplatform/core/action/SunbornLoginVerfyAction;
.super Lcom/lohanry/android/framework/action/BaseHttpAction;
.source "SunbornLoginVerfyAction.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private final delay:J

.field public extendVal:Ljava/lang/String;

.field private mLoginParamsBean:Lcom/sunborn/gameplatform/core/module/SunbirLoginVerfyBean;

.field private mMaxTimes:I

.field private request:Lcom/sunborn/gameplatform/core/request/SunbornLoginVerfyRequest;
    .annotation runtime Lcom/lohanry/android/framework/annotation/Inject;
    .end annotation
.end field

.field private requestJson:Ljava/lang/String;

.field public user:Lcom/sunborn/gameplatform/core/module/SunbornUser;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/lohanry/android/framework/action/BaseHttpAction;-><init>()V

    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sunborn/gameplatform/core/action/SunbornLoginVerfyAction;->TAG:Ljava/lang/String;

    .line 20
    const/4 v0, 0x3

    iput v0, p0, Lcom/sunborn/gameplatform/core/action/SunbornLoginVerfyAction;->mMaxTimes:I

    .line 21
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/sunborn/gameplatform/core/action/SunbornLoginVerfyAction;->delay:J

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/sunborn/gameplatform/core/action/SunbornLoginVerfyAction;->requestJson:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/sunborn/gameplatform/core/action/SunbornLoginVerfyAction;->extendVal:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAfterLoginVerfyUserParams()Lcom/sunborn/gameplatform/core/module/SunbornUser;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sunborn/gameplatform/core/action/SunbornLoginVerfyAction;->user:Lcom/sunborn/gameplatform/core/module/SunbornUser;

    return-object v0
.end method

.method public getErrorMsg()Ljava/lang/String;
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sunborn/gameplatform/core/action/SunbornLoginVerfyAction;->mLoginParamsBean:Lcom/sunborn/gameplatform/core/module/SunbirLoginVerfyBean;

    if-nez v0, :cond_7

    .line 93
    const-string v0, "\u672a\u5b9a\u4e49\u7684\u9519\u8bef\u4fe1\u606f"

    .line 94
    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/sunborn/gameplatform/core/action/SunbornLoginVerfyAction;->mLoginParamsBean:Lcom/sunborn/gameplatform/core/module/SunbirLoginVerfyBean;

    invoke-virtual {v0}, Lcom/sunborn/gameplatform/core/module/SunbirLoginVerfyBean;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public getLoginParamsBean()Lcom/sunborn/gameplatform/core/module/SunbirLoginVerfyBean;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sunborn/gameplatform/core/action/SunbornLoginVerfyAction;->mLoginParamsBean:Lcom/sunborn/gameplatform/core/module/SunbirLoginVerfyBean;

    return-object v0
.end method

.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;Z)Z
    .registers 5
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "e"    # Ljava/io/IOException;
    .param p3, "finalRequest"    # Z

    .prologue
    .line 47
    if-eqz p3, :cond_5

    invoke-virtual {p0}, Lcom/sunborn/gameplatform/core/action/SunbornLoginVerfyAction;->onError()V

    .line 48
    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;Z)Z
    .registers 8
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "response"    # Lokhttp3/Response;
    .param p3, "finalRequest"    # Z

    .prologue
    const/4 v3, 0x0

    .line 53
    const-class v2, Lcom/sunborn/gameplatform/core/module/SunbirLoginVerfyBean;

    invoke-static {p2, v2}, Lcom/sunborn/gameplatform/core/common/HttpResultService;->HandlerBaseResultBean(Lokhttp3/Response;Ljava/lang/Class;)Lcom/sunborn/gameplatform/core/module/BaseResultBean;

    move-result-object v2

    check-cast v2, Lcom/sunborn/gameplatform/core/module/SunbirLoginVerfyBean;

    iput-object v2, p0, Lcom/sunborn/gameplatform/core/action/SunbornLoginVerfyAction;->mLoginParamsBean:Lcom/sunborn/gameplatform/core/module/SunbirLoginVerfyBean;

    .line 54
    iget-object v2, p0, Lcom/sunborn/gameplatform/core/action/SunbornLoginVerfyAction;->mLoginParamsBean:Lcom/sunborn/gameplatform/core/module/SunbirLoginVerfyBean;

    invoke-virtual {v2}, Lcom/sunborn/gameplatform/core/module/SunbirLoginVerfyBean;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "msgCode":Ljava/lang/String;
    iget-object v2, p0, Lcom/sunborn/gameplatform/core/action/SunbornLoginVerfyAction;->mLoginParamsBean:Lcom/sunborn/gameplatform/core/module/SunbirLoginVerfyBean;

    if-eqz v2, :cond_53

    iget-object v2, p0, Lcom/sunborn/gameplatform/core/action/SunbornLoginVerfyAction;->mLoginParamsBean:Lcom/sunborn/gameplatform/core/module/SunbirLoginVerfyBean;

    .line 56
    invoke-virtual {v2}, Lcom/sunborn/gameplatform/core/module/SunbirLoginVerfyBean;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sunborn/gameplatform/core/common/SUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_53

    iget-object v2, p0, Lcom/sunborn/gameplatform/core/action/SunbornLoginVerfyAction;->mLoginParamsBean:Lcom/sunborn/gameplatform/core/module/SunbirLoginVerfyBean;

    iget-object v2, v2, Lcom/sunborn/gameplatform/core/module/SunbirLoginVerfyBean;->open_id:Ljava/lang/String;

    .line 57
    invoke-static {v2}, Lcom/sunborn/gameplatform/core/common/SUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_53

    .line 58
    new-instance v1, Lcom/sunborn/gameplatform/core/module/SunbornUser;

    invoke-direct {v1}, Lcom/sunborn/gameplatform/core/module/SunbornUser;-><init>()V

    .line 59
    .local v1, "user":Lcom/sunborn/gameplatform/core/module/SunbornUser;
    iget-object v2, p0, Lcom/sunborn/gameplatform/core/action/SunbornLoginVerfyAction;->mLoginParamsBean:Lcom/sunborn/gameplatform/core/module/SunbirLoginVerfyBean;

    iget v2, v2, Lcom/sunborn/gameplatform/core/module/SunbirLoginVerfyBean;->result:I

    iput v2, v1, Lcom/sunborn/gameplatform/core/module/SunbornUser;->result:I

    .line 60
    iget-object v2, p0, Lcom/sunborn/gameplatform/core/action/SunbornLoginVerfyAction;->mLoginParamsBean:Lcom/sunborn/gameplatform/core/module/SunbirLoginVerfyBean;

    iget-object v2, v2, Lcom/sunborn/gameplatform/core/module/SunbirLoginVerfyBean;->msg:Ljava/lang/String;

    iput-object v2, v1, Lcom/sunborn/gameplatform/core/module/SunbornUser;->msg:Ljava/lang/String;

    .line 61
    iget-object v2, p0, Lcom/sunborn/gameplatform/core/action/SunbornLoginVerfyAction;->mLoginParamsBean:Lcom/sunborn/gameplatform/core/module/SunbirLoginVerfyBean;

    iget-object v2, v2, Lcom/sunborn/gameplatform/core/module/SunbirLoginVerfyBean;->open_id:Ljava/lang/String;

    iput-object v2, v1, Lcom/sunborn/gameplatform/core/module/SunbornUser;->openid:Ljava/lang/String;

    .line 62
    iget-object v2, p0, Lcom/sunborn/gameplatform/core/action/SunbornLoginVerfyAction;->mLoginParamsBean:Lcom/sunborn/gameplatform/core/module/SunbirLoginVerfyBean;

    iget-object v2, v2, Lcom/sunborn/gameplatform/core/module/SunbirLoginVerfyBean;->token:Ljava/lang/String;

    iput-object v2, v1, Lcom/sunborn/gameplatform/core/module/SunbornUser;->accessToken:Ljava/lang/String;

    .line 63
    iget-object v2, p0, Lcom/sunborn/gameplatform/core/action/SunbornLoginVerfyAction;->extendVal:Ljava/lang/String;

    iput-object v2, v1, Lcom/sunborn/gameplatform/core/module/SunbornUser;->extenVal:Ljava/lang/String;

    .line 64
    iput-object v1, p0, Lcom/sunborn/gameplatform/core/action/SunbornLoginVerfyAction;->user:Lcom/sunborn/gameplatform/core/module/SunbornUser;

    .line 65
    invoke-virtual {p0}, Lcom/sunborn/gameplatform/core/action/SunbornLoginVerfyAction;->onSuccess()V

    .line 66
    const/4 v2, 0x1

    .line 71
    .end local v1    # "user":Lcom/sunborn/gameplatform/core/module/SunbornUser;
    :goto_52
    return v2

    .line 67
    :cond_53
    if-eqz p3, :cond_5a

    .line 68
    invoke-virtual {p0}, Lcom/sunborn/gameplatform/core/action/SunbornLoginVerfyAction;->onError()V

    move v2, v3

    .line 69
    goto :goto_52

    :cond_5a
    move v2, v3

    .line 71
    goto :goto_52
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
    .line 39
    .local p1, "jsonMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lcom/sunborn/gameplatform/core/action/SunbornLoginVerfyAction;->onBegin()V

    .line 40
    const-string v0, "extend"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/sunborn/gameplatform/core/action/SunbornLoginVerfyAction;->extendVal:Ljava/lang/String;

    .line 41
    invoke-static {p1}, Lcom/sunborn/gameplatform/core/common/SUtils;->convertToJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sunborn/gameplatform/core/action/SunbornLoginVerfyAction;->requestJson:Ljava/lang/String;

    .line 42
    iget-object v0, p0, Lcom/sunborn/gameplatform/core/action/SunbornLoginVerfyAction;->request:Lcom/sunborn/gameplatform/core/request/SunbornLoginVerfyRequest;

    iget-object v1, p0, Lcom/sunborn/gameplatform/core/action/SunbornLoginVerfyAction;->requestJson:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sunborn/gameplatform/core/request/SunbornLoginVerfyRequest;->setJsonData(Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/sunborn/gameplatform/core/action/SunbornLoginVerfyAction;->request:Lcom/sunborn/gameplatform/core/request/SunbornLoginVerfyRequest;

    invoke-virtual {p0, v0}, Lcom/sunborn/gameplatform/core/action/SunbornLoginVerfyAction;->requestHttp(Lcom/lohanry/android/framework/network/httprequest/BaseRequest;)V

    .line 44
    return-void
.end method
