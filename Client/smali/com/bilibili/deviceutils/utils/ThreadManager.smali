.class public Lcom/bilibili/deviceutils/utils/ThreadManager;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "ThreadManager"

.field private static volatile threadManager:Lcom/bilibili/deviceutils/utils/ThreadManager;


# instance fields
.field private mService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/bilibili/deviceutils/utils/ThreadManager;
    .registers 2

    sget-object v0, Lcom/bilibili/deviceutils/utils/ThreadManager;->threadManager:Lcom/bilibili/deviceutils/utils/ThreadManager;

    if-nez v0, :cond_13

    const-class v1, Lcom/bilibili/deviceutils/utils/ThreadManager;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/bilibili/deviceutils/utils/ThreadManager;->threadManager:Lcom/bilibili/deviceutils/utils/ThreadManager;

    if-nez v0, :cond_12

    new-instance v0, Lcom/bilibili/deviceutils/utils/ThreadManager;

    invoke-direct {v0}, Lcom/bilibili/deviceutils/utils/ThreadManager;-><init>()V

    sput-object v0, Lcom/bilibili/deviceutils/utils/ThreadManager;->threadManager:Lcom/bilibili/deviceutils/utils/ThreadManager;

    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    :cond_13
    sget-object v0, Lcom/bilibili/deviceutils/utils/ThreadManager;->threadManager:Lcom/bilibili/deviceutils/utils/ThreadManager;

    return-object v0

    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public startThread()Ljava/util/concurrent/ExecutorService;
    .registers 9

    iget-object v0, p0, Lcom/bilibili/deviceutils/utils/ThreadManager;->mService:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_17

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x5

    const v3, 0x7fffffff

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    :goto_16
    return-object v1

    :cond_17
    iget-object v1, p0, Lcom/bilibili/deviceutils/utils/ThreadManager;->mService:Ljava/util/concurrent/ExecutorService;

    goto :goto_16
.end method
