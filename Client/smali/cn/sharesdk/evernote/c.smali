.class public Lcn/sharesdk/evernote/c;
.super Ljava/lang/Object;
.source "ByteArrayWriter.java"


# static fields
.field private static a:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 10
    sget v0, Lcn/sharesdk/evernote/c;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcn/sharesdk/evernote/c;->a:I

    .line 11
    sget v0, Lcn/sharesdk/evernote/c;->a:I

    return v0
.end method

.method public a(I)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 77
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 78
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 79
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 80
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 81
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 82
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public a(II)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 38
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 39
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 40
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 41
    invoke-virtual {v1, p2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 42
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 43
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 44
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 27
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 28
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 29
    const-string v2, "utf-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 30
    array-length v3, v2

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 31
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write([B)V

    .line 32
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 33
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 34
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;I)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 15
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 16
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 17
    const/high16 v2, -0x7fff0000

    or-int/2addr v2, p2

    .line 18
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 19
    invoke-virtual {p0, p1}, Lcn/sharesdk/evernote/c;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write([B)V

    .line 20
    sget v2, Lcn/sharesdk/evernote/c;->a:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 21
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 22
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 23
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public a([B)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 67
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 68
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 69
    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 70
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->write([B)V

    .line 71
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 72
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 73
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public b()[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 48
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 49
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 50
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 51
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 52
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 53
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public b(II)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 57
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 58
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 59
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 60
    invoke-virtual {v1, p2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 61
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 62
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 63
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
