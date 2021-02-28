.class public Lcom/sunborn/gameplatform/core/action/SunBornTrackingDataAction;
.super Lcom/lohanry/android/framework/action/BaseHttpAction;
.source "SunBornTrackingDataAction.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private delay:J

.field private maxTryTimes:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/lohanry/android/framework/action/BaseHttpAction;-><init>()V

    .line 19
    const-string v0, "SunBornTrackingDataAction"

    iput-object v0, p0, Lcom/sunborn/gameplatform/core/action/SunBornTrackingDataAction;->TAG:Ljava/lang/String;

    .line 21
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/sunborn/gameplatform/core/action/SunBornTrackingDataAction;->delay:J

    .line 22
    const/4 v0, 0x3

    iput v0, p0, Lcom/sunborn/gameplatform/core/action/SunBornTrackingDataAction;->maxTryTimes:I

    return-void
.end method

.method private push(Ljava/lang/String;)V
    .registers 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-static {p1}, Lcom/sunborn/gameplatform/core/common/SUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 26
    const-string v1, "SunBornTrackingDataAction url null"

    invoke-static {v1}, Lcom/lohanry/android/framework/tools/Logger;->error(Ljava/lang/String;)V

    .line 33
    :goto_b
    return-void

    .line 29
    :cond_c
    new-instance v0, Lcom/sunborn/gameplatform/core/request/TrackingDataRequest;

    invoke-direct {v0, p1}, Lcom/sunborn/gameplatform/core/request/TrackingDataRequest;-><init>(Ljava/lang/String;)V

    .line 30
    .local v0, "request":Lcom/sunborn/gameplatform/core/request/TrackingDataRequest;
    iget-wide v2, p0, Lcom/sunborn/gameplatform/core/action/SunBornTrackingDataAction;->delay:J

    invoke-virtual {v0, v2, v3}, Lcom/sunborn/gameplatform/core/request/TrackingDataRequest;->setDelayTime(J)V

    .line 31
    iget v1, p0, Lcom/sunborn/gameplatform/core/action/SunBornTrackingDataAction;->maxTryTimes:I

    invoke-virtual {v0, v1}, Lcom/sunborn/gameplatform/core/request/TrackingDataRequest;->setMaxRequestTime(I)V

    .line 32
    invoke-virtual {p0, v0}, Lcom/sunborn/gameplatform/core/action/SunBornTrackingDataAction;->requestHttp(Lcom/lohanry/android/framework/network/httprequest/BaseRequest;)V

    goto :goto_b
.end method


# virtual methods
.method public bind(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "openid"    # Ljava/lang/String;
    .param p2, "uuid"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-static {p1, p2}, Lcom/sunborn/gameplatform/core/common/DataCenterService;->getBindPPGameParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sunborn/gameplatform/core/action/SunBornTrackingDataAction;->push(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public createRole(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "openid"    # Ljava/lang/String;
    .param p2, "uuid"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-static {p1, p2}, Lcom/sunborn/gameplatform/core/common/DataCenterService;->getCreateRoleParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sunborn/gameplatform/core/action/SunBornTrackingDataAction;->push(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;Z)Z
    .registers 5
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "e"    # Ljava/io/IOException;
    .param p3, "finalRequest"    # Z

    .prologue
    .line 60
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;Z)Z
    .registers 6
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "response"    # Lokhttp3/Response;
    .param p3, "finalRequest"    # Z

    .prologue
    .line 67
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_17

    .line 68
    const-string v0, "SunBornTrackingDataAction"

    const-string v1, "sunborn tracking data success : "

    invoke-static {v0, v1}, Lcom/lohanry/android/framework/tools/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const/4 v0, 0x1

    :goto_16
    return v0

    .line 70
    :cond_17
    const-string v0, "SunBornTrackingDataAction"

    const-string v1, "sunborn tracking data error ,json : "

    invoke-static {v0, v1}, Lcom/lohanry/android/framework/tools/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public purchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "openid"    # Ljava/lang/String;
    .param p2, "amount"    # Ljava/lang/String;
    .param p3, "currencyCode"    # Ljava/lang/String;
    .param p4, "uuid"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-static {p1, p2, p3, p4}, Lcom/sunborn/gameplatform/core/common/DataCenterService;->getPurchaseParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sunborn/gameplatform/core/action/SunBornTrackingDataAction;->push(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public userLogin(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "openid"    # Ljava/lang/String;
    .param p2, "uuid"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-static {p1, p2}, Lcom/sunborn/gameplatform/core/common/DataCenterService;->getGameCenterLoginParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sunborn/gameplatform/core/action/SunBornTrackingDataAction;->push(Ljava/lang/String;)V

    .line 37
    return-void
.end method
