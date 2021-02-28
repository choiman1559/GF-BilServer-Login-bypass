.class public final Lbsgamesdkhttp/u$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbsgamesdkhttp/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field a:Lbsgamesdkhttp/n;

.field b:Ljava/net/Proxy;

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbsgamesdkhttp/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbsgamesdkhttp/k;",
            ">;"
        }
    .end annotation
.end field

.field final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbsgamesdkhttp/s;",
            ">;"
        }
    .end annotation
.end field

.field final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbsgamesdkhttp/s;",
            ">;"
        }
    .end annotation
.end field

.field g:Ljava/net/ProxySelector;

.field h:Lbsgamesdkhttp/m;

.field i:Lbsgamesdkhttp/c;

.field j:Lbsgamesdkhttp/a/a/e;

.field k:Ljavax/net/SocketFactory;

.field l:Ljavax/net/ssl/SSLSocketFactory;

.field m:Lbsgamesdkhttp/a/h/b;

.field n:Ljavax/net/ssl/HostnameVerifier;

.field o:Lbsgamesdkhttp/g;

.field p:Lbsgamesdkhttp/b;

.field q:Lbsgamesdkhttp/b;

.field r:Lbsgamesdkhttp/j;

.field s:Lbsgamesdkhttp/o;

.field t:Z

.field u:Z

.field v:Z

.field w:I

.field x:I

.field y:I

.field z:I


# direct methods
.method public constructor <init>()V
    .registers 4

    const/16 v2, 0x2710

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbsgamesdkhttp/u$a;->e:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbsgamesdkhttp/u$a;->f:Ljava/util/List;

    new-instance v0, Lbsgamesdkhttp/n;

    invoke-direct {v0}, Lbsgamesdkhttp/n;-><init>()V

    iput-object v0, p0, Lbsgamesdkhttp/u$a;->a:Lbsgamesdkhttp/n;

    sget-object v0, Lbsgamesdkhttp/u;->a:Ljava/util/List;

    iput-object v0, p0, Lbsgamesdkhttp/u$a;->c:Ljava/util/List;

    sget-object v0, Lbsgamesdkhttp/u;->b:Ljava/util/List;

    iput-object v0, p0, Lbsgamesdkhttp/u$a;->d:Ljava/util/List;

    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    iput-object v0, p0, Lbsgamesdkhttp/u$a;->g:Ljava/net/ProxySelector;

    sget-object v0, Lbsgamesdkhttp/m;->a:Lbsgamesdkhttp/m;

    iput-object v0, p0, Lbsgamesdkhttp/u$a;->h:Lbsgamesdkhttp/m;

    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    iput-object v0, p0, Lbsgamesdkhttp/u$a;->k:Ljavax/net/SocketFactory;

    sget-object v0, Lbsgamesdkhttp/a/h/d;->a:Lbsgamesdkhttp/a/h/d;

    iput-object v0, p0, Lbsgamesdkhttp/u$a;->n:Ljavax/net/ssl/HostnameVerifier;

    sget-object v0, Lbsgamesdkhttp/g;->a:Lbsgamesdkhttp/g;

    iput-object v0, p0, Lbsgamesdkhttp/u$a;->o:Lbsgamesdkhttp/g;

    sget-object v0, Lbsgamesdkhttp/b;->a:Lbsgamesdkhttp/b;

    iput-object v0, p0, Lbsgamesdkhttp/u$a;->p:Lbsgamesdkhttp/b;

    sget-object v0, Lbsgamesdkhttp/b;->a:Lbsgamesdkhttp/b;

    iput-object v0, p0, Lbsgamesdkhttp/u$a;->q:Lbsgamesdkhttp/b;

    new-instance v0, Lbsgamesdkhttp/j;

    invoke-direct {v0}, Lbsgamesdkhttp/j;-><init>()V

    iput-object v0, p0, Lbsgamesdkhttp/u$a;->r:Lbsgamesdkhttp/j;

    sget-object v0, Lbsgamesdkhttp/o;->a:Lbsgamesdkhttp/o;

    iput-object v0, p0, Lbsgamesdkhttp/u$a;->s:Lbsgamesdkhttp/o;

    iput-boolean v1, p0, Lbsgamesdkhttp/u$a;->t:Z

    iput-boolean v1, p0, Lbsgamesdkhttp/u$a;->u:Z

    iput-boolean v1, p0, Lbsgamesdkhttp/u$a;->v:Z

    iput v2, p0, Lbsgamesdkhttp/u$a;->w:I

    iput v2, p0, Lbsgamesdkhttp/u$a;->x:I

    iput v2, p0, Lbsgamesdkhttp/u$a;->y:I

    const/4 v0, 0x0

    iput v0, p0, Lbsgamesdkhttp/u$a;->z:I

    return-void
.end method

.method private static a(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I
    .registers 11

    const-wide/16 v4, 0x0

    cmp-long v0, p1, v4

    if-gez v0, :cond_1f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    if-nez p3, :cond_29

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "unit == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_4d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " too large."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4d
    cmp-long v2, v0, v4

    if-nez v2, :cond_6e

    cmp-long v2, p1, v4

    if-lez v2, :cond_6e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " too small."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6e
    long-to-int v0, v0

    return v0
.end method


# virtual methods
.method public a(JLjava/util/concurrent/TimeUnit;)Lbsgamesdkhttp/u$a;
    .registers 5

    const-string v0, "timeout"

    invoke-static {v0, p1, p2, p3}, Lbsgamesdkhttp/u$a;->a(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v0

    iput v0, p0, Lbsgamesdkhttp/u$a;->w:I

    return-object p0
.end method

.method public a(Lbsgamesdkhttp/s;)Lbsgamesdkhttp/u$a;
    .registers 3

    iget-object v0, p0, Lbsgamesdkhttp/u$a;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a(Z)Lbsgamesdkhttp/u$a;
    .registers 2

    iput-boolean p1, p0, Lbsgamesdkhttp/u$a;->v:Z

    return-object p0
.end method

.method public a()Lbsgamesdkhttp/u;
    .registers 2

    new-instance v0, Lbsgamesdkhttp/u;

    invoke-direct {v0, p0}, Lbsgamesdkhttp/u;-><init>(Lbsgamesdkhttp/u$a;)V

    return-object v0
.end method

.method public b(JLjava/util/concurrent/TimeUnit;)Lbsgamesdkhttp/u$a;
    .registers 5

    const-string v0, "timeout"

    invoke-static {v0, p1, p2, p3}, Lbsgamesdkhttp/u$a;->a(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v0

    iput v0, p0, Lbsgamesdkhttp/u$a;->x:I

    return-object p0
.end method
