.class final Lokhttp3/internal/http2/Http2Stream$FramingSource;
.super Ljava/lang/Object;

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http2/Http2Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FramingSource"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field closed:Z

.field finished:Z

.field private final maxByteCount:J

.field private final readBuffer:Lokio/Buffer;

.field private final receiveBuffer:Lokio/Buffer;

.field final synthetic this$0:Lokhttp3/internal/http2/Http2Stream;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method constructor <init>(Lokhttp3/internal/http2/Http2Stream;J)V
    .registers 6

    iput-object p1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->receiveBuffer:Lokio/Buffer;

    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lokio/Buffer;

    iput-wide p2, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->maxByteCount:J

    return-void
.end method

.method private checkNotClosed()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->closed:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v0, v0, Lokhttp3/internal/http2/Http2Stream;->errorCode:Lokhttp3/internal/http2/ErrorCode;

    if-eqz v0, :cond_1c

    new-instance v0, Lokhttp3/internal/http2/StreamResetException;

    iget-object v1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v1, v1, Lokhttp3/internal/http2/Http2Stream;->errorCode:Lokhttp3/internal/http2/ErrorCode;

    invoke-direct {v0, v1}, Lokhttp3/internal/http2/StreamResetException;-><init>(Lokhttp3/internal/http2/ErrorCode;)V

    throw v0

    :cond_1c
    return-void
.end method

.method private waitUntilReadable()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v0, v0, Lokhttp3/internal/http2/Http2Stream;->readTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;->enter()V

    :goto_7
    :try_start_7
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_30

    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->finished:Z

    if-nez v0, :cond_30

    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->closed:Z

    if-nez v0, :cond_30

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v0, v0, Lokhttp3/internal/http2/Http2Stream;->errorCode:Lokhttp3/internal/http2/ErrorCode;

    if-nez v0, :cond_30

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Stream;->waitForIo()V
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_27

    goto :goto_7

    :catchall_27
    move-exception v0

    iget-object v1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v1, v1, Lokhttp3/internal/http2/Http2Stream;->readTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v1}, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;->exitAndThrowIfTimedOut()V

    throw v0

    :cond_30
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v0, v0, Lokhttp3/internal/http2/Http2Stream;->readTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;->exitAndThrowIfTimedOut()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->closed:Z

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->clear()V

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_17

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Stream;->cancelStreamIfNecessary()V

    return-void

    :catchall_17
    move-exception v0

    :try_start_18
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public read(Lokio/Buffer;J)J
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v4, 0x0

    cmp-long v0, p2, v4

    if-gez v0, :cond_1f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    monitor-enter v2

    :try_start_22
    invoke-direct {p0}, Lokhttp3/internal/http2/Http2Stream$FramingSource;->waitUntilReadable()V

    invoke-direct {p0}, Lokhttp3/internal/http2/Http2Stream$FramingSource;->checkNotClosed()V

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-nez v0, :cond_36

    const-wide/16 v0, -0x1

    monitor-exit v2

    :goto_35
    return-wide v0

    :cond_36
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lokio/Buffer;

    iget-object v1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->size()J

    move-result-wide v4

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-virtual {v0, p1, v4, v5}, Lokio/Buffer;->read(Lokio/Buffer;J)J

    move-result-wide v0

    iget-object v3, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-wide v4, v3, Lokhttp3/internal/http2/Http2Stream;->unacknowledgedBytesRead:J

    add-long/2addr v4, v0

    iput-wide v4, v3, Lokhttp3/internal/http2/Http2Stream;->unacknowledgedBytesRead:J

    iget-object v3, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-wide v4, v3, Lokhttp3/internal/http2/Http2Stream;->unacknowledgedBytesRead:J

    iget-object v3, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v3, v3, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    iget-object v3, v3, Lokhttp3/internal/http2/Http2Connection;->okHttpSettings:Lokhttp3/internal/http2/Settings;

    invoke-virtual {v3}, Lokhttp3/internal/http2/Settings;->getInitialWindowSize()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-ltz v3, :cond_77

    iget-object v3, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v3, v3, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    iget-object v4, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget v4, v4, Lokhttp3/internal/http2/Http2Stream;->id:I

    iget-object v5, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-wide v6, v5, Lokhttp3/internal/http2/Http2Stream;->unacknowledgedBytesRead:J

    invoke-virtual {v3, v4, v6, v7}, Lokhttp3/internal/http2/Http2Connection;->writeWindowUpdateLater(IJ)V

    iget-object v3, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lokhttp3/internal/http2/Http2Stream;->unacknowledgedBytesRead:J

    :cond_77
    monitor-exit v2
    :try_end_78
    .catchall {:try_start_22 .. :try_end_78} :catchall_b8

    iget-object v2, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v2, v2, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    monitor-enter v2

    :try_start_7d
    iget-object v3, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v3, v3, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    iget-wide v4, v3, Lokhttp3/internal/http2/Http2Connection;->unacknowledgedBytesRead:J

    add-long/2addr v4, v0

    iput-wide v4, v3, Lokhttp3/internal/http2/Http2Connection;->unacknowledgedBytesRead:J

    iget-object v3, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v3, v3, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    iget-wide v4, v3, Lokhttp3/internal/http2/Http2Connection;->unacknowledgedBytesRead:J

    iget-object v3, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v3, v3, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    iget-object v3, v3, Lokhttp3/internal/http2/Http2Connection;->okHttpSettings:Lokhttp3/internal/http2/Settings;

    invoke-virtual {v3}, Lokhttp3/internal/http2/Settings;->getInitialWindowSize()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-ltz v3, :cond_b3

    iget-object v3, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v3, v3, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    const/4 v4, 0x0

    iget-object v5, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v5, v5, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    iget-wide v6, v5, Lokhttp3/internal/http2/Http2Connection;->unacknowledgedBytesRead:J

    invoke-virtual {v3, v4, v6, v7}, Lokhttp3/internal/http2/Http2Connection;->writeWindowUpdateLater(IJ)V

    iget-object v3, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v3, v3, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lokhttp3/internal/http2/Http2Connection;->unacknowledgedBytesRead:J

    :cond_b3
    monitor-exit v2

    goto :goto_35

    :catchall_b5
    move-exception v0

    monitor-exit v2
    :try_end_b7
    .catchall {:try_start_7d .. :try_end_b7} :catchall_b5

    throw v0

    :catchall_b8
    move-exception v0

    :try_start_b9
    monitor-exit v2
    :try_end_ba
    .catchall {:try_start_b9 .. :try_end_ba} :catchall_b8

    throw v0
.end method

.method receive(Lokio/BufferedSource;J)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v10, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-boolean v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->$assertionsDisabled:Z

    if-nez v0, :cond_34

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_16
    sub-long/2addr p2, v4

    iget-object v3, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    monitor-enter v3

    :try_start_1a
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v4

    cmp-long v0, v4, v10

    if-nez v0, :cond_76

    move v0, v1

    :goto_25
    iget-object v4, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lokio/Buffer;

    iget-object v5, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->receiveBuffer:Lokio/Buffer;

    invoke-virtual {v4, v5}, Lokio/Buffer;->writeAll(Lokio/Source;)J

    if-eqz v0, :cond_33

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_33
    monitor-exit v3
    :try_end_34
    .catchall {:try_start_1a .. :try_end_34} :catchall_78

    :cond_34
    cmp-long v0, p2, v10

    if-lez v0, :cond_58

    iget-object v3, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    monitor-enter v3

    :try_start_3b
    iget-boolean v4, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->finished:Z

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v6

    add-long/2addr v6, p2

    iget-wide v8, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->maxByteCount:J

    cmp-long v0, v6, v8

    if-lez v0, :cond_59

    move v0, v1

    :goto_4b
    monitor-exit v3
    :try_end_4c
    .catchall {:try_start_3b .. :try_end_4c} :catchall_5b

    if-eqz v0, :cond_5e

    invoke-interface {p1, p2, p3}, Lokio/BufferedSource;->skip(J)V

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    sget-object v1, Lokhttp3/internal/http2/ErrorCode;->FLOW_CONTROL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v0, v1}, Lokhttp3/internal/http2/Http2Stream;->closeLater(Lokhttp3/internal/http2/ErrorCode;)V

    :cond_58
    :goto_58
    return-void

    :cond_59
    move v0, v2

    goto :goto_4b

    :catchall_5b
    move-exception v0

    :try_start_5c
    monitor-exit v3
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    throw v0

    :cond_5e
    if-eqz v4, :cond_64

    invoke-interface {p1, p2, p3}, Lokio/BufferedSource;->skip(J)V

    goto :goto_58

    :cond_64
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->receiveBuffer:Lokio/Buffer;

    invoke-interface {p1, v0, p2, p3}, Lokio/BufferedSource;->read(Lokio/Buffer;J)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_16

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_76
    move v0, v2

    goto :goto_25

    :catchall_78
    move-exception v0

    :try_start_79
    monitor-exit v3
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_78

    throw v0
.end method

.method public timeout()Lokio/Timeout;
    .registers 2

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v0, v0, Lokhttp3/internal/http2/Http2Stream;->readTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    return-object v0
.end method
