.class final Lbsgamesdkhttp/a/d/a$d;
.super Ljava/lang/Object;

# interfaces
.implements Lbsgamesdkio/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbsgamesdkhttp/a/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lbsgamesdkhttp/a/d/a;

.field private final b:Lbsgamesdkio/g;

.field private c:Z

.field private d:J


# direct methods
.method constructor <init>(Lbsgamesdkhttp/a/d/a;J)V
    .registers 6

    iput-object p1, p0, Lbsgamesdkhttp/a/d/a$d;->a:Lbsgamesdkhttp/a/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lbsgamesdkio/g;

    iget-object v1, p0, Lbsgamesdkhttp/a/d/a$d;->a:Lbsgamesdkhttp/a/d/a;

    iget-object v1, v1, Lbsgamesdkhttp/a/d/a;->d:Lbsgamesdkio/d;

    invoke-interface {v1}, Lbsgamesdkio/d;->a()Lbsgamesdkio/q;

    move-result-object v1

    invoke-direct {v0, v1}, Lbsgamesdkio/g;-><init>(Lbsgamesdkio/q;)V

    iput-object v0, p0, Lbsgamesdkhttp/a/d/a$d;->b:Lbsgamesdkio/g;

    iput-wide p2, p0, Lbsgamesdkhttp/a/d/a$d;->d:J

    return-void
.end method


# virtual methods
.method public a()Lbsgamesdkio/q;
    .registers 2

    iget-object v0, p0, Lbsgamesdkhttp/a/d/a$d;->b:Lbsgamesdkio/g;

    return-object v0
.end method

.method public a_(Lbsgamesdkio/c;J)V
    .registers 10

    iget-boolean v0, p0, Lbsgamesdkhttp/a/d/a$d;->c:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    invoke-virtual {p1}, Lbsgamesdkio/c;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lbsgamesdkhttp/a/c;->a(JJJ)V

    iget-wide v0, p0, Lbsgamesdkhttp/a/d/a$d;->d:J

    cmp-long v0, p2, v0

    if-lez v0, :cond_41

    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lbsgamesdkhttp/a/d/a$d;->d:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes but received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_41
    iget-object v0, p0, Lbsgamesdkhttp/a/d/a$d;->a:Lbsgamesdkhttp/a/d/a;

    iget-object v0, v0, Lbsgamesdkhttp/a/d/a;->d:Lbsgamesdkio/d;

    invoke-interface {v0, p1, p2, p3}, Lbsgamesdkio/d;->a_(Lbsgamesdkio/c;J)V

    iget-wide v0, p0, Lbsgamesdkhttp/a/d/a$d;->d:J

    sub-long/2addr v0, p2

    iput-wide v0, p0, Lbsgamesdkhttp/a/d/a$d;->d:J

    return-void
.end method

.method public close()V
    .registers 5

    iget-boolean v0, p0, Lbsgamesdkhttp/a/d/a$d;->c:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbsgamesdkhttp/a/d/a$d;->c:Z

    iget-wide v0, p0, Lbsgamesdkhttp/a/d/a$d;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_18

    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "unexpected end of stream"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    iget-object v0, p0, Lbsgamesdkhttp/a/d/a$d;->a:Lbsgamesdkhttp/a/d/a;

    iget-object v1, p0, Lbsgamesdkhttp/a/d/a$d;->b:Lbsgamesdkio/g;

    invoke-virtual {v0, v1}, Lbsgamesdkhttp/a/d/a;->a(Lbsgamesdkio/g;)V

    iget-object v0, p0, Lbsgamesdkhttp/a/d/a$d;->a:Lbsgamesdkhttp/a/d/a;

    const/4 v1, 0x3

    iput v1, v0, Lbsgamesdkhttp/a/d/a;->e:I

    goto :goto_4
.end method

.method public flush()V
    .registers 2

    iget-boolean v0, p0, Lbsgamesdkhttp/a/d/a$d;->c:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lbsgamesdkhttp/a/d/a$d;->a:Lbsgamesdkhttp/a/d/a;

    iget-object v0, v0, Lbsgamesdkhttp/a/d/a;->d:Lbsgamesdkio/d;

    invoke-interface {v0}, Lbsgamesdkio/d;->flush()V

    goto :goto_4
.end method
