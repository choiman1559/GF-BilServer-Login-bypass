.class public Lcom/unity3d/splash/services/core/broadcast/BroadcastEventReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private _name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/unity3d/splash/services/core/broadcast/BroadcastEventReceiver;->_name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    const-string v0, ""

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_85

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_14
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_19
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_60

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3e
    .catch Lorg/json/JSONException; {:try_start_19 .. :try_end_3e} :catch_3f

    goto :goto_2b

    :catch_3f
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "JSONException when composing extras for broadcast action "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    :cond_60
    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->isWebAppLoaded()Z

    move-result v4

    if-eqz v4, :cond_6

    sget-object v4, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->BROADCAST:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v5, Lcom/unity3d/splash/services/core/broadcast/BroadcastEvent;->ACTION:Lcom/unity3d/splash/services/core/broadcast/BroadcastEvent;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/unity3d/splash/services/core/broadcast/BroadcastEventReceiver;->_name:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v2, v6, v7

    const/4 v2, 0x2

    aput-object v1, v6, v2

    const/4 v1, 0x3

    aput-object v3, v6, v1

    invoke-virtual {v0, v4, v5, v6}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto :goto_6

    :cond_85
    move-object v1, v0

    goto :goto_14
.end method
