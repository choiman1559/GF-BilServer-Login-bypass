.class Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;
.super Ljava/lang/Object;
.source "ViewBoundsCheck.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ViewBoundsCheck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BoundFlags"
.end annotation


# instance fields
.field mBoundFlags:I

.field mChildEnd:I

.field mChildStart:I

.field mRvEnd:I

.field mRvStart:I


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    return-void
.end method


# virtual methods
.method addFlags(I)V
    .registers 3
    .param p1, "flags"    # I

    .prologue
    .line 152
    iget v0, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    .line 153
    return-void
.end method

.method boundsMatch()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 170
    iget v1, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    and-int/lit8 v1, v1, 0x7

    if-eqz v1, :cond_17

    .line 171
    iget v1, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    iget v2, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mChildStart:I

    iget v3, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mRvStart:I

    invoke-virtual {p0, v2, v3}, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->compare(II)I

    move-result v2

    shl-int/lit8 v2, v2, 0x0

    and-int/2addr v1, v2

    if-nez v1, :cond_17

    .line 193
    :cond_16
    :goto_16
    return v0

    .line 176
    :cond_17
    iget v1, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    and-int/lit8 v1, v1, 0x70

    if-eqz v1, :cond_2c

    .line 177
    iget v1, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    iget v2, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mChildStart:I

    iget v3, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mRvEnd:I

    invoke-virtual {p0, v2, v3}, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->compare(II)I

    move-result v2

    shl-int/lit8 v2, v2, 0x4

    and-int/2addr v1, v2

    if-eqz v1, :cond_16

    .line 182
    :cond_2c
    iget v1, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    and-int/lit16 v1, v1, 0x700

    if-eqz v1, :cond_41

    .line 183
    iget v1, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    iget v2, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mChildEnd:I

    iget v3, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mRvStart:I

    invoke-virtual {p0, v2, v3}, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->compare(II)I

    move-result v2

    shl-int/lit8 v2, v2, 0x8

    and-int/2addr v1, v2

    if-eqz v1, :cond_16

    .line 188
    :cond_41
    iget v1, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    and-int/lit16 v1, v1, 0x7000

    if-eqz v1, :cond_56

    .line 189
    iget v1, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    iget v2, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mChildEnd:I

    iget v3, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mRvEnd:I

    invoke-virtual {p0, v2, v3}, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->compare(II)I

    move-result v2

    shl-int/lit8 v2, v2, 0xc

    and-int/2addr v1, v2

    if-eqz v1, :cond_16

    .line 193
    :cond_56
    const/4 v0, 0x1

    goto :goto_16
.end method

.method compare(II)I
    .registers 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 160
    if-le p1, p2, :cond_4

    .line 161
    const/4 v0, 0x1

    .line 166
    :goto_3
    return v0

    .line 163
    :cond_4
    if-ne p1, p2, :cond_8

    .line 164
    const/4 v0, 0x2

    goto :goto_3

    .line 166
    :cond_8
    const/4 v0, 0x4

    goto :goto_3
.end method

.method resetFlags()V
    .registers 2

    .prologue
    .line 156
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    .line 157
    return-void
.end method

.method setBounds(IIII)V
    .registers 5
    .param p1, "rvStart"    # I
    .param p2, "rvEnd"    # I
    .param p3, "childStart"    # I
    .param p4, "childEnd"    # I

    .prologue
    .line 141
    iput p1, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mRvStart:I

    .line 142
    iput p2, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mRvEnd:I

    .line 143
    iput p3, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mChildStart:I

    .line 144
    iput p4, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mChildEnd:I

    .line 145
    return-void
.end method

.method setFlags(II)V
    .registers 5
    .param p1, "flags"    # I
    .param p2, "mask"    # I

    .prologue
    .line 148
    iget v0, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    xor-int/lit8 v1, p2, -0x1

    and-int/2addr v0, v1

    and-int v1, p1, p2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    .line 149
    return-void
.end method
