.class public final Lbsgamesdkhttp/k$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbsgamesdkhttp/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field a:Z

.field b:[Ljava/lang/String;

.field c:[Ljava/lang/String;

.field d:Z


# direct methods
.method public constructor <init>(Lbsgamesdkhttp/k;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, Lbsgamesdkhttp/k;->d:Z

    iput-boolean v0, p0, Lbsgamesdkhttp/k$a;->a:Z

    iget-object v0, p1, Lbsgamesdkhttp/k;->f:[Ljava/lang/String;

    iput-object v0, p0, Lbsgamesdkhttp/k$a;->b:[Ljava/lang/String;

    iget-object v0, p1, Lbsgamesdkhttp/k;->g:[Ljava/lang/String;

    iput-object v0, p0, Lbsgamesdkhttp/k$a;->c:[Ljava/lang/String;

    iget-boolean v0, p1, Lbsgamesdkhttp/k;->e:Z

    iput-boolean v0, p0, Lbsgamesdkhttp/k$a;->d:Z

    return-void
.end method

.method constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lbsgamesdkhttp/k$a;->a:Z

    return-void
.end method


# virtual methods
.method public a(Z)Lbsgamesdkhttp/k$a;
    .registers 4

    iget-boolean v0, p0, Lbsgamesdkhttp/k$a;->a:Z

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no TLS extensions for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iput-boolean p1, p0, Lbsgamesdkhttp/k$a;->d:Z

    return-object p0
.end method

.method public varargs a([Lbsgamesdkhttp/TlsVersion;)Lbsgamesdkhttp/k$a;
    .registers 5

    iget-boolean v0, p0, Lbsgamesdkhttp/k$a;->a:Z

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no TLS versions for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    array-length v0, p1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_10
    array-length v2, p1

    if-ge v0, v2, :cond_1c

    aget-object v2, p1, v0

    iget-object v2, v2, Lbsgamesdkhttp/TlsVersion;->a:Ljava/lang/String;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_1c
    invoke-virtual {p0, v1}, Lbsgamesdkhttp/k$a;->b([Ljava/lang/String;)Lbsgamesdkhttp/k$a;

    move-result-object v0

    return-object v0
.end method

.method public varargs a([Lbsgamesdkhttp/h;)Lbsgamesdkhttp/k$a;
    .registers 5

    iget-boolean v0, p0, Lbsgamesdkhttp/k$a;->a:Z

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no cipher suites for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    array-length v0, p1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_10
    array-length v2, p1

    if-ge v0, v2, :cond_1c

    aget-object v2, p1, v0

    iget-object v2, v2, Lbsgamesdkhttp/h;->bi:Ljava/lang/String;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_1c
    invoke-virtual {p0, v1}, Lbsgamesdkhttp/k$a;->a([Ljava/lang/String;)Lbsgamesdkhttp/k$a;

    move-result-object v0

    return-object v0
.end method

.method public varargs a([Ljava/lang/String;)Lbsgamesdkhttp/k$a;
    .registers 4

    iget-boolean v0, p0, Lbsgamesdkhttp/k$a;->a:Z

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no cipher suites for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    array-length v0, p1

    if-nez v0, :cond_17

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "At least one cipher suite is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lbsgamesdkhttp/k$a;->b:[Ljava/lang/String;

    return-object p0
.end method

.method public a()Lbsgamesdkhttp/k;
    .registers 2

    new-instance v0, Lbsgamesdkhttp/k;

    invoke-direct {v0, p0}, Lbsgamesdkhttp/k;-><init>(Lbsgamesdkhttp/k$a;)V

    return-object v0
.end method

.method public varargs b([Ljava/lang/String;)Lbsgamesdkhttp/k$a;
    .registers 4

    iget-boolean v0, p0, Lbsgamesdkhttp/k$a;->a:Z

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no TLS versions for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    array-length v0, p1

    if-nez v0, :cond_17

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "At least one TLS version is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lbsgamesdkhttp/k$a;->c:[Ljava/lang/String;

    return-object p0
.end method
