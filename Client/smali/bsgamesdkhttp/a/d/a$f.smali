.class Lbsgamesdkhttp/a/d/a$f;
.super Lbsgamesdkhttp/a/d/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbsgamesdkhttp/a/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field final synthetic d:Lbsgamesdkhttp/a/d/a;

.field private e:Z


# direct methods
.method constructor <init>(Lbsgamesdkhttp/a/d/a;)V
    .registers 3

    iput-object p1, p0, Lbsgamesdkhttp/a/d/a$f;->d:Lbsgamesdkhttp/a/d/a;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lbsgamesdkhttp/a/d/a$a;-><init>(Lbsgamesdkhttp/a/d/a;Lbsgamesdkhttp/a/d/a$1;)V

    return-void
.end method


# virtual methods
.method public a(Lbsgamesdkio/c;J)J
    .registers 10

    const/4 v5, 0x1

    const-wide/16 v0, -0x1

    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-gez v2, :cond_22

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    iget-boolean v2, p0, Lbsgamesdkhttp/a/d/a$f;->b:Z

    if-eqz v2, :cond_2e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2e
    iget-boolean v2, p0, Lbsgamesdkhttp/a/d/a$f;->e:Z

    if-eqz v2, :cond_33

    :goto_32
    return-wide v0

    :cond_33
    iget-object v2, p0, Lbsgamesdkhttp/a/d/a$f;->d:Lbsgamesdkhttp/a/d/a;

    iget-object v2, v2, Lbsgamesdkhttp/a/d/a;->c:Lbsgamesdkio/e;

    invoke-interface {v2, p1, p2, p3}, Lbsgamesdkio/e;->a(Lbsgamesdkio/c;J)J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-nez v4, :cond_45

    iput-boolean v5, p0, Lbsgamesdkhttp/a/d/a$f;->e:Z

    invoke-virtual {p0, v5}, Lbsgamesdkhttp/a/d/a$f;->a(Z)V

    goto :goto_32

    :cond_45
    move-wide v0, v2

    goto :goto_32
.end method

.method public close()V
    .registers 2

    iget-boolean v0, p0, Lbsgamesdkhttp/a/d/a$f;->b:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-boolean v0, p0, Lbsgamesdkhttp/a/d/a$f;->e:Z

    if-nez v0, :cond_d

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbsgamesdkhttp/a/d/a$f;->a(Z)V

    :cond_d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbsgamesdkhttp/a/d/a$f;->b:Z

    goto :goto_4
.end method
