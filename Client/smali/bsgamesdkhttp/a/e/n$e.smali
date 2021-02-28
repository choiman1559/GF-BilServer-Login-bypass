.class Lbsgamesdkhttp/a/e/n$e;
.super Lbsgamesdkhttp/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbsgamesdkhttp/a/e/n;->a(ILjava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Z

.field final synthetic e:Lbsgamesdkhttp/a/e/n;


# direct methods
.method varargs constructor <init>(Lbsgamesdkhttp/a/e/n;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;Z)V
    .registers 7

    iput-object p1, p0, Lbsgamesdkhttp/a/e/n$e;->e:Lbsgamesdkhttp/a/e/n;

    iput p4, p0, Lbsgamesdkhttp/a/e/n$e;->a:I

    iput-object p5, p0, Lbsgamesdkhttp/a/e/n$e;->c:Ljava/util/List;

    iput-boolean p6, p0, Lbsgamesdkhttp/a/e/n$e;->d:Z

    invoke-direct {p0, p2, p3}, Lbsgamesdkhttp/a/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()V
    .registers 5

    iget-object v0, p0, Lbsgamesdkhttp/a/e/n$e;->e:Lbsgamesdkhttp/a/e/n;

    iget-object v0, v0, Lbsgamesdkhttp/a/e/n;->i:Lbsgamesdkhttp/a/e/h;

    iget v1, p0, Lbsgamesdkhttp/a/e/n$e;->a:I

    iget-object v2, p0, Lbsgamesdkhttp/a/e/n$e;->c:Ljava/util/List;

    iget-boolean v3, p0, Lbsgamesdkhttp/a/e/n$e;->d:Z

    invoke-interface {v0, v1, v2, v3}, Lbsgamesdkhttp/a/e/h;->a(ILjava/util/List;Z)Z

    move-result v0

    if-eqz v0, :cond_1b

    :try_start_10
    iget-object v1, p0, Lbsgamesdkhttp/a/e/n$e;->e:Lbsgamesdkhttp/a/e/n;

    iget-object v1, v1, Lbsgamesdkhttp/a/e/n;->p:Lbsgamesdkhttp/a/e/e;

    iget v2, p0, Lbsgamesdkhttp/a/e/n$e;->a:I

    sget-object v3, Lbsgamesdkhttp/a/e/b;->f:Lbsgamesdkhttp/a/e/b;

    invoke-virtual {v1, v2, v3}, Lbsgamesdkhttp/a/e/e;->a(ILbsgamesdkhttp/a/e/b;)V

    :cond_1b
    if-nez v0, :cond_21

    iget-boolean v0, p0, Lbsgamesdkhttp/a/e/n$e;->d:Z

    if-eqz v0, :cond_32

    :cond_21
    iget-object v1, p0, Lbsgamesdkhttp/a/e/n$e;->e:Lbsgamesdkhttp/a/e/n;

    monitor-enter v1
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_24} :catch_36

    :try_start_24
    iget-object v0, p0, Lbsgamesdkhttp/a/e/n$e;->e:Lbsgamesdkhttp/a/e/n;

    iget-object v0, v0, Lbsgamesdkhttp/a/e/n;->r:Ljava/util/Set;

    iget v2, p0, Lbsgamesdkhttp/a/e/n$e;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    :cond_32
    :goto_32
    return-void

    :catchall_33
    move-exception v0

    monitor-exit v1
    :try_end_35
    .catchall {:try_start_24 .. :try_end_35} :catchall_33

    :try_start_35
    throw v0
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_36} :catch_36

    :catch_36
    move-exception v0

    goto :goto_32
.end method
