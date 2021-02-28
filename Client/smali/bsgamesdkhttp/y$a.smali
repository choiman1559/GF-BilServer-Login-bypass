.class public Lbsgamesdkhttp/y$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbsgamesdkhttp/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Lbsgamesdkhttp/w;

.field b:Lbsgamesdkhttp/Protocol;

.field c:I

.field d:Ljava/lang/String;

.field e:Lbsgamesdkhttp/q;

.field f:Lbsgamesdkhttp/r$a;

.field g:Lbsgamesdkhttp/z;

.field h:Lbsgamesdkhttp/y;

.field i:Lbsgamesdkhttp/y;

.field j:Lbsgamesdkhttp/y;

.field k:J

.field l:J


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lbsgamesdkhttp/y$a;->c:I

    new-instance v0, Lbsgamesdkhttp/r$a;

    invoke-direct {v0}, Lbsgamesdkhttp/r$a;-><init>()V

    iput-object v0, p0, Lbsgamesdkhttp/y$a;->f:Lbsgamesdkhttp/r$a;

    return-void
.end method

.method constructor <init>(Lbsgamesdkhttp/y;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lbsgamesdkhttp/y$a;->c:I

    iget-object v0, p1, Lbsgamesdkhttp/y;->a:Lbsgamesdkhttp/w;

    iput-object v0, p0, Lbsgamesdkhttp/y$a;->a:Lbsgamesdkhttp/w;

    iget-object v0, p1, Lbsgamesdkhttp/y;->b:Lbsgamesdkhttp/Protocol;

    iput-object v0, p0, Lbsgamesdkhttp/y$a;->b:Lbsgamesdkhttp/Protocol;

    iget v0, p1, Lbsgamesdkhttp/y;->c:I

    iput v0, p0, Lbsgamesdkhttp/y$a;->c:I

    iget-object v0, p1, Lbsgamesdkhttp/y;->d:Ljava/lang/String;

    iput-object v0, p0, Lbsgamesdkhttp/y$a;->d:Ljava/lang/String;

    iget-object v0, p1, Lbsgamesdkhttp/y;->e:Lbsgamesdkhttp/q;

    iput-object v0, p0, Lbsgamesdkhttp/y$a;->e:Lbsgamesdkhttp/q;

    iget-object v0, p1, Lbsgamesdkhttp/y;->f:Lbsgamesdkhttp/r;

    invoke-virtual {v0}, Lbsgamesdkhttp/r;->b()Lbsgamesdkhttp/r$a;

    move-result-object v0

    iput-object v0, p0, Lbsgamesdkhttp/y$a;->f:Lbsgamesdkhttp/r$a;

    iget-object v0, p1, Lbsgamesdkhttp/y;->g:Lbsgamesdkhttp/z;

    iput-object v0, p0, Lbsgamesdkhttp/y$a;->g:Lbsgamesdkhttp/z;

    iget-object v0, p1, Lbsgamesdkhttp/y;->h:Lbsgamesdkhttp/y;

    iput-object v0, p0, Lbsgamesdkhttp/y$a;->h:Lbsgamesdkhttp/y;

    iget-object v0, p1, Lbsgamesdkhttp/y;->i:Lbsgamesdkhttp/y;

    iput-object v0, p0, Lbsgamesdkhttp/y$a;->i:Lbsgamesdkhttp/y;

    iget-object v0, p1, Lbsgamesdkhttp/y;->j:Lbsgamesdkhttp/y;

    iput-object v0, p0, Lbsgamesdkhttp/y$a;->j:Lbsgamesdkhttp/y;

    iget-wide v0, p1, Lbsgamesdkhttp/y;->k:J

    iput-wide v0, p0, Lbsgamesdkhttp/y$a;->k:J

    iget-wide v0, p1, Lbsgamesdkhttp/y;->l:J

    iput-wide v0, p0, Lbsgamesdkhttp/y$a;->l:J

    return-void
.end method

.method private a(Ljava/lang/String;Lbsgamesdkhttp/y;)V
    .registers 6

    iget-object v0, p2, Lbsgamesdkhttp/y;->g:Lbsgamesdkhttp/z;

    if-eqz v0, :cond_1d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".body != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    iget-object v0, p2, Lbsgamesdkhttp/y;->h:Lbsgamesdkhttp/y;

    if-eqz v0, :cond_3a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".networkResponse != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3a
    iget-object v0, p2, Lbsgamesdkhttp/y;->i:Lbsgamesdkhttp/y;

    if-eqz v0, :cond_57

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".cacheResponse != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_57
    iget-object v0, p2, Lbsgamesdkhttp/y;->j:Lbsgamesdkhttp/y;

    if-eqz v0, :cond_74

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".priorResponse != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_74
    return-void
.end method

.method private d(Lbsgamesdkhttp/y;)V
    .registers 4

    iget-object v0, p1, Lbsgamesdkhttp/y;->g:Lbsgamesdkhttp/z;

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "priorResponse.body != null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    return-void
.end method


# virtual methods
.method public a(I)Lbsgamesdkhttp/y$a;
    .registers 2

    iput p1, p0, Lbsgamesdkhttp/y$a;->c:I

    return-object p0
.end method

.method public a(J)Lbsgamesdkhttp/y$a;
    .registers 4

    iput-wide p1, p0, Lbsgamesdkhttp/y$a;->k:J

    return-object p0
.end method

.method public a(Lbsgamesdkhttp/Protocol;)Lbsgamesdkhttp/y$a;
    .registers 2

    iput-object p1, p0, Lbsgamesdkhttp/y$a;->b:Lbsgamesdkhttp/Protocol;

    return-object p0
.end method

.method public a(Lbsgamesdkhttp/q;)Lbsgamesdkhttp/y$a;
    .registers 2

    iput-object p1, p0, Lbsgamesdkhttp/y$a;->e:Lbsgamesdkhttp/q;

    return-object p0
.end method

.method public a(Lbsgamesdkhttp/r;)Lbsgamesdkhttp/y$a;
    .registers 3

    invoke-virtual {p1}, Lbsgamesdkhttp/r;->b()Lbsgamesdkhttp/r$a;

    move-result-object v0

    iput-object v0, p0, Lbsgamesdkhttp/y$a;->f:Lbsgamesdkhttp/r$a;

    return-object p0
.end method

.method public a(Lbsgamesdkhttp/w;)Lbsgamesdkhttp/y$a;
    .registers 2

    iput-object p1, p0, Lbsgamesdkhttp/y$a;->a:Lbsgamesdkhttp/w;

    return-object p0
.end method

.method public a(Lbsgamesdkhttp/y;)Lbsgamesdkhttp/y$a;
    .registers 3

    if-eqz p1, :cond_7

    const-string v0, "networkResponse"

    invoke-direct {p0, v0, p1}, Lbsgamesdkhttp/y$a;->a(Ljava/lang/String;Lbsgamesdkhttp/y;)V

    :cond_7
    iput-object p1, p0, Lbsgamesdkhttp/y$a;->h:Lbsgamesdkhttp/y;

    return-object p0
.end method

.method public a(Lbsgamesdkhttp/z;)Lbsgamesdkhttp/y$a;
    .registers 2

    iput-object p1, p0, Lbsgamesdkhttp/y$a;->g:Lbsgamesdkhttp/z;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lbsgamesdkhttp/y$a;
    .registers 2

    iput-object p1, p0, Lbsgamesdkhttp/y$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lbsgamesdkhttp/y$a;
    .registers 4

    iget-object v0, p0, Lbsgamesdkhttp/y$a;->f:Lbsgamesdkhttp/r$a;

    invoke-virtual {v0, p1, p2}, Lbsgamesdkhttp/r$a;->a(Ljava/lang/String;Ljava/lang/String;)Lbsgamesdkhttp/r$a;

    return-object p0
.end method

.method public a()Lbsgamesdkhttp/y;
    .registers 4

    iget-object v0, p0, Lbsgamesdkhttp/y$a;->a:Lbsgamesdkhttp/w;

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "request == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lbsgamesdkhttp/y$a;->b:Lbsgamesdkhttp/Protocol;

    if-nez v0, :cond_18

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "protocol == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    iget v0, p0, Lbsgamesdkhttp/y$a;->c:I

    if-gez v0, :cond_37

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lbsgamesdkhttp/y$a;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_37
    new-instance v0, Lbsgamesdkhttp/y;

    invoke-direct {v0, p0}, Lbsgamesdkhttp/y;-><init>(Lbsgamesdkhttp/y$a;)V

    return-object v0
.end method

.method public b(J)Lbsgamesdkhttp/y$a;
    .registers 4

    iput-wide p1, p0, Lbsgamesdkhttp/y$a;->l:J

    return-object p0
.end method

.method public b(Lbsgamesdkhttp/y;)Lbsgamesdkhttp/y$a;
    .registers 3

    if-eqz p1, :cond_7

    const-string v0, "cacheResponse"

    invoke-direct {p0, v0, p1}, Lbsgamesdkhttp/y$a;->a(Ljava/lang/String;Lbsgamesdkhttp/y;)V

    :cond_7
    iput-object p1, p0, Lbsgamesdkhttp/y$a;->i:Lbsgamesdkhttp/y;

    return-object p0
.end method

.method public c(Lbsgamesdkhttp/y;)Lbsgamesdkhttp/y$a;
    .registers 2

    if-eqz p1, :cond_5

    invoke-direct {p0, p1}, Lbsgamesdkhttp/y$a;->d(Lbsgamesdkhttp/y;)V

    :cond_5
    iput-object p1, p0, Lbsgamesdkhttp/y$a;->j:Lbsgamesdkhttp/y;

    return-object p0
.end method
