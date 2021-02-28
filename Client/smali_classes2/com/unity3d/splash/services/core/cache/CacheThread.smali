.class public Lcom/unity3d/splash/services/core/cache/CacheThread;
.super Ljava/lang/Thread;


# static fields
.field public static final MSG_DOWNLOAD:I = 0x1

.field private static _connectTimeout:I

.field private static _handler:Lcom/unity3d/splash/services/core/cache/CacheThreadHandler;

.field private static _progressInterval:I

.field private static _readTimeout:I

.field private static _ready:Z

.field private static final _readyLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v2, 0x7530

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/unity3d/splash/services/core/cache/CacheThread;->_handler:Lcom/unity3d/splash/services/core/cache/CacheThreadHandler;

    sput-boolean v1, Lcom/unity3d/splash/services/core/cache/CacheThread;->_ready:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/unity3d/splash/services/core/cache/CacheThread;->_readyLock:Ljava/lang/Object;

    sput v2, Lcom/unity3d/splash/services/core/cache/CacheThread;->_connectTimeout:I

    sput v2, Lcom/unity3d/splash/services/core/cache/CacheThread;->_readTimeout:I

    sput v1, Lcom/unity3d/splash/services/core/cache/CacheThread;->_progressInterval:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method public static cancel()V
    .registers 2

    const/4 v1, 0x1

    sget-boolean v0, Lcom/unity3d/splash/services/core/cache/CacheThread;->_ready:Z

    if-nez v0, :cond_6

    :goto_5
    return-void

    :cond_6
    sget-object v0, Lcom/unity3d/splash/services/core/cache/CacheThread;->_handler:Lcom/unity3d/splash/services/core/cache/CacheThreadHandler;

    invoke-virtual {v0, v1}, Lcom/unity3d/splash/services/core/cache/CacheThreadHandler;->removeMessages(I)V

    sget-object v0, Lcom/unity3d/splash/services/core/cache/CacheThread;->_handler:Lcom/unity3d/splash/services/core/cache/CacheThreadHandler;

    invoke-virtual {v0, v1}, Lcom/unity3d/splash/services/core/cache/CacheThreadHandler;->setCancelStatus(Z)V

    goto :goto_5
.end method

.method public static declared-synchronized download(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Z)V
    .registers 11

    const-class v3, Lcom/unity3d/splash/services/core/cache/CacheThread;

    monitor-enter v3

    :try_start_3
    sget-boolean v1, Lcom/unity3d/splash/services/core/cache/CacheThread;->_ready:Z

    if-nez v1, :cond_a

    invoke-static {}, Lcom/unity3d/splash/services/core/cache/CacheThread;->init()V

    :cond_a
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v1, "source"

    invoke-virtual {v4, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "target"

    invoke-virtual {v4, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "connectTimeout"

    sget v2, Lcom/unity3d/splash/services/core/cache/CacheThread;->_connectTimeout:I

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "readTimeout"

    sget v2, Lcom/unity3d/splash/services/core/cache/CacheThread;->_readTimeout:I

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "progressInterval"

    sget v2, Lcom/unity3d/splash/services/core/cache/CacheThread;->_progressInterval:I

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "append"

    invoke-virtual {v4, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz p2, :cond_6a

    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v6, v1, [Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v4, v2, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_66
    .catchall {:try_start_3 .. :try_end_66} :catchall_67

    goto :goto_3d

    :catchall_67
    move-exception v1

    monitor-exit v3

    throw v1

    :cond_6a
    :try_start_6a
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    sget-object v2, Lcom/unity3d/splash/services/core/cache/CacheThread;->_handler:Lcom/unity3d/splash/services/core/cache/CacheThreadHandler;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/unity3d/splash/services/core/cache/CacheThreadHandler;->setCancelStatus(Z)V

    sget-object v2, Lcom/unity3d/splash/services/core/cache/CacheThread;->_handler:Lcom/unity3d/splash/services/core/cache/CacheThreadHandler;

    invoke-virtual {v2, v1}, Lcom/unity3d/splash/services/core/cache/CacheThreadHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_80
    .catchall {:try_start_6a .. :try_end_80} :catchall_67

    monitor-exit v3

    return-void
.end method

.method public static getConnectTimeout()I
    .registers 1

    sget v0, Lcom/unity3d/splash/services/core/cache/CacheThread;->_connectTimeout:I

    return v0
.end method

.method public static getProgressInterval()I
    .registers 1

    sget v0, Lcom/unity3d/splash/services/core/cache/CacheThread;->_progressInterval:I

    return v0
.end method

.method public static getReadTimeout()I
    .registers 1

    sget v0, Lcom/unity3d/splash/services/core/cache/CacheThread;->_readTimeout:I

    return v0
.end method

.method private static init()V
    .registers 2

    new-instance v0, Lcom/unity3d/splash/services/core/cache/CacheThread;

    invoke-direct {v0}, Lcom/unity3d/splash/services/core/cache/CacheThread;-><init>()V

    const-string v1, "UnityAdsCacheThread"

    invoke-virtual {v0, v1}, Lcom/unity3d/splash/services/core/cache/CacheThread;->setName(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/unity3d/splash/services/core/cache/CacheThread;->start()V

    :goto_d
    sget-boolean v0, Lcom/unity3d/splash/services/core/cache/CacheThread;->_ready:Z

    if-nez v0, :cond_25

    :try_start_11
    sget-object v1, Lcom/unity3d/splash/services/core/cache/CacheThread;->_readyLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_14} :catch_1e

    :try_start_14
    sget-object v0, Lcom/unity3d/splash/services/core/cache/CacheThread;->_readyLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    monitor-exit v1

    goto :goto_d

    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_1b

    :try_start_1d
    throw v0
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_1e} :catch_1e

    :catch_1e
    move-exception v0

    const-string v0, "Couldn\'t synchronize thread"

    invoke-static {v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    goto :goto_d

    :cond_25
    return-void
.end method

.method public static isActive()Z
    .registers 1

    sget-boolean v0, Lcom/unity3d/splash/services/core/cache/CacheThread;->_ready:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    sget-object v0, Lcom/unity3d/splash/services/core/cache/CacheThread;->_handler:Lcom/unity3d/splash/services/core/cache/CacheThreadHandler;

    invoke-virtual {v0}, Lcom/unity3d/splash/services/core/cache/CacheThreadHandler;->isActive()Z

    move-result v0

    goto :goto_5
.end method

.method public static setConnectTimeout(I)V
    .registers 1

    sput p0, Lcom/unity3d/splash/services/core/cache/CacheThread;->_connectTimeout:I

    return-void
.end method

.method public static setProgressInterval(I)V
    .registers 1

    sput p0, Lcom/unity3d/splash/services/core/cache/CacheThread;->_progressInterval:I

    return-void
.end method

.method public static setReadTimeout(I)V
    .registers 1

    sput p0, Lcom/unity3d/splash/services/core/cache/CacheThread;->_readTimeout:I

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v0, Lcom/unity3d/splash/services/core/cache/CacheThreadHandler;

    invoke-direct {v0}, Lcom/unity3d/splash/services/core/cache/CacheThreadHandler;-><init>()V

    sput-object v0, Lcom/unity3d/splash/services/core/cache/CacheThread;->_handler:Lcom/unity3d/splash/services/core/cache/CacheThreadHandler;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/unity3d/splash/services/core/cache/CacheThread;->_ready:Z

    sget-object v1, Lcom/unity3d/splash/services/core/cache/CacheThread;->_readyLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_10
    sget-object v0, Lcom/unity3d/splash/services/core/cache/CacheThread;->_readyLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_1a

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    :catchall_1a
    move-exception v0

    :try_start_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v0
.end method
