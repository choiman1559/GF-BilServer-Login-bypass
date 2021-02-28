.class public Lcom/unity3d/splash/services/core/connectivity/ConnectivityChangeReceiver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static _receiver:Lcom/unity3d/splash/services/core/connectivity/ConnectivityChangeReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/unity3d/splash/services/core/connectivity/ConnectivityChangeReceiver;->_receiver:Lcom/unity3d/splash/services/core/connectivity/ConnectivityChangeReceiver;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static register()V
    .registers 4

    sget-object v0, Lcom/unity3d/splash/services/core/connectivity/ConnectivityChangeReceiver;->_receiver:Lcom/unity3d/splash/services/core/connectivity/ConnectivityChangeReceiver;

    if-nez v0, :cond_1b

    new-instance v0, Lcom/unity3d/splash/services/core/connectivity/ConnectivityChangeReceiver;

    invoke-direct {v0}, Lcom/unity3d/splash/services/core/connectivity/ConnectivityChangeReceiver;-><init>()V

    sput-object v0, Lcom/unity3d/splash/services/core/connectivity/ConnectivityChangeReceiver;->_receiver:Lcom/unity3d/splash/services/core/connectivity/ConnectivityChangeReceiver;

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/unity3d/splash/services/core/connectivity/ConnectivityChangeReceiver;->_receiver:Lcom/unity3d/splash/services/core/connectivity/ConnectivityChangeReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1b
    return-void
.end method

.method public static unregister()V
    .registers 2

    sget-object v0, Lcom/unity3d/splash/services/core/connectivity/ConnectivityChangeReceiver;->_receiver:Lcom/unity3d/splash/services/core/connectivity/ConnectivityChangeReceiver;

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/unity3d/splash/services/core/connectivity/ConnectivityChangeReceiver;->_receiver:Lcom/unity3d/splash/services/core/connectivity/ConnectivityChangeReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/unity3d/splash/services/core/connectivity/ConnectivityChangeReceiver;->_receiver:Lcom/unity3d/splash/services/core/connectivity/ConnectivityChangeReceiver;

    :cond_10
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    const-string v0, "noConnectivity"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/unity3d/splash/services/core/connectivity/ConnectivityMonitor;->disconnected()V

    :cond_c
    :goto_c
    return-void

    :cond_d
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/unity3d/splash/services/core/connectivity/ConnectivityMonitor;->connected()V

    goto :goto_c
.end method
