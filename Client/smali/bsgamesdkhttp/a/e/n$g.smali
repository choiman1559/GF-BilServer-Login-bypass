.class Lbsgamesdkhttp/a/e/n$g;
.super Lbsgamesdkhttp/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbsgamesdkhttp/a/e/n;->c(ILbsgamesdkhttp/a/e/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic c:Lbsgamesdkhttp/a/e/b;

.field final synthetic d:Lbsgamesdkhttp/a/e/n;


# direct methods
.method varargs constructor <init>(Lbsgamesdkhttp/a/e/n;Ljava/lang/String;[Ljava/lang/Object;ILbsgamesdkhttp/a/e/b;)V
    .registers 6

    iput-object p1, p0, Lbsgamesdkhttp/a/e/n$g;->d:Lbsgamesdkhttp/a/e/n;

    iput p4, p0, Lbsgamesdkhttp/a/e/n$g;->a:I

    iput-object p5, p0, Lbsgamesdkhttp/a/e/n$g;->c:Lbsgamesdkhttp/a/e/b;

    invoke-direct {p0, p2, p3}, Lbsgamesdkhttp/a/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()V
    .registers 4

    iget-object v0, p0, Lbsgamesdkhttp/a/e/n$g;->d:Lbsgamesdkhttp/a/e/n;

    iget-object v0, v0, Lbsgamesdkhttp/a/e/n;->i:Lbsgamesdkhttp/a/e/h;

    iget v1, p0, Lbsgamesdkhttp/a/e/n$g;->a:I

    iget-object v2, p0, Lbsgamesdkhttp/a/e/n$g;->c:Lbsgamesdkhttp/a/e/b;

    invoke-interface {v0, v1, v2}, Lbsgamesdkhttp/a/e/h;->a(ILbsgamesdkhttp/a/e/b;)V

    iget-object v1, p0, Lbsgamesdkhttp/a/e/n$g;->d:Lbsgamesdkhttp/a/e/n;

    monitor-enter v1

    :try_start_e
    iget-object v0, p0, Lbsgamesdkhttp/a/e/n$g;->d:Lbsgamesdkhttp/a/e/n;

    iget-object v0, v0, Lbsgamesdkhttp/a/e/n;->r:Ljava/util/Set;

    iget v2, p0, Lbsgamesdkhttp/a/e/n$g;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_1d
    move-exception v0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_e .. :try_end_1f} :catchall_1d

    throw v0
.end method
