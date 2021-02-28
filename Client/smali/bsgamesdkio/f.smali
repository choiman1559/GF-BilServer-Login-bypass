.class public abstract Lbsgamesdkio/f;
.super Ljava/lang/Object;

# interfaces
.implements Lbsgamesdkio/p;


# instance fields
.field private final a:Lbsgamesdkio/p;


# direct methods
.method public constructor <init>(Lbsgamesdkio/p;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "delegate == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iput-object p1, p0, Lbsgamesdkio/f;->a:Lbsgamesdkio/p;

    return-void
.end method


# virtual methods
.method public a(Lbsgamesdkio/c;J)J
    .registers 6

    iget-object v0, p0, Lbsgamesdkio/f;->a:Lbsgamesdkio/p;

    invoke-interface {v0, p1, p2, p3}, Lbsgamesdkio/p;->a(Lbsgamesdkio/c;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public a()Lbsgamesdkio/q;
    .registers 2

    iget-object v0, p0, Lbsgamesdkio/f;->a:Lbsgamesdkio/p;

    invoke-interface {v0}, Lbsgamesdkio/p;->a()Lbsgamesdkio/q;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .registers 2

    iget-object v0, p0, Lbsgamesdkio/f;->a:Lbsgamesdkio/p;

    invoke-interface {v0}, Lbsgamesdkio/p;->close()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbsgamesdkio/f;->a:Lbsgamesdkio/p;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
