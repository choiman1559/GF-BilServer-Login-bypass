.class public final Lbsgamesdkhttp/a/e/i;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private final b:[I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lbsgamesdkhttp/a/e/i;->b:[I

    return-void
.end method


# virtual methods
.method a(II)Lbsgamesdkhttp/a/e/i;
    .registers 5

    iget-object v0, p0, Lbsgamesdkhttp/a/e/i;->b:[I

    array-length v0, v0

    if-lt p1, v0, :cond_6

    :goto_5
    return-object p0

    :cond_6
    const/4 v0, 0x1

    shl-int/2addr v0, p1

    iget v1, p0, Lbsgamesdkhttp/a/e/i;->a:I

    or-int/2addr v0, v1

    iput v0, p0, Lbsgamesdkhttp/a/e/i;->a:I

    iget-object v0, p0, Lbsgamesdkhttp/a/e/i;->b:[I

    aput p2, v0, p1

    goto :goto_5
.end method

.method a()V
    .registers 3

    const/4 v1, 0x0

    iput v1, p0, Lbsgamesdkhttp/a/e/i;->a:I

    iget-object v0, p0, Lbsgamesdkhttp/a/e/i;->b:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method

.method a(Lbsgamesdkhttp/a/e/i;)V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0xa

    if-ge v0, v1, :cond_16

    invoke-virtual {p1, v0}, Lbsgamesdkhttp/a/e/i;->a(I)Z

    move-result v1

    if-nez v1, :cond_e

    :goto_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_e
    invoke-virtual {p1, v0}, Lbsgamesdkhttp/a/e/i;->b(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lbsgamesdkhttp/a/e/i;->a(II)Lbsgamesdkhttp/a/e/i;

    goto :goto_b

    :cond_16
    return-void
.end method

.method a(I)Z
    .registers 5

    const/4 v0, 0x1

    shl-int v1, v0, p1

    iget v2, p0, Lbsgamesdkhttp/a/e/i;->a:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_9

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method b()I
    .registers 2

    iget v0, p0, Lbsgamesdkhttp/a/e/i;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    return v0
.end method

.method b(I)I
    .registers 3

    iget-object v0, p0, Lbsgamesdkhttp/a/e/i;->b:[I

    aget v0, v0, p1

    return v0
.end method

.method c()I
    .registers 3

    const/4 v0, 0x2

    iget v1, p0, Lbsgamesdkhttp/a/e/i;->a:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_c

    iget-object v0, p0, Lbsgamesdkhttp/a/e/i;->b:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    :goto_b
    return v0

    :cond_c
    const/4 v0, -0x1

    goto :goto_b
.end method

.method c(I)I
    .registers 4

    const/16 v0, 0x10

    iget v1, p0, Lbsgamesdkhttp/a/e/i;->a:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_c

    iget-object v0, p0, Lbsgamesdkhttp/a/e/i;->b:[I

    const/4 v1, 0x4

    aget p1, v0, v1

    :cond_c
    return p1
.end method

.method d()I
    .registers 3

    const/16 v0, 0x80

    iget v1, p0, Lbsgamesdkhttp/a/e/i;->a:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_d

    iget-object v0, p0, Lbsgamesdkhttp/a/e/i;->b:[I

    const/4 v1, 0x7

    aget v0, v0, v1

    :goto_c
    return v0

    :cond_d
    const v0, 0xffff

    goto :goto_c
.end method

.method d(I)I
    .registers 4

    const/16 v0, 0x20

    iget v1, p0, Lbsgamesdkhttp/a/e/i;->a:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_c

    iget-object v0, p0, Lbsgamesdkhttp/a/e/i;->b:[I

    const/4 v1, 0x5

    aget p1, v0, v1

    :cond_c
    return p1
.end method
