.class final Lbsgamesdkhttp/a/e/k$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbsgamesdkhttp/a/e/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field a:[Lbsgamesdkhttp/a/e/j;

.field b:I

.field c:I

.field d:I

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbsgamesdkhttp/a/e/j;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lbsgamesdkio/e;

.field private final g:I

.field private h:I


# direct methods
.method constructor <init>(IILbsgamesdkio/p;)V
    .registers 6

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbsgamesdkhttp/a/e/k$a;->e:Ljava/util/List;

    const/16 v0, 0x8

    new-array v0, v0, [Lbsgamesdkhttp/a/e/j;

    iput-object v0, p0, Lbsgamesdkhttp/a/e/k$a;->a:[Lbsgamesdkhttp/a/e/j;

    iget-object v0, p0, Lbsgamesdkhttp/a/e/k$a;->a:[Lbsgamesdkhttp/a/e/j;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lbsgamesdkhttp/a/e/k$a;->b:I

    iput v1, p0, Lbsgamesdkhttp/a/e/k$a;->c:I

    iput v1, p0, Lbsgamesdkhttp/a/e/k$a;->d:I

    iput p1, p0, Lbsgamesdkhttp/a/e/k$a;->g:I

    iput p2, p0, Lbsgamesdkhttp/a/e/k$a;->h:I

    invoke-static {p3}, Lbsgamesdkio/j;->a(Lbsgamesdkio/p;)Lbsgamesdkio/e;

    move-result-object v0

    iput-object v0, p0, Lbsgamesdkhttp/a/e/k$a;->f:Lbsgamesdkio/e;

    return-void
.end method

.method constructor <init>(ILbsgamesdkio/p;)V
    .registers 3

    invoke-direct {p0, p1, p1, p2}, Lbsgamesdkhttp/a/e/k$a;-><init>(IILbsgamesdkio/p;)V

    return-void
.end method

.method private a(I)I
    .registers 8

    const/4 v1, 0x0

    if-lez p1, :cond_42

    iget-object v0, p0, Lbsgamesdkhttp/a/e/k$a;->a:[Lbsgamesdkhttp/a/e/j;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    iget v2, p0, Lbsgamesdkhttp/a/e/k$a;->b:I

    if-lt v0, v2, :cond_2b

    if-lez p1, :cond_2b

    iget-object v2, p0, Lbsgamesdkhttp/a/e/k$a;->a:[Lbsgamesdkhttp/a/e/j;

    aget-object v2, v2, v0

    iget v2, v2, Lbsgamesdkhttp/a/e/j;->i:I

    sub-int/2addr p1, v2

    iget v2, p0, Lbsgamesdkhttp/a/e/k$a;->d:I

    iget-object v3, p0, Lbsgamesdkhttp/a/e/k$a;->a:[Lbsgamesdkhttp/a/e/j;

    aget-object v3, v3, v0

    iget v3, v3, Lbsgamesdkhttp/a/e/j;->i:I

    sub-int/2addr v2, v3

    iput v2, p0, Lbsgamesdkhttp/a/e/k$a;->d:I

    iget v2, p0, Lbsgamesdkhttp/a/e/k$a;->c:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lbsgamesdkhttp/a/e/k$a;->c:I

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_2b
    iget-object v0, p0, Lbsgamesdkhttp/a/e/k$a;->a:[Lbsgamesdkhttp/a/e/j;

    iget v2, p0, Lbsgamesdkhttp/a/e/k$a;->b:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lbsgamesdkhttp/a/e/k$a;->a:[Lbsgamesdkhttp/a/e/j;

    iget v4, p0, Lbsgamesdkhttp/a/e/k$a;->b:I

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v4, v1

    iget v5, p0, Lbsgamesdkhttp/a/e/k$a;->c:I

    invoke-static {v0, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lbsgamesdkhttp/a/e/k$a;->b:I

    add-int/2addr v0, v1

    iput v0, p0, Lbsgamesdkhttp/a/e/k$a;->b:I

    :cond_42
    return v1
.end method

.method private a(ILbsgamesdkhttp/a/e/j;)V
    .registers 9

    const/4 v3, -0x1

    iget-object v0, p0, Lbsgamesdkhttp/a/e/k$a;->e:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, p2, Lbsgamesdkhttp/a/e/j;->i:I

    if-eq p1, v3, :cond_15

    iget-object v1, p0, Lbsgamesdkhttp/a/e/k$a;->a:[Lbsgamesdkhttp/a/e/j;

    invoke-direct {p0, p1}, Lbsgamesdkhttp/a/e/k$a;->c(I)I

    move-result v2

    aget-object v1, v1, v2

    iget v1, v1, Lbsgamesdkhttp/a/e/j;->i:I

    sub-int/2addr v0, v1

    :cond_15
    iget v1, p0, Lbsgamesdkhttp/a/e/k$a;->h:I

    if-le v0, v1, :cond_1d

    invoke-direct {p0}, Lbsgamesdkhttp/a/e/k$a;->e()V

    :goto_1c
    return-void

    :cond_1d
    iget v1, p0, Lbsgamesdkhttp/a/e/k$a;->d:I

    add-int/2addr v1, v0

    iget v2, p0, Lbsgamesdkhttp/a/e/k$a;->h:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v1}, Lbsgamesdkhttp/a/e/k$a;->a(I)I

    move-result v1

    if-ne p1, v3, :cond_64

    iget v1, p0, Lbsgamesdkhttp/a/e/k$a;->c:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lbsgamesdkhttp/a/e/k$a;->a:[Lbsgamesdkhttp/a/e/j;

    array-length v2, v2

    if-le v1, v2, :cond_4e

    iget-object v1, p0, Lbsgamesdkhttp/a/e/k$a;->a:[Lbsgamesdkhttp/a/e/j;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Lbsgamesdkhttp/a/e/j;

    iget-object v2, p0, Lbsgamesdkhttp/a/e/k$a;->a:[Lbsgamesdkhttp/a/e/j;

    const/4 v3, 0x0

    iget-object v4, p0, Lbsgamesdkhttp/a/e/k$a;->a:[Lbsgamesdkhttp/a/e/j;

    array-length v4, v4

    iget-object v5, p0, Lbsgamesdkhttp/a/e/k$a;->a:[Lbsgamesdkhttp/a/e/j;

    array-length v5, v5

    invoke-static {v2, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lbsgamesdkhttp/a/e/k$a;->a:[Lbsgamesdkhttp/a/e/j;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lbsgamesdkhttp/a/e/k$a;->b:I

    iput-object v1, p0, Lbsgamesdkhttp/a/e/k$a;->a:[Lbsgamesdkhttp/a/e/j;

    :cond_4e
    iget v1, p0, Lbsgamesdkhttp/a/e/k$a;->b:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lbsgamesdkhttp/a/e/k$a;->b:I

    iget-object v2, p0, Lbsgamesdkhttp/a/e/k$a;->a:[Lbsgamesdkhttp/a/e/j;

    aput-object p2, v2, v1

    iget v1, p0, Lbsgamesdkhttp/a/e/k$a;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lbsgamesdkhttp/a/e/k$a;->c:I

    :goto_5e
    iget v1, p0, Lbsgamesdkhttp/a/e/k$a;->d:I

    add-int/2addr v0, v1

    iput v0, p0, Lbsgamesdkhttp/a/e/k$a;->d:I

    goto :goto_1c

    :cond_64
    invoke-direct {p0, p1}, Lbsgamesdkhttp/a/e/k$a;->c(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v1, p1

    iget-object v2, p0, Lbsgamesdkhttp/a/e/k$a;->a:[Lbsgamesdkhttp/a/e/j;

    aput-object p2, v2, v1

    goto :goto_5e
.end method

.method private b(I)V
    .registers 5

    invoke-direct {p0, p1}, Lbsgamesdkhttp/a/e/k$a;->g(I)Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lbsgamesdkhttp/a/e/k;->a:[Lbsgamesdkhttp/a/e/j;

    aget-object v0, v0, p1

    iget-object v1, p0, Lbsgamesdkhttp/a/e/k$a;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_f
    return-void

    :cond_10
    sget-object v0, Lbsgamesdkhttp/a/e/k;->a:[Lbsgamesdkhttp/a/e/j;

    array-length v0, v0

    sub-int v0, p1, v0

    invoke-direct {p0, v0}, Lbsgamesdkhttp/a/e/k$a;->c(I)I

    move-result v0

    if-ltz v0, :cond_22

    iget-object v1, p0, Lbsgamesdkhttp/a/e/k$a;->a:[Lbsgamesdkhttp/a/e/j;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_3d

    :cond_22
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Header index too large "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3d
    iget-object v1, p0, Lbsgamesdkhttp/a/e/k$a;->e:Ljava/util/List;

    iget-object v2, p0, Lbsgamesdkhttp/a/e/k$a;->a:[Lbsgamesdkhttp/a/e/j;

    aget-object v0, v2, v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f
.end method

.method private c(I)I
    .registers 3

    iget v0, p0, Lbsgamesdkhttp/a/e/k$a;->b:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p1

    return v0
.end method

.method private d()V
    .registers 3

    iget v0, p0, Lbsgamesdkhttp/a/e/k$a;->h:I

    iget v1, p0, Lbsgamesdkhttp/a/e/k$a;->d:I

    if-ge v0, v1, :cond_d

    iget v0, p0, Lbsgamesdkhttp/a/e/k$a;->h:I

    if-nez v0, :cond_e

    invoke-direct {p0}, Lbsgamesdkhttp/a/e/k$a;->e()V

    :cond_d
    :goto_d
    return-void

    :cond_e
    iget v0, p0, Lbsgamesdkhttp/a/e/k$a;->d:I

    iget v1, p0, Lbsgamesdkhttp/a/e/k$a;->h:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lbsgamesdkhttp/a/e/k$a;->a(I)I

    goto :goto_d
.end method

.method private d(I)V
    .registers 6

    invoke-direct {p0, p1}, Lbsgamesdkhttp/a/e/k$a;->f(I)Lbsgamesdkio/ByteString;

    move-result-object v0

    invoke-virtual {p0}, Lbsgamesdkhttp/a/e/k$a;->c()Lbsgamesdkio/ByteString;

    move-result-object v1

    iget-object v2, p0, Lbsgamesdkhttp/a/e/k$a;->e:Ljava/util/List;

    new-instance v3, Lbsgamesdkhttp/a/e/j;

    invoke-direct {v3, v0, v1}, Lbsgamesdkhttp/a/e/j;-><init>(Lbsgamesdkio/ByteString;Lbsgamesdkio/ByteString;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private e()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lbsgamesdkhttp/a/e/k$a;->a:[Lbsgamesdkhttp/a/e/j;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lbsgamesdkhttp/a/e/k$a;->a:[Lbsgamesdkhttp/a/e/j;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lbsgamesdkhttp/a/e/k$a;->b:I

    iput v2, p0, Lbsgamesdkhttp/a/e/k$a;->c:I

    iput v2, p0, Lbsgamesdkhttp/a/e/k$a;->d:I

    return-void
.end method

.method private e(I)V
    .registers 6

    invoke-direct {p0, p1}, Lbsgamesdkhttp/a/e/k$a;->f(I)Lbsgamesdkio/ByteString;

    move-result-object v0

    invoke-virtual {p0}, Lbsgamesdkhttp/a/e/k$a;->c()Lbsgamesdkio/ByteString;

    move-result-object v1

    const/4 v2, -0x1

    new-instance v3, Lbsgamesdkhttp/a/e/j;

    invoke-direct {v3, v0, v1}, Lbsgamesdkhttp/a/e/j;-><init>(Lbsgamesdkio/ByteString;Lbsgamesdkio/ByteString;)V

    invoke-direct {p0, v2, v3}, Lbsgamesdkhttp/a/e/k$a;->a(ILbsgamesdkhttp/a/e/j;)V

    return-void
.end method

.method private f(I)Lbsgamesdkio/ByteString;
    .registers 4

    invoke-direct {p0, p1}, Lbsgamesdkhttp/a/e/k$a;->g(I)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lbsgamesdkhttp/a/e/k;->a:[Lbsgamesdkhttp/a/e/j;

    aget-object v0, v0, p1

    iget-object v0, v0, Lbsgamesdkhttp/a/e/j;->g:Lbsgamesdkio/ByteString;

    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Lbsgamesdkhttp/a/e/k$a;->a:[Lbsgamesdkhttp/a/e/j;

    sget-object v1, Lbsgamesdkhttp/a/e/k;->a:[Lbsgamesdkhttp/a/e/j;

    array-length v1, v1

    sub-int v1, p1, v1

    invoke-direct {p0, v1}, Lbsgamesdkhttp/a/e/k$a;->c(I)I

    move-result v1

    aget-object v0, v0, v1

    iget-object v0, v0, Lbsgamesdkhttp/a/e/j;->g:Lbsgamesdkio/ByteString;

    goto :goto_c
.end method

.method private f()V
    .registers 5

    invoke-virtual {p0}, Lbsgamesdkhttp/a/e/k$a;->c()Lbsgamesdkio/ByteString;

    move-result-object v0

    invoke-static {v0}, Lbsgamesdkhttp/a/e/k;->a(Lbsgamesdkio/ByteString;)Lbsgamesdkio/ByteString;

    move-result-object v0

    invoke-virtual {p0}, Lbsgamesdkhttp/a/e/k$a;->c()Lbsgamesdkio/ByteString;

    move-result-object v1

    iget-object v2, p0, Lbsgamesdkhttp/a/e/k$a;->e:Ljava/util/List;

    new-instance v3, Lbsgamesdkhttp/a/e/j;

    invoke-direct {v3, v0, v1}, Lbsgamesdkhttp/a/e/j;-><init>(Lbsgamesdkio/ByteString;Lbsgamesdkio/ByteString;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private g()V
    .registers 5

    invoke-virtual {p0}, Lbsgamesdkhttp/a/e/k$a;->c()Lbsgamesdkio/ByteString;

    move-result-object v0

    invoke-static {v0}, Lbsgamesdkhttp/a/e/k;->a(Lbsgamesdkio/ByteString;)Lbsgamesdkio/ByteString;

    move-result-object v0

    invoke-virtual {p0}, Lbsgamesdkhttp/a/e/k$a;->c()Lbsgamesdkio/ByteString;

    move-result-object v1

    const/4 v2, -0x1

    new-instance v3, Lbsgamesdkhttp/a/e/j;

    invoke-direct {v3, v0, v1}, Lbsgamesdkhttp/a/e/j;-><init>(Lbsgamesdkio/ByteString;Lbsgamesdkio/ByteString;)V

    invoke-direct {p0, v2, v3}, Lbsgamesdkhttp/a/e/k$a;->a(ILbsgamesdkhttp/a/e/j;)V

    return-void
.end method

.method private g(I)Z
    .registers 3

    if-ltz p1, :cond_b

    sget-object v0, Lbsgamesdkhttp/a/e/k;->a:[Lbsgamesdkhttp/a/e/j;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private h()I
    .registers 2

    iget-object v0, p0, Lbsgamesdkhttp/a/e/k$a;->f:Lbsgamesdkio/e;

    invoke-interface {v0}, Lbsgamesdkio/e;->g()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method


# virtual methods
.method a(II)I
    .registers 6

    and-int v0, p1, p2

    if-ge v0, p2, :cond_5

    :goto_4
    return v0

    :cond_5
    const/4 v0, 0x0

    :goto_6
    invoke-direct {p0}, Lbsgamesdkhttp/a/e/k$a;->h()I

    move-result v1

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_15

    and-int/lit8 v1, v1, 0x7f

    shl-int/2addr v1, v0

    add-int/2addr p2, v1

    add-int/lit8 v0, v0, 0x7

    goto :goto_6

    :cond_15
    shl-int v0, v1, v0

    add-int/2addr v0, p2

    goto :goto_4
.end method

.method a()V
    .registers 6

    const/16 v4, 0x80

    const/16 v3, 0x40

    :goto_4
    iget-object v0, p0, Lbsgamesdkhttp/a/e/k$a;->f:Lbsgamesdkio/e;

    invoke-interface {v0}, Lbsgamesdkio/e;->e()Z

    move-result v0

    if-nez v0, :cond_92

    iget-object v0, p0, Lbsgamesdkhttp/a/e/k$a;->f:Lbsgamesdkio/e;

    invoke-interface {v0}, Lbsgamesdkio/e;->g()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-ne v0, v4, :cond_1e

    new-instance v0, Ljava/io/IOException;

    const-string v1, "index == 0"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    and-int/lit16 v1, v0, 0x80

    if-ne v1, v4, :cond_2e

    const/16 v1, 0x7f

    invoke-virtual {p0, v0, v1}, Lbsgamesdkhttp/a/e/k$a;->a(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lbsgamesdkhttp/a/e/k$a;->b(I)V

    goto :goto_4

    :cond_2e
    if-ne v0, v3, :cond_34

    invoke-direct {p0}, Lbsgamesdkhttp/a/e/k$a;->g()V

    goto :goto_4

    :cond_34
    and-int/lit8 v1, v0, 0x40

    if-ne v1, v3, :cond_44

    const/16 v1, 0x3f

    invoke-virtual {p0, v0, v1}, Lbsgamesdkhttp/a/e/k$a;->a(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lbsgamesdkhttp/a/e/k$a;->e(I)V

    goto :goto_4

    :cond_44
    and-int/lit8 v1, v0, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_7b

    const/16 v1, 0x1f

    invoke-virtual {p0, v0, v1}, Lbsgamesdkhttp/a/e/k$a;->a(II)I

    move-result v0

    iput v0, p0, Lbsgamesdkhttp/a/e/k$a;->h:I

    iget v0, p0, Lbsgamesdkhttp/a/e/k$a;->h:I

    if-ltz v0, :cond_5c

    iget v0, p0, Lbsgamesdkhttp/a/e/k$a;->h:I

    iget v1, p0, Lbsgamesdkhttp/a/e/k$a;->g:I

    if-le v0, v1, :cond_77

    :cond_5c
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid dynamic table size update "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lbsgamesdkhttp/a/e/k$a;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_77
    invoke-direct {p0}, Lbsgamesdkhttp/a/e/k$a;->d()V

    goto :goto_4

    :cond_7b
    const/16 v1, 0x10

    if-eq v0, v1, :cond_81

    if-nez v0, :cond_85

    :cond_81
    invoke-direct {p0}, Lbsgamesdkhttp/a/e/k$a;->f()V

    goto :goto_4

    :cond_85
    const/16 v1, 0xf

    invoke-virtual {p0, v0, v1}, Lbsgamesdkhttp/a/e/k$a;->a(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lbsgamesdkhttp/a/e/k$a;->d(I)V

    goto/16 :goto_4

    :cond_92
    return-void
.end method

.method public b()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lbsgamesdkhttp/a/e/j;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lbsgamesdkhttp/a/e/k$a;->e:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lbsgamesdkhttp/a/e/k$a;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    return-object v0
.end method

.method c()Lbsgamesdkio/ByteString;
    .registers 7

    invoke-direct {p0}, Lbsgamesdkhttp/a/e/k$a;->h()I

    move-result v1

    and-int/lit16 v0, v1, 0x80

    const/16 v2, 0x80

    if-ne v0, v2, :cond_27

    const/4 v0, 0x1

    :goto_b
    const/16 v2, 0x7f

    invoke-virtual {p0, v1, v2}, Lbsgamesdkhttp/a/e/k$a;->a(II)I

    move-result v1

    if-eqz v0, :cond_29

    invoke-static {}, Lbsgamesdkhttp/a/e/f;->a()Lbsgamesdkhttp/a/e/f;

    move-result-object v0

    iget-object v2, p0, Lbsgamesdkhttp/a/e/k$a;->f:Lbsgamesdkio/e;

    int-to-long v4, v1

    invoke-interface {v2, v4, v5}, Lbsgamesdkio/e;->f(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lbsgamesdkhttp/a/e/f;->a([B)[B

    move-result-object v0

    invoke-static {v0}, Lbsgamesdkio/ByteString;->of([B)Lbsgamesdkio/ByteString;

    move-result-object v0

    :goto_26
    return-object v0

    :cond_27
    const/4 v0, 0x0

    goto :goto_b

    :cond_29
    iget-object v0, p0, Lbsgamesdkhttp/a/e/k$a;->f:Lbsgamesdkio/e;

    int-to-long v2, v1

    invoke-interface {v0, v2, v3}, Lbsgamesdkio/e;->c(J)Lbsgamesdkio/ByteString;

    move-result-object v0

    goto :goto_26
.end method
