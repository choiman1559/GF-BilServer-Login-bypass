.class public final Lbsgamesdkhttp/a/c/b;
.super Ljava/lang/Object;

# interfaces
.implements Lbsgamesdkhttp/s;


# instance fields
.field private final a:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lbsgamesdkhttp/a/c/b;->a:Z

    return-void
.end method


# virtual methods
.method public a(Lbsgamesdkhttp/s$a;)Lbsgamesdkhttp/y;
    .registers 10

    move-object v0, p1

    check-cast v0, Lbsgamesdkhttp/a/c/f;

    invoke-virtual {v0}, Lbsgamesdkhttp/a/c/f;->c()Lbsgamesdkhttp/a/c/c;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Lbsgamesdkhttp/a/c/f;

    invoke-virtual {v0}, Lbsgamesdkhttp/a/c/f;->b()Lbsgamesdkhttp/a/b/g;

    move-result-object v2

    invoke-interface {p1}, Lbsgamesdkhttp/s$a;->a()Lbsgamesdkhttp/w;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v1, v3}, Lbsgamesdkhttp/a/c/c;->a(Lbsgamesdkhttp/w;)V

    const/4 v0, 0x0

    invoke-virtual {v3}, Lbsgamesdkhttp/w;->b()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lbsgamesdkhttp/a/c/k;->c(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5c

    invoke-virtual {v3}, Lbsgamesdkhttp/w;->d()Lbsgamesdkhttp/x;

    move-result-object v6

    if-eqz v6, :cond_5c

    const-string v6, "100-continue"

    const-string v7, "Expect"

    invoke-virtual {v3, v7}, Lbsgamesdkhttp/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_40

    invoke-interface {v1}, Lbsgamesdkhttp/a/c/c;->a()V

    const/4 v0, 0x1

    invoke-interface {v1, v0}, Lbsgamesdkhttp/a/c/c;->a(Z)Lbsgamesdkhttp/y$a;

    move-result-object v0

    :cond_40
    if-nez v0, :cond_5c

    invoke-virtual {v3}, Lbsgamesdkhttp/w;->d()Lbsgamesdkhttp/x;

    move-result-object v6

    invoke-virtual {v6}, Lbsgamesdkhttp/x;->b()J

    move-result-wide v6

    invoke-interface {v1, v3, v6, v7}, Lbsgamesdkhttp/a/c/c;->a(Lbsgamesdkhttp/w;J)Lbsgamesdkio/o;

    move-result-object v6

    invoke-static {v6}, Lbsgamesdkio/j;->a(Lbsgamesdkio/o;)Lbsgamesdkio/d;

    move-result-object v6

    invoke-virtual {v3}, Lbsgamesdkhttp/w;->d()Lbsgamesdkhttp/x;

    move-result-object v7

    invoke-virtual {v7, v6}, Lbsgamesdkhttp/x;->a(Lbsgamesdkio/d;)V

    invoke-interface {v6}, Lbsgamesdkio/d;->close()V

    :cond_5c
    invoke-interface {v1}, Lbsgamesdkhttp/a/c/c;->b()V

    if-nez v0, :cond_66

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Lbsgamesdkhttp/a/c/c;->a(Z)Lbsgamesdkhttp/y$a;

    move-result-object v0

    :cond_66
    invoke-virtual {v0, v3}, Lbsgamesdkhttp/y$a;->a(Lbsgamesdkhttp/w;)Lbsgamesdkhttp/y$a;

    move-result-object v0

    invoke-virtual {v2}, Lbsgamesdkhttp/a/b/g;->b()Lbsgamesdkhttp/a/b/c;

    move-result-object v3

    invoke-virtual {v3}, Lbsgamesdkhttp/a/b/c;->c()Lbsgamesdkhttp/q;

    move-result-object v3

    invoke-virtual {v0, v3}, Lbsgamesdkhttp/y$a;->a(Lbsgamesdkhttp/q;)Lbsgamesdkhttp/y$a;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Lbsgamesdkhttp/y$a;->a(J)Lbsgamesdkhttp/y$a;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lbsgamesdkhttp/y$a;->b(J)Lbsgamesdkhttp/y$a;

    move-result-object v0

    invoke-virtual {v0}, Lbsgamesdkhttp/y$a;->a()Lbsgamesdkhttp/y;

    move-result-object v0

    invoke-virtual {v0}, Lbsgamesdkhttp/y;->b()I

    move-result v3

    iget-boolean v4, p0, Lbsgamesdkhttp/a/c/b;->a:Z

    if-eqz v4, :cond_104

    const/16 v4, 0x65

    if-ne v3, v4, :cond_104

    invoke-virtual {v0}, Lbsgamesdkhttp/y;->h()Lbsgamesdkhttp/y$a;

    move-result-object v0

    sget-object v1, Lbsgamesdkhttp/a/c;->c:Lbsgamesdkhttp/z;

    invoke-virtual {v0, v1}, Lbsgamesdkhttp/y$a;->a(Lbsgamesdkhttp/z;)Lbsgamesdkhttp/y$a;

    move-result-object v0

    invoke-virtual {v0}, Lbsgamesdkhttp/y$a;->a()Lbsgamesdkhttp/y;

    move-result-object v0

    :goto_a0
    const-string v1, "close"

    invoke-virtual {v0}, Lbsgamesdkhttp/y;->a()Lbsgamesdkhttp/w;

    move-result-object v4

    const-string v5, "Connection"

    invoke-virtual {v4, v5}, Lbsgamesdkhttp/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c0

    const-string v1, "close"

    const-string v4, "Connection"

    invoke-virtual {v0, v4}, Lbsgamesdkhttp/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c3

    :cond_c0
    invoke-virtual {v2}, Lbsgamesdkhttp/a/b/g;->d()V

    :cond_c3
    const/16 v1, 0xcc

    if-eq v3, v1, :cond_cb

    const/16 v1, 0xcd

    if-ne v3, v1, :cond_115

    :cond_cb
    invoke-virtual {v0}, Lbsgamesdkhttp/y;->g()Lbsgamesdkhttp/z;

    move-result-object v1

    invoke-virtual {v1}, Lbsgamesdkhttp/z;->b()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_115

    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HTTP "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " had non-zero Content-Length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lbsgamesdkhttp/y;->g()Lbsgamesdkhttp/z;

    move-result-object v0

    invoke-virtual {v0}, Lbsgamesdkhttp/z;->b()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_104
    invoke-virtual {v0}, Lbsgamesdkhttp/y;->h()Lbsgamesdkhttp/y$a;

    move-result-object v4

    invoke-interface {v1, v0}, Lbsgamesdkhttp/a/c/c;->a(Lbsgamesdkhttp/y;)Lbsgamesdkhttp/z;

    move-result-object v0

    invoke-virtual {v4, v0}, Lbsgamesdkhttp/y$a;->a(Lbsgamesdkhttp/z;)Lbsgamesdkhttp/y$a;

    move-result-object v0

    invoke-virtual {v0}, Lbsgamesdkhttp/y$a;->a()Lbsgamesdkhttp/y;

    move-result-object v0

    goto :goto_a0

    :cond_115
    return-object v0
.end method
