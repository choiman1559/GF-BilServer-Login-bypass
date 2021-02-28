.class final Lokhttp3/internal/http2/Http2Writer;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final client:Z

.field private closed:Z

.field private final hpackBuffer:Lokio/Buffer;

.field final hpackWriter:Lokhttp3/internal/http2/Hpack$Writer;

.field private maxFrameSize:I

.field private final sink:Lokio/BufferedSink;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lokhttp3/internal/http2/Http2;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/Http2Writer;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lokio/BufferedSink;Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    iput-boolean p2, p0, Lokhttp3/internal/http2/Http2Writer;->client:Z

    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/http2/Http2Writer;->hpackBuffer:Lokio/Buffer;

    new-instance v0, Lokhttp3/internal/http2/Hpack$Writer;

    iget-object v1, p0, Lokhttp3/internal/http2/Http2Writer;->hpackBuffer:Lokio/Buffer;

    invoke-direct {v0, v1}, Lokhttp3/internal/http2/Hpack$Writer;-><init>(Lokio/Buffer;)V

    iput-object v0, p0, Lokhttp3/internal/http2/Http2Writer;->hpackWriter:Lokhttp3/internal/http2/Hpack$Writer;

    const/16 v0, 0x4000

    iput v0, p0, Lokhttp3/internal/http2/Http2Writer;->maxFrameSize:I

    return-void
.end method

.method private writeContinuationFrames(IJ)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v6, 0x0

    :goto_2
    cmp-long v0, p2, v6

    if-lez v0, :cond_25

    iget v0, p0, Lokhttp3/internal/http2/Http2Writer;->maxFrameSize:I

    int-to-long v0, v0

    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    int-to-long v2, v1

    sub-long/2addr p2, v2

    const/16 v2, 0x9

    cmp-long v0, p2, v6

    if-nez v0, :cond_23

    const/4 v0, 0x4

    :goto_17
    invoke-virtual {p0, p1, v1, v2, v0}, Lokhttp3/internal/http2/Http2Writer;->frameHeader(IIBB)V

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    iget-object v2, p0, Lokhttp3/internal/http2/Http2Writer;->hpackBuffer:Lokio/Buffer;

    int-to-long v4, v1

    invoke-interface {v0, v2, v4, v5}, Lokio/BufferedSink;->write(Lokio/Buffer;J)V

    goto :goto_2

    :cond_23
    const/4 v0, 0x0

    goto :goto_17

    :cond_25
    return-void
.end method

.method private static writeMedium(Lokio/BufferedSink;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    ushr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-interface {p0, v0}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-interface {p0, v0}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    and-int/lit16 v0, p1, 0xff

    invoke-interface {p0, v0}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    return-void
.end method


# virtual methods
.method public declared-synchronized applyAndAckSettings(Lokhttp3/internal/http2/Settings;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Writer;->closed:Z

    if-eqz v0, :cond_10

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_10
    :try_start_10
    iget v0, p0, Lokhttp3/internal/http2/Http2Writer;->maxFrameSize:I

    invoke-virtual {p1, v0}, Lokhttp3/internal/http2/Settings;->getMaxFrameSize(I)I

    move-result v0

    iput v0, p0, Lokhttp3/internal/http2/Http2Writer;->maxFrameSize:I

    invoke-virtual {p1}, Lokhttp3/internal/http2/Settings;->getHeaderTableSize()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_28

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Writer;->hpackWriter:Lokhttp3/internal/http2/Hpack$Writer;

    invoke-virtual {p1}, Lokhttp3/internal/http2/Settings;->getHeaderTableSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lokhttp3/internal/http2/Hpack$Writer;->setHeaderTableSizeSetting(I)V

    :cond_28
    const/4 v0, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0, v1, v2}, Lokhttp3/internal/http2/Http2Writer;->frameHeader(IIBB)V

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V
    :try_end_34
    .catchall {:try_start_10 .. :try_end_34} :catchall_d

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lokhttp3/internal/http2/Http2Writer;->closed:Z

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->close()V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized connectionPreface()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Writer;->closed:Z

    if-eqz v0, :cond_10

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_10
    :try_start_10
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Writer;->client:Z
    :try_end_12
    .catchall {:try_start_10 .. :try_end_12} :catchall_d

    if-nez v0, :cond_16

    :goto_14
    monitor-exit p0

    return-void

    :cond_16
    :try_start_16
    sget-object v0, Lokhttp3/internal/http2/Http2Writer;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_37

    sget-object v0, Lokhttp3/internal/http2/Http2Writer;->logger:Ljava/util/logging/Logger;

    const-string v1, ">> CONNECTION %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lokhttp3/internal/http2/Http2;->CONNECTION_PREFACE:Lokio/ByteString;

    invoke-virtual {v4}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_37
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    sget-object v1, Lokhttp3/internal/http2/Http2;->CONNECTION_PREFACE:Lokio/ByteString;

    invoke-virtual {v1}, Lokio/ByteString;->toByteArray()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V
    :try_end_47
    .catchall {:try_start_16 .. :try_end_47} :catchall_d

    goto :goto_14
.end method

.method public declared-synchronized data(ZILokio/Buffer;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Writer;->closed:Z

    if-eqz v0, :cond_10

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_10
    const/4 v0, 0x0

    if-eqz p1, :cond_15

    const/4 v0, 0x1

    int-to-byte v0, v0

    :cond_15
    :try_start_15
    invoke-virtual {p0, p2, v0, p3, p4}, Lokhttp3/internal/http2/Http2Writer;->dataFrame(IBLokio/Buffer;I)V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_d

    monitor-exit p0

    return-void
.end method

.method dataFrame(IBLokio/Buffer;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p4, v0, p2}, Lokhttp3/internal/http2/Http2Writer;->frameHeader(IIBB)V

    if-lez p4, :cond_c

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    int-to-long v2, p4

    invoke-interface {v0, p3, v2, v3}, Lokio/BufferedSink;->write(Lokio/Buffer;J)V

    :cond_c
    return-void
.end method

.method public declared-synchronized flush()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Writer;->closed:Z

    if-eqz v0, :cond_10

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_10
    :try_start_10
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_d

    monitor-exit p0

    return-void
.end method

.method public frameHeader(IIBB)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v0, Lokhttp3/internal/http2/Http2Writer;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_15

    sget-object v0, Lokhttp3/internal/http2/Http2Writer;->logger:Ljava/util/logging/Logger;

    invoke-static {v3, p1, p2, p3, p4}, Lokhttp3/internal/http2/Http2;->frameLog(ZIIBB)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_15
    iget v0, p0, Lokhttp3/internal/http2/Http2Writer;->maxFrameSize:I

    if-le p2, v0, :cond_31

    const-string v0, "FRAME_SIZE_ERROR length > %d: %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lokhttp3/internal/http2/Http2Writer;->maxFrameSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lokhttp3/internal/http2/Http2;->illegalArgument(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_31
    const/high16 v0, -0x80000000

    and-int/2addr v0, p1

    if-eqz v0, :cond_45

    const-string v0, "reserved bit set: %s"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lokhttp3/internal/http2/Http2;->illegalArgument(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_45
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    invoke-static {v0, p2}, Lokhttp3/internal/http2/Http2Writer;->writeMedium(Lokio/BufferedSink;I)V

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    and-int/lit16 v1, p3, 0xff

    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    and-int/lit16 v1, p4, 0xff

    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    const v1, 0x7fffffff

    and-int/2addr v1, p1

    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    return-void
.end method

.method public declared-synchronized goAway(ILokhttp3/internal/http2/ErrorCode;[B)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Writer;->closed:Z

    if-eqz v0, :cond_10

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_10
    :try_start_10
    iget v0, p2, Lokhttp3/internal/http2/ErrorCode;->httpCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1f

    const-string v0, "errorCode.httpCode == -1"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lokhttp3/internal/http2/Http2;->illegalArgument(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_1f
    array-length v0, p3

    add-int/lit8 v0, v0, 0x8

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0, v1, v2}, Lokhttp3/internal/http2/Http2Writer;->frameHeader(IIBB)V

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v0, p1}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    iget v1, p2, Lokhttp3/internal/http2/ErrorCode;->httpCode:I

    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    array-length v0, p3

    if-lez v0, :cond_3c

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v0, p3}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    :cond_3c
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V
    :try_end_41
    .catchall {:try_start_10 .. :try_end_41} :catchall_d

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized headers(ILjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
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

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Writer;->closed:Z

    if-eqz v0, :cond_10

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_10
    const/4 v0, 0x0

    :try_start_11
    invoke-virtual {p0, v0, p1, p2}, Lokhttp3/internal/http2/Http2Writer;->headers(ZILjava/util/List;)V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_d

    monitor-exit p0

    return-void
.end method

.method headers(ZILjava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
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

    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Writer;->closed:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Writer;->hpackWriter:Lokhttp3/internal/http2/Hpack$Writer;

    invoke-virtual {v0, p3}, Lokhttp3/internal/http2/Hpack$Writer;->writeHeaders(Ljava/util/List;)V

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Writer;->hpackBuffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    iget v0, p0, Lokhttp3/internal/http2/Http2Writer;->maxFrameSize:I

    int-to-long v0, v0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    const/4 v4, 0x1

    int-to-long v6, v1

    cmp-long v0, v2, v6

    if-nez v0, :cond_42

    const/4 v0, 0x4

    :goto_26
    if-eqz p1, :cond_2b

    or-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    :cond_2b
    invoke-virtual {p0, p2, v1, v4, v0}, Lokhttp3/internal/http2/Http2Writer;->frameHeader(IIBB)V

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    iget-object v4, p0, Lokhttp3/internal/http2/Http2Writer;->hpackBuffer:Lokio/Buffer;

    int-to-long v6, v1

    invoke-interface {v0, v4, v6, v7}, Lokio/BufferedSink;->write(Lokio/Buffer;J)V

    int-to-long v4, v1

    cmp-long v0, v2, v4

    if-lez v0, :cond_41

    int-to-long v0, v1

    sub-long v0, v2, v0

    invoke-direct {p0, p2, v0, v1}, Lokhttp3/internal/http2/Http2Writer;->writeContinuationFrames(IJ)V

    :cond_41
    return-void

    :cond_42
    const/4 v0, 0x0

    goto :goto_26
.end method

.method public maxDataLength()I
    .registers 2

    iget v0, p0, Lokhttp3/internal/http2/Http2Writer;->maxFrameSize:I

    return v0
.end method

.method public declared-synchronized ping(ZII)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    iget-boolean v1, p0, Lokhttp3/internal/http2/Http2Writer;->closed:Z

    if-eqz v1, :cond_11

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_e

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_11
    const/16 v1, 0x8

    const/4 v2, 0x6

    if-eqz p1, :cond_17

    const/4 v0, 0x1

    :cond_17
    const/4 v3, 0x0

    :try_start_18
    invoke-virtual {p0, v3, v1, v2, v0}, Lokhttp3/internal/http2/Http2Writer;->frameHeader(IIBB)V

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v0, p2}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v0, p3}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V
    :try_end_2a
    .catchall {:try_start_18 .. :try_end_2a} :catchall_e

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized pushPromise(IILjava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
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

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Writer;->closed:Z

    if-eqz v0, :cond_10

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_10
    :try_start_10
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Writer;->hpackWriter:Lokhttp3/internal/http2/Hpack$Writer;

    invoke-virtual {v0, p3}, Lokhttp3/internal/http2/Hpack$Writer;->writeHeaders(Ljava/util/List;)V

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Writer;->hpackBuffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    iget v0, p0, Lokhttp3/internal/http2/Http2Writer;->maxFrameSize:I

    add-int/lit8 v0, v0, -0x4

    int-to-long v0, v0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    const/4 v4, 0x5

    int-to-long v6, v1

    cmp-long v0, v2, v6

    if-nez v0, :cond_4f

    const/4 v0, 0x4

    :goto_2c
    add-int/lit8 v5, v1, 0x4

    invoke-virtual {p0, p1, v5, v4, v0}, Lokhttp3/internal/http2/Http2Writer;->frameHeader(IIBB)V

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    const v4, 0x7fffffff

    and-int/2addr v4, p2

    invoke-interface {v0, v4}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    iget-object v4, p0, Lokhttp3/internal/http2/Http2Writer;->hpackBuffer:Lokio/Buffer;

    int-to-long v6, v1

    invoke-interface {v0, v4, v6, v7}, Lokio/BufferedSink;->write(Lokio/Buffer;J)V

    int-to-long v4, v1

    cmp-long v0, v2, v4

    if-lez v0, :cond_4d

    int-to-long v0, v1

    sub-long v0, v2, v0

    invoke-direct {p0, p1, v0, v1}, Lokhttp3/internal/http2/Http2Writer;->writeContinuationFrames(IJ)V
    :try_end_4d
    .catchall {:try_start_10 .. :try_end_4d} :catchall_d

    :cond_4d
    monitor-exit p0

    return-void

    :cond_4f
    const/4 v0, 0x0

    goto :goto_2c
.end method

.method public declared-synchronized rstStream(ILokhttp3/internal/http2/ErrorCode;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Writer;->closed:Z

    if-eqz v0, :cond_10

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_10
    :try_start_10
    iget v0, p2, Lokhttp3/internal/http2/ErrorCode;->httpCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1b
    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lokhttp3/internal/http2/Http2Writer;->frameHeader(IIBB)V

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    iget v1, p2, Lokhttp3/internal/http2/ErrorCode;->httpCode:I

    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V
    :try_end_2d
    .catchall {:try_start_10 .. :try_end_2d} :catchall_d

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized settings(Lokhttp3/internal/http2/Settings;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x4

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_3
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Writer;->closed:Z

    if-eqz v0, :cond_12

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_12
    :try_start_12
    invoke-virtual {p1}, Lokhttp3/internal/http2/Settings;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x6

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v5, v0, v3, v4}, Lokhttp3/internal/http2/Http2Writer;->frameHeader(IIBB)V

    :goto_1e
    const/16 v0, 0xa

    if-ge v2, v0, :cond_42

    invoke-virtual {p1, v2}, Lokhttp3/internal/http2/Settings;->isSet(I)Z

    move-result v0

    if-nez v0, :cond_2b

    :goto_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_2b
    if-ne v2, v1, :cond_3d

    const/4 v0, 0x3

    :goto_2e
    iget-object v3, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v3, v0}, Lokio/BufferedSink;->writeShort(I)Lokio/BufferedSink;

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    invoke-virtual {p1, v2}, Lokhttp3/internal/http2/Settings;->get(I)I

    move-result v3

    invoke-interface {v0, v3}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    goto :goto_28

    :cond_3d
    const/4 v0, 0x7

    if-ne v2, v0, :cond_49

    move v0, v1

    goto :goto_2e

    :cond_42
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V
    :try_end_47
    .catchall {:try_start_12 .. :try_end_47} :catchall_f

    monitor-exit p0

    return-void

    :cond_49
    move v0, v2

    goto :goto_2e
.end method

.method public declared-synchronized synReply(ZILjava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
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

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Writer;->closed:Z

    if-eqz v0, :cond_10

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_10
    :try_start_10
    invoke-virtual {p0, p1, p2, p3}, Lokhttp3/internal/http2/Http2Writer;->headers(ZILjava/util/List;)V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_d

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized synStream(ZIILjava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII",
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

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Writer;->closed:Z

    if-eqz v0, :cond_10

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_10
    :try_start_10
    invoke-virtual {p0, p1, p2, p4}, Lokhttp3/internal/http2/Http2Writer;->headers(ZILjava/util/List;)V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_d

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized windowUpdate(IJ)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Writer;->closed:Z

    if-eqz v0, :cond_10

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_10
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_1d

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p2, v0

    if-lez v0, :cond_2e

    :cond_1d
    :try_start_1d
    const-string v0, "windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lokhttp3/internal/http2/Http2;->illegalArgument(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_2e
    const/4 v0, 0x4

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lokhttp3/internal/http2/Http2Writer;->frameHeader(IIBB)V

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    long-to-int v1, p2

    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V
    :try_end_40
    .catchall {:try_start_1d .. :try_end_40} :catchall_d

    monitor-exit p0

    return-void
.end method
