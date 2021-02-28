.class public Lcom/unity3d/splash/services/core/api/Broadcast;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addBroadcastListener(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 8
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_20

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    move v0, v1

    :goto_e
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_1d

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_1d
    invoke-static {p0, p1, v2}, Lcom/unity3d/splash/services/core/broadcast/BroadcastMonitor;->addBroadcastListener(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_20
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_20} :catch_26

    :cond_20
    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p3, v0}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    :goto_25
    return-void

    :catch_26
    move-exception v0

    sget-object v0, Lcom/unity3d/splash/services/core/broadcast/BroadcastError;->JSON_ERROR:Lcom/unity3d/splash/services/core/broadcast/BroadcastError;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p3, v0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_25
.end method

.method public static addBroadcastListener(Ljava/lang/String;Lorg/json/JSONArray;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 4
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lcom/unity3d/splash/services/core/api/Broadcast;->addBroadcastListener(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V

    return-void
.end method

.method public static removeAllBroadcastListeners(Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 2
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    invoke-static {}, Lcom/unity3d/splash/services/core/broadcast/BroadcastMonitor;->removeAllBroadcastListeners()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    return-void
.end method

.method public static removeBroadcastListener(Ljava/lang/String;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 3
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    invoke-static {p0}, Lcom/unity3d/splash/services/core/broadcast/BroadcastMonitor;->removeBroadcastListener(Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    return-void
.end method
