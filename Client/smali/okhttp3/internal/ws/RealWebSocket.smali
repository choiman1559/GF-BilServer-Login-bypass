.class public final Lokhttp3/internal/ws/RealWebSocket;
.super Ljava/lang/Object;

# interfaces
.implements Lokhttp3/WebSocket;
.implements Lokhttp3/internal/ws/WebSocketReader$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/ws/RealWebSocket$CancelRunnable;,
        Lokhttp3/internal/ws/RealWebSocket$Streams;,
        Lokhttp3/internal/ws/RealWebSocket$Close;,
        Lokhttp3/internal/ws/RealWebSocket$Message;,
        Lokhttp3/internal/ws/RealWebSocket$PingRunnable;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final CANCEL_AFTER_CLOSE_MILLIS:J = 0xea60L

.field private static final MAX_QUEUE_SIZE:J = 0x1000000L

.field private static final ONLY_HTTP1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/Protocol;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private call:Lokhttp3/Call;

.field private cancelFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private enqueuedClose:Z

.field private executor:Ljava/util/concurrent/ScheduledExecutorService;

.field private failed:Z

.field private final key:Ljava/lang/String;

.field final listener:Lokhttp3/WebSocketListener;

.field private final messageAndCloseQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final originalRequest:Lokhttp3/Request;

.field pingCount:I

.field pongCount:I

.field private final pongQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lokio/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private queueSize:J

.field private final random:Ljava/util/Random;

.field private reader:Lokhttp3/internal/ws/WebSocketReader;

.field private receivedCloseCode:I

.field private receivedCloseReason:Ljava/lang/String;

.field private streams:Lokhttp3/internal/ws/RealWebSocket$Streams;

.field private writer:Lokhttp3/internal/ws/WebSocketWriter;

.field private final writerRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lokhttp3/internal/ws/RealWebSocket;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lokhttp3/internal/ws/RealWebSocket;->$assertionsDisabled:Z

    sget-object v0, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/ws/RealWebSocket;->ONLY_HTTP1:Ljava/util/List;

    return-void

    :cond_14
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Lokhttp3/Request;Lokhttp3/WebSocketListener;Ljava/util/Random;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->pongQueue:Ljava/util/ArrayDeque;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->messageAndCloseQueue:Ljava/util/ArrayDeque;

    const/4 v0, -0x1

    iput v0, p0, Lokhttp3/internal/ws/RealWebSocket;->receivedCloseCode:I

    const-string v0, "GET"

    invoke-virtual {p1}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request must be GET: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3d
    iput-object p1, p0, Lokhttp3/internal/ws/RealWebSocket;->originalRequest:Lokhttp3/Request;

    iput-object p2, p0, Lokhttp3/internal/ws/RealWebSocket;->listener:Lokhttp3/WebSocketListener;

    iput-object p3, p0, Lokhttp3/internal/ws/RealWebSocket;->random:Ljava/util/Random;

    const/16 v0, 0x10

    new-array v0, v0, [B

    invoke-virtual {p3, v0}, Ljava/util/Random;->nextBytes([B)V

    invoke-static {v0}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->base64()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->key:Ljava/lang/String;

    new-instance v0, Lokhttp3/internal/ws/RealWebSocket$1;

    invoke-direct {v0, p0}, Lokhttp3/internal/ws/RealWebSocket$1;-><init>(Lokhttp3/internal/ws/RealWebSocket;)V

    iput-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->writerRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private runWriter()V
    .registers 3

    sget-boolean v0, Lokhttp3/internal/ws/RealWebSocket;->$assertionsDisabled:Z

    if-nez v0, :cond_10

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_10
    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lokhttp3/internal/ws/RealWebSocket;->writerRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_1b
    return-void
.end method

.method private declared-synchronized send(Lokio/ByteString;I)Z
    .registers 9

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    iget-boolean v1, p0, Lokhttp3/internal/ws/RealWebSocket;->failed:Z

    if-nez v1, :cond_a

    iget-boolean v1, p0, Lokhttp3/internal/ws/RealWebSocket;->enqueuedClose:Z
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_22

    if-eqz v1, :cond_c

    :cond_a
    :goto_a
    monitor-exit p0

    return v0

    :cond_c
    :try_start_c
    iget-wide v2, p0, Lokhttp3/internal/ws/RealWebSocket;->queueSize:J

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    const-wide/32 v4, 0x1000000

    cmp-long v1, v2, v4

    if-lez v1, :cond_25

    const/16 v1, 0x3e9

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lokhttp3/internal/ws/RealWebSocket;->close(ILjava/lang/String;)Z
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_22

    goto :goto_a

    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_25
    :try_start_25
    iget-wide v0, p0, Lokhttp3/internal/ws/RealWebSocket;->queueSize:J

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lokhttp3/internal/ws/RealWebSocket;->queueSize:J

    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->messageAndCloseQueue:Ljava/util/ArrayDeque;

    new-instance v1, Lokhttp3/internal/ws/RealWebSocket$Message;

    invoke-direct {v1, p2, p1}, Lokhttp3/internal/ws/RealWebSocket$Message;-><init>(ILokio/ByteString;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lokhttp3/internal/ws/RealWebSocket;->runWriter()V
    :try_end_3c
    .catchall {:try_start_25 .. :try_end_3c} :catchall_22

    const/4 v0, 0x1

    goto :goto_a
.end method


# virtual methods
.method awaitTermination(ILjava/util/concurrent/TimeUnit;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    int-to-long v2, p1

    invoke-interface {v0, v2, v3, p2}, Ljava/util/concurrent/ScheduledExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    return-void
.end method

.method public cancel()V
    .registers 2

    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->call:Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    return-void
.end method

.method checkResponse(Lokhttp3/Response;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v0

    const/16 v1, 0x65

    if-eq v0, v1, :cond_39

    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected HTTP 101 response but was \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_39
    const-string v0, "Connection"

    invoke-virtual {p1, v0}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Upgrade"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_66

    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected \'Connection\' header value \'Upgrade\' but was \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_66
    const-string v0, "Upgrade"

    invoke-virtual {p1, v0}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "websocket"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_93

    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected \'Upgrade\' header value \'websocket\' but was \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_93
    const-string v0, "Sec-WebSocket-Accept"

    invoke-virtual {p1, v0}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lokhttp3/internal/ws/RealWebSocket;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lokio/ByteString;->sha1()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lokio/ByteString;->base64()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e9

    new-instance v2, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected \'Sec-WebSocket-Accept\' header value \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\' but was \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_e9
    return-void
.end method

.method public close(ILjava/lang/String;)Z
    .registers 5

    const-wide/32 v0, 0xea60

    invoke-virtual {p0, p1, p2, v0, v1}, Lokhttp3/internal/ws/RealWebSocket;->close(ILjava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method declared-synchronized close(ILjava/lang/String;J)Z
    .registers 12

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_2
    invoke-static {p1}, Lokhttp3/internal/ws/WebSocketProtocol;->validateCloseCode(I)V

    const/4 v1, 0x0

    if-eqz p2, :cond_33

    invoke-static {p2}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lokio/ByteString;->size()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x7b

    cmp-long v2, v2, v4

    if-lez v2, :cond_33

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reason.size() > 123: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_30
    .catchall {:try_start_2 .. :try_end_30} :catchall_30

    :catchall_30
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_33
    :try_start_33
    iget-boolean v2, p0, Lokhttp3/internal/ws/RealWebSocket;->failed:Z

    if-nez v2, :cond_3b

    iget-boolean v2, p0, Lokhttp3/internal/ws/RealWebSocket;->enqueuedClose:Z
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_30

    if-eqz v2, :cond_3e

    :cond_3b
    const/4 v0, 0x0

    :goto_3c
    monitor-exit p0

    return v0

    :cond_3e
    const/4 v2, 0x1

    :try_start_3f
    iput-boolean v2, p0, Lokhttp3/internal/ws/RealWebSocket;->enqueuedClose:Z

    iget-object v2, p0, Lokhttp3/internal/ws/RealWebSocket;->messageAndCloseQueue:Ljava/util/ArrayDeque;

    new-instance v3, Lokhttp3/internal/ws/RealWebSocket$Close;

    invoke-direct {v3, p1, v1, p3, p4}, Lokhttp3/internal/ws/RealWebSocket$Close;-><init>(ILokio/ByteString;J)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lokhttp3/internal/ws/RealWebSocket;->runWriter()V
    :try_end_4e
    .catchall {:try_start_3f .. :try_end_4e} :catchall_30

    goto :goto_3c
.end method

.method public connect(Lokhttp3/OkHttpClient;)V
    .registers 7

    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Lokhttp3/internal/ws/RealWebSocket;->ONLY_HTTP1:Ljava/util/List;

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->protocols(Ljava/util/List;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->pingIntervalMillis()I

    move-result v1

    iget-object v2, p0, Lokhttp3/internal/ws/RealWebSocket;->originalRequest:Lokhttp3/Request;

    invoke-virtual {v2}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v2

    const-string v3, "Upgrade"

    const-string v4, "websocket"

    invoke-virtual {v2, v3, v4}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    const-string v3, "Connection"

    const-string v4, "Upgrade"

    invoke-virtual {v2, v3, v4}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    const-string v3, "Sec-WebSocket-Key"

    iget-object v4, p0, Lokhttp3/internal/ws/RealWebSocket;->key:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    const-string v3, "Sec-WebSocket-Version"

    const-string v4, "13"

    invoke-virtual {v2, v3, v4}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v2

    sget-object v3, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    invoke-virtual {v3, v0, v2}, Lokhttp3/internal/Internal;->newWebSocketCall(Lokhttp3/OkHttpClient;Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->call:Lokhttp3/Call;

    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->call:Lokhttp3/Call;

    new-instance v3, Lokhttp3/internal/ws/RealWebSocket$2;

    invoke-direct {v3, p0, v2, v1}, Lokhttp3/internal/ws/RealWebSocket$2;-><init>(Lokhttp3/internal/ws/RealWebSocket;Lokhttp3/Request;I)V

    invoke-interface {v0, v3}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method public failWebSocket(Ljava/lang/Exception;Lokhttp3/Response;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lokhttp3/internal/ws/RealWebSocket;->failed:Z

    if-eqz v0, :cond_7

    monitor-exit p0

    :goto_6
    return-void

    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/ws/RealWebSocket;->failed:Z

    iget-object v1, p0, Lokhttp3/internal/ws/RealWebSocket;->streams:Lokhttp3/internal/ws/RealWebSocket$Streams;

    const/4 v0, 0x0

    iput-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->streams:Lokhttp3/internal/ws/RealWebSocket$Streams;

    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->cancelFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->cancelFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_19
    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    :cond_22
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_2c

    :try_start_23
    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->listener:Lokhttp3/WebSocketListener;

    invoke-virtual {v0, p0, p1, p2}, Lokhttp3/WebSocketListener;->onFailure(Lokhttp3/WebSocket;Ljava/lang/Throwable;Lokhttp3/Response;)V
    :try_end_28
    .catchall {:try_start_23 .. :try_end_28} :catchall_2f

    invoke-static {v1}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_6

    :catchall_2c
    move-exception v0

    :try_start_2d
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v0

    :catchall_2f
    move-exception v0

    invoke-static {v1}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method

.method public initReaderAndWriter(Ljava/lang/String;JLokhttp3/internal/ws/RealWebSocket$Streams;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iput-object p4, p0, Lokhttp3/internal/ws/RealWebSocket;->streams:Lokhttp3/internal/ws/RealWebSocket$Streams;

    new-instance v0, Lokhttp3/internal/ws/WebSocketWriter;

    iget-boolean v1, p4, Lokhttp3/internal/ws/RealWebSocket$Streams;->client:Z

    iget-object v2, p4, Lokhttp3/internal/ws/RealWebSocket$Streams;->sink:Lokio/BufferedSink;

    iget-object v3, p0, Lokhttp3/internal/ws/RealWebSocket;->random:Ljava/util/Random;

    invoke-direct {v0, v1, v2, v3}, Lokhttp3/internal/ws/WebSocketWriter;-><init>(ZLokio/BufferedSink;Ljava/util/Random;)V

    iput-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->writer:Lokhttp3/internal/ws/WebSocketWriter;

    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lokhttp3/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lokhttp3/internal/ws/RealWebSocket$PingRunnable;

    invoke-direct {v1, p0}, Lokhttp3/internal/ws/RealWebSocket$PingRunnable;-><init>(Lokhttp3/internal/ws/RealWebSocket;)V

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v2, p2

    move-wide v4, p2

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    :cond_31
    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->messageAndCloseQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3c

    invoke-direct {p0}, Lokhttp3/internal/ws/RealWebSocket;->runWriter()V

    :cond_3c
    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_49

    new-instance v0, Lokhttp3/internal/ws/WebSocketReader;

    iget-boolean v1, p4, Lokhttp3/internal/ws/RealWebSocket$Streams;->client:Z

    iget-object v2, p4, Lokhttp3/internal/ws/RealWebSocket$Streams;->source:Lokio/BufferedSource;

    invoke-direct {v0, v1, v2, p0}, Lokhttp3/internal/ws/WebSocketReader;-><init>(ZLokio/BufferedSource;Lokhttp3/internal/ws/WebSocketReader$FrameCallback;)V

    iput-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->reader:Lokhttp3/internal/ws/WebSocketReader;

    return-void

    :catchall_49
    move-exception v0

    :try_start_4a
    monitor-exit p0
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw v0
.end method

.method public loopReader()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    iget v0, p0, Lokhttp3/internal/ws/RealWebSocket;->receivedCloseCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->reader:Lokhttp3/internal/ws/WebSocketReader;

    invoke-virtual {v0}, Lokhttp3/internal/ws/WebSocketReader;->processNextFrame()V

    goto :goto_0

    :cond_b
    return-void
.end method

.method public onReadClose(ILjava/lang/String;)V
    .registers 6

    const/4 v0, 0x0

    const/4 v2, -0x1

    if-ne p1, v2, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_a
    monitor-enter p0

    :try_start_b
    iget v1, p0, Lokhttp3/internal/ws/RealWebSocket;->receivedCloseCode:I

    if-eq v1, v2, :cond_1a

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_17
    move-exception v0

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_b .. :try_end_19} :catchall_17

    throw v0

    :cond_1a
    :try_start_1a
    iput p1, p0, Lokhttp3/internal/ws/RealWebSocket;->receivedCloseCode:I

    iput-object p2, p0, Lokhttp3/internal/ws/RealWebSocket;->receivedCloseReason:Ljava/lang/String;

    iget-boolean v1, p0, Lokhttp3/internal/ws/RealWebSocket;->enqueuedClose:Z

    if-eqz v1, :cond_55

    iget-object v1, p0, Lokhttp3/internal/ws/RealWebSocket;->messageAndCloseQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_55

    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->streams:Lokhttp3/internal/ws/RealWebSocket$Streams;

    const/4 v1, 0x0

    iput-object v1, p0, Lokhttp3/internal/ws/RealWebSocket;->streams:Lokhttp3/internal/ws/RealWebSocket$Streams;

    iget-object v1, p0, Lokhttp3/internal/ws/RealWebSocket;->cancelFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_39

    iget-object v1, p0, Lokhttp3/internal/ws/RealWebSocket;->cancelFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_39
    iget-object v1, p0, Lokhttp3/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    move-object v1, v0

    :goto_3f
    monitor-exit p0
    :try_end_40
    .catchall {:try_start_1a .. :try_end_40} :catchall_17

    :try_start_40
    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->listener:Lokhttp3/WebSocketListener;

    invoke-virtual {v0, p0, p1, p2}, Lokhttp3/WebSocketListener;->onClosing(Lokhttp3/WebSocket;ILjava/lang/String;)V

    if-eqz v1, :cond_4c

    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->listener:Lokhttp3/WebSocketListener;

    invoke-virtual {v0, p0, p1, p2}, Lokhttp3/WebSocketListener;->onClosed(Lokhttp3/WebSocket;ILjava/lang/String;)V
    :try_end_4c
    .catchall {:try_start_40 .. :try_end_4c} :catchall_50

    :cond_4c
    invoke-static {v1}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_50
    move-exception v0

    invoke-static {v1}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :cond_55
    move-object v1, v0

    goto :goto_3f
.end method

.method public onReadMessage(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->listener:Lokhttp3/WebSocketListener;

    invoke-virtual {v0, p0, p1}, Lokhttp3/WebSocketListener;->onMessage(Lokhttp3/WebSocket;Ljava/lang/String;)V

    return-void
.end method

.method public onReadMessage(Lokio/ByteString;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->listener:Lokhttp3/WebSocketListener;

    invoke-virtual {v0, p0, p1}, Lokhttp3/WebSocketListener;->onMessage(Lokhttp3/WebSocket;Lokio/ByteString;)V

    return-void
.end method

.method public declared-synchronized onReadPing(Lokio/ByteString;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lokhttp3/internal/ws/RealWebSocket;->failed:Z

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lokhttp3/internal/ws/RealWebSocket;->enqueuedClose:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->messageAndCloseQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_22

    move-result v0

    if-eqz v0, :cond_13

    :cond_11
    :goto_11
    monitor-exit p0

    return-void

    :cond_13
    :try_start_13
    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->pongQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lokhttp3/internal/ws/RealWebSocket;->runWriter()V

    iget v0, p0, Lokhttp3/internal/ws/RealWebSocket;->pingCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/ws/RealWebSocket;->pingCount:I
    :try_end_21
    .catchall {:try_start_13 .. :try_end_21} :catchall_22

    goto :goto_11

    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onReadPong(Lokio/ByteString;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lokhttp3/internal/ws/RealWebSocket;->pongCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/ws/RealWebSocket;->pongCount:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized pingCount()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lokhttp3/internal/ws/RealWebSocket;->pingCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized pong(Lokio/ByteString;)Z
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lokhttp3/internal/ws/RealWebSocket;->failed:Z

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lokhttp3/internal/ws/RealWebSocket;->enqueuedClose:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->messageAndCloseQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_1e

    move-result v0

    if-eqz v0, :cond_14

    :cond_11
    const/4 v0, 0x0

    :goto_12
    monitor-exit p0

    return v0

    :cond_14
    :try_start_14
    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->pongQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lokhttp3/internal/ws/RealWebSocket;->runWriter()V
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_1e

    const/4 v0, 0x1

    goto :goto_12

    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized pongCount()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lokhttp3/internal/ws/RealWebSocket;->pongCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method processNextFrame()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lokhttp3/internal/ws/RealWebSocket;->reader:Lokhttp3/internal/ws/WebSocketReader;

    invoke-virtual {v1}, Lokhttp3/internal/ws/WebSocketReader;->processNextFrame()V

    iget v1, p0, Lokhttp3/internal/ws/RealWebSocket;->receivedCloseCode:I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_d

    const/4 v2, -0x1

    if-ne v1, v2, :cond_c

    const/4 v0, 0x1

    :cond_c
    :goto_c
    return v0

    :catch_d
    move-exception v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lokhttp3/internal/ws/RealWebSocket;->failWebSocket(Ljava/lang/Exception;Lokhttp3/Response;)V

    goto :goto_c
.end method

.method public declared-synchronized queueSize()J
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lokhttp3/internal/ws/RealWebSocket;->queueSize:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public request()Lokhttp3/Request;
    .registers 2

    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->originalRequest:Lokhttp3/Request;

    return-object v0
.end method

.method public send(Ljava/lang/String;)Z
    .registers 4

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "text == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-static {p1}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lokhttp3/internal/ws/RealWebSocket;->send(Lokio/ByteString;I)Z

    move-result v0

    return v0
.end method

.method public send(Lokio/ByteString;)Z
    .registers 4

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "bytes == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lokhttp3/internal/ws/RealWebSocket;->send(Lokio/ByteString;I)Z

    move-result v0

    return v0
.end method

.method tearDown()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->cancelFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->cancelFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_a
    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v2, 0xa

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/ScheduledExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    return-void
.end method

.method writeOneFrame()Z
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v8, -0x1

    const/4 v5, 0x0

    monitor-enter p0

    :try_start_4
    iget-boolean v2, p0, Lokhttp3/internal/ws/RealWebSocket;->failed:Z

    if-eqz v2, :cond_b

    monitor-exit p0

    move v2, v3

    :goto_a
    return v2

    :cond_b
    iget-object v9, p0, Lokhttp3/internal/ws/RealWebSocket;->writer:Lokhttp3/internal/ws/WebSocketWriter;

    iget-object v2, p0, Lokhttp3/internal/ws/RealWebSocket;->pongQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokio/ByteString;

    if-nez v2, :cond_ba

    iget-object v4, p0, Lokhttp3/internal/ws/RealWebSocket;->messageAndCloseQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v4

    instance-of v6, v4, Lokhttp3/internal/ws/RealWebSocket$Close;

    if-eqz v6, :cond_5b

    iget v7, p0, Lokhttp3/internal/ws/RealWebSocket;->receivedCloseCode:I

    iget-object v6, p0, Lokhttp3/internal/ws/RealWebSocket;->receivedCloseReason:Ljava/lang/String;

    if-eq v7, v8, :cond_41

    iget-object v3, p0, Lokhttp3/internal/ws/RealWebSocket;->streams:Lokhttp3/internal/ws/RealWebSocket$Streams;

    const/4 v5, 0x0

    iput-object v5, p0, Lokhttp3/internal/ws/RealWebSocket;->streams:Lokhttp3/internal/ws/RealWebSocket$Streams;

    iget-object v5, p0, Lokhttp3/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v5}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    move-object v5, v6

    move v6, v7

    move-object v14, v3

    move-object v3, v4

    move-object v4, v14

    :goto_36
    monitor-exit p0
    :try_end_37
    .catchall {:try_start_4 .. :try_end_37} :catchall_60

    if-eqz v2, :cond_63

    :try_start_39
    invoke-virtual {v9, v2}, Lokhttp3/internal/ws/WebSocketWriter;->writePong(Lokio/ByteString;)V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_95

    :cond_3c
    :goto_3c
    const/4 v2, 0x1

    invoke-static {v4}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_a

    :cond_41
    :try_start_41
    iget-object v8, p0, Lokhttp3/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v10, Lokhttp3/internal/ws/RealWebSocket$CancelRunnable;

    invoke-direct {v10, p0}, Lokhttp3/internal/ws/RealWebSocket$CancelRunnable;-><init>(Lokhttp3/internal/ws/RealWebSocket;)V

    move-object v0, v4

    check-cast v0, Lokhttp3/internal/ws/RealWebSocket$Close;

    move-object v3, v0

    iget-wide v12, v3, Lokhttp3/internal/ws/RealWebSocket$Close;->cancelAfterCloseMillis:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v8, v10, v12, v13, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v3

    iput-object v3, p0, Lokhttp3/internal/ws/RealWebSocket;->cancelFuture:Ljava/util/concurrent/ScheduledFuture;

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move v6, v7

    goto :goto_36

    :cond_5b
    if-nez v4, :cond_b5

    monitor-exit p0

    move v2, v3

    goto :goto_a

    :catchall_60
    move-exception v2

    monitor-exit p0
    :try_end_62
    .catchall {:try_start_41 .. :try_end_62} :catchall_60

    throw v2

    :cond_63
    :try_start_63
    instance-of v2, v3, Lokhttp3/internal/ws/RealWebSocket$Message;

    if-eqz v2, :cond_9a

    move-object v0, v3

    check-cast v0, Lokhttp3/internal/ws/RealWebSocket$Message;

    move-object v2, v0

    iget-object v2, v2, Lokhttp3/internal/ws/RealWebSocket$Message;->data:Lokio/ByteString;

    check-cast v3, Lokhttp3/internal/ws/RealWebSocket$Message;

    iget v3, v3, Lokhttp3/internal/ws/RealWebSocket$Message;->formatOpcode:I

    invoke-virtual {v2}, Lokio/ByteString;->size()I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v9, v3, v6, v7}, Lokhttp3/internal/ws/WebSocketWriter;->newMessageSink(IJ)Lokio/Sink;

    move-result-object v3

    invoke-static {v3}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v3

    invoke-interface {v3, v2}, Lokio/BufferedSink;->write(Lokio/ByteString;)Lokio/BufferedSink;

    invoke-interface {v3}, Lokio/BufferedSink;->close()V

    monitor-enter p0
    :try_end_85
    .catchall {:try_start_63 .. :try_end_85} :catchall_95

    :try_start_85
    iget-wide v6, p0, Lokhttp3/internal/ws/RealWebSocket;->queueSize:J

    invoke-virtual {v2}, Lokio/ByteString;->size()I

    move-result v2

    int-to-long v2, v2

    sub-long v2, v6, v2

    iput-wide v2, p0, Lokhttp3/internal/ws/RealWebSocket;->queueSize:J

    monitor-exit p0

    goto :goto_3c

    :catchall_92
    move-exception v2

    monitor-exit p0
    :try_end_94
    .catchall {:try_start_85 .. :try_end_94} :catchall_92

    :try_start_94
    throw v2
    :try_end_95
    .catchall {:try_start_94 .. :try_end_95} :catchall_95

    :catchall_95
    move-exception v2

    invoke-static {v4}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    throw v2

    :cond_9a
    :try_start_9a
    instance-of v2, v3, Lokhttp3/internal/ws/RealWebSocket$Close;

    if-eqz v2, :cond_af

    check-cast v3, Lokhttp3/internal/ws/RealWebSocket$Close;

    iget v2, v3, Lokhttp3/internal/ws/RealWebSocket$Close;->code:I

    iget-object v3, v3, Lokhttp3/internal/ws/RealWebSocket$Close;->reason:Lokio/ByteString;

    invoke-virtual {v9, v2, v3}, Lokhttp3/internal/ws/WebSocketWriter;->writeClose(ILokio/ByteString;)V

    if-eqz v4, :cond_3c

    iget-object v2, p0, Lokhttp3/internal/ws/RealWebSocket;->listener:Lokhttp3/WebSocketListener;

    invoke-virtual {v2, p0, v6, v5}, Lokhttp3/WebSocketListener;->onClosed(Lokhttp3/WebSocket;ILjava/lang/String;)V

    goto :goto_3c

    :cond_af
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_b5
    .catchall {:try_start_9a .. :try_end_b5} :catchall_95

    :cond_b5
    move v6, v8

    move-object v3, v4

    move-object v4, v5

    goto/16 :goto_36

    :cond_ba
    move-object v4, v5

    move v6, v8

    move-object v3, v5

    goto/16 :goto_36
.end method

.method writePingFrame()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lokhttp3/internal/ws/RealWebSocket;->failed:Z

    if-eqz v0, :cond_7

    monitor-exit p0

    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->writer:Lokhttp3/internal/ws/WebSocketWriter;

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_16

    :try_start_a
    sget-object v1, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    invoke-virtual {v0, v1}, Lokhttp3/internal/ws/WebSocketWriter;->writePing(Lokio/ByteString;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_f} :catch_10

    goto :goto_6

    :catch_10
    move-exception v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lokhttp3/internal/ws/RealWebSocket;->failWebSocket(Ljava/lang/Exception;Lokhttp3/Response;)V

    goto :goto_6

    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method
