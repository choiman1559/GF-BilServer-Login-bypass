.class Lbsgamesdkhttp/a/e/n$d;
.super Lbsgamesdkhttp/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbsgamesdkhttp/a/e/n;->a(ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Lbsgamesdkhttp/a/e/n;


# direct methods
.method varargs constructor <init>(Lbsgamesdkhttp/a/e/n;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V
    .registers 6

    iput-object p1, p0, Lbsgamesdkhttp/a/e/n$d;->d:Lbsgamesdkhttp/a/e/n;

    iput p4, p0, Lbsgamesdkhttp/a/e/n$d;->a:I

    iput-object p5, p0, Lbsgamesdkhttp/a/e/n$d;->c:Ljava/util/List;

    invoke-direct {p0, p2, p3}, Lbsgamesdkhttp/a/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()V
    .registers 4

    iget-object v0, p0, Lbsgamesdkhttp/a/e/n$d;->d:Lbsgamesdkhttp/a/e/n;

    iget-object v0, v0, Lbsgamesdkhttp/a/e/n;->i:Lbsgamesdkhttp/a/e/h;

    iget v1, p0, Lbsgamesdkhttp/a/e/n$d;->a:I

    iget-object v2, p0, Lbsgamesdkhttp/a/e/n$d;->c:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lbsgamesdkhttp/a/e/h;->a(ILjava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2a

    :try_start_e
    iget-object v0, p0, Lbsgamesdkhttp/a/e/n$d;->d:Lbsgamesdkhttp/a/e/n;

    iget-object v0, v0, Lbsgamesdkhttp/a/e/n;->p:Lbsgamesdkhttp/a/e/e;

    iget v1, p0, Lbsgamesdkhttp/a/e/n$d;->a:I

    sget-object v2, Lbsgamesdkhttp/a/e/b;->f:Lbsgamesdkhttp/a/e/b;

    invoke-virtual {v0, v1, v2}, Lbsgamesdkhttp/a/e/e;->a(ILbsgamesdkhttp/a/e/b;)V

    iget-object v1, p0, Lbsgamesdkhttp/a/e/n$d;->d:Lbsgamesdkhttp/a/e/n;

    monitor-enter v1
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_1c} :catch_2e

    :try_start_1c
    iget-object v0, p0, Lbsgamesdkhttp/a/e/n$d;->d:Lbsgamesdkhttp/a/e/n;

    iget-object v0, v0, Lbsgamesdkhttp/a/e/n;->r:Ljava/util/Set;

    iget v2, p0, Lbsgamesdkhttp/a/e/n$d;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    :cond_2a
    :goto_2a
    return-void

    :catchall_2b
    move-exception v0

    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_1c .. :try_end_2d} :catchall_2b

    :try_start_2d
    throw v0
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_2e} :catch_2e

    :catch_2e
    move-exception v0

    goto :goto_2a
.end method
