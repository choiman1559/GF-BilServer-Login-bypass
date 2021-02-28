.class final Lokio/Pipe$PipeSink;
.super Ljava/lang/Object;

# interfaces
.implements Lokio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/Pipe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PipeSink"
.end annotation


# instance fields
.field final synthetic this$0:Lokio/Pipe;

.field final timeout:Lokio/Timeout;


# direct methods
.method constructor <init>(Lokio/Pipe;)V
    .registers 3

    iput-object p1, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lokio/Timeout;

    invoke-direct {v0}, Lokio/Timeout;-><init>()V

    iput-object v0, p0, Lokio/Pipe$PipeSink;->timeout:Lokio/Timeout;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-object v1, v0, Lokio/Pipe;->buffer:Lokio/Buffer;

    monitor-enter v1

    :try_start_5
    iget-object v0, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-boolean v0, v0, Lokio/Pipe;->sinkClosed:Z

    if-eqz v0, :cond_d

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_1e

    :goto_c
    return-void

    :cond_d
    :try_start_d
    invoke-virtual {p0}, Lokio/Pipe$PipeSink;->flush()V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_21

    :try_start_10
    iget-object v0, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lokio/Pipe;->sinkClosed:Z

    iget-object v0, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-object v0, v0, Lokio/Pipe;->buffer:Lokio/Buffer;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    goto :goto_c

    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_10 .. :try_end_20} :catchall_1e

    throw v0

    :catchall_21
    move-exception v0

    :try_start_22
    iget-object v2, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lokio/Pipe;->sinkClosed:Z

    iget-object v2, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-object v2, v2, Lokio/Pipe;->buffer:Lokio/Buffer;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    throw v0
    :try_end_2f
    .catchall {:try_start_22 .. :try_end_2f} :catchall_1e
.end method

.method public flush()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-object v1, v0, Lokio/Pipe;->buffer:Lokio/Buffer;

    monitor-enter v1

    :try_start_5
    iget-object v0, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-boolean v0, v0, Lokio/Pipe;->sinkClosed:Z

    if-eqz v0, :cond_1f

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "closed"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw v0

    :cond_16
    :try_start_16
    iget-object v0, p0, Lokio/Pipe$PipeSink;->timeout:Lokio/Timeout;

    iget-object v2, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-object v2, v2, Lokio/Pipe;->buffer:Lokio/Buffer;

    invoke-virtual {v0, v2}, Lokio/Timeout;->waitUntilNotified(Ljava/lang/Object;)V

    :cond_1f
    iget-object v0, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-object v0, v0, Lokio/Pipe;->buffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_3b

    iget-object v0, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-boolean v0, v0, Lokio/Pipe;->sourceClosed:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/io/IOException;

    const-string v2, "source is closed"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3b
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_16 .. :try_end_3c} :catchall_13

    return-void
.end method

.method public timeout()Lokio/Timeout;
    .registers 2

    iget-object v0, p0, Lokio/Pipe$PipeSink;->timeout:Lokio/Timeout;

    return-object v0
.end method

.method public write(Lokio/Buffer;J)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v6, 0x0

    iget-object v0, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-object v1, v0, Lokio/Pipe;->buffer:Lokio/Buffer;

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-boolean v0, v0, Lokio/Pipe;->sinkClosed:Z

    if-eqz v0, :cond_32

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "closed"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_15

    throw v0

    :cond_18
    :try_start_18
    iget-object v0, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-wide v2, v0, Lokio/Pipe;->maxBufferSize:J

    iget-object v0, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-object v0, v0, Lokio/Pipe;->buffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v4

    sub-long/2addr v2, v4

    cmp-long v0, v2, v6

    if-nez v0, :cond_44

    iget-object v0, p0, Lokio/Pipe$PipeSink;->timeout:Lokio/Timeout;

    iget-object v2, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-object v2, v2, Lokio/Pipe;->buffer:Lokio/Buffer;

    invoke-virtual {v0, v2}, Lokio/Timeout;->waitUntilNotified(Ljava/lang/Object;)V

    :cond_32
    :goto_32
    cmp-long v0, p2, v6

    if-lez v0, :cond_58

    iget-object v0, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-boolean v0, v0, Lokio/Pipe;->sourceClosed:Z

    if-eqz v0, :cond_18

    new-instance v0, Ljava/io/IOException;

    const-string v2, "source is closed"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_44
    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iget-object v0, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-object v0, v0, Lokio/Pipe;->buffer:Lokio/Buffer;

    invoke-virtual {v0, p1, v2, v3}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    sub-long/2addr p2, v2

    iget-object v0, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-object v0, v0, Lokio/Pipe;->buffer:Lokio/Buffer;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_32

    :cond_58
    monitor-exit v1
    :try_end_59
    .catchall {:try_start_18 .. :try_end_59} :catchall_15

    return-void
.end method
