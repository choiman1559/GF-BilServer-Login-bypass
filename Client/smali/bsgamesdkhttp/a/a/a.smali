.class public final Lbsgamesdkhttp/a/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lbsgamesdkhttp/s;


# instance fields
.field final a:Lbsgamesdkhttp/a/a/e;


# direct methods
.method public constructor <init>(Lbsgamesdkhttp/a/a/e;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbsgamesdkhttp/a/a/a;->a:Lbsgamesdkhttp/a/a/e;

    return-void
.end method

.method private a(Lbsgamesdkhttp/y;Lbsgamesdkhttp/w;Lbsgamesdkhttp/a/a/e;)Lbsgamesdkhttp/a/a/b;
    .registers 6

    const/4 v0, 0x0

    if-nez p3, :cond_4

    :cond_3
    :goto_3
    return-object v0

    :cond_4
    invoke-static {p1, p2}, Lbsgamesdkhttp/a/a/c;->a(Lbsgamesdkhttp/y;Lbsgamesdkhttp/w;)Z

    move-result v1

    if-nez v1, :cond_1a

    invoke-virtual {p2}, Lbsgamesdkhttp/w;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbsgamesdkhttp/a/c/k;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :try_start_14
    invoke-interface {p3, p2}, Lbsgamesdkhttp/a/a/e;->b(Lbsgamesdkhttp/w;)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_17} :catch_18

    goto :goto_3

    :catch_18
    move-exception v1

    goto :goto_3

    :cond_1a
    invoke-interface {p3, p1}, Lbsgamesdkhttp/a/a/e;->a(Lbsgamesdkhttp/y;)Lbsgamesdkhttp/a/a/b;

    move-result-object v0

    goto :goto_3
.end method

.method private static a(Lbsgamesdkhttp/r;Lbsgamesdkhttp/r;)Lbsgamesdkhttp/r;
    .registers 9

    const/4 v0, 0x0

    new-instance v2, Lbsgamesdkhttp/r$a;

    invoke-direct {v2}, Lbsgamesdkhttp/r$a;-><init>()V

    invoke-virtual {p0}, Lbsgamesdkhttp/r;->a()I

    move-result v3

    move v1, v0

    :goto_b
    if-ge v1, v3, :cond_3a

    invoke-virtual {p0, v1}, Lbsgamesdkhttp/r;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1}, Lbsgamesdkhttp/r;->b(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Warning"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_28

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_28

    :cond_25
    :goto_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_28
    invoke-static {v4}, Lbsgamesdkhttp/a/a/a;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_34

    invoke-virtual {p1, v4}, Lbsgamesdkhttp/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_25

    :cond_34
    sget-object v6, Lbsgamesdkhttp/a/a;->a:Lbsgamesdkhttp/a/a;

    invoke-virtual {v6, v2, v4, v5}, Lbsgamesdkhttp/a/a;->a(Lbsgamesdkhttp/r$a;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_25

    :cond_3a
    invoke-virtual {p1}, Lbsgamesdkhttp/r;->a()I

    move-result v1

    :goto_3e
    if-ge v0, v1, :cond_5f

    invoke-virtual {p1, v0}, Lbsgamesdkhttp/r;->a(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Content-Length"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4f

    :cond_4c
    :goto_4c
    add-int/lit8 v0, v0, 0x1

    goto :goto_3e

    :cond_4f
    invoke-static {v3}, Lbsgamesdkhttp/a/a/a;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4c

    sget-object v4, Lbsgamesdkhttp/a/a;->a:Lbsgamesdkhttp/a/a;

    invoke-virtual {p1, v0}, Lbsgamesdkhttp/r;->b(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v3, v5}, Lbsgamesdkhttp/a/a;->a(Lbsgamesdkhttp/r$a;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4c

    :cond_5f
    invoke-virtual {v2}, Lbsgamesdkhttp/r$a;->a()Lbsgamesdkhttp/r;

    move-result-object v0

    return-object v0
.end method

.method private a(Lbsgamesdkhttp/a/a/b;Lbsgamesdkhttp/y;)Lbsgamesdkhttp/y;
    .registers 7

    if-nez p1, :cond_3

    :cond_2
    :goto_2
    return-object p2

    :cond_3
    invoke-interface {p1}, Lbsgamesdkhttp/a/a/b;->a()Lbsgamesdkio/o;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lbsgamesdkhttp/y;->g()Lbsgamesdkhttp/z;

    move-result-object v1

    invoke-virtual {v1}, Lbsgamesdkhttp/z;->c()Lbsgamesdkio/e;

    move-result-object v1

    invoke-static {v0}, Lbsgamesdkio/j;->a(Lbsgamesdkio/o;)Lbsgamesdkio/d;

    move-result-object v0

    new-instance v2, Lbsgamesdkhttp/a/a/a$a;

    invoke-direct {v2, p0, v1, p1, v0}, Lbsgamesdkhttp/a/a/a$a;-><init>(Lbsgamesdkhttp/a/a/a;Lbsgamesdkio/e;Lbsgamesdkhttp/a/a/b;Lbsgamesdkio/d;)V

    invoke-virtual {p2}, Lbsgamesdkhttp/y;->h()Lbsgamesdkhttp/y$a;

    move-result-object v0

    new-instance v1, Lbsgamesdkhttp/a/c/g;

    invoke-virtual {p2}, Lbsgamesdkhttp/y;->f()Lbsgamesdkhttp/r;

    move-result-object v3

    invoke-static {v2}, Lbsgamesdkio/j;->a(Lbsgamesdkio/p;)Lbsgamesdkio/e;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Lbsgamesdkhttp/a/c/g;-><init>(Lbsgamesdkhttp/r;Lbsgamesdkio/e;)V

    invoke-virtual {v0, v1}, Lbsgamesdkhttp/y$a;->a(Lbsgamesdkhttp/z;)Lbsgamesdkhttp/y$a;

    move-result-object v0

    invoke-virtual {v0}, Lbsgamesdkhttp/y$a;->a()Lbsgamesdkhttp/y;

    move-result-object p2

    goto :goto_2
.end method

.method private static a(Lbsgamesdkhttp/y;)Lbsgamesdkhttp/y;
    .registers 3

    if-eqz p0, :cond_15

    invoke-virtual {p0}, Lbsgamesdkhttp/y;->g()Lbsgamesdkhttp/z;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lbsgamesdkhttp/y;->h()Lbsgamesdkhttp/y$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbsgamesdkhttp/y$a;->a(Lbsgamesdkhttp/z;)Lbsgamesdkhttp/y$a;

    move-result-object v0

    invoke-virtual {v0}, Lbsgamesdkhttp/y$a;->a()Lbsgamesdkhttp/y;

    move-result-object p0

    :cond_15
    return-object p0
.end method

.method static a(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "Connection"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "Keep-Alive"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "Proxy-Authenticate"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "Proxy-Authorization"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "TE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "Trailers"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "Transfer-Encoding"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "Upgrade"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    const/4 v0, 0x1

    :goto_41
    return v0

    :cond_42
    const/4 v0, 0x0

    goto :goto_41
.end method


# virtual methods
.method public a(Lbsgamesdkhttp/s$a;)Lbsgamesdkhttp/y;
    .registers 8

    const/4 v1, 0x0

    iget-object v0, p0, Lbsgamesdkhttp/a/a/a;->a:Lbsgamesdkhttp/a/a/e;

    if-eqz v0, :cond_74

    iget-object v0, p0, Lbsgamesdkhttp/a/a/a;->a:Lbsgamesdkhttp/a/a/e;

    invoke-interface {p1}, Lbsgamesdkhttp/s$a;->a()Lbsgamesdkhttp/w;

    move-result-object v2

    invoke-interface {v0, v2}, Lbsgamesdkhttp/a/a/e;->a(Lbsgamesdkhttp/w;)Lbsgamesdkhttp/y;

    move-result-object v0

    :goto_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v4, Lbsgamesdkhttp/a/a/c$a;

    invoke-interface {p1}, Lbsgamesdkhttp/s$a;->a()Lbsgamesdkhttp/w;

    move-result-object v5

    invoke-direct {v4, v2, v3, v5, v0}, Lbsgamesdkhttp/a/a/c$a;-><init>(JLbsgamesdkhttp/w;Lbsgamesdkhttp/y;)V

    invoke-virtual {v4}, Lbsgamesdkhttp/a/a/c$a;->a()Lbsgamesdkhttp/a/a/c;

    move-result-object v2

    iget-object v3, v2, Lbsgamesdkhttp/a/a/c;->a:Lbsgamesdkhttp/w;

    iget-object v4, v2, Lbsgamesdkhttp/a/a/c;->b:Lbsgamesdkhttp/y;

    iget-object v5, p0, Lbsgamesdkhttp/a/a/a;->a:Lbsgamesdkhttp/a/a/e;

    if-eqz v5, :cond_2d

    iget-object v5, p0, Lbsgamesdkhttp/a/a/a;->a:Lbsgamesdkhttp/a/a/e;

    invoke-interface {v5, v2}, Lbsgamesdkhttp/a/a/e;->a(Lbsgamesdkhttp/a/a/c;)V

    :cond_2d
    if-eqz v0, :cond_38

    if-nez v4, :cond_38

    invoke-virtual {v0}, Lbsgamesdkhttp/y;->g()Lbsgamesdkhttp/z;

    move-result-object v2

    invoke-static {v2}, Lbsgamesdkhttp/a/c;->a(Ljava/io/Closeable;)V

    :cond_38
    if-nez v3, :cond_76

    if-nez v4, :cond_76

    new-instance v0, Lbsgamesdkhttp/y$a;

    invoke-direct {v0}, Lbsgamesdkhttp/y$a;-><init>()V

    invoke-interface {p1}, Lbsgamesdkhttp/s$a;->a()Lbsgamesdkhttp/w;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbsgamesdkhttp/y$a;->a(Lbsgamesdkhttp/w;)Lbsgamesdkhttp/y$a;

    move-result-object v0

    sget-object v1, Lbsgamesdkhttp/Protocol;->HTTP_1_1:Lbsgamesdkhttp/Protocol;

    invoke-virtual {v0, v1}, Lbsgamesdkhttp/y$a;->a(Lbsgamesdkhttp/Protocol;)Lbsgamesdkhttp/y$a;

    move-result-object v0

    const/16 v1, 0x1f8

    invoke-virtual {v0, v1}, Lbsgamesdkhttp/y$a;->a(I)Lbsgamesdkhttp/y$a;

    move-result-object v0

    const-string v1, "Unsatisfiable Request (only-if-cached)"

    invoke-virtual {v0, v1}, Lbsgamesdkhttp/y$a;->a(Ljava/lang/String;)Lbsgamesdkhttp/y$a;

    move-result-object v0

    sget-object v1, Lbsgamesdkhttp/a/c;->c:Lbsgamesdkhttp/z;

    invoke-virtual {v0, v1}, Lbsgamesdkhttp/y$a;->a(Lbsgamesdkhttp/z;)Lbsgamesdkhttp/y$a;

    move-result-object v0

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Lbsgamesdkhttp/y$a;->a(J)Lbsgamesdkhttp/y$a;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lbsgamesdkhttp/y$a;->b(J)Lbsgamesdkhttp/y$a;

    move-result-object v0

    invoke-virtual {v0}, Lbsgamesdkhttp/y$a;->a()Lbsgamesdkhttp/y;

    move-result-object v0

    :cond_73
    :goto_73
    return-object v0

    :cond_74
    move-object v0, v1

    goto :goto_f

    :cond_76
    if-nez v3, :cond_89

    invoke-virtual {v4}, Lbsgamesdkhttp/y;->h()Lbsgamesdkhttp/y$a;

    move-result-object v0

    invoke-static {v4}, Lbsgamesdkhttp/a/a/a;->a(Lbsgamesdkhttp/y;)Lbsgamesdkhttp/y;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbsgamesdkhttp/y$a;->b(Lbsgamesdkhttp/y;)Lbsgamesdkhttp/y$a;

    move-result-object v0

    invoke-virtual {v0}, Lbsgamesdkhttp/y$a;->a()Lbsgamesdkhttp/y;

    move-result-object v0

    goto :goto_73

    :cond_89
    :try_start_89
    invoke-interface {p1, v3}, Lbsgamesdkhttp/s$a;->a(Lbsgamesdkhttp/w;)Lbsgamesdkhttp/y;
    :try_end_8c
    .catchall {:try_start_89 .. :try_end_8c} :catchall_ec

    move-result-object v1

    if-nez v1, :cond_98

    if-eqz v0, :cond_98

    invoke-virtual {v0}, Lbsgamesdkhttp/y;->g()Lbsgamesdkhttp/z;

    move-result-object v0

    invoke-static {v0}, Lbsgamesdkhttp/a/c;->a(Ljava/io/Closeable;)V

    :cond_98
    if-eqz v4, :cond_100

    invoke-virtual {v1}, Lbsgamesdkhttp/y;->b()I

    move-result v0

    const/16 v2, 0x130

    if-ne v0, v2, :cond_f9

    invoke-virtual {v4}, Lbsgamesdkhttp/y;->h()Lbsgamesdkhttp/y$a;

    move-result-object v0

    invoke-virtual {v4}, Lbsgamesdkhttp/y;->f()Lbsgamesdkhttp/r;

    move-result-object v2

    invoke-virtual {v1}, Lbsgamesdkhttp/y;->f()Lbsgamesdkhttp/r;

    move-result-object v3

    invoke-static {v2, v3}, Lbsgamesdkhttp/a/a/a;->a(Lbsgamesdkhttp/r;Lbsgamesdkhttp/r;)Lbsgamesdkhttp/r;

    move-result-object v2

    invoke-virtual {v0, v2}, Lbsgamesdkhttp/y$a;->a(Lbsgamesdkhttp/r;)Lbsgamesdkhttp/y$a;

    move-result-object v0

    invoke-virtual {v1}, Lbsgamesdkhttp/y;->j()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lbsgamesdkhttp/y$a;->a(J)Lbsgamesdkhttp/y$a;

    move-result-object v0

    invoke-virtual {v1}, Lbsgamesdkhttp/y;->k()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lbsgamesdkhttp/y$a;->b(J)Lbsgamesdkhttp/y$a;

    move-result-object v0

    invoke-static {v4}, Lbsgamesdkhttp/a/a/a;->a(Lbsgamesdkhttp/y;)Lbsgamesdkhttp/y;

    move-result-object v2

    invoke-virtual {v0, v2}, Lbsgamesdkhttp/y$a;->b(Lbsgamesdkhttp/y;)Lbsgamesdkhttp/y$a;

    move-result-object v0

    invoke-static {v1}, Lbsgamesdkhttp/a/a/a;->a(Lbsgamesdkhttp/y;)Lbsgamesdkhttp/y;

    move-result-object v2

    invoke-virtual {v0, v2}, Lbsgamesdkhttp/y$a;->a(Lbsgamesdkhttp/y;)Lbsgamesdkhttp/y$a;

    move-result-object v0

    invoke-virtual {v0}, Lbsgamesdkhttp/y$a;->a()Lbsgamesdkhttp/y;

    move-result-object v0

    invoke-virtual {v1}, Lbsgamesdkhttp/y;->g()Lbsgamesdkhttp/z;

    move-result-object v1

    invoke-virtual {v1}, Lbsgamesdkhttp/z;->close()V

    iget-object v1, p0, Lbsgamesdkhttp/a/a/a;->a:Lbsgamesdkhttp/a/a/e;

    invoke-interface {v1}, Lbsgamesdkhttp/a/a/e;->a()V

    iget-object v1, p0, Lbsgamesdkhttp/a/a/a;->a:Lbsgamesdkhttp/a/a/e;

    invoke-interface {v1, v4, v0}, Lbsgamesdkhttp/a/a/e;->a(Lbsgamesdkhttp/y;Lbsgamesdkhttp/y;)V

    goto :goto_73

    :catchall_ec
    move-exception v2

    if-nez v1, :cond_f8

    if-eqz v0, :cond_f8

    invoke-virtual {v0}, Lbsgamesdkhttp/y;->g()Lbsgamesdkhttp/z;

    move-result-object v0

    invoke-static {v0}, Lbsgamesdkhttp/a/c;->a(Ljava/io/Closeable;)V

    :cond_f8
    throw v2

    :cond_f9
    invoke-virtual {v4}, Lbsgamesdkhttp/y;->g()Lbsgamesdkhttp/z;

    move-result-object v0

    invoke-static {v0}, Lbsgamesdkhttp/a/c;->a(Ljava/io/Closeable;)V

    :cond_100
    invoke-virtual {v1}, Lbsgamesdkhttp/y;->h()Lbsgamesdkhttp/y$a;

    move-result-object v0

    invoke-static {v4}, Lbsgamesdkhttp/a/a/a;->a(Lbsgamesdkhttp/y;)Lbsgamesdkhttp/y;

    move-result-object v2

    invoke-virtual {v0, v2}, Lbsgamesdkhttp/y$a;->b(Lbsgamesdkhttp/y;)Lbsgamesdkhttp/y$a;

    move-result-object v0

    invoke-static {v1}, Lbsgamesdkhttp/a/a/a;->a(Lbsgamesdkhttp/y;)Lbsgamesdkhttp/y;

    move-result-object v2

    invoke-virtual {v0, v2}, Lbsgamesdkhttp/y$a;->a(Lbsgamesdkhttp/y;)Lbsgamesdkhttp/y$a;

    move-result-object v0

    invoke-virtual {v0}, Lbsgamesdkhttp/y$a;->a()Lbsgamesdkhttp/y;

    move-result-object v0

    invoke-static {v0}, Lbsgamesdkhttp/a/c/e;->b(Lbsgamesdkhttp/y;)Z

    move-result v2

    if-eqz v2, :cond_73

    invoke-virtual {v1}, Lbsgamesdkhttp/y;->a()Lbsgamesdkhttp/w;

    move-result-object v1

    iget-object v2, p0, Lbsgamesdkhttp/a/a/a;->a:Lbsgamesdkhttp/a/a/e;

    invoke-direct {p0, v0, v1, v2}, Lbsgamesdkhttp/a/a/a;->a(Lbsgamesdkhttp/y;Lbsgamesdkhttp/w;Lbsgamesdkhttp/a/a/e;)Lbsgamesdkhttp/a/a/b;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lbsgamesdkhttp/a/a/a;->a(Lbsgamesdkhttp/a/a/b;Lbsgamesdkhttp/y;)Lbsgamesdkhttp/y;

    move-result-object v0

    goto/16 :goto_73
.end method
