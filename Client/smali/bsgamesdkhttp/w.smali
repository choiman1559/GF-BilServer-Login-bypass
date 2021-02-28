.class public final Lbsgamesdkhttp/w;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbsgamesdkhttp/w$a;
    }
.end annotation


# instance fields
.field final a:Lbsgamesdkhttp/HttpUrl;

.field final b:Ljava/lang/String;

.field final c:Lbsgamesdkhttp/r;

.field final d:Lbsgamesdkhttp/x;

.field final e:Ljava/lang/Object;

.field private volatile f:Lbsgamesdkhttp/d;


# direct methods
.method constructor <init>(Lbsgamesdkhttp/w$a;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lbsgamesdkhttp/w$a;->a:Lbsgamesdkhttp/HttpUrl;

    iput-object v0, p0, Lbsgamesdkhttp/w;->a:Lbsgamesdkhttp/HttpUrl;

    iget-object v0, p1, Lbsgamesdkhttp/w$a;->b:Ljava/lang/String;

    iput-object v0, p0, Lbsgamesdkhttp/w;->b:Ljava/lang/String;

    iget-object v0, p1, Lbsgamesdkhttp/w$a;->c:Lbsgamesdkhttp/r$a;

    invoke-virtual {v0}, Lbsgamesdkhttp/r$a;->a()Lbsgamesdkhttp/r;

    move-result-object v0

    iput-object v0, p0, Lbsgamesdkhttp/w;->c:Lbsgamesdkhttp/r;

    iget-object v0, p1, Lbsgamesdkhttp/w$a;->d:Lbsgamesdkhttp/x;

    iput-object v0, p0, Lbsgamesdkhttp/w;->d:Lbsgamesdkhttp/x;

    iget-object v0, p1, Lbsgamesdkhttp/w$a;->e:Ljava/lang/Object;

    if-eqz v0, :cond_20

    iget-object v0, p1, Lbsgamesdkhttp/w$a;->e:Ljava/lang/Object;

    :goto_1d
    iput-object v0, p0, Lbsgamesdkhttp/w;->e:Ljava/lang/Object;

    return-void

    :cond_20
    move-object v0, p0

    goto :goto_1d
.end method


# virtual methods
.method public a()Lbsgamesdkhttp/HttpUrl;
    .registers 2

    iget-object v0, p0, Lbsgamesdkhttp/w;->a:Lbsgamesdkhttp/HttpUrl;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lbsgamesdkhttp/w;->c:Lbsgamesdkhttp/r;

    invoke-virtual {v0, p1}, Lbsgamesdkhttp/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lbsgamesdkhttp/w;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lbsgamesdkhttp/r;
    .registers 2

    iget-object v0, p0, Lbsgamesdkhttp/w;->c:Lbsgamesdkhttp/r;

    return-object v0
.end method

.method public d()Lbsgamesdkhttp/x;
    .registers 2

    iget-object v0, p0, Lbsgamesdkhttp/w;->d:Lbsgamesdkhttp/x;

    return-object v0
.end method

.method public e()Lbsgamesdkhttp/w$a;
    .registers 2

    new-instance v0, Lbsgamesdkhttp/w$a;

    invoke-direct {v0, p0}, Lbsgamesdkhttp/w$a;-><init>(Lbsgamesdkhttp/w;)V

    return-object v0
.end method

.method public f()Lbsgamesdkhttp/d;
    .registers 2

    iget-object v0, p0, Lbsgamesdkhttp/w;->f:Lbsgamesdkhttp/d;

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    iget-object v0, p0, Lbsgamesdkhttp/w;->c:Lbsgamesdkhttp/r;

    invoke-static {v0}, Lbsgamesdkhttp/d;->a(Lbsgamesdkhttp/r;)Lbsgamesdkhttp/d;

    move-result-object v0

    iput-object v0, p0, Lbsgamesdkhttp/w;->f:Lbsgamesdkhttp/d;

    goto :goto_4
.end method

.method public g()Z
    .registers 2

    iget-object v0, p0, Lbsgamesdkhttp/w;->a:Lbsgamesdkhttp/HttpUrl;

    invoke-virtual {v0}, Lbsgamesdkhttp/HttpUrl;->c()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request{method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbsgamesdkhttp/w;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbsgamesdkhttp/w;->a:Lbsgamesdkhttp/HttpUrl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lbsgamesdkhttp/w;->e:Ljava/lang/Object;

    if-eq v0, p0, :cond_38

    iget-object v0, p0, Lbsgamesdkhttp/w;->e:Ljava/lang/Object;

    :goto_29
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_38
    const/4 v0, 0x0

    goto :goto_29
.end method
