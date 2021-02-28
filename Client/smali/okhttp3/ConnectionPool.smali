.class public final Lokhttp3/ConnectionPool;
.super Ljava/lang/Object;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final executor:Ljava/util/concurrent/Executor;


# instance fields
.field private final cleanupRunnable:Ljava/lang/Runnable;

.field cleanupRunning:Z

.field private final connections:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lokhttp3/internal/connection/RealConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final keepAliveDurationNs:J

.field private final maxIdleConnections:I

.field final routeDatabase:Lokhttp3/internal/connection/RouteDatabase;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/4 v8, 0x1

    const/4 v2, 0x0

    const-class v0, Lokhttp3/ConnectionPool;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_27

    move v0, v8

    :goto_b
    sput-boolean v0, Lokhttp3/ConnectionPool;->$assertionsDisabled:Z

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const v3, 0x7fffffff

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v0, "OkHttp ConnectionPool"

    invoke-static {v0, v8}, Lokhttp3/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lokhttp3/ConnectionPool;->executor:Ljava/util/concurrent/Executor;

    return-void

    :cond_27
    move v0, v2

    goto :goto_b
.end method

.method public constructor <init>()V
    .registers 5

    const/4 v0, 0x5

    const-wide/16 v2, 0x5

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0, v0, v2, v3, v1}, Lokhttp3/ConnectionPool;-><init>(IJLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public constructor <init>(IJLjava/util/concurrent/TimeUnit;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lokhttp3/ConnectionPool$1;

    invoke-direct {v0, p0}, Lokhttp3/ConnectionPool$1;-><init>(Lokhttp3/ConnectionPool;)V

    iput-object v0, p0, Lokhttp3/ConnectionPool;->cleanupRunnable:Ljava/lang/Runnable;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lokhttp3/ConnectionPool;->connections:Ljava/util/Deque;

    new-instance v0, Lokhttp3/internal/connection/RouteDatabase;

    invoke-direct {v0}, Lokhttp3/internal/connection/RouteDatabase;-><init>()V

    iput-object v0, p0, Lokhttp3/ConnectionPool;->routeDatabase:Lokhttp3/internal/connection/RouteDatabase;

    iput p1, p0, Lokhttp3/ConnectionPool;->maxIdleConnections:I

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/ConnectionPool;->keepAliveDurationNs:J

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_3f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keepAliveDuration <= 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3f
    return-void
.end method

.method private pruneAndGetAllocationCount(Lokhttp3/internal/connection/RealConnection;J)I
    .registers 10

    const/4 v2, 0x0

    iget-object v3, p1, Lokhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    move v1, v2

    :cond_4
    :goto_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5d

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1a

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    :cond_1a
    check-cast v0, Lokhttp3/internal/connection/StreamAllocation$StreamAllocationReference;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "A connection to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lokhttp3/internal/connection/RealConnection;->route()Lokhttp3/Route;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " was leaked. Did you forget to close a response body?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v5

    iget-object v0, v0, Lokhttp3/internal/connection/StreamAllocation$StreamAllocationReference;->callStackTrace:Ljava/lang/Object;

    invoke-virtual {v5, v4, v0}, Lokhttp3/internal/platform/Platform;->logCloseableLeak(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lokhttp3/internal/connection/RealConnection;->noNewStreams:Z

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-wide v0, p0, Lokhttp3/ConnectionPool;->keepAliveDurationNs:J

    sub-long v0, p2, v0

    iput-wide v0, p1, Lokhttp3/internal/connection/RealConnection;->idleAtNanos:J

    :goto_5c
    return v2

    :cond_5d
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_5c
.end method


# virtual methods
.method cleanup(J)J
    .registers 16

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-wide/high16 v4, -0x8000000000000000L

    monitor-enter p0

    :try_start_5
    iget-object v2, p0, Lokhttp3/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v2, v0

    move v7, v0

    :goto_d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/connection/RealConnection;

    invoke-direct {p0, v0, p1, p2}, Lokhttp3/ConnectionPool;->pruneAndGetAllocationCount(Lokhttp3/internal/connection/RealConnection;J)I

    move-result v3

    if-lez v3, :cond_23

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_d

    :cond_23
    add-int/lit8 v6, v2, 0x1

    iget-wide v2, v0, Lokhttp3/internal/connection/RealConnection;->idleAtNanos:J

    sub-long v2, p1, v2

    cmp-long v9, v2, v4

    if-lez v9, :cond_65

    move-wide v10, v2

    move-object v2, v0

    move-wide v0, v10

    :goto_30
    move-wide v4, v0

    move-object v1, v2

    move v2, v6

    goto :goto_d

    :cond_34
    iget-wide v8, p0, Lokhttp3/ConnectionPool;->keepAliveDurationNs:J

    cmp-long v0, v4, v8

    if-gez v0, :cond_3e

    iget v0, p0, Lokhttp3/ConnectionPool;->maxIdleConnections:I

    if-le v2, v0, :cond_4e

    :cond_3e
    iget-object v0, p0, Lokhttp3/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v0, v1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_44
    .catchall {:try_start_5 .. :try_end_44} :catchall_55

    invoke-virtual {v1}, Lokhttp3/internal/connection/RealConnection;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    const-wide/16 v0, 0x0

    :goto_4d
    return-wide v0

    :cond_4e
    if-lez v2, :cond_58

    :try_start_50
    iget-wide v0, p0, Lokhttp3/ConnectionPool;->keepAliveDurationNs:J

    sub-long/2addr v0, v4

    monitor-exit p0

    goto :goto_4d

    :catchall_55
    move-exception v0

    monitor-exit p0
    :try_end_57
    .catchall {:try_start_50 .. :try_end_57} :catchall_55

    throw v0

    :cond_58
    if-lez v7, :cond_5e

    :try_start_5a
    iget-wide v0, p0, Lokhttp3/ConnectionPool;->keepAliveDurationNs:J

    monitor-exit p0

    goto :goto_4d

    :cond_5e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lokhttp3/ConnectionPool;->cleanupRunning:Z

    const-wide/16 v0, -0x1

    monitor-exit p0
    :try_end_64
    .catchall {:try_start_5a .. :try_end_64} :catchall_55

    goto :goto_4d

    :cond_65
    move-object v2, v1

    move-wide v0, v4

    goto :goto_30
.end method

.method connectionBecameIdle(Lokhttp3/internal/connection/RealConnection;)Z
    .registers 3

    sget-boolean v0, Lokhttp3/ConnectionPool;->$assertionsDisabled:Z

    if-nez v0, :cond_10

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_10
    iget-boolean v0, p1, Lokhttp3/internal/connection/RealConnection;->noNewStreams:Z

    if-nez v0, :cond_18

    iget v0, p0, Lokhttp3/ConnectionPool;->maxIdleConnections:I

    if-nez v0, :cond_1f

    :cond_18
    iget-object v0, p0, Lokhttp3/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    :goto_1e
    return v0

    :cond_1f
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public declared-synchronized connectionCount()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lokhttp3/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method deduplicate(Lokhttp3/Address;Lokhttp3/internal/connection/StreamAllocation;)Ljava/net/Socket;
    .registers 6

    sget-boolean v0, Lokhttp3/ConnectionPool;->$assertionsDisabled:Z

    if-nez v0, :cond_10

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_10
    iget-object v0, p0, Lokhttp3/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/connection/RealConnection;

    invoke-virtual {v0, p1}, Lokhttp3/internal/connection/RealConnection;->isEligible(Lokhttp3/Address;)Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnection;->isMultiplexed()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-virtual {p2}, Lokhttp3/internal/connection/StreamAllocation;->connection()Lokhttp3/internal/connection/RealConnection;

    move-result-object v2

    if-eq v0, v2, :cond_16

    invoke-virtual {p2, v0}, Lokhttp3/internal/connection/StreamAllocation;->releaseAndAcquire(Lokhttp3/internal/connection/RealConnection;)Ljava/net/Socket;

    move-result-object v0

    :goto_38
    return-object v0

    :cond_39
    const/4 v0, 0x0

    goto :goto_38
.end method

.method public evictAll()V
    .registers 5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    monitor-enter p0

    :try_start_6
    iget-object v0, p0, Lokhttp3/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/connection/RealConnection;

    iget-object v3, v0, Lokhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_c

    const/4 v3, 0x1

    iput-boolean v3, v0, Lokhttp3/internal/connection/RealConnection;->noNewStreams:Z

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_c

    :catchall_2a
    move-exception v0

    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_6 .. :try_end_2c} :catchall_2a

    throw v0

    :cond_2d
    :try_start_2d
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2a

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/connection/RealConnection;

    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnection;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    goto :goto_32

    :cond_46
    return-void
.end method

.method get(Lokhttp3/Address;Lokhttp3/internal/connection/StreamAllocation;)Lokhttp3/internal/connection/RealConnection;
    .registers 6

    sget-boolean v0, Lokhttp3/ConnectionPool;->$assertionsDisabled:Z

    if-nez v0, :cond_10

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_10
    iget-object v0, p0, Lokhttp3/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/connection/RealConnection;

    invoke-virtual {v0, p1}, Lokhttp3/internal/connection/RealConnection;->isEligible(Lokhttp3/Address;)Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-virtual {p2, v0}, Lokhttp3/internal/connection/StreamAllocation;->acquire(Lokhttp3/internal/connection/RealConnection;)V

    :goto_2b
    return-object v0

    :cond_2c
    const/4 v0, 0x0

    goto :goto_2b
.end method

.method public declared-synchronized idleConnectionCount()I
    .registers 4

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_2
    iget-object v0, p0, Lokhttp3/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/connection/RealConnection;

    iget-object v0, v0, Lokhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
    :try_end_19
    .catchall {:try_start_2 .. :try_end_19} :catchall_22

    move-result v0

    if-eqz v0, :cond_25

    add-int/lit8 v0, v1, 0x1

    :goto_1e
    move v1, v0

    goto :goto_8

    :cond_20
    monitor-exit p0

    return v1

    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_25
    move v0, v1

    goto :goto_1e
.end method

.method put(Lokhttp3/internal/connection/RealConnection;)V
    .registers 4

    sget-boolean v0, Lokhttp3/ConnectionPool;->$assertionsDisabled:Z

    if-nez v0, :cond_10

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_10
    iget-boolean v0, p0, Lokhttp3/ConnectionPool;->cleanupRunning:Z

    if-nez v0, :cond_1e

    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/ConnectionPool;->cleanupRunning:Z

    sget-object v0, Lokhttp3/ConnectionPool;->executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lokhttp3/ConnectionPool;->cleanupRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1e
    iget-object v0, p0, Lokhttp3/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    return-void
.end method
