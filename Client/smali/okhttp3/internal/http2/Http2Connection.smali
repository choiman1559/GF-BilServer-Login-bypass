.class public final Lokhttp3/internal/http2/Http2Connection;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/http2/Http2Connection$Listener;,
        Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;,
        Lokhttp3/internal/http2/Http2Connection$Builder;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final OKHTTP_CLIENT_WINDOW_SIZE:I = 0x1000000

.field static final executor:Ljava/util/concurrent/ExecutorService;


# instance fields
.field bytesLeftInWriteWindow:J

.field final client:Z

.field final currentPushRequests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final hostname:Ljava/lang/String;

.field lastGoodStreamId:I

.field final listener:Lokhttp3/internal/http2/Http2Connection$Listener;

.field private nextPingId:I

.field nextStreamId:I

.field okHttpSettings:Lokhttp3/internal/http2/Settings;

.field final peerSettings:Lokhttp3/internal/http2/Settings;

.field private pings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lokhttp3/internal/http2/Ping;",
            ">;"
        }
    .end annotation
.end field

.field private final pushExecutor:Ljava/util/concurrent/ExecutorService;

.field final pushObserver:Lokhttp3/internal/http2/PushObserver;

.field final readerRunnable:Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

.field receivedInitialPeerSettings:Z

.field shutdown:Z

.field final socket:Ljava/net/Socket;

.field final streams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lokhttp3/internal/http2/Http2Stream;",
            ">;"
        }
    .end annotation
.end field

.field unacknowledgedBytesRead:J

.field final writer:Lokhttp3/internal/http2/Http2Writer;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/4 v8, 0x1

    const/4 v2, 0x0

    const-class v0, Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_27

    move v0, v8

    :goto_b
    sput-boolean v0, Lokhttp3/internal/http2/Http2Connection;->$assertionsDisabled:Z

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const v3, 0x7fffffff

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v0, "OkHttp Http2Connection"

    invoke-static {v0, v8}, Lokhttp3/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lokhttp3/internal/http2/Http2Connection;->executor:Ljava/util/concurrent/ExecutorService;

    return-void

    :cond_27
    move v0, v2

    goto :goto_b
.end method

.method constructor <init>(Lokhttp3/internal/http2/Http2Connection$Builder;)V
    .registers 13

    const/4 v10, 0x7

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lokhttp3/internal/http2/Http2Connection;->unacknowledgedBytesRead:J

    new-instance v0, Lokhttp3/internal/http2/Settings;

    invoke-direct {v0}, Lokhttp3/internal/http2/Settings;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->okHttpSettings:Lokhttp3/internal/http2/Settings;

    new-instance v0, Lokhttp3/internal/http2/Settings;

    invoke-direct {v0}, Lokhttp3/internal/http2/Settings;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->peerSettings:Lokhttp3/internal/http2/Settings;

    iput-boolean v2, p0, Lokhttp3/internal/http2/Http2Connection;->receivedInitialPeerSettings:Z

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->currentPushRequests:Ljava/util/Set;

    iget-object v0, p1, Lokhttp3/internal/http2/Http2Connection$Builder;->pushObserver:Lokhttp3/internal/http2/PushObserver;

    iput-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->pushObserver:Lokhttp3/internal/http2/PushObserver;

    iget-boolean v0, p1, Lokhttp3/internal/http2/Http2Connection$Builder;->client:Z

    iput-boolean v0, p0, Lokhttp3/internal/http2/Http2Connection;->client:Z

    iget-object v0, p1, Lokhttp3/internal/http2/Http2Connection$Builder;->listener:Lokhttp3/internal/http2/Http2Connection$Listener;

    iput-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->listener:Lokhttp3/internal/http2/Http2Connection$Listener;

    iget-boolean v0, p1, Lokhttp3/internal/http2/Http2Connection$Builder;->client:Z

    if-eqz v0, :cond_b5

    move v0, v3

    :goto_3a
    iput v0, p0, Lokhttp3/internal/http2/Http2Connection;->nextStreamId:I

    iget-boolean v0, p1, Lokhttp3/internal/http2/Http2Connection$Builder;->client:Z

    if-eqz v0, :cond_46

    iget v0, p0, Lokhttp3/internal/http2/Http2Connection;->nextStreamId:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lokhttp3/internal/http2/Http2Connection;->nextStreamId:I

    :cond_46
    iget-boolean v0, p1, Lokhttp3/internal/http2/Http2Connection$Builder;->client:Z

    if-eqz v0, :cond_4b

    move v1, v3

    :cond_4b
    iput v1, p0, Lokhttp3/internal/http2/Http2Connection;->nextPingId:I

    iget-boolean v0, p1, Lokhttp3/internal/http2/Http2Connection$Builder;->client:Z

    if-eqz v0, :cond_58

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->okHttpSettings:Lokhttp3/internal/http2/Settings;

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v10, v1}, Lokhttp3/internal/http2/Settings;->set(II)Lokhttp3/internal/http2/Settings;

    :cond_58
    iget-object v0, p1, Lokhttp3/internal/http2/Http2Connection$Builder;->hostname:Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-string v0, "OkHttp %s Push Observer"

    new-array v8, v3, [Ljava/lang/Object;

    iget-object v9, p0, Lokhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    aput-object v9, v8, v2

    invoke-static {v0, v8}, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lokhttp3/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lokhttp3/internal/http2/Http2Connection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->peerSettings:Lokhttp3/internal/http2/Settings;

    const v1, 0xffff

    invoke-virtual {v0, v10, v1}, Lokhttp3/internal/http2/Settings;->set(II)Lokhttp3/internal/http2/Settings;

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->peerSettings:Lokhttp3/internal/http2/Settings;

    const/4 v1, 0x5

    const/16 v2, 0x4000

    invoke-virtual {v0, v1, v2}, Lokhttp3/internal/http2/Settings;->set(II)Lokhttp3/internal/http2/Settings;

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->peerSettings:Lokhttp3/internal/http2/Settings;

    invoke-virtual {v0}, Lokhttp3/internal/http2/Settings;->getInitialWindowSize()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lokhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    iget-object v0, p1, Lokhttp3/internal/http2/Http2Connection$Builder;->socket:Ljava/net/Socket;

    iput-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->socket:Ljava/net/Socket;

    new-instance v0, Lokhttp3/internal/http2/Http2Writer;

    iget-object v1, p1, Lokhttp3/internal/http2/Http2Connection$Builder;->sink:Lokio/BufferedSink;

    iget-boolean v2, p0, Lokhttp3/internal/http2/Http2Connection;->client:Z

    invoke-direct {v0, v1, v2}, Lokhttp3/internal/http2/Http2Writer;-><init>(Lokio/BufferedSink;Z)V

    iput-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    new-instance v0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    new-instance v1, Lokhttp3/internal/http2/Http2Reader;

    iget-object v2, p1, Lokhttp3/internal/http2/Http2Connection$Builder;->source:Lokio/BufferedSource;

    iget-boolean v3, p0, Lokhttp3/internal/http2/Http2Connection;->client:Z

    invoke-direct {v1, v2, v3}, Lokhttp3/internal/http2/Http2Reader;-><init>(Lokio/BufferedSource;Z)V

    invoke-direct {v0, p0, v1}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;-><init>(Lokhttp3/internal/http2/Http2Connection;Lokhttp3/internal/http2/Http2Reader;)V

    iput-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->readerRunnable:Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    return-void

    :cond_b5
    move v0, v1

    goto :goto_3a
.end method

.method private newStream(ILjava/util/List;Z)Lokhttp3/internal/http2/Http2Stream;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/http2/Header;",
            ">;Z)",
            "Lokhttp3/internal/http2/Http2Stream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v10, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez p3, :cond_1c

    move v3, v6

    :goto_7
    const/4 v4, 0x0

    iget-object v8, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    monitor-enter v8

    :try_start_b
    monitor-enter p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_19

    :try_start_c
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Connection;->shutdown:Z

    if-eqz v0, :cond_1e

    new-instance v0, Lokhttp3/internal/http2/ConnectionShutdownException;

    invoke-direct {v0}, Lokhttp3/internal/http2/ConnectionShutdownException;-><init>()V

    throw v0

    :catchall_16
    move-exception v0

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_16

    :try_start_18
    throw v0

    :catchall_19
    move-exception v0

    monitor-exit v8
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_19

    throw v0

    :cond_1c
    move v3, v7

    goto :goto_7

    :cond_1e
    :try_start_1e
    iget v1, p0, Lokhttp3/internal/http2/Http2Connection;->nextStreamId:I

    iget v0, p0, Lokhttp3/internal/http2/Http2Connection;->nextStreamId:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lokhttp3/internal/http2/Http2Connection;->nextStreamId:I

    new-instance v0, Lokhttp3/internal/http2/Http2Stream;

    move-object v2, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lokhttp3/internal/http2/Http2Stream;-><init>(ILokhttp3/internal/http2/Http2Connection;ZZLjava/util/List;)V

    if-eqz p3, :cond_3b

    iget-wide v4, p0, Lokhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    cmp-long v2, v4, v10

    if-eqz v2, :cond_3b

    iget-wide v4, v0, Lokhttp3/internal/http2/Http2Stream;->bytesLeftInWriteWindow:J

    cmp-long v2, v4, v10

    if-nez v2, :cond_3c

    :cond_3b
    move v7, v6

    :cond_3c
    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Stream;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_4b

    iget-object v2, p0, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4b
    monitor-exit p0
    :try_end_4c
    .catchall {:try_start_1e .. :try_end_4c} :catchall_16

    if-nez p1, :cond_5c

    :try_start_4e
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    invoke-virtual {v2, v3, v1, p1, p2}, Lokhttp3/internal/http2/Http2Writer;->synStream(ZIILjava/util/List;)V

    :goto_53
    monitor-exit v8
    :try_end_54
    .catchall {:try_start_4e .. :try_end_54} :catchall_19

    if-eqz v7, :cond_5b

    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    invoke-virtual {v1}, Lokhttp3/internal/http2/Http2Writer;->flush()V

    :cond_5b
    return-object v0

    :cond_5c
    :try_start_5c
    iget-boolean v2, p0, Lokhttp3/internal/http2/Http2Connection;->client:Z

    if-eqz v2, :cond_68

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "client streams shouldn\'t have associated stream IDs"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_68
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    invoke-virtual {v2, p1, v1, p2}, Lokhttp3/internal/http2/Http2Writer;->pushPromise(IILjava/util/List;)V
    :try_end_6d
    .catchall {:try_start_5c .. :try_end_6d} :catchall_19

    goto :goto_53
.end method


# virtual methods
.method addBytesToWriteWindow(J)V
    .registers 6

    iget-wide v0, p0, Lokhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lokhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_e

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_e
    return-void
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->NO_ERROR:Lokhttp3/internal/http2/ErrorCode;

    sget-object v1, Lokhttp3/internal/http2/ErrorCode;->CANCEL:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {p0, v0, v1}, Lokhttp3/internal/http2/Http2Connection;->close(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;)V

    return-void
.end method

.method close(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x0

    sget-boolean v0, Lokhttp3/internal/http2/Http2Connection;->$assertionsDisabled:Z

    if-nez v0, :cond_12

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_12
    :try_start_12
    invoke-virtual {p0, p1}, Lokhttp3/internal/http2/Http2Connection;->shutdown(Lokhttp3/internal/http2/ErrorCode;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_66

    move-object v1, v2

    :goto_16
    monitor-enter p0

    :try_start_17
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_98

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v4, p0, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    new-array v4, v4, [Lokhttp3/internal/http2/Http2Stream;

    invoke-interface {v0, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lokhttp3/internal/http2/Http2Stream;

    iget-object v4, p0, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    move-object v5, v0

    :goto_39
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->pings:Ljava/util/Map;

    if-eqz v0, :cond_96

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->pings:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, Lokhttp3/internal/http2/Http2Connection;->pings:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Lokhttp3/internal/http2/Ping;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lokhttp3/internal/http2/Ping;

    const/4 v2, 0x0

    iput-object v2, p0, Lokhttp3/internal/http2/Http2Connection;->pings:Ljava/util/Map;

    move-object v4, v0

    :goto_55
    monitor-exit p0
    :try_end_56
    .catchall {:try_start_17 .. :try_end_56} :catchall_69

    if-eqz v5, :cond_72

    array-length v6, v5

    move v2, v3

    move-object v0, v1

    :goto_5b
    if-ge v2, v6, :cond_71

    aget-object v1, v5, v2

    :try_start_5f
    invoke-virtual {v1, p2}, Lokhttp3/internal/http2/Http2Stream;->close(Lokhttp3/internal/http2/ErrorCode;)V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_6c

    :cond_62
    :goto_62
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_5b

    :catch_66
    move-exception v0

    move-object v1, v0

    goto :goto_16

    :catchall_69
    move-exception v0

    :try_start_6a
    monitor-exit p0
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    throw v0

    :catch_6c
    move-exception v1

    if-eqz v0, :cond_62

    move-object v0, v1

    goto :goto_62

    :cond_71
    move-object v1, v0

    :cond_72
    if-eqz v4, :cond_80

    array-length v2, v4

    move v0, v3

    :goto_76
    if-ge v0, v2, :cond_80

    aget-object v3, v4, v0

    invoke-virtual {v3}, Lokhttp3/internal/http2/Ping;->cancel()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_76

    :cond_80
    :try_start_80
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Writer;->close()V
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_85} :catch_8e

    move-object v0, v1

    :cond_86
    :goto_86
    :try_start_86
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_8b} :catch_94

    :goto_8b
    if-eqz v0, :cond_93

    throw v0

    :catch_8e
    move-exception v0

    if-eqz v1, :cond_86

    move-object v0, v1

    goto :goto_86

    :cond_93
    return-void

    :catch_94
    move-exception v0

    goto :goto_8b

    :cond_96
    move-object v4, v2

    goto :goto_55

    :cond_98
    move-object v5, v2

    goto :goto_39
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Writer;->flush()V

    return-void
.end method

.method public getProtocol()Lokhttp3/Protocol;
    .registers 2

    sget-object v0, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    return-object v0
.end method

.method declared-synchronized getStream(I)Lokhttp3/internal/http2/Http2Stream;
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/http2/Http2Stream;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isShutdown()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Connection;->shutdown:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized maxConcurrentStreams()I
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->peerSettings:Lokhttp3/internal/http2/Settings;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lokhttp3/internal/http2/Settings;->getMaxConcurrentStreams(I)I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result v0

    monitor-exit p0

    return v0

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public newStream(Ljava/util/List;Z)Lokhttp3/internal/http2/Http2Stream;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/http2/Header;",
            ">;Z)",
            "Lokhttp3/internal/http2/Http2Stream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lokhttp3/internal/http2/Http2Connection;->newStream(ILjava/util/List;Z)Lokhttp3/internal/http2/Http2Stream;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized openStreamCount()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I
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

.method public ping()Lokhttp3/internal/http2/Ping;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lokhttp3/internal/http2/Ping;

    invoke-direct {v0}, Lokhttp3/internal/http2/Ping;-><init>()V

    monitor-enter p0

    :try_start_6
    iget-boolean v1, p0, Lokhttp3/internal/http2/Http2Connection;->shutdown:Z

    if-eqz v1, :cond_13

    new-instance v0, Lokhttp3/internal/http2/ConnectionShutdownException;

    invoke-direct {v0}, Lokhttp3/internal/http2/ConnectionShutdownException;-><init>()V

    throw v0

    :catchall_10
    move-exception v0

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_10

    throw v0

    :cond_13
    :try_start_13
    iget v1, p0, Lokhttp3/internal/http2/Http2Connection;->nextPingId:I

    iget v2, p0, Lokhttp3/internal/http2/Http2Connection;->nextPingId:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lokhttp3/internal/http2/Http2Connection;->nextPingId:I

    iget-object v2, p0, Lokhttp3/internal/http2/Http2Connection;->pings:Ljava/util/Map;

    if-nez v2, :cond_26

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, p0, Lokhttp3/internal/http2/Http2Connection;->pings:Ljava/util/Map;

    :cond_26
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Connection;->pings:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0
    :try_end_30
    .catchall {:try_start_13 .. :try_end_30} :catchall_10

    const/4 v2, 0x0

    const v3, 0x4f4b6f6b

    invoke-virtual {p0, v2, v1, v3, v0}, Lokhttp3/internal/http2/Http2Connection;->writePing(ZIILokhttp3/internal/http2/Ping;)V

    return-object v0
.end method

.method pushDataLater(ILokio/BufferedSource;IZ)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v5, Lokio/Buffer;

    invoke-direct {v5}, Lokio/Buffer;-><init>()V

    int-to-long v0, p3

    invoke-interface {p2, v0, v1}, Lokio/BufferedSource;->require(J)V

    int-to-long v0, p3

    invoke-interface {p2, v5, v0, v1}, Lokio/BufferedSource;->read(Lokio/Buffer;J)J

    invoke-virtual {v5}, Lokio/Buffer;->size()J

    move-result-wide v0

    int-to-long v2, p3

    cmp-long v0, v0, v2

    if-eqz v0, :cond_37

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lokio/Buffer;->size()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " != "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_37
    iget-object v8, p0, Lokhttp3/internal/http2/Http2Connection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lokhttp3/internal/http2/Http2Connection$6;

    const-string v2, "OkHttp %s Push Data[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lokhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lokhttp3/internal/http2/Http2Connection$6;-><init>(Lokhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;ILokio/Buffer;IZ)V

    invoke-interface {v8, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method pushHeadersLater(ILjava/util/List;Z)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/http2/Header;",
            ">;Z)V"
        }
    .end annotation

    iget-object v7, p0, Lokhttp3/internal/http2/Http2Connection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lokhttp3/internal/http2/Http2Connection$5;

    const-string v2, "OkHttp %s Push Headers[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lokhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lokhttp3/internal/http2/Http2Connection$5;-><init>(Lokhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;Z)V

    invoke-interface {v7, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method pushRequestLater(ILjava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->currentPushRequests:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {p0, p1, v0}, Lokhttp3/internal/http2/Http2Connection;->writeSynResetLater(ILokhttp3/internal/http2/ErrorCode;)V

    monitor-exit p0

    :goto_13
    return-void

    :cond_14
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->currentPushRequests:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_3d

    iget-object v6, p0, Lokhttp3/internal/http2/Http2Connection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lokhttp3/internal/http2/Http2Connection$4;

    const-string v2, "OkHttp %s Push Request[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lokhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lokhttp3/internal/http2/Http2Connection$4;-><init>(Lokhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_13

    :catchall_3d
    move-exception v0

    :try_start_3e
    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw v0
.end method

.method pushResetLater(ILokhttp3/internal/http2/ErrorCode;)V
    .registers 10

    iget-object v6, p0, Lokhttp3/internal/http2/Http2Connection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lokhttp3/internal/http2/Http2Connection$7;

    const-string v2, "OkHttp %s Push Reset[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lokhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lokhttp3/internal/http2/Http2Connection$7;-><init>(Lokhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;ILokhttp3/internal/http2/ErrorCode;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public pushStream(ILjava/util/List;Z)Lokhttp3/internal/http2/Http2Stream;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/http2/Header;",
            ">;Z)",
            "Lokhttp3/internal/http2/Http2Stream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Connection;->client:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Client cannot push requests."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    invoke-direct {p0, p1, p2, p3}, Lokhttp3/internal/http2/Http2Connection;->newStream(ILjava/util/List;Z)Lokhttp3/internal/http2/Http2Stream;

    move-result-object v0

    return-object v0
.end method

.method pushedStream(I)Z
    .registers 3

    if-eqz p1, :cond_8

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method declared-synchronized removePing(I)Lokhttp3/internal/http2/Ping;
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->pings:Ljava/util/Map;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->pings:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/http2/Ping;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_15

    :goto_11
    monitor-exit p0

    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_11

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized removeStream(I)Lokhttp3/internal/http2/Http2Stream;
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSettings(Lokhttp3/internal/http2/Settings;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    monitor-enter v1

    :try_start_3
    monitor-enter p0
    :try_end_4
    .catchall {:try_start_3 .. :try_end_4} :catchall_11

    :try_start_4
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Connection;->shutdown:Z

    if-eqz v0, :cond_14

    new-instance v0, Lokhttp3/internal/http2/ConnectionShutdownException;

    invoke-direct {v0}, Lokhttp3/internal/http2/ConnectionShutdownException;-><init>()V

    throw v0

    :catchall_e
    move-exception v0

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_e

    :try_start_10
    throw v0

    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_11

    throw v0

    :cond_14
    :try_start_14
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->okHttpSettings:Lokhttp3/internal/http2/Settings;

    invoke-virtual {v0, p1}, Lokhttp3/internal/http2/Settings;->merge(Lokhttp3/internal/http2/Settings;)V

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    invoke-virtual {v0, p1}, Lokhttp3/internal/http2/Http2Writer;->settings(Lokhttp3/internal/http2/Settings;)V

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_14 .. :try_end_1f} :catchall_e

    :try_start_1f
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_11

    return-void
.end method

.method public shutdown(Lokhttp3/internal/http2/ErrorCode;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    monitor-enter v1

    :try_start_3
    monitor-enter p0
    :try_end_4
    .catchall {:try_start_3 .. :try_end_4} :catchall_1a

    :try_start_4
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Connection;->shutdown:Z

    if-eqz v0, :cond_b

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_1d

    :try_start_9
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_1a

    :goto_a
    return-void

    :cond_b
    const/4 v0, 0x1

    :try_start_c
    iput-boolean v0, p0, Lokhttp3/internal/http2/Http2Connection;->shutdown:Z

    iget v0, p0, Lokhttp3/internal/http2/Http2Connection;->lastGoodStreamId:I

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_1d

    :try_start_11
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    sget-object v3, Lokhttp3/internal/Util;->EMPTY_BYTE_ARRAY:[B

    invoke-virtual {v2, v0, p1, v3}, Lokhttp3/internal/http2/Http2Writer;->goAway(ILokhttp3/internal/http2/ErrorCode;[B)V

    monitor-exit v1

    goto :goto_a

    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_11 .. :try_end_1c} :catchall_1a

    throw v0

    :catchall_1d
    move-exception v0

    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    :try_start_1f
    throw v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1a
.end method

.method public start()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lokhttp3/internal/http2/Http2Connection;->start(Z)V

    return-void
.end method

.method start(Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v3, 0xffff

    if-eqz p1, :cond_21

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Writer;->connectionPreface()V

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection;->okHttpSettings:Lokhttp3/internal/http2/Settings;

    invoke-virtual {v0, v1}, Lokhttp3/internal/http2/Http2Writer;->settings(Lokhttp3/internal/http2/Settings;)V

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->okHttpSettings:Lokhttp3/internal/http2/Settings;

    invoke-virtual {v0}, Lokhttp3/internal/http2/Settings;->getInitialWindowSize()I

    move-result v0

    if-eq v0, v3, :cond_21

    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    const/4 v2, 0x0

    sub-int/2addr v0, v3

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Lokhttp3/internal/http2/Http2Writer;->windowUpdate(IJ)V

    :cond_21
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection;->readerRunnable:Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public writeData(IZLokio/Buffer;J)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const-wide/16 v8, 0x0

    cmp-long v0, p4, v8

    if-nez v0, :cond_33

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    invoke-virtual {v0, p2, p1, p3, v1}, Lokhttp3/internal/http2/Http2Writer;->data(ZILokio/Buffer;I)V

    :cond_c
    return-void

    :cond_d
    :try_start_d
    iget-wide v2, p0, Lokhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    invoke-static {p4, p5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v0, v2

    iget-object v2, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    invoke-virtual {v2}, Lokhttp3/internal/http2/Http2Writer;->maxDataLength()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-wide v4, p0, Lokhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    int-to-long v6, v2

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lokhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    monitor-exit p0
    :try_end_25
    .catchall {:try_start_d .. :try_end_25} :catchall_59

    int-to-long v4, v2

    sub-long/2addr p4, v4

    iget-object v3, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    if-eqz p2, :cond_60

    cmp-long v0, p4, v8

    if-nez v0, :cond_60

    const/4 v0, 0x1

    :goto_30
    invoke-virtual {v3, v0, p1, p3, v2}, Lokhttp3/internal/http2/Http2Writer;->data(ZILokio/Buffer;I)V

    :cond_33
    cmp-long v0, p4, v8

    if-lez v0, :cond_c

    monitor-enter p0

    :goto_38
    :try_start_38
    iget-wide v2, p0, Lokhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    cmp-long v0, v2, v8

    if-gtz v0, :cond_d

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5c

    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_52
    .catch Ljava/lang/InterruptedException; {:try_start_38 .. :try_end_52} :catch_52
    .catchall {:try_start_38 .. :try_end_52} :catchall_59

    :catch_52
    move-exception v0

    :try_start_53
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    :catchall_59
    move-exception v0

    monitor-exit p0
    :try_end_5b
    .catchall {:try_start_53 .. :try_end_5b} :catchall_59

    throw v0

    :cond_5c
    :try_start_5c
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_5f
    .catch Ljava/lang/InterruptedException; {:try_start_5c .. :try_end_5f} :catch_52
    .catchall {:try_start_5c .. :try_end_5f} :catchall_59

    goto :goto_38

    :cond_60
    move v0, v1

    goto :goto_30
.end method

.method writePing(ZIILokhttp3/internal/http2/Ping;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    monitor-enter v1

    if-eqz p4, :cond_8

    :try_start_5
    invoke-virtual {p4}, Lokhttp3/internal/http2/Ping;->send()V

    :cond_8
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    invoke-virtual {v0, p1, p2, p3}, Lokhttp3/internal/http2/Http2Writer;->ping(ZII)V

    monitor-exit v1

    return-void

    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_f

    throw v0
.end method

.method writePingLater(ZIILokhttp3/internal/http2/Ping;)V
    .registers 14

    sget-object v8, Lokhttp3/internal/http2/Http2Connection;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lokhttp3/internal/http2/Http2Connection$3;

    const-string v2, "OkHttp %s ping %08x%08x"

    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lokhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lokhttp3/internal/http2/Http2Connection$3;-><init>(Lokhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;ZIILokhttp3/internal/http2/Ping;)V

    invoke-interface {v8, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method writeSynReply(IZLjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    invoke-virtual {v0, p2, p1, p3}, Lokhttp3/internal/http2/Http2Writer;->synReply(ZILjava/util/List;)V

    return-void
.end method

.method writeSynReset(ILokhttp3/internal/http2/ErrorCode;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    invoke-virtual {v0, p1, p2}, Lokhttp3/internal/http2/Http2Writer;->rstStream(ILokhttp3/internal/http2/ErrorCode;)V

    return-void
.end method

.method writeSynResetLater(ILokhttp3/internal/http2/ErrorCode;)V
    .registers 10

    sget-object v6, Lokhttp3/internal/http2/Http2Connection;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lokhttp3/internal/http2/Http2Connection$1;

    const-string v2, "OkHttp %s stream %d"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lokhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lokhttp3/internal/http2/Http2Connection$1;-><init>(Lokhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;ILokhttp3/internal/http2/ErrorCode;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method writeWindowUpdateLater(IJ)V
    .registers 12

    sget-object v0, Lokhttp3/internal/http2/Http2Connection;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lokhttp3/internal/http2/Http2Connection$2;

    const-string v3, "OkHttp Window Update %s stream %d"

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v5, p0, Lokhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    aput-object v5, v4, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    move-object v2, p0

    move v5, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lokhttp3/internal/http2/Http2Connection$2;-><init>(Lokhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;IJ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
