.class public Lcom/mob/tools/network/ByteCounterInputStream;
.super Ljava/io/InputStream;
.source "ByteCounterInputStream.java"


# instance fields
.field private is:Ljava/io/InputStream;

.field private listener:Lcom/mob/tools/network/OnReadListener;

.field private readBytes:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 2
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/mob/tools/network/ByteCounterInputStream;->is:Ljava/io/InputStream;

    .line 13
    return-void
.end method


# virtual methods
.method public available()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/mob/tools/network/ByteCounterInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lcom/mob/tools/network/ByteCounterInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 61
    return-void
.end method

.method public mark(I)V
    .registers 3
    .param p1, "readlimit"    # I

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mob/tools/network/ByteCounterInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 40
    return-void
.end method

.method public markSupported()Z
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/mob/tools/network/ByteCounterInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16
    iget-object v1, p0, Lcom/mob/tools/network/ByteCounterInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 17
    .local v0, "data":I
    if-ltz v0, :cond_1a

    .line 18
    iget-wide v2, p0, Lcom/mob/tools/network/ByteCounterInputStream;->readBytes:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/mob/tools/network/ByteCounterInputStream;->readBytes:J

    .line 19
    iget-object v1, p0, Lcom/mob/tools/network/ByteCounterInputStream;->listener:Lcom/mob/tools/network/OnReadListener;

    if-eqz v1, :cond_1a

    .line 20
    iget-object v1, p0, Lcom/mob/tools/network/ByteCounterInputStream;->listener:Lcom/mob/tools/network/OnReadListener;

    iget-wide v2, p0, Lcom/mob/tools/network/ByteCounterInputStream;->readBytes:J

    invoke-interface {v1, v2, v3}, Lcom/mob/tools/network/OnReadListener;->onRead(J)V

    .line 23
    :cond_1a
    return v0
.end method

.method public read([BII)I
    .registers 10
    .param p1, "buffer"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    iget-object v1, p0, Lcom/mob/tools/network/ByteCounterInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 29
    .local v0, "len":I
    if-lez v0, :cond_19

    .line 30
    iget-wide v2, p0, Lcom/mob/tools/network/ByteCounterInputStream;->readBytes:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/mob/tools/network/ByteCounterInputStream;->readBytes:J

    .line 31
    iget-object v1, p0, Lcom/mob/tools/network/ByteCounterInputStream;->listener:Lcom/mob/tools/network/OnReadListener;

    if-eqz v1, :cond_19

    .line 32
    iget-object v1, p0, Lcom/mob/tools/network/ByteCounterInputStream;->listener:Lcom/mob/tools/network/OnReadListener;

    iget-wide v2, p0, Lcom/mob/tools/network/ByteCounterInputStream;->readBytes:J

    invoke-interface {v1, v2, v3}, Lcom/mob/tools/network/OnReadListener;->onRead(J)V

    .line 35
    :cond_19
    return v0
.end method

.method public declared-synchronized reset()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/mob/tools/network/ByteCounterInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 48
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mob/tools/network/ByteCounterInputStream;->readBytes:J
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 49
    monitor-exit p0

    return-void

    .line 47
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setOnInputStreamReadListener(Lcom/mob/tools/network/OnReadListener;)V
    .registers 2
    .param p1, "l"    # Lcom/mob/tools/network/OnReadListener;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/mob/tools/network/ByteCounterInputStream;->listener:Lcom/mob/tools/network/OnReadListener;

    .line 65
    return-void
.end method

.method public skip(J)J
    .registers 6
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/mob/tools/network/ByteCounterInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method
