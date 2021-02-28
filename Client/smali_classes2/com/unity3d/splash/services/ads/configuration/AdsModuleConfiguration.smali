.class public Lcom/unity3d/splash/services/ads/configuration/AdsModuleConfiguration;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unity3d/splash/services/ads/configuration/IAdsModuleConfiguration;


# instance fields
.field private _address:Ljava/net/InetAddress;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/unity3d/splash/services/ads/configuration/AdsModuleConfiguration;Ljava/net/InetAddress;)Ljava/net/InetAddress;
    .registers 2

    iput-object p1, p0, Lcom/unity3d/splash/services/ads/configuration/AdsModuleConfiguration;->_address:Ljava/net/InetAddress;

    return-object p1
.end method


# virtual methods
.method public getAdUnitViewHandlers()Ljava/util/Map;
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "videoplayer"

    const-class v2, Lcom/unity3d/splash/services/ads/adunit/VideoPlayerHandler;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "webplayer"

    const-class v2, Lcom/unity3d/splash/services/ads/adunit/WebPlayerHandler;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "webview"

    const-class v2, Lcom/unity3d/splash/services/ads/adunit/WebViewHandler;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getWebAppApiClassList()[Ljava/lang/Class;
    .registers 4

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/unity3d/splash/services/ads/api/AdUnit;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/unity3d/splash/services/ads/api/Listener;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/unity3d/splash/services/ads/api/VideoPlayer;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/unity3d/splash/services/ads/api/Placement;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lcom/unity3d/splash/services/ads/webplayer/api/WebPlayer;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-class v2, Lcom/unity3d/splash/services/ads/api/AdsProperties;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public initCompleteState(Lcom/unity3d/splash/services/core/configuration/Configuration;)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method public initErrorState(Lcom/unity3d/splash/services/core/configuration/Configuration;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Init failed in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/unity3d/splash/services/ads/configuration/AdsModuleConfiguration$3;

    invoke-direct {v1, p0, v0}, Lcom/unity3d/splash/services/ads/configuration/AdsModuleConfiguration$3;-><init>(Lcom/unity3d/splash/services/ads/configuration/AdsModuleConfiguration;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/unity3d/splash/services/core/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    return v0
.end method

.method public initModuleState(Lcom/unity3d/splash/services/core/configuration/Configuration;)Z
    .registers 8

    const/4 v0, 0x1

    const-string v1, "Unity Ads init: checking for ad blockers"

    invoke-static {v1}, Lcom/unity3d/splash/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    :try_start_6
    new-instance v1, Ljava/net/URL;

    invoke-virtual {p1}, Lcom/unity3d/splash/services/core/configuration/Configuration;->getConfigUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;
    :try_end_12
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_12} :catch_43

    move-result-object v1

    new-instance v2, Landroid/os/ConditionVariable;

    invoke-direct {v2}, Landroid/os/ConditionVariable;-><init>()V

    new-instance v3, Lcom/unity3d/splash/services/ads/configuration/AdsModuleConfiguration$1;

    invoke-direct {v3, p0, v1, v2}, Lcom/unity3d/splash/services/ads/configuration/AdsModuleConfiguration$1;-><init>(Lcom/unity3d/splash/services/ads/configuration/AdsModuleConfiguration;Ljava/lang/String;Landroid/os/ConditionVariable;)V

    invoke-virtual {v3}, Lcom/unity3d/splash/services/ads/configuration/AdsModuleConfiguration$1;->start()V

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v4, v5}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v1

    if-eqz v1, :cond_42

    iget-object v1, p0, Lcom/unity3d/splash/services/ads/configuration/AdsModuleConfiguration;->_address:Ljava/net/InetAddress;

    if-eqz v1, :cond_42

    iget-object v1, p0, Lcom/unity3d/splash/services/ads/configuration/AdsModuleConfiguration;->_address:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v1

    if-eqz v1, :cond_42

    const-string v0, "Unity Ads init: halting init because Unity Ads config resolves to loopback address (due to ad blocker?)"

    invoke-static {v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->error(Ljava/lang/String;)V

    new-instance v0, Lcom/unity3d/splash/services/ads/configuration/AdsModuleConfiguration$2;

    invoke-direct {v0, p0}, Lcom/unity3d/splash/services/ads/configuration/AdsModuleConfiguration$2;-><init>(Lcom/unity3d/splash/services/ads/configuration/AdsModuleConfiguration;)V

    invoke-static {v0}, Lcom/unity3d/splash/services/core/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    :cond_42
    :goto_42
    return v0

    :catch_43
    move-exception v1

    goto :goto_42
.end method

.method public resetState(Lcom/unity3d/splash/services/core/configuration/Configuration;)Z
    .registers 3

    invoke-static {}, Lcom/unity3d/splash/services/ads/placement/Placement;->reset()V

    const/4 v0, 0x1

    return v0
.end method
