.class public Lcom/unity3d/splash/services/core/broadcast/BroadcastMonitor;
.super Ljava/lang/Object;


# static fields
.field private static _eventReceivers:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addBroadcastListener(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 7

    invoke-static {p0}, Lcom/unity3d/splash/services/core/broadcast/BroadcastMonitor;->removeBroadcastListener(Ljava/lang/String;)V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    array-length v2, p2

    const/4 v0, 0x0

    :goto_a
    if-ge v0, v2, :cond_14

    aget-object v3, p2, v0

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_14
    if-eqz p1, :cond_19

    invoke-virtual {v1, p1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    :cond_19
    sget-object v0, Lcom/unity3d/splash/services/core/broadcast/BroadcastMonitor;->_eventReceivers:Ljava/util/Map;

    if-nez v0, :cond_24

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/unity3d/splash/services/core/broadcast/BroadcastMonitor;->_eventReceivers:Ljava/util/Map;

    :cond_24
    new-instance v0, Lcom/unity3d/splash/services/core/broadcast/BroadcastEventReceiver;

    invoke-direct {v0, p0}, Lcom/unity3d/splash/services/core/broadcast/BroadcastEventReceiver;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/unity3d/splash/services/core/broadcast/BroadcastMonitor;->_eventReceivers:Ljava/util/Map;

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static removeAllBroadcastListeners()V
    .registers 4

    sget-object v0, Lcom/unity3d/splash/services/core/broadcast/BroadcastMonitor;->_eventReceivers:Ljava/util/Map;

    if-eqz v0, :cond_2d

    sget-object v0, Lcom/unity3d/splash/services/core/broadcast/BroadcastMonitor;->_eventReceivers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/unity3d/splash/services/core/broadcast/BroadcastMonitor;->_eventReceivers:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_e

    :cond_2a
    const/4 v0, 0x0

    sput-object v0, Lcom/unity3d/splash/services/core/broadcast/BroadcastMonitor;->_eventReceivers:Ljava/util/Map;

    :cond_2d
    return-void
.end method

.method public static removeBroadcastListener(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/unity3d/splash/services/core/broadcast/BroadcastMonitor;->_eventReceivers:Ljava/util/Map;

    if-eqz v0, :cond_20

    sget-object v0, Lcom/unity3d/splash/services/core/broadcast/BroadcastMonitor;->_eventReceivers:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v0, Lcom/unity3d/splash/services/core/broadcast/BroadcastMonitor;->_eventReceivers:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    sget-object v0, Lcom/unity3d/splash/services/core/broadcast/BroadcastMonitor;->_eventReceivers:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_20
    return-void
.end method
