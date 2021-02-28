.class public Lcom/unity3d/splash/services/core/request/WebRequestThread;
.super Ljava/lang/Object;


# static fields
.field private static _corePoolSize:I

.field private static _keepAliveTime:J

.field private static _maximumPoolSize:I

.field private static _pool:Lcom/unity3d/splash/services/core/request/CancelableThreadPoolExecutor;

.field private static _queue:Ljava/util/concurrent/LinkedBlockingQueue;

.field private static _ready:Z

.field private static final _readyLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/unity3d/splash/services/core/request/WebRequestThread;->_ready:Z

    sput v1, Lcom/unity3d/splash/services/core/request/WebRequestThread;->_corePoolSize:I

    sput v1, Lcom/unity3d/splash/services/core/request/WebRequestThread;->_maximumPoolSize:I

    const-wide/16 v0, 0x3e8

    sput-wide v0, Lcom/unity3d/splash/services/core/request/WebRequestThread;->_keepAliveTime:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/unity3d/splash/services/core/request/WebRequestThread;->_readyLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Z)Z
    .registers 1

    sput-boolean p0, Lcom/unity3d/splash/services/core/request/WebRequestThread;->_ready:Z

    return p0
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .registers 1

    sget-object v0, Lcom/unity3d/splash/services/core/request/WebRequestThread;->_readyLock:Ljava/lang/Object;

    return-object v0
.end method

.method public static declared-synchronized cancel()V
    .registers 4

    const-class v1, Lcom/unity3d/splash/services/core/request/WebRequestThread;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/unity3d/splash/services/core/request/WebRequestThread;->_pool:Lcom/unity3d/splash/services/core/request/CancelableThreadPoolExecutor;

    if-eqz v0, :cond_36

    sget-object v0, Lcom/unity3d/splash/services/core/request/WebRequestThread;->_pool:Lcom/unity3d/splash/services/core/request/CancelableThreadPoolExecutor;

    invoke-virtual {v0}, Lcom/unity3d/splash/services/core/request/CancelableThreadPoolExecutor;->cancel()V

    sget-object v0, Lcom/unity3d/splash/services/core/request/WebRequestThread;->_queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_12
    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    instance-of v3, v0, Lcom/unity3d/splash/services/core/request/WebRequestRunnable;

    if-eqz v3, :cond_12

    check-cast v0, Lcom/unity3d/splash/services/core/request/WebRequestRunnable;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/unity3d/splash/services/core/request/WebRequestRunnable;->setCancelStatus(Z)V
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_29

    goto :goto_12

    :catchall_29
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2c
    :try_start_2c
    sget-object v0, Lcom/unity3d/splash/services/core/request/WebRequestThread;->_queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    sget-object v0, Lcom/unity3d/splash/services/core/request/WebRequestThread;->_pool:Lcom/unity3d/splash/services/core/request/CancelableThreadPoolExecutor;

    invoke-virtual {v0}, Lcom/unity3d/splash/services/core/request/CancelableThreadPoolExecutor;->purge()V
    :try_end_36
    .catchall {:try_start_2c .. :try_end_36} :catchall_29

    :cond_36
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized init()V
    .registers 9

    const-class v8, Lcom/unity3d/splash/services/core/request/WebRequestThread;

    monitor-enter v8

    :try_start_3
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v0, Lcom/unity3d/splash/services/core/request/WebRequestThread;->_queue:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v1, Lcom/unity3d/splash/services/core/request/CancelableThreadPoolExecutor;

    sget v2, Lcom/unity3d/splash/services/core/request/WebRequestThread;->_corePoolSize:I

    sget v3, Lcom/unity3d/splash/services/core/request/WebRequestThread;->_maximumPoolSize:I

    sget-wide v4, Lcom/unity3d/splash/services/core/request/WebRequestThread;->_keepAliveTime:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lcom/unity3d/splash/services/core/request/WebRequestThread;->_queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct/range {v1 .. v7}, Lcom/unity3d/splash/services/core/request/CancelableThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/LinkedBlockingQueue;)V

    sput-object v1, Lcom/unity3d/splash/services/core/request/WebRequestThread;->_pool:Lcom/unity3d/splash/services/core/request/CancelableThreadPoolExecutor;

    invoke-virtual {v1}, Lcom/unity3d/splash/services/core/request/CancelableThreadPoolExecutor;->prestartAllCoreThreads()I

    sget-object v0, Lcom/unity3d/splash/services/core/request/WebRequestThread;->_queue:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v1, Lcom/unity3d/splash/services/core/request/WebRequestThread$1;

    invoke-direct {v1}, Lcom/unity3d/splash/services/core/request/WebRequestThread$1;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    :goto_28
    sget-boolean v0, Lcom/unity3d/splash/services/core/request/WebRequestThread;->_ready:Z
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_41

    if-nez v0, :cond_3f

    :try_start_2c
    sget-object v1, Lcom/unity3d/splash/services/core/request/WebRequestThread;->_readyLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_2f
    .catch Ljava/lang/InterruptedException; {:try_start_2c .. :try_end_2f} :catch_39
    .catchall {:try_start_2c .. :try_end_2f} :catchall_41

    :try_start_2f
    sget-object v0, Lcom/unity3d/splash/services/core/request/WebRequestThread;->_readyLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    monitor-exit v1

    goto :goto_28

    :catchall_36
    move-exception v0

    monitor-exit v1
    :try_end_38
    .catchall {:try_start_2f .. :try_end_38} :catchall_36

    :try_start_38
    throw v0
    :try_end_39
    .catch Ljava/lang/InterruptedException; {:try_start_38 .. :try_end_39} :catch_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_41

    :catch_39
    move-exception v0

    :try_start_3a
    const-string v0, "Couldn\'t synchronize thread"

    invoke-static {v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V
    :try_end_3f
    .catchall {:try_start_3a .. :try_end_3f} :catchall_41

    :cond_3f
    monitor-exit v8

    return-void

    :catchall_41
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method public static declared-synchronized request(Ljava/lang/String;Lcom/unity3d/splash/services/core/request/WebRequest$RequestType;Ljava/util/Map;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/unity3d/splash/services/core/request/IWebRequestListener;)V
    .registers 14

    const-class v7, Lcom/unity3d/splash/services/core/request/WebRequestThread;

    monitor-enter v7

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    :try_start_a
    invoke-static/range {v0 .. v6}, Lcom/unity3d/splash/services/core/request/WebRequestThread;->request(Ljava/lang/String;Lcom/unity3d/splash/services/core/request/WebRequest$RequestType;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/unity3d/splash/services/core/request/IWebRequestListener;)V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_f

    monitor-exit v7

    return-void

    :catchall_f
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method public static declared-synchronized request(Ljava/lang/String;Lcom/unity3d/splash/services/core/request/WebRequest$RequestType;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/unity3d/splash/services/core/request/IWebRequestListener;)V
    .registers 18

    const-class v9, Lcom/unity3d/splash/services/core/request/WebRequestThread;

    monitor-enter v9

    :try_start_3
    sget-boolean v1, Lcom/unity3d/splash/services/core/request/WebRequestThread;->_ready:Z

    if-nez v1, :cond_a

    invoke-static {}, Lcom/unity3d/splash/services/core/request/WebRequestThread;->init()V

    :cond_a
    if-eqz p0, :cond_13

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1c

    :cond_13
    const-string v1, "Request is NULL or too short"

    move-object/from16 v0, p6

    invoke-interface {v0, p0, v1}, Lcom/unity3d/splash/services/core/request/IWebRequestListener;->onFailed(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_38

    :goto_1a
    monitor-exit v9

    return-void

    :cond_1c
    :try_start_1c
    sget-object v10, Lcom/unity3d/splash/services/core/request/WebRequestThread;->_queue:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v1, Lcom/unity3d/splash/services/core/request/WebRequestRunnable;

    invoke-virtual {p1}, Lcom/unity3d/splash/services/core/request/WebRequest$RequestType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object v2, p0

    move-object v4, p3

    move-object v7, p2

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/unity3d/splash/services/core/request/WebRequestRunnable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/Map;Lcom/unity3d/splash/services/core/request/IWebRequestListener;)V

    invoke-virtual {v10, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_37
    .catchall {:try_start_1c .. :try_end_37} :catchall_38

    goto :goto_1a

    :catchall_38
    move-exception v1

    monitor-exit v9

    throw v1
.end method

.method public static declared-synchronized reset()V
    .registers 5

    const-class v1, Lcom/unity3d/splash/services/core/request/WebRequestThread;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/unity3d/splash/services/core/request/WebRequestThread;->cancel()V

    sget-object v0, Lcom/unity3d/splash/services/core/request/WebRequestThread;->_pool:Lcom/unity3d/splash/services/core/request/CancelableThreadPoolExecutor;

    if-eqz v0, :cond_29

    sget-object v0, Lcom/unity3d/splash/services/core/request/WebRequestThread;->_pool:Lcom/unity3d/splash/services/core/request/CancelableThreadPoolExecutor;

    invoke-virtual {v0}, Lcom/unity3d/splash/services/core/request/CancelableThreadPoolExecutor;->shutdown()V
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_2b

    :try_start_f
    sget-object v0, Lcom/unity3d/splash/services/core/request/WebRequestThread;->_pool:Lcom/unity3d/splash/services/core/request/CancelableThreadPoolExecutor;

    const-wide v2, 0x7fffffffffffffffL

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Lcom/unity3d/splash/services/core/request/CancelableThreadPoolExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_1b} :catch_2e
    .catchall {:try_start_f .. :try_end_1b} :catchall_2b

    :goto_1b
    :try_start_1b
    sget-object v0, Lcom/unity3d/splash/services/core/request/WebRequestThread;->_queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    const/4 v0, 0x0

    sput-object v0, Lcom/unity3d/splash/services/core/request/WebRequestThread;->_pool:Lcom/unity3d/splash/services/core/request/CancelableThreadPoolExecutor;

    const/4 v0, 0x0

    sput-object v0, Lcom/unity3d/splash/services/core/request/WebRequestThread;->_queue:Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/unity3d/splash/services/core/request/WebRequestThread;->_ready:Z
    :try_end_29
    .catchall {:try_start_1b .. :try_end_29} :catchall_2b

    :cond_29
    monitor-exit v1

    return-void

    :catchall_2b
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_2e
    move-exception v0

    goto :goto_1b
.end method

.method public static declared-synchronized resolve(Ljava/lang/String;Lcom/unity3d/splash/services/core/request/IResolveHostListener;)Z
    .registers 5

    const-class v1, Lcom/unity3d/splash/services/core/request/WebRequestThread;

    monitor-enter v1

    if-eqz p0, :cond_c

    :try_start_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_16

    :cond_c
    sget-object v0, Lcom/unity3d/splash/services/core/request/ResolveHostError;->INVALID_HOST:Lcom/unity3d/splash/services/core/request/ResolveHostError;

    const-string v2, "Host is NULL"

    invoke-interface {p1, p0, v0, v2}, Lcom/unity3d/splash/services/core/request/IResolveHostListener;->onFailed(Ljava/lang/String;Lcom/unity3d/splash/services/core/request/ResolveHostError;Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_25

    const/4 v0, 0x0

    :goto_14
    monitor-exit v1

    return v0

    :cond_16
    :try_start_16
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/unity3d/splash/services/core/request/WebRequestThread$2;

    invoke-direct {v2, p0, p1}, Lcom/unity3d/splash/services/core/request/WebRequestThread$2;-><init>(Ljava/lang/String;Lcom/unity3d/splash/services/core/request/IResolveHostListener;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_23
    .catchall {:try_start_16 .. :try_end_23} :catchall_25

    const/4 v0, 0x1

    goto :goto_14

    :catchall_25
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setConcurrentRequestCount(I)V
    .registers 4

    const-class v1, Lcom/unity3d/splash/services/core/request/WebRequestThread;

    monitor-enter v1

    :try_start_3
    sput p0, Lcom/unity3d/splash/services/core/request/WebRequestThread;->_corePoolSize:I

    sput p0, Lcom/unity3d/splash/services/core/request/WebRequestThread;->_maximumPoolSize:I

    sget-object v0, Lcom/unity3d/splash/services/core/request/WebRequestThread;->_pool:Lcom/unity3d/splash/services/core/request/CancelableThreadPoolExecutor;

    if-eqz v0, :cond_19

    sget-object v0, Lcom/unity3d/splash/services/core/request/WebRequestThread;->_pool:Lcom/unity3d/splash/services/core/request/CancelableThreadPoolExecutor;

    sget v2, Lcom/unity3d/splash/services/core/request/WebRequestThread;->_corePoolSize:I

    invoke-virtual {v0, v2}, Lcom/unity3d/splash/services/core/request/CancelableThreadPoolExecutor;->setCorePoolSize(I)V

    sget-object v0, Lcom/unity3d/splash/services/core/request/WebRequestThread;->_pool:Lcom/unity3d/splash/services/core/request/CancelableThreadPoolExecutor;

    sget v2, Lcom/unity3d/splash/services/core/request/WebRequestThread;->_maximumPoolSize:I

    invoke-virtual {v0, v2}, Lcom/unity3d/splash/services/core/request/CancelableThreadPoolExecutor;->setMaximumPoolSize(I)V
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1b

    :cond_19
    monitor-exit v1

    return-void

    :catchall_1b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setKeepAliveTime(J)V
    .registers 8

    const-class v1, Lcom/unity3d/splash/services/core/request/WebRequestThread;

    monitor-enter v1

    :try_start_3
    sput-wide p0, Lcom/unity3d/splash/services/core/request/WebRequestThread;->_keepAliveTime:J

    sget-object v0, Lcom/unity3d/splash/services/core/request/WebRequestThread;->_pool:Lcom/unity3d/splash/services/core/request/CancelableThreadPoolExecutor;

    if-eqz v0, :cond_12

    sget-object v0, Lcom/unity3d/splash/services/core/request/WebRequestThread;->_pool:Lcom/unity3d/splash/services/core/request/CancelableThreadPoolExecutor;

    sget-wide v2, Lcom/unity3d/splash/services/core/request/WebRequestThread;->_keepAliveTime:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Lcom/unity3d/splash/services/core/request/CancelableThreadPoolExecutor;->setKeepAliveTime(JLjava/util/concurrent/TimeUnit;)V
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_14

    :cond_12
    monitor-exit v1

    return-void

    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setMaximumPoolSize(I)V
    .registers 4

    const-class v1, Lcom/unity3d/splash/services/core/request/WebRequestThread;

    monitor-enter v1

    :try_start_3
    sput p0, Lcom/unity3d/splash/services/core/request/WebRequestThread;->_maximumPoolSize:I

    sget-object v0, Lcom/unity3d/splash/services/core/request/WebRequestThread;->_pool:Lcom/unity3d/splash/services/core/request/CancelableThreadPoolExecutor;

    if-eqz v0, :cond_10

    sget-object v0, Lcom/unity3d/splash/services/core/request/WebRequestThread;->_pool:Lcom/unity3d/splash/services/core/request/CancelableThreadPoolExecutor;

    sget v2, Lcom/unity3d/splash/services/core/request/WebRequestThread;->_maximumPoolSize:I

    invoke-virtual {v0, v2}, Lcom/unity3d/splash/services/core/request/CancelableThreadPoolExecutor;->setMaximumPoolSize(I)V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    :cond_10
    monitor-exit v1

    return-void

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method
