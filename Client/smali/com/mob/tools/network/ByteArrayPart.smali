.class public Lcom/mob/tools/network/ByteArrayPart;
.super Lcom/mob/tools/network/HTTPPart;
.source "ByteArrayPart.java"


# instance fields
.field private buffer:Lcom/mob/tools/network/BufferedByteArrayOutputStream;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/mob/tools/network/HTTPPart;-><init>()V

    return-void
.end method


# virtual methods
.method public append([B)Lcom/mob/tools/network/ByteArrayPart;
    .registers 4
    .param p1, "array"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 11
    iget-object v0, p0, Lcom/mob/tools/network/ByteArrayPart;->buffer:Lcom/mob/tools/network/BufferedByteArrayOutputStream;

    if-nez v0, :cond_c

    .line 12
    new-instance v0, Lcom/mob/tools/network/BufferedByteArrayOutputStream;

    array-length v1, p1

    invoke-direct {v0, v1}, Lcom/mob/tools/network/BufferedByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lcom/mob/tools/network/ByteArrayPart;->buffer:Lcom/mob/tools/network/BufferedByteArrayOutputStream;

    .line 14
    :cond_c
    iget-object v0, p0, Lcom/mob/tools/network/ByteArrayPart;->buffer:Lcom/mob/tools/network/BufferedByteArrayOutputStream;

    invoke-virtual {v0, p1}, Lcom/mob/tools/network/BufferedByteArrayOutputStream;->write([B)V

    .line 15
    iget-object v0, p0, Lcom/mob/tools/network/ByteArrayPart;->buffer:Lcom/mob/tools/network/BufferedByteArrayOutputStream;

    invoke-virtual {v0}, Lcom/mob/tools/network/BufferedByteArrayOutputStream;->flush()V

    .line 16
    return-object p0
.end method

.method protected getInputStream()Ljava/io/InputStream;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 20
    iget-object v1, p0, Lcom/mob/tools/network/ByteArrayPart;->buffer:Lcom/mob/tools/network/BufferedByteArrayOutputStream;

    if-nez v1, :cond_d

    .line 21
    new-instance v1, Ljava/io/ByteArrayInputStream;

    new-array v2, v3, [B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 29
    :goto_c
    return-object v1

    .line 24
    :cond_d
    iget-object v1, p0, Lcom/mob/tools/network/ByteArrayPart;->buffer:Lcom/mob/tools/network/BufferedByteArrayOutputStream;

    invoke-virtual {v1}, Lcom/mob/tools/network/BufferedByteArrayOutputStream;->getBuffer()[B

    move-result-object v0

    .line 25
    .local v0, "body":[B
    if-eqz v0, :cond_1d

    iget-object v1, p0, Lcom/mob/tools/network/ByteArrayPart;->buffer:Lcom/mob/tools/network/BufferedByteArrayOutputStream;

    invoke-virtual {v1}, Lcom/mob/tools/network/BufferedByteArrayOutputStream;->size()I

    move-result v1

    if-gtz v1, :cond_25

    .line 26
    :cond_1d
    new-instance v1, Ljava/io/ByteArrayInputStream;

    new-array v2, v3, [B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    goto :goto_c

    .line 29
    :cond_25
    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lcom/mob/tools/network/ByteArrayPart;->buffer:Lcom/mob/tools/network/BufferedByteArrayOutputStream;

    invoke-virtual {v2}, Lcom/mob/tools/network/BufferedByteArrayOutputStream;->size()I

    move-result v2

    invoke-direct {v1, v0, v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    goto :goto_c
.end method

.method protected length()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/mob/tools/network/ByteArrayPart;->buffer:Lcom/mob/tools/network/BufferedByteArrayOutputStream;

    if-nez v0, :cond_7

    const-wide/16 v0, 0x0

    :goto_6
    return-wide v0

    :cond_7
    iget-object v0, p0, Lcom/mob/tools/network/ByteArrayPart;->buffer:Lcom/mob/tools/network/BufferedByteArrayOutputStream;

    invoke-virtual {v0}, Lcom/mob/tools/network/BufferedByteArrayOutputStream;->size()I

    move-result v0

    int-to-long v0, v0

    goto :goto_6
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 33
    iget-object v2, p0, Lcom/mob/tools/network/ByteArrayPart;->buffer:Lcom/mob/tools/network/BufferedByteArrayOutputStream;

    if-nez v2, :cond_6

    .line 42
    :cond_5
    :goto_5
    return-object v1

    .line 37
    :cond_6
    iget-object v2, p0, Lcom/mob/tools/network/ByteArrayPart;->buffer:Lcom/mob/tools/network/BufferedByteArrayOutputStream;

    invoke-virtual {v2}, Lcom/mob/tools/network/BufferedByteArrayOutputStream;->getBuffer()[B

    move-result-object v0

    .line 38
    .local v0, "body":[B
    if-eqz v0, :cond_5

    .line 42
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mob/tools/network/ByteArrayPart;->buffer:Lcom/mob/tools/network/BufferedByteArrayOutputStream;

    invoke-virtual {v2}, Lcom/mob/tools/network/BufferedByteArrayOutputStream;->size()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/mob/tools/utils/Data;->byteToHex([BII)Ljava/lang/String;

    move-result-object v1

    goto :goto_5
.end method