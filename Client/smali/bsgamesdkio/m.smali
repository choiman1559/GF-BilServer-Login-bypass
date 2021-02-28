.class final Lbsgamesdkio/m;
.super Ljava/lang/Object;


# instance fields
.field final a:[B

.field b:I

.field c:I

.field d:Z

.field e:Z

.field f:Lbsgamesdkio/m;

.field g:Lbsgamesdkio/m;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lbsgamesdkio/m;->a:[B

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbsgamesdkio/m;->e:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbsgamesdkio/m;->d:Z

    return-void
.end method

.method constructor <init>(Lbsgamesdkio/m;)V
    .registers 5

    iget-object v0, p1, Lbsgamesdkio/m;->a:[B

    iget v1, p1, Lbsgamesdkio/m;->b:I

    iget v2, p1, Lbsgamesdkio/m;->c:I

    invoke-direct {p0, v0, v1, v2}, Lbsgamesdkio/m;-><init>([BII)V

    const/4 v0, 0x1

    iput-boolean v0, p1, Lbsgamesdkio/m;->d:Z

    return-void
.end method

.method constructor <init>([BII)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbsgamesdkio/m;->a:[B

    iput p2, p0, Lbsgamesdkio/m;->b:I

    iput p3, p0, Lbsgamesdkio/m;->c:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbsgamesdkio/m;->e:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbsgamesdkio/m;->d:Z

    return-void
.end method


# virtual methods
.method public a()Lbsgamesdkio/m;
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Lbsgamesdkio/m;->f:Lbsgamesdkio/m;

    if-eq v0, p0, :cond_18

    iget-object v0, p0, Lbsgamesdkio/m;->f:Lbsgamesdkio/m;

    :goto_7
    iget-object v2, p0, Lbsgamesdkio/m;->g:Lbsgamesdkio/m;

    iget-object v3, p0, Lbsgamesdkio/m;->f:Lbsgamesdkio/m;

    iput-object v3, v2, Lbsgamesdkio/m;->f:Lbsgamesdkio/m;

    iget-object v2, p0, Lbsgamesdkio/m;->f:Lbsgamesdkio/m;

    iget-object v3, p0, Lbsgamesdkio/m;->g:Lbsgamesdkio/m;

    iput-object v3, v2, Lbsgamesdkio/m;->g:Lbsgamesdkio/m;

    iput-object v1, p0, Lbsgamesdkio/m;->f:Lbsgamesdkio/m;

    iput-object v1, p0, Lbsgamesdkio/m;->g:Lbsgamesdkio/m;

    return-object v0

    :cond_18
    move-object v0, v1

    goto :goto_7
.end method

.method public a(I)Lbsgamesdkio/m;
    .registers 7

    if-lez p1, :cond_9

    iget v0, p0, Lbsgamesdkio/m;->c:I

    iget v1, p0, Lbsgamesdkio/m;->b:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_f

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_f
    const/16 v0, 0x400

    if-lt p1, v0, :cond_28

    new-instance v0, Lbsgamesdkio/m;

    invoke-direct {v0, p0}, Lbsgamesdkio/m;-><init>(Lbsgamesdkio/m;)V

    :goto_18
    iget v1, v0, Lbsgamesdkio/m;->b:I

    add-int/2addr v1, p1

    iput v1, v0, Lbsgamesdkio/m;->c:I

    iget v1, p0, Lbsgamesdkio/m;->b:I

    add-int/2addr v1, p1

    iput v1, p0, Lbsgamesdkio/m;->b:I

    iget-object v1, p0, Lbsgamesdkio/m;->g:Lbsgamesdkio/m;

    invoke-virtual {v1, v0}, Lbsgamesdkio/m;->a(Lbsgamesdkio/m;)Lbsgamesdkio/m;

    return-object v0

    :cond_28
    invoke-static {}, Lbsgamesdkio/n;->a()Lbsgamesdkio/m;

    move-result-object v0

    iget-object v1, p0, Lbsgamesdkio/m;->a:[B

    iget v2, p0, Lbsgamesdkio/m;->b:I

    iget-object v3, v0, Lbsgamesdkio/m;->a:[B

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_18
.end method

.method public a(Lbsgamesdkio/m;)Lbsgamesdkio/m;
    .registers 3

    iput-object p0, p1, Lbsgamesdkio/m;->g:Lbsgamesdkio/m;

    iget-object v0, p0, Lbsgamesdkio/m;->f:Lbsgamesdkio/m;

    iput-object v0, p1, Lbsgamesdkio/m;->f:Lbsgamesdkio/m;

    iget-object v0, p0, Lbsgamesdkio/m;->f:Lbsgamesdkio/m;

    iput-object p1, v0, Lbsgamesdkio/m;->g:Lbsgamesdkio/m;

    iput-object p1, p0, Lbsgamesdkio/m;->f:Lbsgamesdkio/m;

    return-object p1
.end method

.method public a(Lbsgamesdkio/m;I)V
    .registers 9

    const/16 v2, 0x2000

    const/4 v5, 0x0

    iget-boolean v0, p1, Lbsgamesdkio/m;->e:Z

    if-nez v0, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_d
    iget v0, p1, Lbsgamesdkio/m;->c:I

    add-int/2addr v0, p2

    if-le v0, v2, :cond_41

    iget-boolean v0, p1, Lbsgamesdkio/m;->d:Z

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1c
    iget v0, p1, Lbsgamesdkio/m;->c:I

    add-int/2addr v0, p2

    iget v1, p1, Lbsgamesdkio/m;->b:I

    sub-int/2addr v0, v1

    if-le v0, v2, :cond_2a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_2a
    iget-object v0, p1, Lbsgamesdkio/m;->a:[B

    iget v1, p1, Lbsgamesdkio/m;->b:I

    iget-object v2, p1, Lbsgamesdkio/m;->a:[B

    iget v3, p1, Lbsgamesdkio/m;->c:I

    iget v4, p1, Lbsgamesdkio/m;->b:I

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Lbsgamesdkio/m;->c:I

    iget v1, p1, Lbsgamesdkio/m;->b:I

    sub-int/2addr v0, v1

    iput v0, p1, Lbsgamesdkio/m;->c:I

    iput v5, p1, Lbsgamesdkio/m;->b:I

    :cond_41
    iget-object v0, p0, Lbsgamesdkio/m;->a:[B

    iget v1, p0, Lbsgamesdkio/m;->b:I

    iget-object v2, p1, Lbsgamesdkio/m;->a:[B

    iget v3, p1, Lbsgamesdkio/m;->c:I

    invoke-static {v0, v1, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Lbsgamesdkio/m;->c:I

    add-int/2addr v0, p2

    iput v0, p1, Lbsgamesdkio/m;->c:I

    iget v0, p0, Lbsgamesdkio/m;->b:I

    add-int/2addr v0, p2

    iput v0, p0, Lbsgamesdkio/m;->b:I

    return-void
.end method

.method public b()V
    .registers 4

    iget-object v0, p0, Lbsgamesdkio/m;->g:Lbsgamesdkio/m;

    if-ne v0, p0, :cond_a

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_a
    iget-object v0, p0, Lbsgamesdkio/m;->g:Lbsgamesdkio/m;

    iget-boolean v0, v0, Lbsgamesdkio/m;->e:Z

    if-nez v0, :cond_11

    :cond_10
    :goto_10
    return-void

    :cond_11
    iget v0, p0, Lbsgamesdkio/m;->c:I

    iget v1, p0, Lbsgamesdkio/m;->b:I

    sub-int v1, v0, v1

    iget-object v0, p0, Lbsgamesdkio/m;->g:Lbsgamesdkio/m;

    iget v0, v0, Lbsgamesdkio/m;->c:I

    rsub-int v2, v0, 0x2000

    iget-object v0, p0, Lbsgamesdkio/m;->g:Lbsgamesdkio/m;

    iget-boolean v0, v0, Lbsgamesdkio/m;->d:Z

    if-eqz v0, :cond_33

    const/4 v0, 0x0

    :goto_24
    add-int/2addr v0, v2

    if-gt v1, v0, :cond_10

    iget-object v0, p0, Lbsgamesdkio/m;->g:Lbsgamesdkio/m;

    invoke-virtual {p0, v0, v1}, Lbsgamesdkio/m;->a(Lbsgamesdkio/m;I)V

    invoke-virtual {p0}, Lbsgamesdkio/m;->a()Lbsgamesdkio/m;

    invoke-static {p0}, Lbsgamesdkio/n;->a(Lbsgamesdkio/m;)V

    goto :goto_10

    :cond_33
    iget-object v0, p0, Lbsgamesdkio/m;->g:Lbsgamesdkio/m;

    iget v0, v0, Lbsgamesdkio/m;->b:I

    goto :goto_24
.end method
