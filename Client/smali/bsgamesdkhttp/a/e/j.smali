.class public final Lbsgamesdkhttp/a/e/j;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lbsgamesdkio/ByteString;

.field public static final b:Lbsgamesdkio/ByteString;

.field public static final c:Lbsgamesdkio/ByteString;

.field public static final d:Lbsgamesdkio/ByteString;

.field public static final e:Lbsgamesdkio/ByteString;

.field public static final f:Lbsgamesdkio/ByteString;


# instance fields
.field public final g:Lbsgamesdkio/ByteString;

.field public final h:Lbsgamesdkio/ByteString;

.field final i:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, ":"

    invoke-static {v0}, Lbsgamesdkio/ByteString;->encodeUtf8(Ljava/lang/String;)Lbsgamesdkio/ByteString;

    move-result-object v0

    sput-object v0, Lbsgamesdkhttp/a/e/j;->a:Lbsgamesdkio/ByteString;

    const-string v0, ":status"

    invoke-static {v0}, Lbsgamesdkio/ByteString;->encodeUtf8(Ljava/lang/String;)Lbsgamesdkio/ByteString;

    move-result-object v0

    sput-object v0, Lbsgamesdkhttp/a/e/j;->b:Lbsgamesdkio/ByteString;

    const-string v0, ":method"

    invoke-static {v0}, Lbsgamesdkio/ByteString;->encodeUtf8(Ljava/lang/String;)Lbsgamesdkio/ByteString;

    move-result-object v0

    sput-object v0, Lbsgamesdkhttp/a/e/j;->c:Lbsgamesdkio/ByteString;

    const-string v0, ":path"

    invoke-static {v0}, Lbsgamesdkio/ByteString;->encodeUtf8(Ljava/lang/String;)Lbsgamesdkio/ByteString;

    move-result-object v0

    sput-object v0, Lbsgamesdkhttp/a/e/j;->d:Lbsgamesdkio/ByteString;

    const-string v0, ":scheme"

    invoke-static {v0}, Lbsgamesdkio/ByteString;->encodeUtf8(Ljava/lang/String;)Lbsgamesdkio/ByteString;

    move-result-object v0

    sput-object v0, Lbsgamesdkhttp/a/e/j;->e:Lbsgamesdkio/ByteString;

    const-string v0, ":authority"

    invoke-static {v0}, Lbsgamesdkio/ByteString;->encodeUtf8(Ljava/lang/String;)Lbsgamesdkio/ByteString;

    move-result-object v0

    sput-object v0, Lbsgamesdkhttp/a/e/j;->f:Lbsgamesdkio/ByteString;

    return-void
.end method

.method public constructor <init>(Lbsgamesdkio/ByteString;Lbsgamesdkio/ByteString;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbsgamesdkhttp/a/e/j;->g:Lbsgamesdkio/ByteString;

    iput-object p2, p0, Lbsgamesdkhttp/a/e/j;->h:Lbsgamesdkio/ByteString;

    invoke-virtual {p1}, Lbsgamesdkio/ByteString;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x20

    invoke-virtual {p2}, Lbsgamesdkio/ByteString;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lbsgamesdkhttp/a/e/j;->i:I

    return-void
.end method

.method public constructor <init>(Lbsgamesdkio/ByteString;Ljava/lang/String;)V
    .registers 4

    invoke-static {p2}, Lbsgamesdkio/ByteString;->encodeUtf8(Ljava/lang/String;)Lbsgamesdkio/ByteString;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lbsgamesdkhttp/a/e/j;-><init>(Lbsgamesdkio/ByteString;Lbsgamesdkio/ByteString;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-static {p1}, Lbsgamesdkio/ByteString;->encodeUtf8(Ljava/lang/String;)Lbsgamesdkio/ByteString;

    move-result-object v0

    invoke-static {p2}, Lbsgamesdkio/ByteString;->encodeUtf8(Ljava/lang/String;)Lbsgamesdkio/ByteString;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lbsgamesdkhttp/a/e/j;-><init>(Lbsgamesdkio/ByteString;Lbsgamesdkio/ByteString;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    instance-of v1, p1, Lbsgamesdkhttp/a/e/j;

    if-eqz v1, :cond_1c

    check-cast p1, Lbsgamesdkhttp/a/e/j;

    iget-object v1, p0, Lbsgamesdkhttp/a/e/j;->g:Lbsgamesdkio/ByteString;

    iget-object v2, p1, Lbsgamesdkhttp/a/e/j;->g:Lbsgamesdkio/ByteString;

    invoke-virtual {v1, v2}, Lbsgamesdkio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lbsgamesdkhttp/a/e/j;->h:Lbsgamesdkio/ByteString;

    iget-object v2, p1, Lbsgamesdkhttp/a/e/j;->h:Lbsgamesdkio/ByteString;

    invoke-virtual {v1, v2}, Lbsgamesdkio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const/4 v0, 0x1

    :cond_1c
    return v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lbsgamesdkhttp/a/e/j;->g:Lbsgamesdkio/ByteString;

    invoke-virtual {v0}, Lbsgamesdkio/ByteString;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lbsgamesdkhttp/a/e/j;->h:Lbsgamesdkio/ByteString;

    invoke-virtual {v1}, Lbsgamesdkio/ByteString;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const-string v0, "%s: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lbsgamesdkhttp/a/e/j;->g:Lbsgamesdkio/ByteString;

    invoke-virtual {v3}, Lbsgamesdkio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lbsgamesdkhttp/a/e/j;->h:Lbsgamesdkio/ByteString;

    invoke-virtual {v3}, Lbsgamesdkio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lbsgamesdkhttp/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
