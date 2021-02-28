.class Lbsgamesdkhttp/a/d/a$c;
.super Lbsgamesdkhttp/a/d/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbsgamesdkhttp/a/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic d:Lbsgamesdkhttp/a/d/a;

.field private final e:Lbsgamesdkhttp/HttpUrl;

.field private f:J

.field private g:Z


# direct methods
.method constructor <init>(Lbsgamesdkhttp/a/d/a;Lbsgamesdkhttp/HttpUrl;)V
    .registers 5

    iput-object p1, p0, Lbsgamesdkhttp/a/d/a$c;->d:Lbsgamesdkhttp/a/d/a;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lbsgamesdkhttp/a/d/a$a;-><init>(Lbsgamesdkhttp/a/d/a;Lbsgamesdkhttp/a/d/a$1;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lbsgamesdkhttp/a/d/a$c;->f:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbsgamesdkhttp/a/d/a$c;->g:Z

    iput-object p2, p0, Lbsgamesdkhttp/a/d/a$c;->e:Lbsgamesdkhttp/HttpUrl;

    return-void
.end method

.method private b()V
    .registers 7

    const-wide/16 v4, 0x0

    iget-wide v0, p0, Lbsgamesdkhttp/a/d/a$c;->f:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_11

    iget-object v0, p0, Lbsgamesdkhttp/a/d/a$c;->d:Lbsgamesdkhttp/a/d/a;

    iget-object v0, v0, Lbsgamesdkhttp/a/d/a;->c:Lbsgamesdkio/e;

    invoke-interface {v0}, Lbsgamesdkio/e;->o()Ljava/lang/String;

    :cond_11
    :try_start_11
    iget-object v0, p0, Lbsgamesdkhttp/a/d/a$c;->d:Lbsgamesdkhttp/a/d/a;

    iget-object v0, v0, Lbsgamesdkhttp/a/d/a;->c:Lbsgamesdkio/e;

    invoke-interface {v0}, Lbsgamesdkio/e;->l()J

    move-result-wide v0

    iput-wide v0, p0, Lbsgamesdkhttp/a/d/a$c;->f:J

    iget-object v0, p0, Lbsgamesdkhttp/a/d/a$c;->d:Lbsgamesdkhttp/a/d/a;

    iget-object v0, v0, Lbsgamesdkhttp/a/d/a;->c:Lbsgamesdkio/e;

    invoke-interface {v0}, Lbsgamesdkio/e;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-wide v2, p0, Lbsgamesdkhttp/a/d/a$c;->f:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_3b

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6b

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6b

    :cond_3b
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected chunk size and optional extensions but was \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lbsgamesdkhttp/a/d/a$c;->f:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_60
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_60} :catch_60

    :catch_60
    move-exception v0

    new-instance v1, Ljava/net/ProtocolException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6b
    iget-wide v0, p0, Lbsgamesdkhttp/a/d/a$c;->f:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_8b

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbsgamesdkhttp/a/d/a$c;->g:Z

    iget-object v0, p0, Lbsgamesdkhttp/a/d/a$c;->d:Lbsgamesdkhttp/a/d/a;

    iget-object v0, v0, Lbsgamesdkhttp/a/d/a;->a:Lbsgamesdkhttp/u;

    invoke-virtual {v0}, Lbsgamesdkhttp/u;->f()Lbsgamesdkhttp/m;

    move-result-object v0

    iget-object v1, p0, Lbsgamesdkhttp/a/d/a$c;->e:Lbsgamesdkhttp/HttpUrl;

    iget-object v2, p0, Lbsgamesdkhttp/a/d/a$c;->d:Lbsgamesdkhttp/a/d/a;

    invoke-virtual {v2}, Lbsgamesdkhttp/a/d/a;->c()Lbsgamesdkhttp/r;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lbsgamesdkhttp/a/c/e;->a(Lbsgamesdkhttp/m;Lbsgamesdkhttp/HttpUrl;Lbsgamesdkhttp/r;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lbsgamesdkhttp/a/d/a$c;->a(Z)V

    :cond_8b
    return-void
.end method


# virtual methods
.method public a(Lbsgamesdkio/c;J)J
    .registers 10

    const-wide/16 v4, 0x0

    const-wide/16 v0, -0x1

    cmp-long v2, p2, v4

    if-gez v2, :cond_21

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

    :cond_21
    iget-boolean v2, p0, Lbsgamesdkhttp/a/d/a$c;->b:Z

    if-eqz v2, :cond_2d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2d
    iget-boolean v2, p0, Lbsgamesdkhttp/a/d/a$c;->g:Z

    if-nez v2, :cond_32

    :cond_31
    :goto_31
    return-wide v0

    :cond_32
    iget-wide v2, p0, Lbsgamesdkhttp/a/d/a$c;->f:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3e

    iget-wide v2, p0, Lbsgamesdkhttp/a/d/a$c;->f:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_45

    :cond_3e
    invoke-direct {p0}, Lbsgamesdkhttp/a/d/a$c;->b()V

    iget-boolean v2, p0, Lbsgamesdkhttp/a/d/a$c;->g:Z

    if-eqz v2, :cond_31

    :cond_45
    iget-object v2, p0, Lbsgamesdkhttp/a/d/a$c;->d:Lbsgamesdkhttp/a/d/a;

    iget-object v2, v2, Lbsgamesdkhttp/a/d/a;->c:Lbsgamesdkio/e;

    iget-wide v4, p0, Lbsgamesdkhttp/a/d/a$c;->f:J

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-interface {v2, p1, v4, v5}, Lbsgamesdkio/e;->a(Lbsgamesdkio/c;J)J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-nez v0, :cond_63

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbsgamesdkhttp/a/d/a$c;->a(Z)V

    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "unexpected end of stream"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_63
    iget-wide v0, p0, Lbsgamesdkhttp/a/d/a$c;->f:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lbsgamesdkhttp/a/d/a$c;->f:J

    move-wide v0, v2

    goto :goto_31
.end method

.method public close()V
    .registers 3

    iget-boolean v0, p0, Lbsgamesdkhttp/a/d/a$c;->b:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-boolean v0, p0, Lbsgamesdkhttp/a/d/a$c;->g:Z

    if-eqz v0, :cond_17

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0, v1}, Lbsgamesdkhttp/a/c;->a(Lbsgamesdkio/p;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_17

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbsgamesdkhttp/a/d/a$c;->a(Z)V

    :cond_17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbsgamesdkhttp/a/d/a$c;->b:Z

    goto :goto_4
.end method
