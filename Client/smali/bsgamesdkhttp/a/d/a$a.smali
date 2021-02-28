.class abstract Lbsgamesdkhttp/a/d/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lbsgamesdkio/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbsgamesdkhttp/a/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "a"
.end annotation


# instance fields
.field protected final a:Lbsgamesdkio/g;

.field protected b:Z

.field final synthetic c:Lbsgamesdkhttp/a/d/a;


# direct methods
.method private constructor <init>(Lbsgamesdkhttp/a/d/a;)V
    .registers 4

    iput-object p1, p0, Lbsgamesdkhttp/a/d/a$a;->c:Lbsgamesdkhttp/a/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lbsgamesdkio/g;

    iget-object v1, p0, Lbsgamesdkhttp/a/d/a$a;->c:Lbsgamesdkhttp/a/d/a;

    iget-object v1, v1, Lbsgamesdkhttp/a/d/a;->c:Lbsgamesdkio/e;

    invoke-interface {v1}, Lbsgamesdkio/e;->a()Lbsgamesdkio/q;

    move-result-object v1

    invoke-direct {v0, v1}, Lbsgamesdkio/g;-><init>(Lbsgamesdkio/q;)V

    iput-object v0, p0, Lbsgamesdkhttp/a/d/a$a;->a:Lbsgamesdkio/g;

    return-void
.end method

.method synthetic constructor <init>(Lbsgamesdkhttp/a/d/a;Lbsgamesdkhttp/a/d/a$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lbsgamesdkhttp/a/d/a$a;-><init>(Lbsgamesdkhttp/a/d/a;)V

    return-void
.end method


# virtual methods
.method public a()Lbsgamesdkio/q;
    .registers 2

    iget-object v0, p0, Lbsgamesdkhttp/a/d/a$a;->a:Lbsgamesdkio/g;

    return-object v0
.end method

.method protected final a(Z)V
    .registers 5

    const/4 v2, 0x6

    iget-object v0, p0, Lbsgamesdkhttp/a/d/a$a;->c:Lbsgamesdkhttp/a/d/a;

    iget v0, v0, Lbsgamesdkhttp/a/d/a;->e:I

    if-ne v0, v2, :cond_8

    :cond_7
    :goto_7
    return-void

    :cond_8
    iget-object v0, p0, Lbsgamesdkhttp/a/d/a$a;->c:Lbsgamesdkhttp/a/d/a;

    iget v0, v0, Lbsgamesdkhttp/a/d/a;->e:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2c

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbsgamesdkhttp/a/d/a$a;->c:Lbsgamesdkhttp/a/d/a;

    iget v2, v2, Lbsgamesdkhttp/a/d/a;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2c
    iget-object v0, p0, Lbsgamesdkhttp/a/d/a$a;->c:Lbsgamesdkhttp/a/d/a;

    iget-object v1, p0, Lbsgamesdkhttp/a/d/a$a;->a:Lbsgamesdkio/g;

    invoke-virtual {v0, v1}, Lbsgamesdkhttp/a/d/a;->a(Lbsgamesdkio/g;)V

    iget-object v0, p0, Lbsgamesdkhttp/a/d/a$a;->c:Lbsgamesdkhttp/a/d/a;

    iput v2, v0, Lbsgamesdkhttp/a/d/a;->e:I

    iget-object v0, p0, Lbsgamesdkhttp/a/d/a$a;->c:Lbsgamesdkhttp/a/d/a;

    iget-object v0, v0, Lbsgamesdkhttp/a/d/a;->b:Lbsgamesdkhttp/a/b/g;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lbsgamesdkhttp/a/d/a$a;->c:Lbsgamesdkhttp/a/d/a;

    iget-object v1, v0, Lbsgamesdkhttp/a/d/a;->b:Lbsgamesdkhttp/a/b/g;

    if-nez p1, :cond_4a

    const/4 v0, 0x1

    :goto_44
    iget-object v2, p0, Lbsgamesdkhttp/a/d/a$a;->c:Lbsgamesdkhttp/a/d/a;

    invoke-virtual {v1, v0, v2}, Lbsgamesdkhttp/a/b/g;->a(ZLbsgamesdkhttp/a/c/c;)V

    goto :goto_7

    :cond_4a
    const/4 v0, 0x0

    goto :goto_44
.end method
