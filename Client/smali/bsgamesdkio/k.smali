.class final Lbsgamesdkio/k;
.super Ljava/lang/Object;

# interfaces
.implements Lbsgamesdkio/d;


# instance fields
.field public final a:Lbsgamesdkio/c;

.field public final b:Lbsgamesdkio/o;

.field c:Z


# direct methods
.method constructor <init>(Lbsgamesdkio/o;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lbsgamesdkio/c;

    invoke-direct {v0}, Lbsgamesdkio/c;-><init>()V

    iput-object v0, p0, Lbsgamesdkio/k;->a:Lbsgamesdkio/c;

    if-nez p1, :cond_14

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    iput-object p1, p0, Lbsgamesdkio/k;->b:Lbsgamesdkio/o;

    return-void
.end method


# virtual methods
.method public a()Lbsgamesdkio/q;
    .registers 2

    iget-object v0, p0, Lbsgamesdkio/k;->b:Lbsgamesdkio/o;

    invoke-interface {v0}, Lbsgamesdkio/o;->a()Lbsgamesdkio/q;

    move-result-object v0

    return-object v0
.end method

.method public a_(Lbsgamesdkio/c;J)V
    .registers 6

    iget-boolean v0, p0, Lbsgamesdkio/k;->c:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lbsgamesdkio/k;->a:Lbsgamesdkio/c;

    invoke-virtual {v0, p1, p2, p3}, Lbsgamesdkio/c;->a_(Lbsgamesdkio/c;J)V

    invoke-virtual {p0}, Lbsgamesdkio/k;->t()Lbsgamesdkio/d;

    return-void
.end method

.method public b(Ljava/lang/String;)Lbsgamesdkio/d;
    .registers 4

    iget-boolean v0, p0, Lbsgamesdkio/k;->c:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lbsgamesdkio/k;->a:Lbsgamesdkio/c;

    invoke-virtual {v0, p1}, Lbsgamesdkio/c;->a(Ljava/lang/String;)Lbsgamesdkio/c;

    invoke-virtual {p0}, Lbsgamesdkio/k;->t()Lbsgamesdkio/d;

    move-result-object v0

    return-object v0
.end method

.method public c()Lbsgamesdkio/c;
    .registers 2

    iget-object v0, p0, Lbsgamesdkio/k;->a:Lbsgamesdkio/c;

    return-object v0
.end method

.method public c([B)Lbsgamesdkio/d;
    .registers 4

    iget-boolean v0, p0, Lbsgamesdkio/k;->c:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lbsgamesdkio/k;->a:Lbsgamesdkio/c;

    invoke-virtual {v0, p1}, Lbsgamesdkio/c;->b([B)Lbsgamesdkio/c;

    invoke-virtual {p0}, Lbsgamesdkio/k;->t()Lbsgamesdkio/d;

    move-result-object v0

    return-object v0
.end method

.method public c([BII)Lbsgamesdkio/d;
    .registers 6

    iget-boolean v0, p0, Lbsgamesdkio/k;->c:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lbsgamesdkio/k;->a:Lbsgamesdkio/c;

    invoke-virtual {v0, p1, p2, p3}, Lbsgamesdkio/c;->b([BII)Lbsgamesdkio/c;

    invoke-virtual {p0}, Lbsgamesdkio/k;->t()Lbsgamesdkio/d;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .registers 7

    iget-boolean v0, p0, Lbsgamesdkio/k;->c:Z

    if-eqz v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x0

    :try_start_6
    iget-object v1, p0, Lbsgamesdkio/k;->a:Lbsgamesdkio/c;

    iget-wide v2, v1, Lbsgamesdkio/c;->b:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1b

    iget-object v1, p0, Lbsgamesdkio/k;->b:Lbsgamesdkio/o;

    iget-object v2, p0, Lbsgamesdkio/k;->a:Lbsgamesdkio/c;

    iget-object v3, p0, Lbsgamesdkio/k;->a:Lbsgamesdkio/c;

    iget-wide v4, v3, Lbsgamesdkio/c;->b:J

    invoke-interface {v1, v2, v4, v5}, Lbsgamesdkio/o;->a_(Lbsgamesdkio/c;J)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_1b} :catch_2e

    :cond_1b
    :goto_1b
    :try_start_1b
    iget-object v1, p0, Lbsgamesdkio/k;->b:Lbsgamesdkio/o;

    invoke-interface {v1}, Lbsgamesdkio/o;->close()V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_20} :catch_29

    :cond_20
    :goto_20
    const/4 v1, 0x1

    iput-boolean v1, p0, Lbsgamesdkio/k;->c:Z

    if-eqz v0, :cond_4

    invoke-static {v0}, Lbsgamesdkio/r;->a(Ljava/lang/Throwable;)V

    goto :goto_4

    :catch_29
    move-exception v1

    if-nez v0, :cond_20

    move-object v0, v1

    goto :goto_20

    :catch_2e
    move-exception v0

    goto :goto_1b
.end method

.method public flush()V
    .registers 5

    iget-boolean v0, p0, Lbsgamesdkio/k;->c:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lbsgamesdkio/k;->a:Lbsgamesdkio/c;

    iget-wide v0, v0, Lbsgamesdkio/c;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_21

    iget-object v0, p0, Lbsgamesdkio/k;->b:Lbsgamesdkio/o;

    iget-object v1, p0, Lbsgamesdkio/k;->a:Lbsgamesdkio/c;

    iget-object v2, p0, Lbsgamesdkio/k;->a:Lbsgamesdkio/c;

    iget-wide v2, v2, Lbsgamesdkio/c;->b:J

    invoke-interface {v0, v1, v2, v3}, Lbsgamesdkio/o;->a_(Lbsgamesdkio/c;J)V

    :cond_21
    iget-object v0, p0, Lbsgamesdkio/k;->b:Lbsgamesdkio/o;

    invoke-interface {v0}, Lbsgamesdkio/o;->flush()V

    return-void
.end method

.method public g(I)Lbsgamesdkio/d;
    .registers 4

    iget-boolean v0, p0, Lbsgamesdkio/k;->c:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lbsgamesdkio/k;->a:Lbsgamesdkio/c;

    invoke-virtual {v0, p1}, Lbsgamesdkio/c;->d(I)Lbsgamesdkio/c;

    invoke-virtual {p0}, Lbsgamesdkio/k;->t()Lbsgamesdkio/d;

    move-result-object v0

    return-object v0
.end method

.method public h(I)Lbsgamesdkio/d;
    .registers 4

    iget-boolean v0, p0, Lbsgamesdkio/k;->c:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lbsgamesdkio/k;->a:Lbsgamesdkio/c;

    invoke-virtual {v0, p1}, Lbsgamesdkio/c;->c(I)Lbsgamesdkio/c;

    invoke-virtual {p0}, Lbsgamesdkio/k;->t()Lbsgamesdkio/d;

    move-result-object v0

    return-object v0
.end method

.method public i(I)Lbsgamesdkio/d;
    .registers 4

    iget-boolean v0, p0, Lbsgamesdkio/k;->c:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lbsgamesdkio/k;->a:Lbsgamesdkio/c;

    invoke-virtual {v0, p1}, Lbsgamesdkio/c;->b(I)Lbsgamesdkio/c;

    invoke-virtual {p0}, Lbsgamesdkio/k;->t()Lbsgamesdkio/d;

    move-result-object v0

    return-object v0
.end method

.method public j(J)Lbsgamesdkio/d;
    .registers 6

    iget-boolean v0, p0, Lbsgamesdkio/k;->c:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lbsgamesdkio/k;->a:Lbsgamesdkio/c;

    invoke-virtual {v0, p1, p2}, Lbsgamesdkio/c;->i(J)Lbsgamesdkio/c;

    invoke-virtual {p0}, Lbsgamesdkio/k;->t()Lbsgamesdkio/d;

    move-result-object v0

    return-object v0
.end method

.method public k(J)Lbsgamesdkio/d;
    .registers 6

    iget-boolean v0, p0, Lbsgamesdkio/k;->c:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lbsgamesdkio/k;->a:Lbsgamesdkio/c;

    invoke-virtual {v0, p1, p2}, Lbsgamesdkio/c;->h(J)Lbsgamesdkio/c;

    invoke-virtual {p0}, Lbsgamesdkio/k;->t()Lbsgamesdkio/d;

    move-result-object v0

    return-object v0
.end method

.method public t()Lbsgamesdkio/d;
    .registers 5

    iget-boolean v0, p0, Lbsgamesdkio/k;->c:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lbsgamesdkio/k;->a:Lbsgamesdkio/c;

    invoke-virtual {v0}, Lbsgamesdkio/c;->f()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1f

    iget-object v2, p0, Lbsgamesdkio/k;->b:Lbsgamesdkio/o;

    iget-object v3, p0, Lbsgamesdkio/k;->a:Lbsgamesdkio/c;

    invoke-interface {v2, v3, v0, v1}, Lbsgamesdkio/o;->a_(Lbsgamesdkio/c;J)V

    :cond_1f
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buffer("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbsgamesdkio/k;->b:Lbsgamesdkio/o;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
