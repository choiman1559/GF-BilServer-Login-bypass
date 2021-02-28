.class public final Lbsgamesdkhttp/a/c/f;
.super Ljava/lang/Object;

# interfaces
.implements Lbsgamesdkhttp/s$a;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbsgamesdkhttp/s;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lbsgamesdkhttp/a/b/g;

.field private final c:Lbsgamesdkhttp/a/c/c;

.field private final d:Lbsgamesdkhttp/i;

.field private final e:I

.field private final f:Lbsgamesdkhttp/w;

.field private g:I


# direct methods
.method public constructor <init>(Ljava/util/List;Lbsgamesdkhttp/a/b/g;Lbsgamesdkhttp/a/c/c;Lbsgamesdkhttp/i;ILbsgamesdkhttp/w;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbsgamesdkhttp/s;",
            ">;",
            "Lbsgamesdkhttp/a/b/g;",
            "Lbsgamesdkhttp/a/c/c;",
            "Lbsgamesdkhttp/i;",
            "I",
            "Lbsgamesdkhttp/w;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbsgamesdkhttp/a/c/f;->a:Ljava/util/List;

    iput-object p4, p0, Lbsgamesdkhttp/a/c/f;->d:Lbsgamesdkhttp/i;

    iput-object p2, p0, Lbsgamesdkhttp/a/c/f;->b:Lbsgamesdkhttp/a/b/g;

    iput-object p3, p0, Lbsgamesdkhttp/a/c/f;->c:Lbsgamesdkhttp/a/c/c;

    iput p5, p0, Lbsgamesdkhttp/a/c/f;->e:I

    iput-object p6, p0, Lbsgamesdkhttp/a/c/f;->f:Lbsgamesdkhttp/w;

    return-void
.end method

.method private a(Lbsgamesdkhttp/HttpUrl;)Z
    .registers 4

    invoke-virtual {p1}, Lbsgamesdkhttp/HttpUrl;->f()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbsgamesdkhttp/a/c/f;->d:Lbsgamesdkhttp/i;

    invoke-interface {v1}, Lbsgamesdkhttp/i;->a()Lbsgamesdkhttp/aa;

    move-result-object v1

    invoke-virtual {v1}, Lbsgamesdkhttp/aa;->a()Lbsgamesdkhttp/a;

    move-result-object v1

    invoke-virtual {v1}, Lbsgamesdkhttp/a;->a()Lbsgamesdkhttp/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lbsgamesdkhttp/HttpUrl;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-virtual {p1}, Lbsgamesdkhttp/HttpUrl;->g()I

    move-result v0

    iget-object v1, p0, Lbsgamesdkhttp/a/c/f;->d:Lbsgamesdkhttp/i;

    invoke-interface {v1}, Lbsgamesdkhttp/i;->a()Lbsgamesdkhttp/aa;

    move-result-object v1

    invoke-virtual {v1}, Lbsgamesdkhttp/aa;->a()Lbsgamesdkhttp/a;

    move-result-object v1

    invoke-virtual {v1}, Lbsgamesdkhttp/a;->a()Lbsgamesdkhttp/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lbsgamesdkhttp/HttpUrl;->g()I

    move-result v1

    if-ne v0, v1, :cond_36

    const/4 v0, 0x1

    :goto_35
    return v0

    :cond_36
    const/4 v0, 0x0

    goto :goto_35
.end method


# virtual methods
.method public a()Lbsgamesdkhttp/w;
    .registers 2

    iget-object v0, p0, Lbsgamesdkhttp/a/c/f;->f:Lbsgamesdkhttp/w;

    return-object v0
.end method

.method public a(Lbsgamesdkhttp/w;)Lbsgamesdkhttp/y;
    .registers 5

    iget-object v0, p0, Lbsgamesdkhttp/a/c/f;->b:Lbsgamesdkhttp/a/b/g;

    iget-object v1, p0, Lbsgamesdkhttp/a/c/f;->c:Lbsgamesdkhttp/a/c/c;

    iget-object v2, p0, Lbsgamesdkhttp/a/c/f;->d:Lbsgamesdkhttp/i;

    invoke-virtual {p0, p1, v0, v1, v2}, Lbsgamesdkhttp/a/c/f;->a(Lbsgamesdkhttp/w;Lbsgamesdkhttp/a/b/g;Lbsgamesdkhttp/a/c/c;Lbsgamesdkhttp/i;)Lbsgamesdkhttp/y;

    move-result-object v0

    return-object v0
.end method

.method public a(Lbsgamesdkhttp/w;Lbsgamesdkhttp/a/b/g;Lbsgamesdkhttp/a/c/c;Lbsgamesdkhttp/i;)Lbsgamesdkhttp/y;
    .registers 13

    const/4 v7, 0x1

    iget v0, p0, Lbsgamesdkhttp/a/c/f;->e:I

    iget-object v1, p0, Lbsgamesdkhttp/a/c/f;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_11

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_11
    iget v0, p0, Lbsgamesdkhttp/a/c/f;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbsgamesdkhttp/a/c/f;->g:I

    iget-object v0, p0, Lbsgamesdkhttp/a/c/f;->c:Lbsgamesdkhttp/a/c/c;

    if-eqz v0, :cond_4e

    invoke-virtual {p1}, Lbsgamesdkhttp/w;->a()Lbsgamesdkhttp/HttpUrl;

    move-result-object v0

    invoke-direct {p0, v0}, Lbsgamesdkhttp/a/c/f;->a(Lbsgamesdkhttp/HttpUrl;)Z

    move-result v0

    if-nez v0, :cond_4e

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "network interceptor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbsgamesdkhttp/a/c/f;->a:Ljava/util/List;

    iget v3, p0, Lbsgamesdkhttp/a/c/f;->e:I

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must retain the same host and port"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4e
    iget-object v0, p0, Lbsgamesdkhttp/a/c/f;->c:Lbsgamesdkhttp/a/c/c;

    if-eqz v0, :cond_7f

    iget v0, p0, Lbsgamesdkhttp/a/c/f;->g:I

    if-le v0, v7, :cond_7f

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "network interceptor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbsgamesdkhttp/a/c/f;->a:Ljava/util/List;

    iget v3, p0, Lbsgamesdkhttp/a/c/f;->e:I

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must call proceed() exactly once"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7f
    new-instance v0, Lbsgamesdkhttp/a/c/f;

    iget-object v1, p0, Lbsgamesdkhttp/a/c/f;->a:Ljava/util/List;

    iget v2, p0, Lbsgamesdkhttp/a/c/f;->e:I

    add-int/lit8 v5, v2, 0x1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lbsgamesdkhttp/a/c/f;-><init>(Ljava/util/List;Lbsgamesdkhttp/a/b/g;Lbsgamesdkhttp/a/c/c;Lbsgamesdkhttp/i;ILbsgamesdkhttp/w;)V

    iget-object v1, p0, Lbsgamesdkhttp/a/c/f;->a:Ljava/util/List;

    iget v2, p0, Lbsgamesdkhttp/a/c/f;->e:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbsgamesdkhttp/s;

    invoke-interface {v1, v0}, Lbsgamesdkhttp/s;->a(Lbsgamesdkhttp/s$a;)Lbsgamesdkhttp/y;

    move-result-object v2

    if-eqz p3, :cond_cd

    iget v3, p0, Lbsgamesdkhttp/a/c/f;->e:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lbsgamesdkhttp/a/c/f;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_cd

    iget v0, v0, Lbsgamesdkhttp/a/c/f;->g:I

    if-eq v0, v7, :cond_cd

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "network interceptor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must call proceed() exactly once"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_cd
    if-nez v2, :cond_ee

    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "interceptor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " returned null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_ee
    return-object v2
.end method

.method public b()Lbsgamesdkhttp/a/b/g;
    .registers 2

    iget-object v0, p0, Lbsgamesdkhttp/a/c/f;->b:Lbsgamesdkhttp/a/b/g;

    return-object v0
.end method

.method public c()Lbsgamesdkhttp/a/c/c;
    .registers 2

    iget-object v0, p0, Lbsgamesdkhttp/a/c/f;->c:Lbsgamesdkhttp/a/c/c;

    return-object v0
.end method
