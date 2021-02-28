.class public Lcom/unity3d/splash/services/core/request/CancelableThreadPoolExecutor;
.super Ljava/util/concurrent/ThreadPoolExecutor;


# instance fields
.field private final _activeRunnable:Ljava/util/List;


# direct methods
.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/LinkedBlockingQueue;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/unity3d/splash/services/core/request/CancelableThreadPoolExecutor;->_activeRunnable:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected declared-synchronized afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/unity3d/splash/services/core/request/CancelableThreadPoolExecutor;->_activeRunnable:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/unity3d/splash/services/core/request/CancelableThreadPoolExecutor;->_activeRunnable:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized cancel()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/unity3d/splash/services/core/request/CancelableThreadPoolExecutor;->_activeRunnable:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    instance-of v2, v0, Lcom/unity3d/splash/services/core/request/WebRequestRunnable;

    if-eqz v2, :cond_7

    check-cast v0, Lcom/unity3d/splash/services/core/request/WebRequestRunnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/unity3d/splash/services/core/request/WebRequestRunnable;->setCancelStatus(Z)V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1e

    goto :goto_7

    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_21
    monitor-exit p0

    return-void
.end method
