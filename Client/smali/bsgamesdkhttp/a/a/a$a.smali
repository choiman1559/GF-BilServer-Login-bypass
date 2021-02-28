.class Lbsgamesdkhttp/a/a/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lbsgamesdkio/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbsgamesdkhttp/a/a/a;->a(Lbsgamesdkhttp/a/a/b;Lbsgamesdkhttp/y;)Lbsgamesdkhttp/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lbsgamesdkio/e;

.field final synthetic c:Lbsgamesdkhttp/a/a/b;

.field final synthetic d:Lbsgamesdkio/d;

.field final synthetic e:Lbsgamesdkhttp/a/a/a;


# direct methods
.method constructor <init>(Lbsgamesdkhttp/a/a/a;Lbsgamesdkio/e;Lbsgamesdkhttp/a/a/b;Lbsgamesdkio/d;)V
    .registers 5

    iput-object p1, p0, Lbsgamesdkhttp/a/a/a$a;->e:Lbsgamesdkhttp/a/a/a;

    iput-object p2, p0, Lbsgamesdkhttp/a/a/a$a;->b:Lbsgamesdkio/e;

    iput-object p3, p0, Lbsgamesdkhttp/a/a/a$a;->c:Lbsgamesdkhttp/a/a/b;

    iput-object p4, p0, Lbsgamesdkhttp/a/a/a$a;->d:Lbsgamesdkio/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbsgamesdkio/c;J)J
    .registers 10

    const-wide/16 v0, -0x1

    const/4 v3, 0x1

    :try_start_3
    iget-object v2, p0, Lbsgamesdkhttp/a/a/a$a;->b:Lbsgamesdkio/e;

    invoke-interface {v2, p1, p2, p3}, Lbsgamesdkio/e;->a(Lbsgamesdkio/c;J)J
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_8} :catch_1a

    move-result-wide v4

    cmp-long v2, v4, v0

    if-nez v2, :cond_27

    iget-boolean v2, p0, Lbsgamesdkhttp/a/a/a$a;->a:Z

    if-nez v2, :cond_18

    iput-boolean v3, p0, Lbsgamesdkhttp/a/a/a$a;->a:Z

    iget-object v2, p0, Lbsgamesdkhttp/a/a/a$a;->d:Lbsgamesdkio/d;

    invoke-interface {v2}, Lbsgamesdkio/d;->close()V

    :cond_18
    move-wide v4, v0

    :goto_19
    return-wide v4

    :catch_1a
    move-exception v0

    iget-boolean v1, p0, Lbsgamesdkhttp/a/a/a$a;->a:Z

    if-nez v1, :cond_26

    iput-boolean v3, p0, Lbsgamesdkhttp/a/a/a$a;->a:Z

    iget-object v1, p0, Lbsgamesdkhttp/a/a/a$a;->c:Lbsgamesdkhttp/a/a/b;

    invoke-interface {v1}, Lbsgamesdkhttp/a/a/b;->b()V

    :cond_26
    throw v0

    :cond_27
    iget-object v0, p0, Lbsgamesdkhttp/a/a/a$a;->d:Lbsgamesdkio/d;

    invoke-interface {v0}, Lbsgamesdkio/d;->c()Lbsgamesdkio/c;

    move-result-object v1

    invoke-virtual {p1}, Lbsgamesdkio/c;->b()J

    move-result-wide v2

    sub-long/2addr v2, v4

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lbsgamesdkio/c;->a(Lbsgamesdkio/c;JJ)Lbsgamesdkio/c;

    iget-object v0, p0, Lbsgamesdkhttp/a/a/a$a;->d:Lbsgamesdkio/d;

    invoke-interface {v0}, Lbsgamesdkio/d;->t()Lbsgamesdkio/d;

    goto :goto_19
.end method

.method public a()Lbsgamesdkio/q;
    .registers 2

    iget-object v0, p0, Lbsgamesdkhttp/a/a/a$a;->b:Lbsgamesdkio/e;

    invoke-interface {v0}, Lbsgamesdkio/e;->a()Lbsgamesdkio/q;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .registers 3

    iget-boolean v0, p0, Lbsgamesdkhttp/a/a/a$a;->a:Z

    if-nez v0, :cond_16

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0, v1}, Lbsgamesdkhttp/a/c;->a(Lbsgamesdkio/p;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbsgamesdkhttp/a/a/a$a;->a:Z

    iget-object v0, p0, Lbsgamesdkhttp/a/a/a$a;->c:Lbsgamesdkhttp/a/a/b;

    invoke-interface {v0}, Lbsgamesdkhttp/a/a/b;->b()V

    :cond_16
    iget-object v0, p0, Lbsgamesdkhttp/a/a/a$a;->b:Lbsgamesdkio/e;

    invoke-interface {v0}, Lbsgamesdkio/e;->close()V

    return-void
.end method
