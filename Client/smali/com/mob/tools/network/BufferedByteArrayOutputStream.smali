.class public Lcom/mob/tools/network/BufferedByteArrayOutputStream;
.super Ljava/io/ByteArrayOutputStream;
.source "BufferedByteArrayOutputStream.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 11
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .param p1, "size"    # I

    .prologue
    .line 14
    invoke-direct {p0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 15
    return-void
.end method


# virtual methods
.method public getBuffer()[B
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/mob/tools/network/BufferedByteArrayOutputStream;->buf:[B

    return-object v0
.end method

.method public getBufferSize()I
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/mob/tools/network/BufferedByteArrayOutputStream;->buf:[B

    array-length v0, v0

    return v0
.end method

.method public switchBuffer([B)Z
    .registers 5
    .param p1, "newBuf"    # [B

    .prologue
    .line 18
    if-eqz p1, :cond_8

    array-length v1, p1

    iget-object v2, p0, Lcom/mob/tools/network/BufferedByteArrayOutputStream;->buf:[B

    array-length v2, v2

    if-eq v1, v2, :cond_a

    .line 19
    :cond_8
    const/4 v1, 0x0

    .line 25
    :goto_9
    return v1

    .line 22
    :cond_a
    iget-object v0, p0, Lcom/mob/tools/network/BufferedByteArrayOutputStream;->buf:[B

    .line 23
    .local v0, "o":[B
    iput-object p1, p0, Lcom/mob/tools/network/BufferedByteArrayOutputStream;->buf:[B

    .line 24
    check-cast v0, [B

    .end local v0    # "o":[B
    move-object p1, v0

    check-cast p1, [B

    .line 25
    const/4 v1, 0x1

    goto :goto_9
.end method

.method public write(Ljava/nio/ByteBuffer;)V
    .registers 3
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/mob/tools/network/BufferedByteArrayOutputStream;->write(Ljava/nio/ByteBuffer;I)V

    .line 38
    return-void
.end method

.method public write(Ljava/nio/ByteBuffer;I)V
    .registers 6
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    iget-object v1, p0, Lcom/mob/tools/network/BufferedByteArrayOutputStream;->buf:[B

    array-length v1, v1

    iget v2, p0, Lcom/mob/tools/network/BufferedByteArrayOutputStream;->count:I

    sub-int/2addr v1, v2

    if-lt v1, p2, :cond_15

    .line 42
    iget-object v1, p0, Lcom/mob/tools/network/BufferedByteArrayOutputStream;->buf:[B

    iget v2, p0, Lcom/mob/tools/network/BufferedByteArrayOutputStream;->count:I

    invoke-virtual {p1, v1, v2, p2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 43
    iget v1, p0, Lcom/mob/tools/network/BufferedByteArrayOutputStream;->count:I

    add-int/2addr v1, p2

    iput v1, p0, Lcom/mob/tools/network/BufferedByteArrayOutputStream;->count:I

    .line 49
    :goto_14
    return-void

    .line 45
    :cond_15
    new-array v0, p2, [B

    .line 46
    .local v0, "outData":[B
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 47
    invoke-virtual {p0, v0}, Lcom/mob/tools/network/BufferedByteArrayOutputStream;->write([B)V

    goto :goto_14
.end method
