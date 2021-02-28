.class public Lcom/sunborn/gameplatform/core/request/SunbornLoginVerfyRequest;
.super Lcom/lohanry/android/framework/network/httprequest/JsonBodyRequest;
.source "SunbornLoginVerfyRequest.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/lohanry/android/framework/network/httprequest/JsonBodyRequest;-><init>()V

    .line 9
    sget-object v0, Lcom/lohanry/android/framework/network/httprequest/BaseRequest$RequestType;->POST:Lcom/lohanry/android/framework/network/httprequest/BaseRequest$RequestType;

    invoke-virtual {p0, v0}, Lcom/sunborn/gameplatform/core/request/SunbornLoginVerfyRequest;->setRequestType(Lcom/lohanry/android/framework/network/httprequest/BaseRequest$RequestType;)V

    .line 10
    invoke-static {}, Lcom/sunborn/gameplatform/core/config/SunbornPlatformConfig;->getInstance()Lcom/sunborn/gameplatform/core/config/SunbornPlatformConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sunborn/gameplatform/core/config/SunbornPlatformConfig;->getCOM_SUNBORN_PLATFORM_HTTP_LOGIN_VERFY()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sunborn/gameplatform/core/request/SunbornLoginVerfyRequest;->setRequestUrl(Ljava/lang/String;)V

    .line 11
    return-void
.end method
