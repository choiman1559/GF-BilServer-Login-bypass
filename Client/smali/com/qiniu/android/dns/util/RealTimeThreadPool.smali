.class public Lcom/qiniu/android/dns/util/RealTimeThreadPool;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qiniu/android/dns/util/RealTimeThreadPool$DefaultThreadFactory;
    }
.end annotation


# static fields
.field private static executorService:Ljava/util/concurrent/ExecutorService;

.field private static final lock:Ljava/lang/Object;

.field private static mInstance:Lcom/qiniu/android/dns/util/RealTimeThreadPool;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/qiniu/android/dns/util/RealTimeThreadPool;->lock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/qiniu/android/dns/util/RealTimeThreadPool;
    .registers 11

    sget-object v0, Lcom/qiniu/android/dns/util/RealTimeThreadPool;->mInstance:Lcom/qiniu/android/dns/util/RealTimeThreadPool;

    if-nez v0, :cond_30

    sget-object v10, Lcom/qiniu/android/dns/util/RealTimeThreadPool;->lock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_7
    sget-object v0, Lcom/qiniu/android/dns/util/RealTimeThreadPool;->mInstance:Lcom/qiniu/android/dns/util/RealTimeThreadPool;

    if-nez v0, :cond_2f

    new-instance v0, Lcom/qiniu/android/dns/util/RealTimeThreadPool;

    invoke-direct {v0}, Lcom/qiniu/android/dns/util/RealTimeThreadPool;-><init>()V

    sput-object v0, Lcom/qiniu/android/dns/util/RealTimeThreadPool;->mInstance:Lcom/qiniu/android/dns/util/RealTimeThreadPool;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x5

    const/16 v3, 0x64

    const-wide/16 v4, 0x78

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v8, Lcom/qiniu/android/dns/util/RealTimeThreadPool$DefaultThreadFactory;

    invoke-direct {v8}, Lcom/qiniu/android/dns/util/RealTimeThreadPool$DefaultThreadFactory;-><init>()V

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;

    invoke-direct {v9}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v1, Lcom/qiniu/android/dns/util/RealTimeThreadPool;->executorService:Ljava/util/concurrent/ExecutorService;

    :cond_2f
    monitor-exit v10
    :try_end_30
    .catchall {:try_start_7 .. :try_end_30} :catchall_33

    :cond_30
    sget-object v0, Lcom/qiniu/android/dns/util/RealTimeThreadPool;->mInstance:Lcom/qiniu/android/dns/util/RealTimeThreadPool;

    return-object v0

    :catchall_33
    move-exception v0

    :try_start_34
    monitor-exit v10
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v0
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .registers 3

    sget-object v0, Lcom/qiniu/android/dns/util/RealTimeThreadPool;->executorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_12

    sget-object v0, Lcom/qiniu/android/dns/util/RealTimeThreadPool;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_12

    sget-object v0, Lcom/qiniu/android/dns/util/RealTimeThreadPool;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :goto_11
    return-void

    :cond_12
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_11
.end method
