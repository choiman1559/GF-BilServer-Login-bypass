.class public Lcom/bilibili/track/utils/FutureThreadPool;
.super Ljava/lang/Object;


# static fields
.field private static executorService:Ljava/util/concurrent/ExecutorService;

.field private static volatile futureThreadPool:Lcom/bilibili/track/utils/FutureThreadPool;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/bilibili/track/utils/FutureThreadPool;
    .registers 9

    sget-object v0, Lcom/bilibili/track/utils/FutureThreadPool;->futureThreadPool:Lcom/bilibili/track/utils/FutureThreadPool;

    if-nez v0, :cond_23

    const-class v8, Lcom/bilibili/track/utils/FutureThreadPool;

    monitor-enter v8

    :try_start_7
    new-instance v0, Lcom/bilibili/track/utils/FutureThreadPool;

    invoke-direct {v0}, Lcom/bilibili/track/utils/FutureThreadPool;-><init>()V

    sput-object v0, Lcom/bilibili/track/utils/FutureThreadPool;->futureThreadPool:Lcom/bilibili/track/utils/FutureThreadPool;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x3

    const v3, 0x7fffffff

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v1, Lcom/bilibili/track/utils/FutureThreadPool;->executorService:Ljava/util/concurrent/ExecutorService;

    monitor-exit v8
    :try_end_23
    .catchall {:try_start_7 .. :try_end_23} :catchall_26

    :cond_23
    sget-object v0, Lcom/bilibili/track/utils/FutureThreadPool;->futureThreadPool:Lcom/bilibili/track/utils/FutureThreadPool;

    return-object v0

    :catchall_26
    move-exception v0

    :try_start_27
    monitor-exit v8
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v0
.end method


# virtual methods
.method public executeTask(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/FutureTask;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)",
            "Ljava/util/concurrent/FutureTask",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    sget-object v1, Lcom/bilibili/track/utils/FutureThreadPool;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method
