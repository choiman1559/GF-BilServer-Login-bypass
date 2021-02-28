.class final Lbsgamesdkhttp/a/d/a$b;
.super Ljava/lang/Object;

# interfaces
.implements Lbsgamesdkio/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbsgamesdkhttp/a/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lbsgamesdkhttp/a/d/a;

.field private final b:Lbsgamesdkio/g;

.field private c:Z


# direct methods
.method constructor <init>(Lbsgamesdkhttp/a/d/a;)V
    .registers 4

    iput-object p1, p0, Lbsgamesdkhttp/a/d/a$b;->a:Lbsgamesdkhttp/a/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lbsgamesdkio/g;

    iget-object v1, p0, Lbsgamesdkhttp/a/d/a$b;->a:Lbsgamesdkhttp/a/d/a;

    iget-object v1, v1, Lbsgamesdkhttp/a/d/a;->d:Lbsgamesdkio/d;

    invoke-interface {v1}, Lbsgamesdkio/d;->a()Lbsgamesdkio/q;

    move-result-object v1

    invoke-direct {v0, v1}, Lbsgamesdkio/g;-><init>(Lbsgamesdkio/q;)V

    iput-object v0, p0, Lbsgamesdkhttp/a/d/a$b;->b:Lbsgamesdkio/g;

    return-void
.end method


# virtual methods
.method public a()Lbsgamesdkio/q;
    .registers 2

    iget-object v0, p0, Lbsgamesdkhttp/a/d/a$b;->b:Lbsgamesdkio/g;

    return-object v0
.end method

.method public a_(Lbsgamesdkio/c;J)V
    .registers 6

    iget-boolean v0, p0, Lbsgamesdkhttp/a/d/a$b;->c:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_13

    :goto_12
    return-void

    :cond_13
    iget-object v0, p0, Lbsgamesdkhttp/a/d/a$b;->a:Lbsgamesdkhttp/a/d/a;

    iget-object v0, v0, Lbsgamesdkhttp/a/d/a;->d:Lbsgamesdkio/d;

    invoke-interface {v0, p2, p3}, Lbsgamesdkio/d;->j(J)Lbsgamesdkio/d;

    iget-object v0, p0, Lbsgamesdkhttp/a/d/a$b;->a:Lbsgamesdkhttp/a/d/a;

    iget-object v0, v0, Lbsgamesdkhttp/a/d/a;->d:Lbsgamesdkio/d;

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Lbsgamesdkio/d;->b(Ljava/lang/String;)Lbsgamesdkio/d;

    iget-object v0, p0, Lbsgamesdkhttp/a/d/a$b;->a:Lbsgamesdkhttp/a/d/a;

    iget-object v0, v0, Lbsgamesdkhttp/a/d/a;->d:Lbsgamesdkio/d;

    invoke-interface {v0, p1, p2, p3}, Lbsgamesdkio/d;->a_(Lbsgamesdkio/c;J)V

    iget-object v0, p0, Lbsgamesdkhttp/a/d/a$b;->a:Lbsgamesdkhttp/a/d/a;

    iget-object v0, v0, Lbsgamesdkhttp/a/d/a;->d:Lbsgamesdkio/d;

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Lbsgamesdkio/d;->b(Ljava/lang/String;)Lbsgamesdkio/d;

    goto :goto_12
.end method

.method public declared-synchronized close()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lbsgamesdkhttp/a/d/a$b;->c:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_20

    if-eqz v0, :cond_7

    :goto_5
    monitor-exit p0

    return-void

    :cond_7
    const/4 v0, 0x1

    :try_start_8
    iput-boolean v0, p0, Lbsgamesdkhttp/a/d/a$b;->c:Z

    iget-object v0, p0, Lbsgamesdkhttp/a/d/a$b;->a:Lbsgamesdkhttp/a/d/a;

    iget-object v0, v0, Lbsgamesdkhttp/a/d/a;->d:Lbsgamesdkio/d;

    const-string v1, "0\r\n\r\n"

    invoke-interface {v0, v1}, Lbsgamesdkio/d;->b(Ljava/lang/String;)Lbsgamesdkio/d;

    iget-object v0, p0, Lbsgamesdkhttp/a/d/a$b;->a:Lbsgamesdkhttp/a/d/a;

    iget-object v1, p0, Lbsgamesdkhttp/a/d/a$b;->b:Lbsgamesdkio/g;

    invoke-virtual {v0, v1}, Lbsgamesdkhttp/a/d/a;->a(Lbsgamesdkio/g;)V

    iget-object v0, p0, Lbsgamesdkhttp/a/d/a$b;->a:Lbsgamesdkhttp/a/d/a;

    const/4 v1, 0x3

    iput v1, v0, Lbsgamesdkhttp/a/d/a;->e:I
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_20

    goto :goto_5

    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized flush()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lbsgamesdkhttp/a/d/a$b;->c:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_f

    if-eqz v0, :cond_7

    :goto_5
    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    iget-object v0, p0, Lbsgamesdkhttp/a/d/a$b;->a:Lbsgamesdkhttp/a/d/a;

    iget-object v0, v0, Lbsgamesdkhttp/a/d/a;->d:Lbsgamesdkio/d;

    invoke-interface {v0}, Lbsgamesdkio/d;->flush()V
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_f

    goto :goto_5

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method
