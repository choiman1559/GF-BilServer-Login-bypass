.class Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerChromeClient;
.super Landroid/webkit/WebChromeClient;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebPlayerChromeClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;


# direct methods
.method private constructor <init>(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;)V
    .registers 2

    iput-object p1, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerChromeClient;-><init>(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;)V

    return-void
.end method


# virtual methods
.method public onCloseWindow(Landroid/webkit/WebView;)V
    .registers 8

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    const-string v1, "onCloseWindow"

    invoke-static {v0, v1}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$400(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onCloseWindow(Landroid/webkit/WebView;)V

    :cond_d
    iget-object v0, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    const-string v1, "onCloseWindow"

    invoke-static {v0, v1}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$500(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v0

    sget-object v1, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->WEBPLAYER:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;->CLOSE_WINDOW:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    invoke-static {v5}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$600(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :cond_2e
    return-void
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .registers 10

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    const-string v2, "onConsoleMessage"

    invoke-static {v1, v2}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$400(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :cond_18
    iget-object v1, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    const-string v2, "onConsoleMessage"

    invoke-static {v1, v2}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$500(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_42

    const-string v1, ""

    if-eqz p1, :cond_2a

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v1

    :cond_2a
    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v2

    sget-object v3, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->WEBPLAYER:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v4, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;->CONSOLE_MESSAGE:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    iget-object v1, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    invoke-static {v1}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$600(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v7

    invoke-virtual {v2, v3, v4, v5}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :cond_42
    iget-object v1, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    const-string v2, "onConsoleMessage"

    invoke-static {v1, v2}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$700(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5c

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    const-string v1, "onConsoleMessage"

    const-class v2, Ljava/lang/Boolean;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$800(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    :cond_5c
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .registers 13

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    const-string v2, "onCreateWindow"

    invoke-static {v1, v2}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$400(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :cond_17
    iget-object v1, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    const-string v2, "onCreateWindow"

    invoke-static {v1, v2}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$500(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v1

    sget-object v2, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->WEBPLAYER:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v3, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;->CREATE_WINDOW:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object p4, v4, v5

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    invoke-static {v6}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$600(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :cond_48
    iget-object v1, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    const-string v2, "onCreateWindow"

    invoke-static {v1, v2}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$700(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_62

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    const-string v1, "onCreateWindow"

    const-class v2, Ljava/lang/Boolean;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$800(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    :cond_62
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .registers 9

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    const-string v1, "onGeolocationPermissionsShowPrompt"

    invoke-static {v0, v1}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$400(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    :cond_d
    iget-object v0, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    const-string v1, "onGeolocationPermissionsShowPrompt"

    invoke-static {v0, v1}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$500(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v0

    sget-object v1, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->WEBPLAYER:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;->GEOLOCATION_PERMISSIONS_SHOW:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    invoke-static {v5}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$600(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :cond_31
    return-void
.end method

.method public onHideCustomView()V
    .registers 7

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    const-string v1, "onHideCustomView"

    invoke-static {v0, v1}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$400(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-super {p0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    :cond_d
    iget-object v0, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    const-string v1, "onHideCustomView"

    invoke-static {v0, v1}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$500(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v0

    sget-object v1, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->WEBPLAYER:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;->HIDE_CUSTOM_VIEW:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    invoke-static {v5}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$600(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :cond_2e
    return-void
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 13

    const/4 v7, 0x1

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    const-string v2, "onJsAlert"

    invoke-static {v1, v2}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$400(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :cond_18
    iget-object v1, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    const-string v2, "onJsAlert"

    invoke-static {v1, v2}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$500(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v1

    sget-object v2, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->WEBPLAYER:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v3, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;->JS_ALERT:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v5

    aput-object p3, v4, v7

    const/4 v5, 0x2

    aput-object p4, v4, v5

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    invoke-static {v6}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$600(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :cond_40
    iget-object v1, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    const-string v2, "onJsAlert"

    invoke-static {v1, v2}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$700(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5a

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    const-string v1, "onJsAlert"

    const-class v2, Ljava/lang/Boolean;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$800(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    :cond_5a
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 13

    const/4 v7, 0x1

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    const-string v2, "onJsConfirm"

    invoke-static {v1, v2}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$400(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :cond_18
    iget-object v1, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    const-string v2, "onJsConfirm"

    invoke-static {v1, v2}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$500(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v1

    sget-object v2, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->WEBPLAYER:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v3, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;->JS_CONFIRM:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v5

    aput-object p3, v4, v7

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    invoke-static {v6}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$600(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :cond_3d
    iget-object v1, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    const-string v2, "onJsConfirm"

    invoke-static {v1, v2}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$700(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_57

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    const-string v1, "onJsConfirm"

    const-class v2, Ljava/lang/Boolean;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$800(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    :cond_57
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .registers 14

    const/4 v7, 0x1

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    const-string v2, "onJsPrompt"

    invoke-static {v1, v2}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$400(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-super/range {p0 .. p5}, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :cond_18
    iget-object v1, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    const-string v2, "onJsPrompt"

    invoke-static {v1, v2}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$500(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v1

    sget-object v2, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->WEBPLAYER:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v3, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;->JS_PROMPT:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v5

    aput-object p3, v4, v7

    const/4 v5, 0x2

    aput-object p4, v4, v5

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    invoke-static {v6}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$600(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :cond_40
    iget-object v1, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    const-string v2, "onJsPrompt"

    invoke-static {v1, v2}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$700(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5a

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    const-string v1, "onJsPrompt"

    const-class v2, Ljava/lang/Boolean;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$800(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    :cond_5a
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public onPermissionRequest(Landroid/webkit/PermissionRequest;)V
    .registers 8

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    const-string v1, "onPermissionRequest"

    invoke-static {v0, v1}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$400(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onPermissionRequest(Landroid/webkit/PermissionRequest;)V

    :cond_d
    iget-object v0, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    const-string v1, "onPermissionRequest"

    invoke-static {v0, v1}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$500(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    const-string v0, ""

    if-eqz p1, :cond_29

    invoke-virtual {p1}, Landroid/webkit/PermissionRequest;->getOrigin()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_29

    invoke-virtual {p1}, Landroid/webkit/PermissionRequest;->getOrigin()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_29
    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v1

    sget-object v2, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->WEBPLAYER:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v3, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;->PERMISSION_REQUEST:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    iget-object v5, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    invoke-static {v5}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$600(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-virtual {v1, v2, v3, v4}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :cond_43
    return-void
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .registers 9

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    const-string v1, "onProgressChanged"

    invoke-static {v0, v1}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$400(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    :cond_d
    iget-object v0, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    const-string v1, "onProgressChanged"

    invoke-static {v0, v1}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$500(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v0

    sget-object v1, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->WEBPLAYER:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;->PROGRESS_CHANGED:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    invoke-static {v5}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$600(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :cond_35
    return-void
.end method

.method public onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
    .registers 9

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    const-string v1, "onReceivedIcon"

    invoke-static {v0, v1}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$400(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V

    :cond_d
    iget-object v0, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    const-string v1, "onReceivedIcon"

    invoke-static {v0, v1}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$500(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v0

    sget-object v1, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->WEBPLAYER:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;->RECEIVED_ICON:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    invoke-static {v5}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$600(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :cond_2e
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 9

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    const-string v1, "onReceivedTitle"

    invoke-static {v0, v1}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$400(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_d
    iget-object v0, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    const-string v1, "onReceivedTitle"

    invoke-static {v0, v1}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$500(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v0

    sget-object v1, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->WEBPLAYER:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;->RECEIVED_TITLE:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    invoke-static {v5}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$600(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :cond_31
    return-void
.end method

.method public onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .registers 10

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    const-string v1, "onReceivedTouchIconUrl"

    invoke-static {v0, v1}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$400(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    :cond_d
    iget-object v0, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    const-string v1, "onReceivedTouchIconUrl"

    invoke-static {v0, v1}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$500(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v0

    sget-object v1, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->WEBPLAYER:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;->RECEIVED_TOUCH_ICON_URL:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    invoke-static {v5}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$600(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :cond_38
    return-void
.end method

.method public onRequestFocus(Landroid/webkit/WebView;)V
    .registers 8

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    const-string v1, "onRequestFocus"

    invoke-static {v0, v1}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$400(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onRequestFocus(Landroid/webkit/WebView;)V

    :cond_d
    iget-object v0, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    const-string v1, "onRequestFocus"

    invoke-static {v0, v1}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$500(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v0

    sget-object v1, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->WEBPLAYER:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;->REQUEST_FOCUS:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    invoke-static {v5}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$600(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :cond_2e
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .registers 9

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    const-string v1, "onShowCustomView"

    invoke-static {v0, v1}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$400(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    :cond_d
    iget-object v0, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    const-string v1, "onShowCustomView"

    invoke-static {v0, v1}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$500(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v0

    sget-object v1, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->WEBPLAYER:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;->SHOW_CUSTOM_VIEW:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    invoke-static {v5}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$600(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :cond_2e
    return-void
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .registers 12

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    const-string v2, "onShowFileChooser"

    invoke-static {v1, v2}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$400(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :cond_18
    iget-object v1, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    const-string v2, "onShowFileChooser"

    invoke-static {v1, v2}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$500(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v1

    sget-object v2, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->WEBPLAYER:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v3, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;->SHOW_FILE_CHOOSER:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    invoke-static {v5}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$600(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v3, v4}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :cond_37
    iget-object v1, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    const-string v2, "onShowFileChooser"

    invoke-static {v1, v2}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$700(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5b

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    const-string v1, "onShowFileChooser"

    const-class v2, Ljava/lang/Boolean;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$800(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5b

    const/4 v1, 0x0

    invoke-interface {p2, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    :cond_5b
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
