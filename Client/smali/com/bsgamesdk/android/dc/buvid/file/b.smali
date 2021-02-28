.class public Lcom/bsgamesdk/android/dc/buvid/file/b;
.super Ljava/lang/Object;


# direct methods
.method private static a(J)[B
    .registers 4

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public static a([B)[B
    .registers 3

    new-instance v0, Ljava/util/zip/Adler32;

    invoke-direct {v0}, Ljava/util/zip/Adler32;-><init>()V

    invoke-virtual {v0, p0}, Ljava/util/zip/Adler32;->update([B)V

    invoke-virtual {v0}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/dc/buvid/file/b;->a(J)[B

    move-result-object v0

    return-object v0
.end method
