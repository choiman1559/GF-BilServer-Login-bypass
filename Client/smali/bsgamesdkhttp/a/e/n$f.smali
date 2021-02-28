.class Lbsgamesdkhttp/a/e/n$f;
.super Lbsgamesdkhttp/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbsgamesdkhttp/a/e/n;->a(ILbsgamesdkio/e;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic c:Lbsgamesdkio/c;

.field final synthetic d:I

.field final synthetic e:Z

.field final synthetic f:Lbsgamesdkhttp/a/e/n;


# direct methods
.method varargs constructor <init>(Lbsgamesdkhttp/a/e/n;Ljava/lang/String;[Ljava/lang/Object;ILbsgamesdkio/c;IZ)V
    .registers 8

    iput-object p1, p0, Lbsgamesdkhttp/a/e/n$f;->f:Lbsgamesdkhttp/a/e/n;

    iput p4, p0, Lbsgamesdkhttp/a/e/n$f;->a:I

    iput-object p5, p0, Lbsgamesdkhttp/a/e/n$f;->c:Lbsgamesdkio/c;

    iput p6, p0, Lbsgamesdkhttp/a/e/n$f;->d:I

    iput-boolean p7, p0, Lbsgamesdkhttp/a/e/n$f;->e:Z

    invoke-direct {p0, p2, p3}, Lbsgamesdkhttp/a/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lbsgamesdkhttp/a/e/n$f;->f:Lbsgamesdkhttp/a/e/n;

    iget-object v0, v0, Lbsgamesdkhttp/a/e/n;->i:Lbsgamesdkhttp/a/e/h;

    iget v1, p0, Lbsgamesdkhttp/a/e/n$f;->a:I

    iget-object v2, p0, Lbsgamesdkhttp/a/e/n$f;->c:Lbsgamesdkio/c;

    iget v3, p0, Lbsgamesdkhttp/a/e/n$f;->d:I

    iget-boolean v4, p0, Lbsgamesdkhttp/a/e/n$f;->e:Z

    invoke-interface {v0, v1, v2, v3, v4}, Lbsgamesdkhttp/a/e/h;->a(ILbsgamesdkio/e;IZ)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v1, p0, Lbsgamesdkhttp/a/e/n$f;->f:Lbsgamesdkhttp/a/e/n;

    iget-object v1, v1, Lbsgamesdkhttp/a/e/n;->p:Lbsgamesdkhttp/a/e/e;

    iget v2, p0, Lbsgamesdkhttp/a/e/n$f;->a:I

    sget-object v3, Lbsgamesdkhttp/a/e/b;->f:Lbsgamesdkhttp/a/e/b;

    invoke-virtual {v1, v2, v3}, Lbsgamesdkhttp/a/e/e;->a(ILbsgamesdkhttp/a/e/b;)V

    :cond_1d
    if-nez v0, :cond_23

    iget-boolean v0, p0, Lbsgamesdkhttp/a/e/n$f;->e:Z

    if-eqz v0, :cond_34

    :cond_23
    iget-object v1, p0, Lbsgamesdkhttp/a/e/n$f;->f:Lbsgamesdkhttp/a/e/n;

    monitor-enter v1
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_26} :catch_38

    :try_start_26
    iget-object v0, p0, Lbsgamesdkhttp/a/e/n$f;->f:Lbsgamesdkhttp/a/e/n;

    iget-object v0, v0, Lbsgamesdkhttp/a/e/n;->r:Ljava/util/Set;

    iget v2, p0, Lbsgamesdkhttp/a/e/n$f;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    :cond_34
    :goto_34
    return-void

    :catchall_35
    move-exception v0

    monitor-exit v1
    :try_end_37
    .catchall {:try_start_26 .. :try_end_37} :catchall_35

    :try_start_37
    throw v0
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_38} :catch_38

    :catch_38
    move-exception v0

    goto :goto_34
.end method
