.class public Lcom/android/data/sdk/net/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/data/sdk/net/c$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:Lcom/android/data/sdk/net/c;

.field private static c:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/data/sdk/net/c;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/android/data/sdk/net/c;
    .registers 11

    sget-object v0, Lcom/android/data/sdk/net/c;->b:Lcom/android/data/sdk/net/c;

    if-nez v0, :cond_31

    sget-object v10, Lcom/android/data/sdk/net/c;->a:Ljava/lang/Object;

    monitor-enter v10

    :try_start_7
    sget-object v0, Lcom/android/data/sdk/net/c;->b:Lcom/android/data/sdk/net/c;

    if-nez v0, :cond_30

    new-instance v0, Lcom/android/data/sdk/net/c;

    invoke-direct {v0}, Lcom/android/data/sdk/net/c;-><init>()V

    sput-object v0, Lcom/android/data/sdk/net/c;->b:Lcom/android/data/sdk/net/c;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v2, Lcom/android/data/sdk/constant/c;->a:I

    sget v3, Lcom/android/data/sdk/constant/c;->b:I

    sget-wide v4, Lcom/android/data/sdk/constant/ConstantTime;->DEFAULT_THREAD_POOL_KEEP_ALIVE_TIME:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v8, Lcom/android/data/sdk/net/c$a;

    invoke-direct {v8}, Lcom/android/data/sdk/net/c$a;-><init>()V

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;

    invoke-direct {v9}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v1, Lcom/android/data/sdk/net/c;->c:Ljava/util/concurrent/ExecutorService;

    :cond_30
    monitor-exit v10
    :try_end_31
    .catchall {:try_start_7 .. :try_end_31} :catchall_34

    :cond_31
    sget-object v0, Lcom/android/data/sdk/net/c;->b:Lcom/android/data/sdk/net/c;

    return-object v0

    :catchall_34
    move-exception v0

    :try_start_35
    monitor-exit v10
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v0
.end method


# virtual methods
.method public a(IIJ)V
    .registers 16

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v8, Lcom/android/data/sdk/net/c$a;

    invoke-direct {v8}, Lcom/android/data/sdk/net/c$a;-><init>()V

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;

    invoke-direct {v9}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v1, Lcom/android/data/sdk/net/c;->c:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .registers 3

    :try_start_0
    sget-object v0, Lcom/android/data/sdk/net/c;->c:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_12

    sget-object v0, Lcom/android/data/sdk/net/c;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_12

    sget-object v0, Lcom/android/data/sdk/net/c;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :goto_11
    return-void

    :cond_12
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1a} :catch_1b

    goto :goto_11

    :catch_1b
    move-exception v0

    goto :goto_11
.end method
