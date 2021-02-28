.class final Lbsgamesdkhttp/a/e/k$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbsgamesdkhttp/a/e/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:[Lbsgamesdkhttp/a/e/j;

.field d:I

.field e:I

.field f:I

.field private final g:Lbsgamesdkio/c;

.field private final h:Z

.field private i:I

.field private j:Z


# direct methods
.method constructor <init>(IZLbsgamesdkio/c;)V
    .registers 6

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lbsgamesdkhttp/a/e/k$b;->i:I

    const/16 v0, 0x8

    new-array v0, v0, [Lbsgamesdkhttp/a/e/j;

    iput-object v0, p0, Lbsgamesdkhttp/a/e/k$b;->c:[Lbsgamesdkhttp/a/e/j;

    iget-object v0, p0, Lbsgamesdkhttp/a/e/k$b;->c:[Lbsgamesdkhttp/a/e/j;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lbsgamesdkhttp/a/e/k$b;->d:I

    iput v1, p0, Lbsgamesdkhttp/a/e/k$b;->e:I

    iput v1, p0, Lbsgamesdkhttp/a/e/k$b;->f:I

    iput p1, p0, Lbsgamesdkhttp/a/e/k$b;->a:I

    iput p1, p0, Lbsgamesdkhttp/a/e/k$b;->b:I

    iput-boolean p2, p0, Lbsgamesdkhttp/a/e/k$b;->h:Z

    iput-object p3, p0, Lbsgamesdkhttp/a/e/k$b;->g:Lbsgamesdkio/c;

    return-void
.end method

.method constructor <init>(Lbsgamesdkio/c;)V
    .registers 4

    const/16 v0, 0x1000

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lbsgamesdkhttp/a/e/k$b;-><init>(IZLbsgamesdkio/c;)V

    return-void
.end method

.method private a()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lbsgamesdkhttp/a/e/k$b;->c:[Lbsgamesdkhttp/a/e/j;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lbsgamesdkhttp/a/e/k$b;->c:[Lbsgamesdkhttp/a/e/j;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lbsgamesdkhttp/a/e/k$b;->d:I

    iput v2, p0, Lbsgamesdkhttp/a/e/k$b;->e:I

    iput v2, p0, Lbsgamesdkhttp/a/e/k$b;->f:I

    return-void
.end method

.method private a(Lbsgamesdkhttp/a/e/j;)V
    .registers 8

    iget v0, p1, Lbsgamesdkhttp/a/e/j;->i:I

    iget v1, p0, Lbsgamesdkhttp/a/e/k$b;->b:I

    if-le v0, v1, :cond_a

    invoke-direct {p0}, Lbsgamesdkhttp/a/e/k$b;->a()V

    :goto_9
    return-void

    :cond_a
    iget v1, p0, Lbsgamesdkhttp/a/e/k$b;->f:I

    add-int/2addr v1, v0

    iget v2, p0, Lbsgamesdkhttp/a/e/k$b;->b:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v1}, Lbsgamesdkhttp/a/e/k$b;->b(I)I

    iget v1, p0, Lbsgamesdkhttp/a/e/k$b;->e:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lbsgamesdkhttp/a/e/k$b;->c:[Lbsgamesdkhttp/a/e/j;

    array-length v2, v2

    if-le v1, v2, :cond_38

    iget-object v1, p0, Lbsgamesdkhttp/a/e/k$b;->c:[Lbsgamesdkhttp/a/e/j;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Lbsgamesdkhttp/a/e/j;

    iget-object v2, p0, Lbsgamesdkhttp/a/e/k$b;->c:[Lbsgamesdkhttp/a/e/j;

    const/4 v3, 0x0

    iget-object v4, p0, Lbsgamesdkhttp/a/e/k$b;->c:[Lbsgamesdkhttp/a/e/j;

    array-length v4, v4

    iget-object v5, p0, Lbsgamesdkhttp/a/e/k$b;->c:[Lbsgamesdkhttp/a/e/j;

    array-length v5, v5

    invoke-static {v2, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lbsgamesdkhttp/a/e/k$b;->c:[Lbsgamesdkhttp/a/e/j;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lbsgamesdkhttp/a/e/k$b;->d:I

    iput-object v1, p0, Lbsgamesdkhttp/a/e/k$b;->c:[Lbsgamesdkhttp/a/e/j;

    :cond_38
    iget v1, p0, Lbsgamesdkhttp/a/e/k$b;->d:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lbsgamesdkhttp/a/e/k$b;->d:I

    iget-object v2, p0, Lbsgamesdkhttp/a/e/k$b;->c:[Lbsgamesdkhttp/a/e/j;

    aput-object p1, v2, v1

    iget v1, p0, Lbsgamesdkhttp/a/e/k$b;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lbsgamesdkhttp/a/e/k$b;->e:I

    iget v1, p0, Lbsgamesdkhttp/a/e/k$b;->f:I

    add-int/2addr v0, v1

    iput v0, p0, Lbsgamesdkhttp/a/e/k$b;->f:I

    goto :goto_9
.end method

.method private b(I)I
    .registers 8

    const/4 v1, 0x0

    if-lez p1, :cond_51

    iget-object v0, p0, Lbsgamesdkhttp/a/e/k$b;->c:[Lbsgamesdkhttp/a/e/j;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    iget v2, p0, Lbsgamesdkhttp/a/e/k$b;->d:I

    if-lt v0, v2, :cond_2b

    if-lez p1, :cond_2b

    iget-object v2, p0, Lbsgamesdkhttp/a/e/k$b;->c:[Lbsgamesdkhttp/a/e/j;

    aget-object v2, v2, v0

    iget v2, v2, Lbsgamesdkhttp/a/e/j;->i:I

    sub-int/2addr p1, v2

    iget v2, p0, Lbsgamesdkhttp/a/e/k$b;->f:I

    iget-object v3, p0, Lbsgamesdkhttp/a/e/k$b;->c:[Lbsgamesdkhttp/a/e/j;

    aget-object v3, v3, v0

    iget v3, v3, Lbsgamesdkhttp/a/e/j;->i:I

    sub-int/2addr v2, v3

    iput v2, p0, Lbsgamesdkhttp/a/e/k$b;->f:I

    iget v2, p0, Lbsgamesdkhttp/a/e/k$b;->e:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lbsgamesdkhttp/a/e/k$b;->e:I

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_2b
    iget-object v0, p0, Lbsgamesdkhttp/a/e/k$b;->c:[Lbsgamesdkhttp/a/e/j;

    iget v2, p0, Lbsgamesdkhttp/a/e/k$b;->d:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lbsgamesdkhttp/a/e/k$b;->c:[Lbsgamesdkhttp/a/e/j;

    iget v4, p0, Lbsgamesdkhttp/a/e/k$b;->d:I

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v4, v1

    iget v5, p0, Lbsgamesdkhttp/a/e/k$b;->e:I

    invoke-static {v0, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lbsgamesdkhttp/a/e/k$b;->c:[Lbsgamesdkhttp/a/e/j;

    iget v2, p0, Lbsgamesdkhttp/a/e/k$b;->d:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lbsgamesdkhttp/a/e/k$b;->d:I

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v1

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iget v0, p0, Lbsgamesdkhttp/a/e/k$b;->d:I

    add-int/2addr v0, v1

    iput v0, p0, Lbsgamesdkhttp/a/e/k$b;->d:I

    :cond_51
    return v1
.end method

.method private b()V
    .registers 3

    iget v0, p0, Lbsgamesdkhttp/a/e/k$b;->b:I

    iget v1, p0, Lbsgamesdkhttp/a/e/k$b;->f:I

    if-ge v0, v1, :cond_d

    iget v0, p0, Lbsgamesdkhttp/a/e/k$b;->b:I

    if-nez v0, :cond_e

    invoke-direct {p0}, Lbsgamesdkhttp/a/e/k$b;->a()V

    :cond_d
    :goto_d
    return-void

    :cond_e
    iget v0, p0, Lbsgamesdkhttp/a/e/k$b;->f:I

    iget v1, p0, Lbsgamesdkhttp/a/e/k$b;->b:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lbsgamesdkhttp/a/e/k$b;->b(I)I

    goto :goto_d
.end method


# virtual methods
.method a(I)V
    .registers 4

    iput p1, p0, Lbsgamesdkhttp/a/e/k$b;->a:I

    const/16 v0, 0x4000

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lbsgamesdkhttp/a/e/k$b;->b:I

    if-ne v1, v0, :cond_d

    :goto_c
    return-void

    :cond_d
    iget v1, p0, Lbsgamesdkhttp/a/e/k$b;->b:I

    if-ge v0, v1, :cond_19

    iget v1, p0, Lbsgamesdkhttp/a/e/k$b;->i:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lbsgamesdkhttp/a/e/k$b;->i:I

    :cond_19
    const/4 v1, 0x1

    iput-boolean v1, p0, Lbsgamesdkhttp/a/e/k$b;->j:Z

    iput v0, p0, Lbsgamesdkhttp/a/e/k$b;->b:I

    invoke-direct {p0}, Lbsgamesdkhttp/a/e/k$b;->b()V

    goto :goto_c
.end method

.method a(III)V
    .registers 7

    if-ge p1, p2, :cond_a

    iget-object v0, p0, Lbsgamesdkhttp/a/e/k$b;->g:Lbsgamesdkio/c;

    or-int v1, p3, p1

    invoke-virtual {v0, v1}, Lbsgamesdkio/c;->b(I)Lbsgamesdkio/c;

    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lbsgamesdkhttp/a/e/k$b;->g:Lbsgamesdkio/c;

    or-int v1, p3, p2

    invoke-virtual {v0, v1}, Lbsgamesdkio/c;->b(I)Lbsgamesdkio/c;

    sub-int v0, p1, p2

    :goto_13
    const/16 v1, 0x80

    if-lt v0, v1, :cond_23

    and-int/lit8 v1, v0, 0x7f

    iget-object v2, p0, Lbsgamesdkhttp/a/e/k$b;->g:Lbsgamesdkio/c;

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {v2, v1}, Lbsgamesdkio/c;->b(I)Lbsgamesdkio/c;

    ushr-int/lit8 v0, v0, 0x7

    goto :goto_13

    :cond_23
    iget-object v1, p0, Lbsgamesdkhttp/a/e/k$b;->g:Lbsgamesdkio/c;

    invoke-virtual {v1, v0}, Lbsgamesdkio/c;->b(I)Lbsgamesdkio/c;

    goto :goto_9
.end method

.method a(Lbsgamesdkio/ByteString;)V
    .registers 6

    const/16 v3, 0x7f

    iget-boolean v0, p0, Lbsgamesdkhttp/a/e/k$b;->h:Z

    if-eqz v0, :cond_33

    invoke-static {}, Lbsgamesdkhttp/a/e/f;->a()Lbsgamesdkhttp/a/e/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbsgamesdkhttp/a/e/f;->a(Lbsgamesdkio/ByteString;)I

    move-result v0

    invoke-virtual {p1}, Lbsgamesdkio/ByteString;->size()I

    move-result v1

    if-ge v0, v1, :cond_33

    new-instance v0, Lbsgamesdkio/c;

    invoke-direct {v0}, Lbsgamesdkio/c;-><init>()V

    invoke-static {}, Lbsgamesdkhttp/a/e/f;->a()Lbsgamesdkhttp/a/e/f;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lbsgamesdkhttp/a/e/f;->a(Lbsgamesdkio/ByteString;Lbsgamesdkio/d;)V

    invoke-virtual {v0}, Lbsgamesdkio/c;->m()Lbsgamesdkio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lbsgamesdkio/ByteString;->size()I

    move-result v1

    const/16 v2, 0x80

    invoke-virtual {p0, v1, v3, v2}, Lbsgamesdkhttp/a/e/k$b;->a(III)V

    iget-object v1, p0, Lbsgamesdkhttp/a/e/k$b;->g:Lbsgamesdkio/c;

    invoke-virtual {v1, v0}, Lbsgamesdkio/c;->a(Lbsgamesdkio/ByteString;)Lbsgamesdkio/c;

    :goto_32
    return-void

    :cond_33
    invoke-virtual {p1}, Lbsgamesdkio/ByteString;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v3, v1}, Lbsgamesdkhttp/a/e/k$b;->a(III)V

    iget-object v0, p0, Lbsgamesdkhttp/a/e/k$b;->g:Lbsgamesdkio/c;

    invoke-virtual {v0, p1}, Lbsgamesdkio/c;->a(Lbsgamesdkio/ByteString;)Lbsgamesdkio/c;

    goto :goto_32
.end method

.method a(Ljava/util/List;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbsgamesdkhttp/a/e/j;",
            ">;)V"
        }
    .end annotation

    const/16 v12, 0x40

    const/16 v3, 0x20

    const/16 v2, 0x1f

    const/4 v6, 0x0

    const/4 v4, -0x1

    iget-boolean v0, p0, Lbsgamesdkhttp/a/e/k$b;->j:Z

    if-eqz v0, :cond_23

    iget v0, p0, Lbsgamesdkhttp/a/e/k$b;->i:I

    iget v1, p0, Lbsgamesdkhttp/a/e/k$b;->b:I

    if-ge v0, v1, :cond_17

    iget v0, p0, Lbsgamesdkhttp/a/e/k$b;->i:I

    invoke-virtual {p0, v0, v2, v3}, Lbsgamesdkhttp/a/e/k$b;->a(III)V

    :cond_17
    iput-boolean v6, p0, Lbsgamesdkhttp/a/e/k$b;->j:Z

    const v0, 0x7fffffff

    iput v0, p0, Lbsgamesdkhttp/a/e/k$b;->i:I

    iget v0, p0, Lbsgamesdkhttp/a/e/k$b;->b:I

    invoke-virtual {p0, v0, v2, v3}, Lbsgamesdkhttp/a/e/k$b;->a(III)V

    :cond_23
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    move v5, v6

    :goto_28
    if-ge v5, v7, :cond_e8

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsgamesdkhttp/a/e/j;

    iget-object v1, v0, Lbsgamesdkhttp/a/e/j;->g:Lbsgamesdkio/ByteString;

    invoke-virtual {v1}, Lbsgamesdkio/ByteString;->toAsciiLowercase()Lbsgamesdkio/ByteString;

    move-result-object v8

    iget-object v9, v0, Lbsgamesdkhttp/a/e/j;->h:Lbsgamesdkio/ByteString;

    sget-object v1, Lbsgamesdkhttp/a/e/k;->b:Ljava/util/Map;

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_ec

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-le v1, v2, :cond_e9

    const/16 v2, 0x8

    if-ge v1, v2, :cond_e9

    sget-object v2, Lbsgamesdkhttp/a/e/k;->a:[Lbsgamesdkhttp/a/e/j;

    add-int/lit8 v3, v1, -0x1

    aget-object v2, v2, v3

    iget-object v2, v2, Lbsgamesdkhttp/a/e/j;->h:Lbsgamesdkio/ByteString;

    invoke-static {v2, v9}, Lbsgamesdkhttp/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_96

    move v2, v1

    :goto_5e
    if-ne v2, v4, :cond_89

    iget v3, p0, Lbsgamesdkhttp/a/e/k$b;->d:I

    add-int/lit8 v3, v3, 0x1

    iget-object v10, p0, Lbsgamesdkhttp/a/e/k$b;->c:[Lbsgamesdkhttp/a/e/j;

    array-length v10, v10

    :goto_67
    if-ge v3, v10, :cond_89

    iget-object v11, p0, Lbsgamesdkhttp/a/e/k$b;->c:[Lbsgamesdkhttp/a/e/j;

    aget-object v11, v11, v3

    iget-object v11, v11, Lbsgamesdkhttp/a/e/j;->g:Lbsgamesdkio/ByteString;

    invoke-static {v11, v8}, Lbsgamesdkhttp/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_af

    iget-object v11, p0, Lbsgamesdkhttp/a/e/k$b;->c:[Lbsgamesdkhttp/a/e/j;

    aget-object v11, v11, v3

    iget-object v11, v11, Lbsgamesdkhttp/a/e/j;->h:Lbsgamesdkio/ByteString;

    invoke-static {v11, v9}, Lbsgamesdkhttp/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a5

    iget v2, p0, Lbsgamesdkhttp/a/e/k$b;->d:I

    sub-int v2, v3, v2

    sget-object v3, Lbsgamesdkhttp/a/e/k;->a:[Lbsgamesdkhttp/a/e/j;

    array-length v3, v3

    add-int/2addr v2, v3

    :cond_89
    if-eq v2, v4, :cond_b2

    const/16 v0, 0x7f

    const/16 v1, 0x80

    invoke-virtual {p0, v2, v0, v1}, Lbsgamesdkhttp/a/e/k$b;->a(III)V

    :goto_92
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_28

    :cond_96
    sget-object v2, Lbsgamesdkhttp/a/e/k;->a:[Lbsgamesdkhttp/a/e/j;

    aget-object v2, v2, v1

    iget-object v2, v2, Lbsgamesdkhttp/a/e/j;->h:Lbsgamesdkio/ByteString;

    invoke-static {v2, v9}, Lbsgamesdkhttp/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e9

    add-int/lit8 v2, v1, 0x1

    goto :goto_5e

    :cond_a5
    if-ne v1, v4, :cond_af

    iget v1, p0, Lbsgamesdkhttp/a/e/k$b;->d:I

    sub-int v1, v3, v1

    sget-object v11, Lbsgamesdkhttp/a/e/k;->a:[Lbsgamesdkhttp/a/e/j;

    array-length v11, v11

    add-int/2addr v1, v11

    :cond_af
    add-int/lit8 v3, v3, 0x1

    goto :goto_67

    :cond_b2
    if-ne v1, v4, :cond_c3

    iget-object v1, p0, Lbsgamesdkhttp/a/e/k$b;->g:Lbsgamesdkio/c;

    invoke-virtual {v1, v12}, Lbsgamesdkio/c;->b(I)Lbsgamesdkio/c;

    invoke-virtual {p0, v8}, Lbsgamesdkhttp/a/e/k$b;->a(Lbsgamesdkio/ByteString;)V

    invoke-virtual {p0, v9}, Lbsgamesdkhttp/a/e/k$b;->a(Lbsgamesdkio/ByteString;)V

    invoke-direct {p0, v0}, Lbsgamesdkhttp/a/e/k$b;->a(Lbsgamesdkhttp/a/e/j;)V

    goto :goto_92

    :cond_c3
    sget-object v2, Lbsgamesdkhttp/a/e/j;->a:Lbsgamesdkio/ByteString;

    invoke-virtual {v8, v2}, Lbsgamesdkio/ByteString;->startsWith(Lbsgamesdkio/ByteString;)Z

    move-result v2

    if-eqz v2, :cond_dc

    sget-object v2, Lbsgamesdkhttp/a/e/j;->f:Lbsgamesdkio/ByteString;

    invoke-virtual {v2, v8}, Lbsgamesdkio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_dc

    const/16 v0, 0xf

    invoke-virtual {p0, v1, v0, v6}, Lbsgamesdkhttp/a/e/k$b;->a(III)V

    invoke-virtual {p0, v9}, Lbsgamesdkhttp/a/e/k$b;->a(Lbsgamesdkio/ByteString;)V

    goto :goto_92

    :cond_dc
    const/16 v2, 0x3f

    invoke-virtual {p0, v1, v2, v12}, Lbsgamesdkhttp/a/e/k$b;->a(III)V

    invoke-virtual {p0, v9}, Lbsgamesdkhttp/a/e/k$b;->a(Lbsgamesdkio/ByteString;)V

    invoke-direct {p0, v0}, Lbsgamesdkhttp/a/e/k$b;->a(Lbsgamesdkhttp/a/e/j;)V

    goto :goto_92

    :cond_e8
    return-void

    :cond_e9
    move v2, v4

    goto/16 :goto_5e

    :cond_ec
    move v1, v4

    move v2, v4

    goto/16 :goto_5e
.end method
