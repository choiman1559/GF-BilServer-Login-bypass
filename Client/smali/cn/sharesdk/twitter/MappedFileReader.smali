.class public Lcn/sharesdk/twitter/MappedFileReader;
.super Ljava/lang/Object;
.source "MappedFileReader.java"


# instance fields
.field private array:[B

.field private arraySize:I

.field private fileIn:Ljava/io/FileInputStream;

.field private fileLength:J

.field private mappedBuf:Ljava/nio/MappedByteBuffer;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 9
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "arraySize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/sharesdk/twitter/MappedFileReader;->fileIn:Ljava/io/FileInputStream;

    .line 20
    iget-object v0, p0, Lcn/sharesdk/twitter/MappedFileReader;->fileIn:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 21
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v2

    iput-wide v2, p0, Lcn/sharesdk/twitter/MappedFileReader;->fileLength:J

    .line 22
    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    iget-wide v4, p0, Lcn/sharesdk/twitter/MappedFileReader;->fileLength:J

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/twitter/MappedFileReader;->mappedBuf:Ljava/nio/MappedByteBuffer;

    .line 23
    iput p2, p0, Lcn/sharesdk/twitter/MappedFileReader;->arraySize:I

    .line 24
    return-void
.end method

.method public static byteToBase64([B)Ljava/lang/String;
    .registers 2
    .param p0, "bytePart"    # [B

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcn/sharesdk/twitter/MappedFileReader;->fileIn:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 45
    return-void
.end method

.method public getArray()[B
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcn/sharesdk/twitter/MappedFileReader;->array:[B

    return-object v0
.end method

.method public getFileLength()J
    .registers 3

    .prologue
    .line 52
    iget-wide v0, p0, Lcn/sharesdk/twitter/MappedFileReader;->fileLength:J

    return-wide v0
.end method

.method public read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lcn/sharesdk/twitter/MappedFileReader;->mappedBuf:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v0}, Ljava/nio/MappedByteBuffer;->limit()I

    move-result v0

    .line 28
    iget-object v1, p0, Lcn/sharesdk/twitter/MappedFileReader;->mappedBuf:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v1}, Ljava/nio/MappedByteBuffer;->position()I

    move-result v1

    .line 29
    if-ne v1, v0, :cond_10

    .line 30
    const/4 v0, -0x1

    .line 39
    :goto_f
    return v0

    .line 32
    :cond_10
    sub-int v2, v0, v1

    iget v3, p0, Lcn/sharesdk/twitter/MappedFileReader;->arraySize:I

    if-le v2, v3, :cond_26

    .line 33
    iget v0, p0, Lcn/sharesdk/twitter/MappedFileReader;->arraySize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcn/sharesdk/twitter/MappedFileReader;->array:[B

    .line 34
    iget-object v0, p0, Lcn/sharesdk/twitter/MappedFileReader;->mappedBuf:Ljava/nio/MappedByteBuffer;

    iget-object v1, p0, Lcn/sharesdk/twitter/MappedFileReader;->array:[B

    invoke-virtual {v0, v1}, Ljava/nio/MappedByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 35
    iget v0, p0, Lcn/sharesdk/twitter/MappedFileReader;->arraySize:I

    goto :goto_f

    .line 37
    :cond_26
    sub-int v2, v0, v1

    new-array v2, v2, [B

    iput-object v2, p0, Lcn/sharesdk/twitter/MappedFileReader;->array:[B

    .line 38
    iget-object v2, p0, Lcn/sharesdk/twitter/MappedFileReader;->mappedBuf:Ljava/nio/MappedByteBuffer;

    iget-object v3, p0, Lcn/sharesdk/twitter/MappedFileReader;->array:[B

    invoke-virtual {v2, v3}, Ljava/nio/MappedByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 39
    sub-int/2addr v0, v1

    goto :goto_f
.end method
