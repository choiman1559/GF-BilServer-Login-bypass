.class public final Lbsgamesdkhttp/y;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbsgamesdkhttp/y$a;
    }
.end annotation


# instance fields
.field final a:Lbsgamesdkhttp/w;

.field final b:Lbsgamesdkhttp/Protocol;

.field final c:I

.field final d:Ljava/lang/String;

.field final e:Lbsgamesdkhttp/q;

.field final f:Lbsgamesdkhttp/r;

.field final g:Lbsgamesdkhttp/z;

.field final h:Lbsgamesdkhttp/y;

.field final i:Lbsgamesdkhttp/y;

.field final j:Lbsgamesdkhttp/y;

.field final k:J

.field final l:J

.field private volatile m:Lbsgamesdkhttp/d;


# direct methods
.method constructor <init>(Lbsgamesdkhttp/y$a;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lbsgamesdkhttp/y$a;->a:Lbsgamesdkhttp/w;

    iput-object v0, p0, Lbsgamesdkhttp/y;->a:Lbsgamesdkhttp/w;

    iget-object v0, p1, Lbsgamesdkhttp/y$a;->b:Lbsgamesdkhttp/Protocol;

    iput-object v0, p0, Lbsgamesdkhttp/y;->b:Lbsgamesdkhttp/Protocol;

    iget v0, p1, Lbsgamesdkhttp/y$a;->c:I

    iput v0, p0, Lbsgamesdkhttp/y;->c:I

    iget-object v0, p1, Lbsgamesdkhttp/y$a;->d:Ljava/lang/String;

    iput-object v0, p0, Lbsgamesdkhttp/y;->d:Ljava/lang/String;

    iget-object v0, p1, Lbsgamesdkhttp/y$a;->e:Lbsgamesdkhttp/q;

    iput-object v0, p0, Lbsgamesdkhttp/y;->e:Lbsgamesdkhttp/q;

    iget-object v0, p1, Lbsgamesdkhttp/y$a;->f:Lbsgamesdkhttp/r$a;

    invoke-virtual {v0}, Lbsgamesdkhttp/r$a;->a()Lbsgamesdkhttp/r;

    move-result-object v0

    iput-object v0, p0, Lbsgamesdkhttp/y;->f:Lbsgamesdkhttp/r;

    iget-object v0, p1, Lbsgamesdkhttp/y$a;->g:Lbsgamesdkhttp/z;

    iput-object v0, p0, Lbsgamesdkhttp/y;->g:Lbsgamesdkhttp/z;

    iget-object v0, p1, Lbsgamesdkhttp/y$a;->h:Lbsgamesdkhttp/y;

    iput-object v0, p0, Lbsgamesdkhttp/y;->h:Lbsgamesdkhttp/y;

    iget-object v0, p1, Lbsgamesdkhttp/y$a;->i:Lbsgamesdkhttp/y;

    iput-object v0, p0, Lbsgamesdkhttp/y;->i:Lbsgamesdkhttp/y;

    iget-object v0, p1, Lbsgamesdkhttp/y$a;->j:Lbsgamesdkhttp/y;

    iput-object v0, p0, Lbsgamesdkhttp/y;->j:Lbsgamesdkhttp/y;

    iget-wide v0, p1, Lbsgamesdkhttp/y$a;->k:J

    iput-wide v0, p0, Lbsgamesdkhttp/y;->k:J

    iget-wide v0, p1, Lbsgamesdkhttp/y$a;->l:J

    iput-wide v0, p0, Lbsgamesdkhttp/y;->l:J

    return-void
.end method


# virtual methods
.method public a()Lbsgamesdkhttp/w;
    .registers 2

    iget-object v0, p0, Lbsgamesdkhttp/y;->a:Lbsgamesdkhttp/w;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lbsgamesdkhttp/y;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lbsgamesdkhttp/y;->f:Lbsgamesdkhttp/r;

    invoke-virtual {v0, p1}, Lbsgamesdkhttp/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    move-object p2, v0

    :cond_9
    return-object p2
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lbsgamesdkhttp/y;->c:I

    return v0
.end method

.method public c()Z
    .registers 3

    iget v0, p0, Lbsgamesdkhttp/y;->c:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_e

    iget v0, p0, Lbsgamesdkhttp/y;->c:I

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public close()V
    .registers 2

    iget-object v0, p0, Lbsgamesdkhttp/y;->g:Lbsgamesdkhttp/z;

    invoke-virtual {v0}, Lbsgamesdkhttp/z;->close()V

    return-void
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lbsgamesdkhttp/y;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Lbsgamesdkhttp/q;
    .registers 2

    iget-object v0, p0, Lbsgamesdkhttp/y;->e:Lbsgamesdkhttp/q;

    return-object v0
.end method

.method public f()Lbsgamesdkhttp/r;
    .registers 2

    iget-object v0, p0, Lbsgamesdkhttp/y;->f:Lbsgamesdkhttp/r;

    return-object v0
.end method

.method public g()Lbsgamesdkhttp/z;
    .registers 2

    iget-object v0, p0, Lbsgamesdkhttp/y;->g:Lbsgamesdkhttp/z;

    return-object v0
.end method

.method public h()Lbsgamesdkhttp/y$a;
    .registers 2

    new-instance v0, Lbsgamesdkhttp/y$a;

    invoke-direct {v0, p0}, Lbsgamesdkhttp/y$a;-><init>(Lbsgamesdkhttp/y;)V

    return-object v0
.end method

.method public i()Lbsgamesdkhttp/d;
    .registers 2

    iget-object v0, p0, Lbsgamesdkhttp/y;->m:Lbsgamesdkhttp/d;

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    iget-object v0, p0, Lbsgamesdkhttp/y;->f:Lbsgamesdkhttp/r;

    invoke-static {v0}, Lbsgamesdkhttp/d;->a(Lbsgamesdkhttp/r;)Lbsgamesdkhttp/d;

    move-result-object v0

    iput-object v0, p0, Lbsgamesdkhttp/y;->m:Lbsgamesdkhttp/d;

    goto :goto_4
.end method

.method public j()J
    .registers 3

    iget-wide v0, p0, Lbsgamesdkhttp/y;->k:J

    return-wide v0
.end method

.method public k()J
    .registers 3

    iget-wide v0, p0, Lbsgamesdkhttp/y;->l:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Response{protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbsgamesdkhttp/y;->b:Lbsgamesdkhttp/Protocol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lbsgamesdkhttp/y;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbsgamesdkhttp/y;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbsgamesdkhttp/y;->a:Lbsgamesdkhttp/w;

    invoke-virtual {v1}, Lbsgamesdkhttp/w;->a()Lbsgamesdkhttp/HttpUrl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
