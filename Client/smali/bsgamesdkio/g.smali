.class public Lbsgamesdkio/g;
.super Lbsgamesdkio/q;


# instance fields
.field private a:Lbsgamesdkio/q;


# direct methods
.method public constructor <init>(Lbsgamesdkio/q;)V
    .registers 4

    invoke-direct {p0}, Lbsgamesdkio/q;-><init>()V

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "delegate == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iput-object p1, p0, Lbsgamesdkio/g;->a:Lbsgamesdkio/q;

    return-void
.end method


# virtual methods
.method public final a(Lbsgamesdkio/q;)Lbsgamesdkio/g;
    .registers 4

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "delegate == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iput-object p1, p0, Lbsgamesdkio/g;->a:Lbsgamesdkio/q;

    return-object p0
.end method

.method public final a()Lbsgamesdkio/q;
    .registers 2

    iget-object v0, p0, Lbsgamesdkio/g;->a:Lbsgamesdkio/q;

    return-object v0
.end method

.method public a(J)Lbsgamesdkio/q;
    .registers 4

    iget-object v0, p0, Lbsgamesdkio/g;->a:Lbsgamesdkio/q;

    invoke-virtual {v0, p1, p2}, Lbsgamesdkio/q;->a(J)Lbsgamesdkio/q;

    move-result-object v0

    return-object v0
.end method

.method public a(JLjava/util/concurrent/TimeUnit;)Lbsgamesdkio/q;
    .registers 5

    iget-object v0, p0, Lbsgamesdkio/g;->a:Lbsgamesdkio/q;

    invoke-virtual {v0, p1, p2, p3}, Lbsgamesdkio/q;->a(JLjava/util/concurrent/TimeUnit;)Lbsgamesdkio/q;

    move-result-object v0

    return-object v0
.end method

.method public b_()J
    .registers 3

    iget-object v0, p0, Lbsgamesdkio/g;->a:Lbsgamesdkio/q;

    invoke-virtual {v0}, Lbsgamesdkio/q;->b_()J

    move-result-wide v0

    return-wide v0
.end method

.method public c_()Z
    .registers 2

    iget-object v0, p0, Lbsgamesdkio/g;->a:Lbsgamesdkio/q;

    invoke-virtual {v0}, Lbsgamesdkio/q;->c_()Z

    move-result v0

    return v0
.end method

.method public d()J
    .registers 3

    iget-object v0, p0, Lbsgamesdkio/g;->a:Lbsgamesdkio/q;

    invoke-virtual {v0}, Lbsgamesdkio/q;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public d_()Lbsgamesdkio/q;
    .registers 2

    iget-object v0, p0, Lbsgamesdkio/g;->a:Lbsgamesdkio/q;

    invoke-virtual {v0}, Lbsgamesdkio/q;->d_()Lbsgamesdkio/q;

    move-result-object v0

    return-object v0
.end method

.method public e_()Lbsgamesdkio/q;
    .registers 2

    iget-object v0, p0, Lbsgamesdkio/g;->a:Lbsgamesdkio/q;

    invoke-virtual {v0}, Lbsgamesdkio/q;->e_()Lbsgamesdkio/q;

    move-result-object v0

    return-object v0
.end method

.method public g()V
    .registers 2

    iget-object v0, p0, Lbsgamesdkio/g;->a:Lbsgamesdkio/q;

    invoke-virtual {v0}, Lbsgamesdkio/q;->g()V

    return-void
.end method
