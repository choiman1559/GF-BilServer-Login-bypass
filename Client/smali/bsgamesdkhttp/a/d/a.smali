.class public final Lbsgamesdkhttp/a/d/a;
.super Ljava/lang/Object;

# interfaces
.implements Lbsgamesdkhttp/a/c/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbsgamesdkhttp/a/d/a$f;,
        Lbsgamesdkhttp/a/d/a$c;,
        Lbsgamesdkhttp/a/d/a$e;,
        Lbsgamesdkhttp/a/d/a$a;,
        Lbsgamesdkhttp/a/d/a$b;,
        Lbsgamesdkhttp/a/d/a$d;
    }
.end annotation


# instance fields
.field final a:Lbsgamesdkhttp/u;

.field final b:Lbsgamesdkhttp/a/b/g;

.field final c:Lbsgamesdkio/e;

.field final d:Lbsgamesdkio/d;

.field e:I


# direct methods
.method public constructor <init>(Lbsgamesdkhttp/u;Lbsgamesdkhttp/a/b/g;Lbsgamesdkio/e;Lbsgamesdkio/d;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lbsgamesdkhttp/a/d/a;->e:I

    iput-object p1, p0, Lbsgamesdkhttp/a/d/a;->a:Lbsgamesdkhttp/u;

    iput-object p2, p0, Lbsgamesdkhttp/a/d/a;->b:Lbsgamesdkhttp/a/b/g;

    iput-object p3, p0, Lbsgamesdkhttp/a/d/a;->c:Lbsgamesdkio/e;

    iput-object p4, p0, Lbsgamesdkhttp/a/d/a;->d:Lbsgamesdkio/d;

    return-void
.end method

.method private b(Lbsgamesdkhttp/y;)Lbsgamesdkio/p;
    .registers 6

    invoke-static {p1}, Lbsgamesdkhttp/a/c/e;->b(Lbsgamesdkhttp/y;)Z

    move-result v0

    if-nez v0, :cond_d

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lbsgamesdkhttp/a/d/a;->b(J)Lbsgamesdkio/p;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    const-string v0, "chunked"

    const-string v1, "Transfer-Encoding"

    invoke-virtual {p1, v1}, Lbsgamesdkhttp/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-virtual {p1}, Lbsgamesdkhttp/y;->a()Lbsgamesdkhttp/w;

    move-result-object v0

    invoke-virtual {v0}, Lbsgamesdkhttp/w;->a()Lbsgamesdkhttp/HttpUrl;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbsgamesdkhttp/a/d/a;->a(Lbsgamesdkhttp/HttpUrl;)Lbsgamesdkio/p;

    move-result-object v0

    goto :goto_c

    :cond_28
    invoke-static {p1}, Lbsgamesdkhttp/a/c/e;->a(Lbsgamesdkhttp/y;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_37

    invoke-virtual {p0, v0, v1}, Lbsgamesdkhttp/a/d/a;->b(J)Lbsgamesdkio/p;

    move-result-object v0

    goto :goto_c

    :cond_37
    invoke-virtual {p0}, Lbsgamesdkhttp/a/d/a;->e()Lbsgamesdkio/p;

    move-result-object v0

    goto :goto_c
.end method


# virtual methods
.method public a(Z)Lbsgamesdkhttp/y$a;
    .registers 6

    iget v0, p0, Lbsgamesdkhttp/a/d/a;->e:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_25

    iget v0, p0, Lbsgamesdkhttp/a/d/a;->e:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_25

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lbsgamesdkhttp/a/d/a;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    :try_start_25
    iget-object v0, p0, Lbsgamesdkhttp/a/d/a;->c:Lbsgamesdkio/e;

    invoke-interface {v0}, Lbsgamesdkio/e;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbsgamesdkhttp/a/c/i;->a(Ljava/lang/String;)Lbsgamesdkhttp/a/c/i;

    move-result-object v1

    new-instance v0, Lbsgamesdkhttp/y$a;

    invoke-direct {v0}, Lbsgamesdkhttp/y$a;-><init>()V

    iget-object v2, v1, Lbsgamesdkhttp/a/c/i;->a:Lbsgamesdkhttp/Protocol;

    invoke-virtual {v0, v2}, Lbsgamesdkhttp/y$a;->a(Lbsgamesdkhttp/Protocol;)Lbsgamesdkhttp/y$a;

    move-result-object v0

    iget v2, v1, Lbsgamesdkhttp/a/c/i;->b:I

    invoke-virtual {v0, v2}, Lbsgamesdkhttp/y$a;->a(I)Lbsgamesdkhttp/y$a;

    move-result-object v0

    iget-object v2, v1, Lbsgamesdkhttp/a/c/i;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lbsgamesdkhttp/y$a;->a(Ljava/lang/String;)Lbsgamesdkhttp/y$a;

    move-result-object v0

    invoke-virtual {p0}, Lbsgamesdkhttp/a/d/a;->c()Lbsgamesdkhttp/r;

    move-result-object v2

    invoke-virtual {v0, v2}, Lbsgamesdkhttp/y$a;->a(Lbsgamesdkhttp/r;)Lbsgamesdkhttp/y$a;

    move-result-object v0

    if-eqz p1, :cond_58

    iget v1, v1, Lbsgamesdkhttp/a/c/i;->b:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_58

    const/4 v0, 0x0

    :goto_57
    return-object v0

    :cond_58
    const/4 v1, 0x4

    iput v1, p0, Lbsgamesdkhttp/a/d/a;->e:I
    :try_end_5b
    .catch Ljava/io/EOFException; {:try_start_25 .. :try_end_5b} :catch_5c

    goto :goto_57

    :catch_5c
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected end of stream on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lbsgamesdkhttp/a/d/a;->b:Lbsgamesdkhttp/a/b/g;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1
.end method

.method public a(Lbsgamesdkhttp/y;)Lbsgamesdkhttp/z;
    .registers 5

    invoke-direct {p0, p1}, Lbsgamesdkhttp/a/d/a;->b(Lbsgamesdkhttp/y;)Lbsgamesdkio/p;

    move-result-object v0

    new-instance v1, Lbsgamesdkhttp/a/c/g;

    invoke-virtual {p1}, Lbsgamesdkhttp/y;->f()Lbsgamesdkhttp/r;

    move-result-object v2

    invoke-static {v0}, Lbsgamesdkio/j;->a(Lbsgamesdkio/p;)Lbsgamesdkio/e;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lbsgamesdkhttp/a/c/g;-><init>(Lbsgamesdkhttp/r;Lbsgamesdkio/e;)V

    return-object v1
.end method

.method public a(J)Lbsgamesdkio/o;
    .registers 6

    iget v0, p0, Lbsgamesdkhttp/a/d/a;->e:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_20

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lbsgamesdkhttp/a/d/a;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    const/4 v0, 0x2

    iput v0, p0, Lbsgamesdkhttp/a/d/a;->e:I

    new-instance v0, Lbsgamesdkhttp/a/d/a$d;

    invoke-direct {v0, p0, p1, p2}, Lbsgamesdkhttp/a/d/a$d;-><init>(Lbsgamesdkhttp/a/d/a;J)V

    return-object v0
.end method

.method public a(Lbsgamesdkhttp/w;J)Lbsgamesdkio/o;
    .registers 6

    const-string v0, "chunked"

    const-string v1, "Transfer-Encoding"

    invoke-virtual {p1, v1}, Lbsgamesdkhttp/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lbsgamesdkhttp/a/d/a;->d()Lbsgamesdkio/o;

    move-result-object v0

    :goto_12
    return-object v0

    :cond_13
    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-eqz v0, :cond_1e

    invoke-virtual {p0, p2, p3}, Lbsgamesdkhttp/a/d/a;->a(J)Lbsgamesdkio/o;

    move-result-object v0

    goto :goto_12

    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot stream a request body without chunked encoding or a known content length!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lbsgamesdkhttp/HttpUrl;)Lbsgamesdkio/p;
    .registers 5

    iget v0, p0, Lbsgamesdkhttp/a/d/a;->e:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_20

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lbsgamesdkhttp/a/d/a;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    const/4 v0, 0x5

    iput v0, p0, Lbsgamesdkhttp/a/d/a;->e:I

    new-instance v0, Lbsgamesdkhttp/a/d/a$c;

    invoke-direct {v0, p0, p1}, Lbsgamesdkhttp/a/d/a$c;-><init>(Lbsgamesdkhttp/a/d/a;Lbsgamesdkhttp/HttpUrl;)V

    return-object v0
.end method

.method public a()V
    .registers 2

    iget-object v0, p0, Lbsgamesdkhttp/a/d/a;->d:Lbsgamesdkio/d;

    invoke-interface {v0}, Lbsgamesdkio/d;->flush()V

    return-void
.end method

.method public a(Lbsgamesdkhttp/r;Ljava/lang/String;)V
    .registers 7

    iget v0, p0, Lbsgamesdkhttp/a/d/a;->e:I

    if-eqz v0, :cond_1f

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lbsgamesdkhttp/a/d/a;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    iget-object v0, p0, Lbsgamesdkhttp/a/d/a;->d:Lbsgamesdkio/d;

    invoke-interface {v0, p2}, Lbsgamesdkio/d;->b(Ljava/lang/String;)Lbsgamesdkio/d;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Lbsgamesdkio/d;->b(Ljava/lang/String;)Lbsgamesdkio/d;

    const/4 v0, 0x0

    invoke-virtual {p1}, Lbsgamesdkhttp/r;->a()I

    move-result v1

    :goto_2f
    if-ge v0, v1, :cond_51

    iget-object v2, p0, Lbsgamesdkhttp/a/d/a;->d:Lbsgamesdkio/d;

    invoke-virtual {p1, v0}, Lbsgamesdkhttp/r;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lbsgamesdkio/d;->b(Ljava/lang/String;)Lbsgamesdkio/d;

    move-result-object v2

    const-string v3, ": "

    invoke-interface {v2, v3}, Lbsgamesdkio/d;->b(Ljava/lang/String;)Lbsgamesdkio/d;

    move-result-object v2

    invoke-virtual {p1, v0}, Lbsgamesdkhttp/r;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lbsgamesdkio/d;->b(Ljava/lang/String;)Lbsgamesdkio/d;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-interface {v2, v3}, Lbsgamesdkio/d;->b(Ljava/lang/String;)Lbsgamesdkio/d;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    :cond_51
    iget-object v0, p0, Lbsgamesdkhttp/a/d/a;->d:Lbsgamesdkio/d;

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Lbsgamesdkio/d;->b(Ljava/lang/String;)Lbsgamesdkio/d;

    const/4 v0, 0x1

    iput v0, p0, Lbsgamesdkhttp/a/d/a;->e:I

    return-void
.end method

.method public a(Lbsgamesdkhttp/w;)V
    .registers 4

    iget-object v0, p0, Lbsgamesdkhttp/a/d/a;->b:Lbsgamesdkhttp/a/b/g;

    invoke-virtual {v0}, Lbsgamesdkhttp/a/b/g;->b()Lbsgamesdkhttp/a/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lbsgamesdkhttp/a/b/c;->a()Lbsgamesdkhttp/aa;

    move-result-object v0

    invoke-virtual {v0}, Lbsgamesdkhttp/aa;->b()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    invoke-static {p1, v0}, Lbsgamesdkhttp/a/c/l;->a(Lbsgamesdkhttp/w;Ljava/net/Proxy$Type;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lbsgamesdkhttp/w;->c()Lbsgamesdkhttp/r;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lbsgamesdkhttp/a/d/a;->a(Lbsgamesdkhttp/r;Ljava/lang/String;)V

    return-void
.end method

.method a(Lbsgamesdkio/g;)V
    .registers 4

    invoke-virtual {p1}, Lbsgamesdkio/g;->a()Lbsgamesdkio/q;

    move-result-object v0

    sget-object v1, Lbsgamesdkio/q;->b:Lbsgamesdkio/q;

    invoke-virtual {p1, v1}, Lbsgamesdkio/g;->a(Lbsgamesdkio/q;)Lbsgamesdkio/g;

    invoke-virtual {v0}, Lbsgamesdkio/q;->e_()Lbsgamesdkio/q;

    invoke-virtual {v0}, Lbsgamesdkio/q;->d_()Lbsgamesdkio/q;

    return-void
.end method

.method public b(J)Lbsgamesdkio/p;
    .registers 6

    iget v0, p0, Lbsgamesdkhttp/a/d/a;->e:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_20

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lbsgamesdkhttp/a/d/a;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    const/4 v0, 0x5

    iput v0, p0, Lbsgamesdkhttp/a/d/a;->e:I

    new-instance v0, Lbsgamesdkhttp/a/d/a$e;

    invoke-direct {v0, p0, p1, p2}, Lbsgamesdkhttp/a/d/a$e;-><init>(Lbsgamesdkhttp/a/d/a;J)V

    return-object v0
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lbsgamesdkhttp/a/d/a;->d:Lbsgamesdkio/d;

    invoke-interface {v0}, Lbsgamesdkio/d;->flush()V

    return-void
.end method

.method public c()Lbsgamesdkhttp/r;
    .registers 4

    new-instance v0, Lbsgamesdkhttp/r$a;

    invoke-direct {v0}, Lbsgamesdkhttp/r$a;-><init>()V

    :goto_5
    iget-object v1, p0, Lbsgamesdkhttp/a/d/a;->c:Lbsgamesdkio/e;

    invoke-interface {v1}, Lbsgamesdkio/e;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_17

    sget-object v2, Lbsgamesdkhttp/a/a;->a:Lbsgamesdkhttp/a/a;

    invoke-virtual {v2, v0, v1}, Lbsgamesdkhttp/a/a;->a(Lbsgamesdkhttp/r$a;Ljava/lang/String;)V

    goto :goto_5

    :cond_17
    invoke-virtual {v0}, Lbsgamesdkhttp/r$a;->a()Lbsgamesdkhttp/r;

    move-result-object v0

    return-object v0
.end method

.method public d()Lbsgamesdkio/o;
    .registers 4

    iget v0, p0, Lbsgamesdkhttp/a/d/a;->e:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_20

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lbsgamesdkhttp/a/d/a;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    const/4 v0, 0x2

    iput v0, p0, Lbsgamesdkhttp/a/d/a;->e:I

    new-instance v0, Lbsgamesdkhttp/a/d/a$b;

    invoke-direct {v0, p0}, Lbsgamesdkhttp/a/d/a$b;-><init>(Lbsgamesdkhttp/a/d/a;)V

    return-object v0
.end method

.method public e()Lbsgamesdkio/p;
    .registers 4

    iget v0, p0, Lbsgamesdkhttp/a/d/a;->e:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_20

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lbsgamesdkhttp/a/d/a;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    iget-object v0, p0, Lbsgamesdkhttp/a/d/a;->b:Lbsgamesdkhttp/a/b/g;

    if-nez v0, :cond_2c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "streamAllocation == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2c
    const/4 v0, 0x5

    iput v0, p0, Lbsgamesdkhttp/a/d/a;->e:I

    iget-object v0, p0, Lbsgamesdkhttp/a/d/a;->b:Lbsgamesdkhttp/a/b/g;

    invoke-virtual {v0}, Lbsgamesdkhttp/a/b/g;->d()V

    new-instance v0, Lbsgamesdkhttp/a/d/a$f;

    invoke-direct {v0, p0}, Lbsgamesdkhttp/a/d/a$f;-><init>(Lbsgamesdkhttp/a/d/a;)V

    return-object v0
.end method
