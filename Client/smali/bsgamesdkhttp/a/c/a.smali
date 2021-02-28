.class public final Lbsgamesdkhttp/a/c/a;
.super Ljava/lang/Object;

# interfaces
.implements Lbsgamesdkhttp/s;


# instance fields
.field private final a:Lbsgamesdkhttp/m;


# direct methods
.method public constructor <init>(Lbsgamesdkhttp/m;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbsgamesdkhttp/a/c/a;->a:Lbsgamesdkhttp/m;

    return-void
.end method

.method private a(Ljava/util/List;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbsgamesdkhttp/l;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    :goto_b
    if-ge v1, v3, :cond_33

    if-lez v1, :cond_14

    const-string v0, "; "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsgamesdkhttp/l;

    invoke-virtual {v0}, Lbsgamesdkhttp/l;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x3d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lbsgamesdkhttp/l;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    :cond_33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lbsgamesdkhttp/s$a;)Lbsgamesdkhttp/y;
    .registers 10

    const/4 v0, 0x0

    invoke-interface {p1}, Lbsgamesdkhttp/s$a;->a()Lbsgamesdkhttp/w;

    move-result-object v1

    invoke-virtual {v1}, Lbsgamesdkhttp/w;->e()Lbsgamesdkhttp/w$a;

    move-result-object v2

    invoke-virtual {v1}, Lbsgamesdkhttp/w;->d()Lbsgamesdkhttp/x;

    move-result-object v3

    if-eqz v3, :cond_36

    invoke-virtual {v3}, Lbsgamesdkhttp/x;->a()Lbsgamesdkhttp/t;

    move-result-object v4

    if-eqz v4, :cond_1e

    const-string v5, "Content-Type"

    invoke-virtual {v4}, Lbsgamesdkhttp/t;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Lbsgamesdkhttp/w$a;->a(Ljava/lang/String;Ljava/lang/String;)Lbsgamesdkhttp/w$a;

    :cond_1e
    invoke-virtual {v3}, Lbsgamesdkhttp/x;->b()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-eqz v3, :cond_108

    const-string v3, "Content-Length"

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lbsgamesdkhttp/w$a;->a(Ljava/lang/String;Ljava/lang/String;)Lbsgamesdkhttp/w$a;

    const-string v3, "Transfer-Encoding"

    invoke-virtual {v2, v3}, Lbsgamesdkhttp/w$a;->b(Ljava/lang/String;)Lbsgamesdkhttp/w$a;

    :cond_36
    :goto_36
    const-string v3, "Host"

    invoke-virtual {v1, v3}, Lbsgamesdkhttp/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4b

    const-string v3, "Host"

    invoke-virtual {v1}, Lbsgamesdkhttp/w;->a()Lbsgamesdkhttp/HttpUrl;

    move-result-object v4

    invoke-static {v4, v0}, Lbsgamesdkhttp/a/c;->a(Lbsgamesdkhttp/HttpUrl;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lbsgamesdkhttp/w$a;->a(Ljava/lang/String;Ljava/lang/String;)Lbsgamesdkhttp/w$a;

    :cond_4b
    const-string v3, "Connection"

    invoke-virtual {v1, v3}, Lbsgamesdkhttp/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5a

    const-string v3, "Connection"

    const-string v4, "Keep-Alive"

    invoke-virtual {v2, v3, v4}, Lbsgamesdkhttp/w$a;->a(Ljava/lang/String;Ljava/lang/String;)Lbsgamesdkhttp/w$a;

    :cond_5a
    const-string v3, "Accept-Encoding"

    invoke-virtual {v1, v3}, Lbsgamesdkhttp/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_72

    const-string v3, "Range"

    invoke-virtual {v1, v3}, Lbsgamesdkhttp/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_72

    const/4 v0, 0x1

    const-string v3, "Accept-Encoding"

    const-string v4, "gzip"

    invoke-virtual {v2, v3, v4}, Lbsgamesdkhttp/w$a;->a(Ljava/lang/String;Ljava/lang/String;)Lbsgamesdkhttp/w$a;

    :cond_72
    iget-object v3, p0, Lbsgamesdkhttp/a/c/a;->a:Lbsgamesdkhttp/m;

    invoke-virtual {v1}, Lbsgamesdkhttp/w;->a()Lbsgamesdkhttp/HttpUrl;

    move-result-object v4

    invoke-interface {v3, v4}, Lbsgamesdkhttp/m;->a(Lbsgamesdkhttp/HttpUrl;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8b

    const-string v4, "Cookie"

    invoke-direct {p0, v3}, Lbsgamesdkhttp/a/c/a;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lbsgamesdkhttp/w$a;->a(Ljava/lang/String;Ljava/lang/String;)Lbsgamesdkhttp/w$a;

    :cond_8b
    const-string v3, "User-Agent"

    invoke-virtual {v1, v3}, Lbsgamesdkhttp/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_9c

    const-string v3, "User-Agent"

    invoke-static {}, Lbsgamesdkhttp/a/d;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lbsgamesdkhttp/w$a;->a(Ljava/lang/String;Ljava/lang/String;)Lbsgamesdkhttp/w$a;

    :cond_9c
    invoke-virtual {v2}, Lbsgamesdkhttp/w$a;->a()Lbsgamesdkhttp/w;

    move-result-object v2

    invoke-interface {p1, v2}, Lbsgamesdkhttp/s$a;->a(Lbsgamesdkhttp/w;)Lbsgamesdkhttp/y;

    move-result-object v2

    iget-object v3, p0, Lbsgamesdkhttp/a/c/a;->a:Lbsgamesdkhttp/m;

    invoke-virtual {v1}, Lbsgamesdkhttp/w;->a()Lbsgamesdkhttp/HttpUrl;

    move-result-object v4

    invoke-virtual {v2}, Lbsgamesdkhttp/y;->f()Lbsgamesdkhttp/r;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lbsgamesdkhttp/a/c/e;->a(Lbsgamesdkhttp/m;Lbsgamesdkhttp/HttpUrl;Lbsgamesdkhttp/r;)V

    invoke-virtual {v2}, Lbsgamesdkhttp/y;->h()Lbsgamesdkhttp/y$a;

    move-result-object v3

    invoke-virtual {v3, v1}, Lbsgamesdkhttp/y$a;->a(Lbsgamesdkhttp/w;)Lbsgamesdkhttp/y$a;

    move-result-object v1

    if-eqz v0, :cond_103

    const-string v0, "gzip"

    const-string v3, "Content-Encoding"

    invoke-virtual {v2, v3}, Lbsgamesdkhttp/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_103

    invoke-static {v2}, Lbsgamesdkhttp/a/c/e;->b(Lbsgamesdkhttp/y;)Z

    move-result v0

    if-eqz v0, :cond_103

    new-instance v0, Lbsgamesdkio/h;

    invoke-virtual {v2}, Lbsgamesdkhttp/y;->g()Lbsgamesdkhttp/z;

    move-result-object v3

    invoke-virtual {v3}, Lbsgamesdkhttp/z;->c()Lbsgamesdkio/e;

    move-result-object v3

    invoke-direct {v0, v3}, Lbsgamesdkio/h;-><init>(Lbsgamesdkio/p;)V

    invoke-virtual {v2}, Lbsgamesdkhttp/y;->f()Lbsgamesdkhttp/r;

    move-result-object v2

    invoke-virtual {v2}, Lbsgamesdkhttp/r;->b()Lbsgamesdkhttp/r$a;

    move-result-object v2

    const-string v3, "Content-Encoding"

    invoke-virtual {v2, v3}, Lbsgamesdkhttp/r$a;->b(Ljava/lang/String;)Lbsgamesdkhttp/r$a;

    move-result-object v2

    const-string v3, "Content-Length"

    invoke-virtual {v2, v3}, Lbsgamesdkhttp/r$a;->b(Ljava/lang/String;)Lbsgamesdkhttp/r$a;

    move-result-object v2

    invoke-virtual {v2}, Lbsgamesdkhttp/r$a;->a()Lbsgamesdkhttp/r;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbsgamesdkhttp/y$a;->a(Lbsgamesdkhttp/r;)Lbsgamesdkhttp/y$a;

    new-instance v3, Lbsgamesdkhttp/a/c/g;

    invoke-static {v0}, Lbsgamesdkio/j;->a(Lbsgamesdkio/p;)Lbsgamesdkio/e;

    move-result-object v0

    invoke-direct {v3, v2, v0}, Lbsgamesdkhttp/a/c/g;-><init>(Lbsgamesdkhttp/r;Lbsgamesdkio/e;)V

    invoke-virtual {v1, v3}, Lbsgamesdkhttp/y$a;->a(Lbsgamesdkhttp/z;)Lbsgamesdkhttp/y$a;

    :cond_103
    invoke-virtual {v1}, Lbsgamesdkhttp/y$a;->a()Lbsgamesdkhttp/y;

    move-result-object v0

    return-object v0

    :cond_108
    const-string v3, "Transfer-Encoding"

    const-string v4, "chunked"

    invoke-virtual {v2, v3, v4}, Lbsgamesdkhttp/w$a;->a(Ljava/lang/String;Ljava/lang/String;)Lbsgamesdkhttp/w$a;

    const-string v3, "Content-Length"

    invoke-virtual {v2, v3}, Lbsgamesdkhttp/w$a;->b(Ljava/lang/String;)Lbsgamesdkhttp/w$a;

    goto/16 :goto_36
.end method
