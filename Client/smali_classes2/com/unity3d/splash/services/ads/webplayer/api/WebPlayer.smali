.class public Lcom/unity3d/splash/services/ads/webplayer/api/WebPlayer;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearSettings(Ljava/lang/String;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 3
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    invoke-static {}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerSettingsCache;->getInstance()Lcom/unity3d/splash/services/ads/webplayer/WebPlayerSettingsCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerSettingsCache;->removeWebSettings(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerSettingsCache;->removeWebPlayerSettings(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerSettingsCache;->removeWebPlayerEventSettings(Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    return-void
.end method

.method private static getAdUnitWebPlayer()Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;
    .registers 2

    invoke-static {}, Lcom/unity3d/splash/services/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-static {}, Lcom/unity3d/splash/services/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;

    move-result-object v0

    const-string v1, "webplayer"

    invoke-virtual {v0, v1}, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->getViewHandler(Ljava/lang/String;)Lcom/unity3d/splash/services/ads/adunit/IAdUnitViewHandler;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-interface {v0}, Lcom/unity3d/splash/services/ads/adunit/IAdUnitViewHandler;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1b

    check-cast v0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    :goto_1a
    return-object v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public static getErroredSettings(Ljava/lang/String;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 7
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    const/4 v4, 0x0

    invoke-static {p0}, Lcom/unity3d/splash/services/ads/webplayer/api/WebPlayer;->getWebPlayer(Ljava/lang/String;)Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    move-result-object v0

    if-eqz v0, :cond_46

    invoke-virtual {v0}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->getErroredSettings()Ljava/util/Map;

    move-result-object v0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_10
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_31} :catch_32

    goto :goto_18

    :catch_32
    move-exception v0

    const-string v1, "Error forming JSON object"

    invoke-static {v1, v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_38
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v4

    invoke-virtual {p1, v0}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    new-array v0, v4, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    :goto_45
    return-void

    :cond_46
    sget-object v0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerError;->WEBPLAYER_NULL:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerError;

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_45
.end method

.method private static getWebPlayer(Ljava/lang/String;)Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;
    .registers 2

    const-string v0, "webplayer"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/unity3d/splash/services/ads/webplayer/api/WebPlayer;->getAdUnitWebPlayer()Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public static sendEvent(Lorg/json/JSONArray;Ljava/lang/String;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 5
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/unity3d/splash/services/ads/webplayer/api/WebPlayer;->getWebPlayer(Ljava/lang/String;)Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0, p0}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->sendEvent(Lorg/json/JSONArray;)V

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p2, v0}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    :goto_f
    return-void

    :cond_10
    sget-object v0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerError;->WEBPLAYER_NULL:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerError;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2, v0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_f
.end method

.method public static setData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 8
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    const/4 v2, 0x0

    invoke-static {p3}, Lcom/unity3d/splash/services/ads/webplayer/api/WebPlayer;->getWebPlayer(Ljava/lang/String;)Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    move-result-object v0

    if-eqz v0, :cond_15

    new-instance v1, Lcom/unity3d/splash/services/ads/webplayer/api/WebPlayer$2;

    invoke-direct {v1, v0, p0, p1, p2}, Lcom/unity3d/splash/services/ads/webplayer/api/WebPlayer$2;-><init>(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/unity3d/splash/services/core/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p4, v0}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    :goto_14
    return-void

    :cond_15
    sget-object v0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerError;->WEBPLAYER_NULL:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerError;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p4, v0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_14
.end method

.method public static setDataWithUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 13
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    const/4 v6, 0x0

    invoke-static {p4}, Lcom/unity3d/splash/services/ads/webplayer/api/WebPlayer;->getWebPlayer(Ljava/lang/String;)Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    move-result-object v1

    if-eqz v1, :cond_19

    new-instance v0, Lcom/unity3d/splash/services/ads/webplayer/api/WebPlayer$3;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/unity3d/splash/services/ads/webplayer/api/WebPlayer$3;-><init>(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/unity3d/splash/services/core/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    new-array v0, v6, [Ljava/lang/Object;

    invoke-virtual {p5, v0}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    :goto_18
    return-void

    :cond_19
    sget-object v0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerError;->WEBPLAYER_NULL:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerError;

    new-array v1, v6, [Ljava/lang/Object;

    invoke-virtual {p5, v0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_18
.end method

.method public static setEventSettings(Lorg/json/JSONObject;Ljava/lang/String;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 4
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    invoke-static {}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerSettingsCache;->getInstance()Lcom/unity3d/splash/services/ads/webplayer/WebPlayerSettingsCache;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerSettingsCache;->addWebPlayerEventSettings(Ljava/lang/String;Lorg/json/JSONObject;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p2, v0}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    return-void
.end method

.method public static setSettings(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 5
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    invoke-static {}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerSettingsCache;->getInstance()Lcom/unity3d/splash/services/ads/webplayer/WebPlayerSettingsCache;

    move-result-object v0

    invoke-virtual {v0, p2, p0}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerSettingsCache;->addWebSettings(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerSettingsCache;->getInstance()Lcom/unity3d/splash/services/ads/webplayer/WebPlayerSettingsCache;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerSettingsCache;->addWebPlayerSettings(Ljava/lang/String;Lorg/json/JSONObject;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p3, v0}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    return-void
.end method

.method public static setUrl(Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 6
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/unity3d/splash/services/ads/webplayer/api/WebPlayer;->getWebPlayer(Ljava/lang/String;)Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    move-result-object v0

    if-eqz v0, :cond_15

    new-instance v1, Lcom/unity3d/splash/services/ads/webplayer/api/WebPlayer$1;

    invoke-direct {v1, v0, p0}, Lcom/unity3d/splash/services/ads/webplayer/api/WebPlayer$1;-><init>(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/unity3d/splash/services/core/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p2, v0}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    :goto_14
    return-void

    :cond_15
    sget-object v0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerError;->WEBPLAYER_NULL:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerError;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p2, v0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_14
.end method
