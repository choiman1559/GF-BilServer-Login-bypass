.class public final Lokhttp3/internal/connection/StreamAllocation;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/connection/StreamAllocation$StreamAllocationReference;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public final address:Lokhttp3/Address;

.field private final callStackTrace:Ljava/lang/Object;

.field private canceled:Z

.field private codec:Lokhttp3/internal/http/HttpCodec;

.field private connection:Lokhttp3/internal/connection/RealConnection;

.field private final connectionPool:Lokhttp3/ConnectionPool;

.field private refusedStreamCount:I

.field private released:Z

.field private route:Lokhttp3/Route;

.field private final routeSelector:Lokhttp3/internal/connection/RouteSelector;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lokhttp3/internal/connection/StreamAllocation;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Lokhttp3/ConnectionPool;Lokhttp3/Address;Ljava/lang/Object;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    iput-object p2, p0, Lokhttp3/internal/connection/StreamAllocation;->address:Lokhttp3/Address;

    new-instance v0, Lokhttp3/internal/connection/RouteSelector;

    invoke-direct {p0}, Lokhttp3/internal/connection/StreamAllocation;->routeDatabase()Lokhttp3/internal/connection/RouteDatabase;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lokhttp3/internal/connection/RouteSelector;-><init>(Lokhttp3/Address;Lokhttp3/internal/connection/RouteDatabase;)V

    iput-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->routeSelector:Lokhttp3/internal/connection/RouteSelector;

    iput-object p3, p0, Lokhttp3/internal/connection/StreamAllocation;->callStackTrace:Ljava/lang/Object;

    return-void
.end method

.method private deallocate(ZZZ)Ljava/net/Socket;
    .registers 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-boolean v0, Lokhttp3/internal/connection/StreamAllocation;->$assertionsDisabled:Z

    if-nez v0, :cond_14

    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_14
    if-eqz p3, :cond_18

    iput-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->codec:Lokhttp3/internal/http/HttpCodec;

    :cond_18
    if-eqz p2, :cond_1c

    iput-boolean v2, p0, Lokhttp3/internal/connection/StreamAllocation;->released:Z

    :cond_1c
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    if-eqz v0, :cond_60

    if-eqz p1, :cond_26

    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    iput-boolean v2, v0, Lokhttp3/internal/connection/RealConnection;->noNewStreams:Z

    :cond_26
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->codec:Lokhttp3/internal/http/HttpCodec;

    if-nez v0, :cond_60

    iget-boolean v0, p0, Lokhttp3/internal/connection/StreamAllocation;->released:Z

    if-nez v0, :cond_34

    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    iget-boolean v0, v0, Lokhttp3/internal/connection/RealConnection;->noNewStreams:Z

    if-eqz v0, :cond_60

    :cond_34
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    invoke-direct {p0, v0}, Lokhttp3/internal/connection/StreamAllocation;->release(Lokhttp3/internal/connection/RealConnection;)V

    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    iget-object v0, v0, Lokhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_61

    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, v0, Lokhttp3/internal/connection/RealConnection;->idleAtNanos:J

    sget-object v0, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    iget-object v2, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    iget-object v3, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    invoke-virtual {v0, v2, v3}, Lokhttp3/internal/Internal;->connectionBecameIdle(Lokhttp3/ConnectionPool;Lokhttp3/internal/connection/RealConnection;)Z

    move-result v0

    if-eqz v0, :cond_61

    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnection;->socket()Ljava/net/Socket;

    move-result-object v0

    :goto_5d
    iput-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    move-object v1, v0

    :cond_60
    return-object v1

    :cond_61
    move-object v0, v1

    goto :goto_5d
.end method

.method private findConnection(IIIZ)Lokhttp3/internal/connection/RealConnection;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lokhttp3/internal/connection/StreamAllocation;->released:Z

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "released"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0

    :cond_12
    :try_start_12
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->codec:Lokhttp3/internal/http/HttpCodec;

    if-eqz v0, :cond_1e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "codec != null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    iget-boolean v0, p0, Lokhttp3/internal/connection/StreamAllocation;->canceled:Z

    if-eqz v0, :cond_2a

    new-instance v0, Ljava/io/IOException;

    const-string v2, "Canceled"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2a
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    if-eqz v0, :cond_34

    iget-boolean v2, v0, Lokhttp3/internal/connection/RealConnection;->noNewStreams:Z

    if-nez v2, :cond_34

    monitor-exit v1

    :goto_33
    return-object v0

    :cond_34
    sget-object v0, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    iget-object v2, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    iget-object v3, p0, Lokhttp3/internal/connection/StreamAllocation;->address:Lokhttp3/Address;

    invoke-virtual {v0, v2, v3, p0}, Lokhttp3/internal/Internal;->get(Lokhttp3/ConnectionPool;Lokhttp3/Address;Lokhttp3/internal/connection/StreamAllocation;)Lokhttp3/internal/connection/RealConnection;

    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    if-eqz v0, :cond_45

    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    monitor-exit v1

    goto :goto_33

    :cond_45
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->route:Lokhttp3/Route;

    monitor-exit v1
    :try_end_48
    .catchall {:try_start_12 .. :try_end_48} :catchall_f

    if-nez v0, :cond_50

    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->routeSelector:Lokhttp3/internal/connection/RouteSelector;

    invoke-virtual {v0}, Lokhttp3/internal/connection/RouteSelector;->next()Lokhttp3/Route;

    move-result-object v0

    :cond_50
    iget-object v2, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    monitor-enter v2

    :try_start_53
    iput-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->route:Lokhttp3/Route;

    const/4 v1, 0x0

    iput v1, p0, Lokhttp3/internal/connection/StreamAllocation;->refusedStreamCount:I

    new-instance v1, Lokhttp3/internal/connection/RealConnection;

    iget-object v3, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    invoke-direct {v1, v3, v0}, Lokhttp3/internal/connection/RealConnection;-><init>(Lokhttp3/ConnectionPool;Lokhttp3/Route;)V

    invoke-virtual {p0, v1}, Lokhttp3/internal/connection/StreamAllocation;->acquire(Lokhttp3/internal/connection/RealConnection;)V

    iget-boolean v0, p0, Lokhttp3/internal/connection/StreamAllocation;->canceled:Z

    if-eqz v0, :cond_71

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_6e
    move-exception v0

    monitor-exit v2
    :try_end_70
    .catchall {:try_start_53 .. :try_end_70} :catchall_6e

    throw v0

    :cond_71
    :try_start_71
    monitor-exit v2
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_6e

    invoke-virtual {v1, p1, p2, p3, p4}, Lokhttp3/internal/connection/RealConnection;->connect(IIIZ)V

    invoke-direct {p0}, Lokhttp3/internal/connection/StreamAllocation;->routeDatabase()Lokhttp3/internal/connection/RouteDatabase;

    move-result-object v0

    invoke-virtual {v1}, Lokhttp3/internal/connection/RealConnection;->route()Lokhttp3/Route;

    move-result-object v2

    invoke-virtual {v0, v2}, Lokhttp3/internal/connection/RouteDatabase;->connected(Lokhttp3/Route;)V

    const/4 v0, 0x0

    iget-object v2, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    monitor-enter v2

    :try_start_84
    sget-object v3, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    iget-object v4, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    invoke-virtual {v3, v4, v1}, Lokhttp3/internal/Internal;->put(Lokhttp3/ConnectionPool;Lokhttp3/internal/connection/RealConnection;)V

    invoke-virtual {v1}, Lokhttp3/internal/connection/RealConnection;->isMultiplexed()Z

    move-result v3

    if-eqz v3, :cond_a8

    sget-object v0, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    iget-object v3, p0, Lokhttp3/internal/connection/StreamAllocation;->address:Lokhttp3/Address;

    invoke-virtual {v0, v1, v3, p0}, Lokhttp3/internal/Internal;->deduplicate(Lokhttp3/ConnectionPool;Lokhttp3/Address;Lokhttp3/internal/connection/StreamAllocation;)Ljava/net/Socket;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_a0
    monitor-exit v2
    :try_end_a1
    .catchall {:try_start_84 .. :try_end_a1} :catchall_a5

    invoke-static {v1}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    goto :goto_33

    :catchall_a5
    move-exception v0

    :try_start_a6
    monitor-exit v2
    :try_end_a7
    .catchall {:try_start_a6 .. :try_end_a7} :catchall_a5

    throw v0

    :cond_a8
    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_a0
.end method

.method private findHealthyConnection(IIIZZ)Lokhttp3/internal/connection/RealConnection;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lokhttp3/internal/connection/StreamAllocation;->findConnection(IIIZ)Lokhttp3/internal/connection/RealConnection;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    monitor-enter v1

    :try_start_7
    iget v2, v0, Lokhttp3/internal/connection/RealConnection;->successCount:I

    if-nez v2, :cond_d

    monitor-exit v1

    :cond_c
    return-object v0

    :cond_d
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_18

    invoke-virtual {v0, p5}, Lokhttp3/internal/connection/RealConnection;->isHealthy(Z)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {p0}, Lokhttp3/internal/connection/StreamAllocation;->noNewStreams()V

    goto :goto_0

    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method private release(Lokhttp3/internal/connection/RealConnection;)V
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p1, Lokhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_8
    if-ge v1, v2, :cond_22

    iget-object v0, p1, Lokhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_1e

    iget-object v0, p1, Lokhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void

    :cond_1e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    :cond_22
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private routeDatabase()Lokhttp3/internal/connection/RouteDatabase;
    .registers 3

    sget-object v0, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    invoke-virtual {v0, v1}, Lokhttp3/internal/Internal;->routeDatabase(Lokhttp3/ConnectionPool;)Lokhttp3/internal/connection/RouteDatabase;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public acquire(Lokhttp3/internal/connection/RealConnection;)V
    .registers 5

    sget-boolean v0, Lokhttp3/internal/connection/StreamAllocation;->$assertionsDisabled:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_12
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1c
    iput-object p1, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    iget-object v0, p1, Lokhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    new-instance v1, Lokhttp3/internal/connection/StreamAllocation$StreamAllocationReference;

    iget-object v2, p0, Lokhttp3/internal/connection/StreamAllocation;->callStackTrace:Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lokhttp3/internal/connection/StreamAllocation$StreamAllocationReference;-><init>(Lokhttp3/internal/connection/StreamAllocation;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public cancel()V
    .registers 4

    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lokhttp3/internal/connection/StreamAllocation;->canceled:Z

    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->codec:Lokhttp3/internal/http/HttpCodec;

    iget-object v2, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_11

    if-eqz v0, :cond_14

    invoke-interface {v0}, Lokhttp3/internal/http/HttpCodec;->cancel()V

    :cond_10
    :goto_10
    return-void

    :catchall_11
    move-exception v0

    :try_start_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw v0

    :cond_14
    if-eqz v2, :cond_10

    invoke-virtual {v2}, Lokhttp3/internal/connection/RealConnection;->cancel()V

    goto :goto_10
.end method

.method public codec()Lokhttp3/internal/http/HttpCodec;
    .registers 3

    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->codec:Lokhttp3/internal/http/HttpCodec;

    monitor-exit v1

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public declared-synchronized connection()Lokhttp3/internal/connection/RealConnection;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hasMoreRoutes()Z
    .registers 2

    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->route:Lokhttp3/Route;

    if-nez v0, :cond_c

    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->routeSelector:Lokhttp3/internal/connection/RouteSelector;

    invoke-virtual {v0}, Lokhttp3/internal/connection/RouteSelector;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public newStream(Lokhttp3/OkHttpClient;Z)Lokhttp3/internal/http/HttpCodec;
    .registers 9

    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->connectTimeoutMillis()I

    move-result v1

    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->readTimeoutMillis()I

    move-result v2

    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->writeTimeoutMillis()I

    move-result v3

    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->retryOnConnectionFailure()Z

    move-result v4

    move-object v0, p0

    move v5, p2

    :try_start_12
    invoke-direct/range {v0 .. v5}, Lokhttp3/internal/connection/StreamAllocation;->findHealthyConnection(IIIZZ)Lokhttp3/internal/connection/RealConnection;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lokhttp3/internal/connection/RealConnection;->newCodec(Lokhttp3/OkHttpClient;Lokhttp3/internal/connection/StreamAllocation;)Lokhttp3/internal/http/HttpCodec;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    monitor-enter v1
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1d} :catch_24

    :try_start_1d
    iput-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->codec:Lokhttp3/internal/http/HttpCodec;

    monitor-exit v1

    return-object v0

    :catchall_21
    move-exception v0

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_1d .. :try_end_23} :catchall_21

    :try_start_23
    throw v0
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_24} :catch_24

    :catch_24
    move-exception v0

    new-instance v1, Lokhttp3/internal/connection/RouteException;

    invoke-direct {v1, v0}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public noNewStreams()V
    .registers 5

    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    monitor-enter v1

    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_6
    invoke-direct {p0, v0, v2, v3}, Lokhttp3/internal/connection/StreamAllocation;->deallocate(ZZZ)Ljava/net/Socket;

    move-result-object v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_f

    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    return-void

    :catchall_f
    move-exception v0

    :try_start_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public release()V
    .registers 5

    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    monitor-enter v1

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_6
    invoke-direct {p0, v0, v2, v3}, Lokhttp3/internal/connection/StreamAllocation;->deallocate(ZZZ)Ljava/net/Socket;

    move-result-object v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_f

    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    return-void

    :catchall_f
    move-exception v0

    :try_start_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public releaseAndAcquire(Lokhttp3/internal/connection/RealConnection;)Ljava/net/Socket;
    .registers 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-boolean v0, Lokhttp3/internal/connection/StreamAllocation;->$assertionsDisabled:Z

    if-nez v0, :cond_14

    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_14
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->codec:Lokhttp3/internal/http/HttpCodec;

    if-nez v0, :cond_22

    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    iget-object v0, v0, Lokhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, v2, :cond_28

    :cond_22
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_28
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    iget-object v0, v0, Lokhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/Reference;

    invoke-direct {p0, v2, v1, v1}, Lokhttp3/internal/connection/StreamAllocation;->deallocate(ZZZ)Ljava/net/Socket;

    move-result-object v1

    iput-object p1, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    iget-object v2, p1, Lokhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public streamFailed(Ljava/io/IOException;)V
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    monitor-enter v2

    :try_start_5
    instance-of v3, p1, Lokhttp3/internal/http2/StreamResetException;

    if-eqz v3, :cond_30

    check-cast p1, Lokhttp3/internal/http2/StreamResetException;

    iget-object v3, p1, Lokhttp3/internal/http2/StreamResetException;->errorCode:Lokhttp3/internal/http2/ErrorCode;

    sget-object v4, Lokhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Lokhttp3/internal/http2/ErrorCode;

    if-ne v3, v4, :cond_17

    iget v3, p0, Lokhttp3/internal/connection/StreamAllocation;->refusedStreamCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lokhttp3/internal/connection/StreamAllocation;->refusedStreamCount:I

    :cond_17
    iget-object v3, p1, Lokhttp3/internal/http2/StreamResetException;->errorCode:Lokhttp3/internal/http2/ErrorCode;

    sget-object v4, Lokhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Lokhttp3/internal/http2/ErrorCode;

    if-ne v3, v4, :cond_21

    iget v3, p0, Lokhttp3/internal/connection/StreamAllocation;->refusedStreamCount:I

    if-le v3, v1, :cond_25

    :cond_21
    const/4 v0, 0x0

    iput-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->route:Lokhttp3/Route;

    :cond_24
    :goto_24
    move v0, v1

    :cond_25
    const/4 v1, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v3}, Lokhttp3/internal/connection/StreamAllocation;->deallocate(ZZZ)Ljava/net/Socket;

    move-result-object v0

    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_5 .. :try_end_2c} :catchall_57

    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    return-void

    :cond_30
    :try_start_30
    iget-object v3, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    if-eqz v3, :cond_25

    iget-object v3, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    invoke-virtual {v3}, Lokhttp3/internal/connection/RealConnection;->isMultiplexed()Z

    move-result v3

    if-eqz v3, :cond_40

    instance-of v3, p1, Lokhttp3/internal/http2/ConnectionShutdownException;

    if-eqz v3, :cond_25

    :cond_40
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    iget v0, v0, Lokhttp3/internal/connection/RealConnection;->successCount:I

    if-nez v0, :cond_24

    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->route:Lokhttp3/Route;

    if-eqz v0, :cond_53

    if-eqz p1, :cond_53

    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->routeSelector:Lokhttp3/internal/connection/RouteSelector;

    iget-object v3, p0, Lokhttp3/internal/connection/StreamAllocation;->route:Lokhttp3/Route;

    invoke-virtual {v0, v3, p1}, Lokhttp3/internal/connection/RouteSelector;->connectFailed(Lokhttp3/Route;Ljava/io/IOException;)V

    :cond_53
    const/4 v0, 0x0

    iput-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->route:Lokhttp3/Route;

    goto :goto_24

    :catchall_57
    move-exception v0

    monitor-exit v2
    :try_end_59
    .catchall {:try_start_30 .. :try_end_59} :catchall_57

    throw v0
.end method

.method public streamFinished(ZLokhttp3/internal/http/HttpCodec;)V
    .registers 7

    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    monitor-enter v1

    if-eqz p2, :cond_9

    :try_start_5
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->codec:Lokhttp3/internal/http/HttpCodec;

    if-eq p2, v0, :cond_31

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lokhttp3/internal/connection/StreamAllocation;->codec:Lokhttp3/internal/http/HttpCodec;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_2e
    move-exception v0

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_5 .. :try_end_30} :catchall_2e

    throw v0

    :cond_31
    if-nez p1, :cond_3b

    :try_start_33
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    iget v2, v0, Lokhttp3/internal/connection/RealConnection;->successCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lokhttp3/internal/connection/RealConnection;->successCount:I

    :cond_3b
    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v2}, Lokhttp3/internal/connection/StreamAllocation;->deallocate(ZZZ)Ljava/net/Socket;

    move-result-object v0

    monitor-exit v1
    :try_end_42
    .catchall {:try_start_33 .. :try_end_42} :catchall_2e

    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lokhttp3/internal/connection/StreamAllocation;->connection()Lokhttp3/internal/connection/RealConnection;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnection;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->address:Lokhttp3/Address;

    invoke-virtual {v0}, Lokhttp3/Address;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method
