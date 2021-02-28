.class public Lcom/unity3d/splash/services/core/connectivity/ConnectivityMonitor;
.super Ljava/lang/Object;


# static fields
.field private static _connected:I

.field private static _listeners:Ljava/util/HashSet;

.field private static _listening:Z

.field private static _networkType:I

.field private static _webappMonitoring:Z

.field private static _wifi:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    sput v1, Lcom/unity3d/splash/services/core/connectivity/ConnectivityMonitor;->_connected:I

    sput-boolean v0, Lcom/unity3d/splash/services/core/connectivity/ConnectivityMonitor;->_listening:Z

    sput-boolean v0, Lcom/unity3d/splash/services/core/connectivity/ConnectivityMonitor;->_webappMonitoring:Z

    sput-boolean v0, Lcom/unity3d/splash/services/core/connectivity/ConnectivityMonitor;->_wifi:Z

    sput v1, Lcom/unity3d/splash/services/core/connectivity/ConnectivityMonitor;->_networkType:I

    const/4 v0, 0x0

    sput-object v0, Lcom/unity3d/splash/services/core/connectivity/ConnectivityMonitor;->_listeners:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addListener(Lcom/unity3d/splash/services/core/connectivity/IConnectivityListener;)V
    .registers 2

    sget-object v0, Lcom/unity3d/splash/services/core/connectivity/ConnectivityMonitor;->_listeners:Ljava/util/HashSet;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/unity3d/splash/services/core/connectivity/ConnectivityMonitor;->_listeners:Ljava/util/HashSet;

    :cond_b
    sget-object v0, Lcom/unity3d/splash/services/core/connectivity/ConnectivityMonitor;->_listeners:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/unity3d/splash/services/core/connectivity/ConnectivityMonitor;->updateListeningStatus()V

    return-void
.end method

.method public static connected()V
    .registers 3

    sget v0, Lcom/unity3d/splash/services/core/connectivity/ConnectivityMonitor;->_connected:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    :goto_5
    return-void

    :cond_6
    const-string v0, "Unity Ads connectivity change: connected"

    invoke-static {v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    invoke-static {}, Lcom/unity3d/splash/services/core/connectivity/ConnectivityMonitor;->initConnectionStatus()V

    sget-object v0, Lcom/unity3d/splash/services/core/connectivity/ConnectivityMonitor;->_listeners:Ljava/util/HashSet;

    if-eqz v0, :cond_28

    sget-object v0, Lcom/unity3d/splash/services/core/connectivity/ConnectivityMonitor;->_listeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/splash/services/core/connectivity/IConnectivityListener;

    invoke-interface {v0}, Lcom/unity3d/splash/services/core/connectivity/IConnectivityListener;->onConnected()V

    goto :goto_18

    :cond_28
    sget-object v0, Lcom/unity3d/splash/services/core/connectivity/ConnectivityEvent;->CONNECTED:Lcom/unity3d/splash/services/core/connectivity/ConnectivityEvent;

    sget-boolean v1, Lcom/unity3d/splash/services/core/connectivity/ConnectivityMonitor;->_wifi:Z

    sget v2, Lcom/unity3d/splash/services/core/connectivity/ConnectivityMonitor;->_networkType:I

    invoke-static {v0, v1, v2}, Lcom/unity3d/splash/services/core/connectivity/ConnectivityMonitor;->sendToWebview(Lcom/unity3d/splash/services/core/connectivity/ConnectivityEvent;ZI)V

    goto :goto_5
.end method

.method public static connectionStatusChanged()V
    .registers 3

    const/4 v1, 0x1

    sget v0, Lcom/unity3d/splash/services/core/connectivity/ConnectivityMonitor;->_connected:I

    if-eq v0, v1, :cond_6

    :cond_5
    :goto_5
    return-void

    :cond_6
    invoke-static {}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v1, :cond_4f

    :goto_24
    invoke-static {}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    sget-boolean v2, Lcom/unity3d/splash/services/core/connectivity/ConnectivityMonitor;->_wifi:Z

    if-ne v1, v2, :cond_40

    sget v2, Lcom/unity3d/splash/services/core/connectivity/ConnectivityMonitor;->_networkType:I

    if-eq v0, v2, :cond_5

    sget-boolean v2, Lcom/unity3d/splash/services/core/connectivity/ConnectivityMonitor;->_wifi:Z

    if-nez v2, :cond_5

    :cond_40
    sput-boolean v1, Lcom/unity3d/splash/services/core/connectivity/ConnectivityMonitor;->_wifi:Z

    sput v0, Lcom/unity3d/splash/services/core/connectivity/ConnectivityMonitor;->_networkType:I

    const-string v2, "Unity Ads connectivity change: network change"

    invoke-static {v2}, Lcom/unity3d/splash/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    sget-object v2, Lcom/unity3d/splash/services/core/connectivity/ConnectivityEvent;->NETWORK_CHANGE:Lcom/unity3d/splash/services/core/connectivity/ConnectivityEvent;

    invoke-static {v2, v1, v0}, Lcom/unity3d/splash/services/core/connectivity/ConnectivityMonitor;->sendToWebview(Lcom/unity3d/splash/services/core/connectivity/ConnectivityEvent;ZI)V

    goto :goto_5

    :cond_4f
    const/4 v0, 0x0

    move v1, v0

    goto :goto_24
.end method

.method public static disconnected()V
    .registers 3

    const/4 v2, 0x0

    sget v0, Lcom/unity3d/splash/services/core/connectivity/ConnectivityMonitor;->_connected:I

    if-nez v0, :cond_6

    :goto_5
    return-void

    :cond_6
    sput v2, Lcom/unity3d/splash/services/core/connectivity/ConnectivityMonitor;->_connected:I

    const-string v0, "Unity Ads connectivity change: disconnected"

    invoke-static {v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    sget-object v0, Lcom/unity3d/splash/services/core/connectivity/ConnectivityMonitor;->_listeners:Ljava/util/HashSet;

    if-eqz v0, :cond_27

    sget-object v0, Lcom/unity3d/splash/services/core/connectivity/ConnectivityMonitor;->_listeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/splash/services/core/connectivity/IConnectivityListener;

    invoke-interface {v0}, Lcom/unity3d/splash/services/core/connectivity/IConnectivityListener;->onDisconnected()V

    goto :goto_17

    :cond_27
    sget-object v0, Lcom/unity3d/splash/services/core/connectivity/ConnectivityEvent;->DISCONNECTED:Lcom/unity3d/splash/services/core/connectivity/ConnectivityEvent;

    invoke-static {v0, v2, v2}, Lcom/unity3d/splash/services/core/connectivity/ConnectivityMonitor;->sendToWebview(Lcom/unity3d/splash/services/core/connectivity/ConnectivityEvent;ZI)V

    goto :goto_5
.end method

.method private static initConnectionStatus()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_11

    :cond_10
    :goto_10
    return-void

    :cond_11
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_3f

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_3f

    sput v1, Lcom/unity3d/splash/services/core/connectivity/ConnectivityMonitor;->_connected:I

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v1, :cond_3d

    move v0, v1

    :goto_26
    sput-boolean v0, Lcom/unity3d/splash/services/core/connectivity/ConnectivityMonitor;->_wifi:Z

    if-nez v0, :cond_10

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    sput v0, Lcom/unity3d/splash/services/core/connectivity/ConnectivityMonitor;->_networkType:I

    goto :goto_10

    :cond_3d
    move v0, v2

    goto :goto_26

    :cond_3f
    sput v2, Lcom/unity3d/splash/services/core/connectivity/ConnectivityMonitor;->_connected:I

    goto :goto_10
.end method

.method public static removeListener(Lcom/unity3d/splash/services/core/connectivity/IConnectivityListener;)V
    .registers 2

    sget-object v0, Lcom/unity3d/splash/services/core/connectivity/ConnectivityMonitor;->_listeners:Ljava/util/HashSet;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    sget-object v0, Lcom/unity3d/splash/services/core/connectivity/ConnectivityMonitor;->_listeners:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/unity3d/splash/services/core/connectivity/ConnectivityMonitor;->updateListeningStatus()V

    goto :goto_4
.end method

.method private static sendToWebview(Lcom/unity3d/splash/services/core/connectivity/ConnectivityEvent;ZI)V
    .registers 10

    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    sget-boolean v0, Lcom/unity3d/splash/services/core/connectivity/ConnectivityMonitor;->_webappMonitoring:Z

    if-nez v0, :cond_8

    :cond_7
    :goto_7
    return-void

    :cond_8
    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->isWebAppLoaded()Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Lcom/unity3d/splash/services/core/connectivity/ConnectivityMonitor$1;->$SwitchMap$com$unity3d$splash$services$core$connectivity$ConnectivityEvent:[I

    invoke-virtual {p0}, Lcom/unity3d/splash/services/core/connectivity/ConnectivityEvent;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_86

    goto :goto_7

    :pswitch_20
    if-eqz p1, :cond_38

    sget-object v1, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->CONNECTIVITY:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/splash/services/core/connectivity/ConnectivityEvent;->CONNECTED:Lcom/unity3d/splash/services/core/connectivity/ConnectivityEvent;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto :goto_7

    :cond_38
    sget-object v1, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->CONNECTIVITY:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/splash/services/core/connectivity/ConnectivityEvent;->CONNECTED:Lcom/unity3d/splash/services/core/connectivity/ConnectivityEvent;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto :goto_7

    :pswitch_4e
    sget-object v1, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->CONNECTIVITY:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/splash/services/core/connectivity/ConnectivityEvent;->DISCONNECTED:Lcom/unity3d/splash/services/core/connectivity/ConnectivityEvent;

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto :goto_7

    :pswitch_58
    if-eqz p1, :cond_70

    sget-object v1, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->CONNECTIVITY:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/splash/services/core/connectivity/ConnectivityEvent;->NETWORK_CHANGE:Lcom/unity3d/splash/services/core/connectivity/ConnectivityEvent;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto :goto_7

    :cond_70
    sget-object v1, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->CONNECTIVITY:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/splash/services/core/connectivity/ConnectivityEvent;->NETWORK_CHANGE:Lcom/unity3d/splash/services/core/connectivity/ConnectivityEvent;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto :goto_7

    :pswitch_data_86
    .packed-switch 0x1
        :pswitch_20
        :pswitch_4e
        :pswitch_58
    .end packed-switch
.end method

.method public static setConnectionMonitoring(Z)V
    .registers 1

    sput-boolean p0, Lcom/unity3d/splash/services/core/connectivity/ConnectivityMonitor;->_webappMonitoring:Z

    invoke-static {}, Lcom/unity3d/splash/services/core/connectivity/ConnectivityMonitor;->updateListeningStatus()V

    return-void
.end method

.method private static startListening()V
    .registers 2

    sget-boolean v0, Lcom/unity3d/splash/services/core/connectivity/ConnectivityMonitor;->_listening:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x1

    sput-boolean v0, Lcom/unity3d/splash/services/core/connectivity/ConnectivityMonitor;->_listening:Z

    invoke-static {}, Lcom/unity3d/splash/services/core/connectivity/ConnectivityMonitor;->initConnectionStatus()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_15

    invoke-static {}, Lcom/unity3d/splash/services/core/connectivity/ConnectivityChangeReceiver;->register()V

    goto :goto_4

    :cond_15
    invoke-static {}, Lcom/unity3d/splash/services/core/connectivity/ConnectivityNetworkCallback;->register()V

    goto :goto_4
.end method

.method public static stopAll()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/unity3d/splash/services/core/connectivity/ConnectivityMonitor;->_listeners:Ljava/util/HashSet;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/unity3d/splash/services/core/connectivity/ConnectivityMonitor;->_webappMonitoring:Z

    invoke-static {}, Lcom/unity3d/splash/services/core/connectivity/ConnectivityMonitor;->updateListeningStatus()V

    return-void
.end method

.method private static stopListening()V
    .registers 2

    sget-boolean v0, Lcom/unity3d/splash/services/core/connectivity/ConnectivityMonitor;->_listening:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x0

    sput-boolean v0, Lcom/unity3d/splash/services/core/connectivity/ConnectivityMonitor;->_listening:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_12

    invoke-static {}, Lcom/unity3d/splash/services/core/connectivity/ConnectivityChangeReceiver;->unregister()V

    goto :goto_4

    :cond_12
    invoke-static {}, Lcom/unity3d/splash/services/core/connectivity/ConnectivityNetworkCallback;->unregister()V

    goto :goto_4
.end method

.method private static updateListeningStatus()V
    .registers 1

    sget-boolean v0, Lcom/unity3d/splash/services/core/connectivity/ConnectivityMonitor;->_webappMonitoring:Z

    if-nez v0, :cond_10

    sget-object v0, Lcom/unity3d/splash/services/core/connectivity/ConnectivityMonitor;->_listeners:Ljava/util/HashSet;

    if-eqz v0, :cond_14

    sget-object v0, Lcom/unity3d/splash/services/core/connectivity/ConnectivityMonitor;->_listeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    :cond_10
    invoke-static {}, Lcom/unity3d/splash/services/core/connectivity/ConnectivityMonitor;->startListening()V

    :goto_13
    return-void

    :cond_14
    invoke-static {}, Lcom/unity3d/splash/services/core/connectivity/ConnectivityMonitor;->stopListening()V

    goto :goto_13
.end method
