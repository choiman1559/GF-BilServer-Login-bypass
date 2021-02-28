.class final Lbsgamesdkhttp/a/e/c$b;
.super Ljava/lang/Object;

# interfaces
.implements Lbsgamesdkio/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbsgamesdkhttp/a/e/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field a:I

.field b:B

.field c:I

.field d:I

.field e:S

.field private final f:Lbsgamesdkio/e;


# direct methods
.method public constructor <init>(Lbsgamesdkio/e;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbsgamesdkhttp/a/e/c$b;->f:Lbsgamesdkio/e;

    return-void
.end method

.method private b()V
    .registers 9

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget v0, p0, Lbsgamesdkhttp/a/e/c$b;->c:I

    iget-object v1, p0, Lbsgamesdkhttp/a/e/c$b;->f:Lbsgamesdkio/e;

    invoke-static {v1}, Lbsgamesdkhttp/a/e/c;->a(Lbsgamesdkio/e;)I

    move-result v1

    iput v1, p0, Lbsgamesdkhttp/a/e/c$b;->d:I

    iput v1, p0, Lbsgamesdkhttp/a/e/c$b;->a:I

    iget-object v1, p0, Lbsgamesdkhttp/a/e/c$b;->f:Lbsgamesdkio/e;

    invoke-interface {v1}, Lbsgamesdkio/e;->g()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    iget-object v2, p0, Lbsgamesdkhttp/a/e/c$b;->f:Lbsgamesdkio/e;

    invoke-interface {v2}, Lbsgamesdkio/e;->g()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    iput-byte v2, p0, Lbsgamesdkhttp/a/e/c$b;->b:B

    sget-object v2, Lbsgamesdkhttp/a/e/c;->a:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_3b

    sget-object v2, Lbsgamesdkhttp/a/e/c;->a:Ljava/util/logging/Logger;

    iget v3, p0, Lbsgamesdkhttp/a/e/c$b;->c:I

    iget v4, p0, Lbsgamesdkhttp/a/e/c$b;->a:I

    iget-byte v5, p0, Lbsgamesdkhttp/a/e/c$b;->b:B

    invoke-static {v7, v3, v4, v1, v5}, Lbsgamesdkhttp/a/e/l;->a(ZIIBB)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_3b
    iget-object v2, p0, Lbsgamesdkhttp/a/e/c$b;->f:Lbsgamesdkio/e;

    invoke-interface {v2}, Lbsgamesdkio/e;->i()I

    move-result v2

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    iput v2, p0, Lbsgamesdkhttp/a/e/c$b;->c:I

    const/16 v2, 0x9

    if-eq v1, v2, :cond_5a

    const-string v0, "%s != TYPE_CONTINUATION"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v2, v6

    invoke-static {v0, v2}, Lbsgamesdkhttp/a/e/l;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_5a
    iget v1, p0, Lbsgamesdkhttp/a/e/c$b;->c:I

    if-eq v1, v0, :cond_67

    const-string v0, "TYPE_CONTINUATION streamId changed"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lbsgamesdkhttp/a/e/l;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_67
    return-void
.end method


# virtual methods
.method public a(Lbsgamesdkio/c;J)J
    .registers 10

    const-wide/16 v0, -0x1

    :goto_2
    iget v2, p0, Lbsgamesdkhttp/a/e/c$b;->d:I

    if-nez v2, :cond_1c

    iget-object v2, p0, Lbsgamesdkhttp/a/e/c$b;->f:Lbsgamesdkio/e;

    iget-short v3, p0, Lbsgamesdkhttp/a/e/c$b;->e:S

    int-to-long v4, v3

    invoke-interface {v2, v4, v5}, Lbsgamesdkio/e;->g(J)V

    const/4 v2, 0x0

    iput-short v2, p0, Lbsgamesdkhttp/a/e/c$b;->e:S

    iget-byte v2, p0, Lbsgamesdkhttp/a/e/c$b;->b:B

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_18

    :cond_17
    :goto_17
    return-wide v0

    :cond_18
    invoke-direct {p0}, Lbsgamesdkhttp/a/e/c$b;->b()V

    goto :goto_2

    :cond_1c
    iget-object v2, p0, Lbsgamesdkhttp/a/e/c$b;->f:Lbsgamesdkio/e;

    iget v3, p0, Lbsgamesdkhttp/a/e/c$b;->d:I

    int-to-long v4, v3

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-interface {v2, p1, v4, v5}, Lbsgamesdkio/e;->a(Lbsgamesdkio/c;J)J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-eqz v4, :cond_17

    iget v0, p0, Lbsgamesdkhttp/a/e/c$b;->d:I

    int-to-long v0, v0

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lbsgamesdkhttp/a/e/c$b;->d:I

    move-wide v0, v2

    goto :goto_17
.end method

.method public a()Lbsgamesdkio/q;
    .registers 2

    iget-object v0, p0, Lbsgamesdkhttp/a/e/c$b;->f:Lbsgamesdkio/e;

    invoke-interface {v0}, Lbsgamesdkio/e;->a()Lbsgamesdkio/q;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .registers 1

    return-void
.end method
