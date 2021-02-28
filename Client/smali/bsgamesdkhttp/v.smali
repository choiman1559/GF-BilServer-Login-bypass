.class final Lbsgamesdkhttp/v;
.super Ljava/lang/Object;

# interfaces
.implements Lbsgamesdkhttp/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbsgamesdkhttp/v$a;
    }
.end annotation


# instance fields
.field final a:Lbsgamesdkhttp/u;

.field final b:Lbsgamesdkhttp/a/c/h;

.field final c:Lbsgamesdkhttp/w;

.field final d:Z

.field private e:Z


# direct methods
.method constructor <init>(Lbsgamesdkhttp/u;Lbsgamesdkhttp/w;Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbsgamesdkhttp/v;->a:Lbsgamesdkhttp/u;

    iput-object p2, p0, Lbsgamesdkhttp/v;->c:Lbsgamesdkhttp/w;

    iput-boolean p3, p0, Lbsgamesdkhttp/v;->d:Z

    new-instance v0, Lbsgamesdkhttp/a/c/h;

    invoke-direct {v0, p1, p3}, Lbsgamesdkhttp/a/c/h;-><init>(Lbsgamesdkhttp/u;Z)V

    iput-object v0, p0, Lbsgamesdkhttp/v;->b:Lbsgamesdkhttp/a/c/h;

    return-void
.end method

.method private g()V
    .registers 3

    invoke-static {}, Lbsgamesdkhttp/a/g/e;->b()Lbsgamesdkhttp/a/g/e;

    move-result-object v0

    const-string v1, "response.body().close()"

    invoke-virtual {v0, v1}, Lbsgamesdkhttp/a/g/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lbsgamesdkhttp/v;->b:Lbsgamesdkhttp/a/c/h;

    invoke-virtual {v1, v0}, Lbsgamesdkhttp/a/c/h;->a(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()Lbsgamesdkhttp/y;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lbsgamesdkhttp/v;->e:Z

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already Executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw v0

    :cond_10
    const/4 v0, 0x1

    :try_start_11
    iput-boolean v0, p0, Lbsgamesdkhttp/v;->e:Z

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_d

    invoke-direct {p0}, Lbsgamesdkhttp/v;->g()V

    :try_start_17
    iget-object v0, p0, Lbsgamesdkhttp/v;->a:Lbsgamesdkhttp/u;

    invoke-virtual {v0}, Lbsgamesdkhttp/u;->s()Lbsgamesdkhttp/n;

    move-result-object v0

    invoke-virtual {v0, p0}, Lbsgamesdkhttp/n;->a(Lbsgamesdkhttp/v;)V

    invoke-virtual {p0}, Lbsgamesdkhttp/v;->f()Lbsgamesdkhttp/y;

    move-result-object v0

    if-nez v0, :cond_39

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2e
    .catchall {:try_start_17 .. :try_end_2e} :catchall_2e

    :catchall_2e
    move-exception v0

    iget-object v1, p0, Lbsgamesdkhttp/v;->a:Lbsgamesdkhttp/u;

    invoke-virtual {v1}, Lbsgamesdkhttp/u;->s()Lbsgamesdkhttp/n;

    move-result-object v1

    invoke-virtual {v1, p0}, Lbsgamesdkhttp/n;->b(Lbsgamesdkhttp/v;)V

    throw v0

    :cond_39
    iget-object v1, p0, Lbsgamesdkhttp/v;->a:Lbsgamesdkhttp/u;

    invoke-virtual {v1}, Lbsgamesdkhttp/u;->s()Lbsgamesdkhttp/n;

    move-result-object v1

    invoke-virtual {v1, p0}, Lbsgamesdkhttp/n;->b(Lbsgamesdkhttp/v;)V

    return-object v0
.end method

.method public b()Z
    .registers 2

    iget-object v0, p0, Lbsgamesdkhttp/v;->b:Lbsgamesdkhttp/a/c/h;

    invoke-virtual {v0}, Lbsgamesdkhttp/a/c/h;->a()Z

    move-result v0

    return v0
.end method

.method public c()Lbsgamesdkhttp/v;
    .registers 5

    new-instance v0, Lbsgamesdkhttp/v;

    iget-object v1, p0, Lbsgamesdkhttp/v;->a:Lbsgamesdkhttp/u;

    iget-object v2, p0, Lbsgamesdkhttp/v;->c:Lbsgamesdkhttp/w;

    iget-boolean v3, p0, Lbsgamesdkhttp/v;->d:Z

    invoke-direct {v0, v1, v2, v3}, Lbsgamesdkhttp/v;-><init>(Lbsgamesdkhttp/u;Lbsgamesdkhttp/w;Z)V

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lbsgamesdkhttp/v;->c()Lbsgamesdkhttp/v;

    move-result-object v0

    return-object v0
.end method

.method d()Ljava/lang/String;
    .registers 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lbsgamesdkhttp/v;->b()Z

    move-result v0

    if-eqz v0, :cond_2e

    const-string v0, "canceled "

    :goto_d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lbsgamesdkhttp/v;->d:Z

    if-eqz v0, :cond_31

    const-string v0, "web socket"

    :goto_17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lbsgamesdkhttp/v;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2e
    const-string v0, ""

    goto :goto_d

    :cond_31
    const-string v0, "call"

    goto :goto_17
.end method

.method e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lbsgamesdkhttp/v;->c:Lbsgamesdkhttp/w;

    invoke-virtual {v0}, Lbsgamesdkhttp/w;->a()Lbsgamesdkhttp/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lbsgamesdkhttp/HttpUrl;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method f()Lbsgamesdkhttp/y;
    .registers 8

    const/4 v2, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lbsgamesdkhttp/v;->a:Lbsgamesdkhttp/u;

    invoke-virtual {v0}, Lbsgamesdkhttp/u;->v()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lbsgamesdkhttp/v;->b:Lbsgamesdkhttp/a/c/h;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lbsgamesdkhttp/a/c/a;

    iget-object v3, p0, Lbsgamesdkhttp/v;->a:Lbsgamesdkhttp/u;

    invoke-virtual {v3}, Lbsgamesdkhttp/u;->f()Lbsgamesdkhttp/m;

    move-result-object v3

    invoke-direct {v0, v3}, Lbsgamesdkhttp/a/c/a;-><init>(Lbsgamesdkhttp/m;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lbsgamesdkhttp/a/a/a;

    iget-object v3, p0, Lbsgamesdkhttp/v;->a:Lbsgamesdkhttp/u;

    invoke-virtual {v3}, Lbsgamesdkhttp/u;->g()Lbsgamesdkhttp/a/a/e;

    move-result-object v3

    invoke-direct {v0, v3}, Lbsgamesdkhttp/a/a/a;-><init>(Lbsgamesdkhttp/a/a/e;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lbsgamesdkhttp/a/b/a;

    iget-object v3, p0, Lbsgamesdkhttp/v;->a:Lbsgamesdkhttp/u;

    invoke-direct {v0, v3}, Lbsgamesdkhttp/a/b/a;-><init>(Lbsgamesdkhttp/u;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lbsgamesdkhttp/v;->d:Z

    if-nez v0, :cond_47

    iget-object v0, p0, Lbsgamesdkhttp/v;->a:Lbsgamesdkhttp/u;

    invoke-virtual {v0}, Lbsgamesdkhttp/u;->w()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_47
    new-instance v0, Lbsgamesdkhttp/a/c/b;

    iget-boolean v3, p0, Lbsgamesdkhttp/v;->d:Z

    invoke-direct {v0, v3}, Lbsgamesdkhttp/a/c/b;-><init>(Z)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lbsgamesdkhttp/a/c/f;

    const/4 v5, 0x0

    iget-object v6, p0, Lbsgamesdkhttp/v;->c:Lbsgamesdkhttp/w;

    move-object v3, v2

    move-object v4, v2

    invoke-direct/range {v0 .. v6}, Lbsgamesdkhttp/a/c/f;-><init>(Ljava/util/List;Lbsgamesdkhttp/a/b/g;Lbsgamesdkhttp/a/c/c;Lbsgamesdkhttp/i;ILbsgamesdkhttp/w;)V

    iget-object v1, p0, Lbsgamesdkhttp/v;->c:Lbsgamesdkhttp/w;

    invoke-interface {v0, v1}, Lbsgamesdkhttp/s$a;->a(Lbsgamesdkhttp/w;)Lbsgamesdkhttp/y;

    move-result-object v0

    return-object v0
.end method
