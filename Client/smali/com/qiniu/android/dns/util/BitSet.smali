.class public final Lcom/qiniu/android/dns/util/BitSet;
.super Ljava/lang/Object;


# instance fields
.field private set:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/qiniu/android/dns/util/BitSet;->set:I

    return-void
.end method


# virtual methods
.method public allIsSet(I)Z
    .registers 5

    const/4 v0, 0x1

    iget v1, p0, Lcom/qiniu/android/dns/util/BitSet;->set:I

    add-int/lit8 v1, v1, 0x1

    shl-int v2, v0, p1

    if-ne v1, v2, :cond_a

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public clear()Lcom/qiniu/android/dns/util/BitSet;
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/qiniu/android/dns/util/BitSet;->set:I

    return-object p0
.end method

.method public isSet(I)Z
    .registers 5

    const/4 v0, 0x1

    iget v1, p0, Lcom/qiniu/android/dns/util/BitSet;->set:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_9

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public leadingZeros()I
    .registers 3

    const/16 v0, 0x20

    iget v1, p0, Lcom/qiniu/android/dns/util/BitSet;->set:I

    shr-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_c

    const/16 v0, 0x10

    iput v1, p0, Lcom/qiniu/android/dns/util/BitSet;->set:I

    :cond_c
    iget v1, p0, Lcom/qiniu/android/dns/util/BitSet;->set:I

    shr-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_16

    add-int/lit8 v0, v0, -0x8

    iput v1, p0, Lcom/qiniu/android/dns/util/BitSet;->set:I

    :cond_16
    iget v1, p0, Lcom/qiniu/android/dns/util/BitSet;->set:I

    shr-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_20

    add-int/lit8 v0, v0, -0x4

    iput v1, p0, Lcom/qiniu/android/dns/util/BitSet;->set:I

    :cond_20
    iget v1, p0, Lcom/qiniu/android/dns/util/BitSet;->set:I

    shr-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2a

    add-int/lit8 v0, v0, -0x2

    iput v1, p0, Lcom/qiniu/android/dns/util/BitSet;->set:I

    :cond_2a
    iget v1, p0, Lcom/qiniu/android/dns/util/BitSet;->set:I

    shr-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_33

    add-int/lit8 v0, v0, -0x2

    :goto_32
    return v0

    :cond_33
    iget v1, p0, Lcom/qiniu/android/dns/util/BitSet;->set:I

    sub-int/2addr v0, v1

    goto :goto_32
.end method

.method public noneIsSet(I)Z
    .registers 3

    iget v0, p0, Lcom/qiniu/android/dns/util/BitSet;->set:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public set(I)Lcom/qiniu/android/dns/util/BitSet;
    .registers 4

    iget v0, p0, Lcom/qiniu/android/dns/util/BitSet;->set:I

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/qiniu/android/dns/util/BitSet;->set:I

    return-object p0
.end method

.method public value()I
    .registers 2

    iget v0, p0, Lcom/qiniu/android/dns/util/BitSet;->set:I

    return v0
.end method
