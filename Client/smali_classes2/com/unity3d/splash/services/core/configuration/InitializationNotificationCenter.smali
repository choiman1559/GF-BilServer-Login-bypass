.class public Lcom/unity3d/splash/services/core/configuration/InitializationNotificationCenter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unity3d/splash/services/core/configuration/IInitializationNotificationCenter;


# static fields
.field private static instance:Lcom/unity3d/splash/services/core/configuration/InitializationNotificationCenter;


# instance fields
.field private _sdkListeners:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/unity3d/splash/services/core/configuration/InitializationNotificationCenter;->instance:Lcom/unity3d/splash/services/core/configuration/InitializationNotificationCenter;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/unity3d/splash/services/core/configuration/InitializationNotificationCenter;->_sdkListeners:Ljava/util/HashMap;

    return-void
.end method

.method public static getInstance()Lcom/unity3d/splash/services/core/configuration/InitializationNotificationCenter;
    .registers 1

    sget-object v0, Lcom/unity3d/splash/services/core/configuration/InitializationNotificationCenter;->instance:Lcom/unity3d/splash/services/core/configuration/InitializationNotificationCenter;

    if-nez v0, :cond_b

    new-instance v0, Lcom/unity3d/splash/services/core/configuration/InitializationNotificationCenter;

    invoke-direct {v0}, Lcom/unity3d/splash/services/core/configuration/InitializationNotificationCenter;-><init>()V

    sput-object v0, Lcom/unity3d/splash/services/core/configuration/InitializationNotificationCenter;->instance:Lcom/unity3d/splash/services/core/configuration/InitializationNotificationCenter;

    :cond_b
    sget-object v0, Lcom/unity3d/splash/services/core/configuration/InitializationNotificationCenter;->instance:Lcom/unity3d/splash/services/core/configuration/InitializationNotificationCenter;

    return-object v0
.end method

.method private removeListener(Ljava/lang/Integer;)V
    .registers 3

    iget-object v0, p0, Lcom/unity3d/splash/services/core/configuration/InitializationNotificationCenter;->_sdkListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public addListener(Lcom/unity3d/splash/services/core/configuration/IInitializationListener;)V
    .registers 6

    iget-object v1, p0, Lcom/unity3d/splash/services/core/configuration/InitializationNotificationCenter;->_sdkListeners:Ljava/util/HashMap;

    monitor-enter v1

    if-eqz p1, :cond_18

    :try_start_5
    iget-object v0, p0, Lcom/unity3d/splash/services/core/configuration/InitializationNotificationCenter;->_sdkListeners:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    monitor-exit v1

    return-void

    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public removeListener(Lcom/unity3d/splash/services/core/configuration/IInitializationListener;)V
    .registers 5

    iget-object v1, p0, Lcom/unity3d/splash/services/core/configuration/InitializationNotificationCenter;->_sdkListeners:Ljava/util/HashMap;

    monitor-enter v1

    if-eqz p1, :cond_11

    :try_start_5
    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/unity3d/splash/services/core/configuration/InitializationNotificationCenter;->removeListener(Ljava/lang/Integer;)V

    :cond_11
    monitor-exit v1

    return-void

    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public triggerOnSdkInitializationFailed(Ljava/lang/String;I)V
    .registers 9

    iget-object v2, p0, Lcom/unity3d/splash/services/core/configuration/InitializationNotificationCenter;->_sdkListeners:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SDK Failed to Initialize due to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/unity3d/splash/services/core/log/DeviceLog;->error(Ljava/lang/String;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/unity3d/splash/services/core/configuration/InitializationNotificationCenter;->_sdkListeners:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_24
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_54

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/splash/services/core/configuration/IInitializationListener;

    new-instance v1, Lcom/unity3d/splash/services/core/configuration/InitializationNotificationCenter$2;

    invoke-direct {v1, p0, v0, v3, p2}, Lcom/unity3d/splash/services/core/configuration/InitializationNotificationCenter$2;-><init>(Lcom/unity3d/splash/services/core/configuration/InitializationNotificationCenter;Lcom/unity3d/splash/services/core/configuration/IInitializationListener;Ljava/lang/String;I)V

    invoke-static {v1}, Lcom/unity3d/splash/services/core/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_24

    :catchall_51
    move-exception v0

    monitor-exit v2
    :try_end_53
    .catchall {:try_start_3 .. :try_end_53} :catchall_51

    throw v0

    :cond_54
    :try_start_54
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    :cond_5c
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_60
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_72

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v3, p0, Lcom/unity3d/splash/services/core/configuration/InitializationNotificationCenter;->_sdkListeners:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_60

    :cond_72
    monitor-exit v2
    :try_end_73
    .catchall {:try_start_54 .. :try_end_73} :catchall_51

    return-void
.end method

.method public triggerOnSdkInitialized()V
    .registers 6

    iget-object v2, p0, Lcom/unity3d/splash/services/core/configuration/InitializationNotificationCenter;->_sdkListeners:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/unity3d/splash/services/core/configuration/InitializationNotificationCenter;->_sdkListeners:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_42

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/splash/services/core/configuration/IInitializationListener;

    new-instance v1, Lcom/unity3d/splash/services/core/configuration/InitializationNotificationCenter$1;

    invoke-direct {v1, p0, v0}, Lcom/unity3d/splash/services/core/configuration/InitializationNotificationCenter$1;-><init>(Lcom/unity3d/splash/services/core/configuration/InitializationNotificationCenter;Lcom/unity3d/splash/services/core/configuration/IInitializationListener;)V

    invoke-static {v1}, Lcom/unity3d/splash/services/core/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_12

    :catchall_3f
    move-exception v0

    monitor-exit v2
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_3f

    throw v0

    :cond_42
    :try_start_42
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_4a
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v3, p0, Lcom/unity3d/splash/services/core/configuration/InitializationNotificationCenter;->_sdkListeners:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4e

    :cond_60
    monitor-exit v2
    :try_end_61
    .catchall {:try_start_42 .. :try_end_61} :catchall_3f

    return-void
.end method
