.class public Landroid/support/design/internal/ForegroundLinearLayout;
.super Landroid/support/v7/widget/LinearLayoutCompat;
.source "ForegroundLinearLayout.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private foreground:Landroid/graphics/drawable/Drawable;

.field foregroundBoundsChanged:Z

.field private foregroundGravity:I

.field protected mForegroundInPadding:Z

.field private final overlayBounds:Landroid/graphics/Rect;

.field private final selfBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/internal/ForegroundLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/internal/ForegroundLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/internal/ForegroundLinearLayout;->selfBounds:Landroid/graphics/Rect;

    .line 44
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/internal/ForegroundLinearLayout;->overlayBounds:Landroid/graphics/Rect;

    .line 46
    const/16 v0, 0x77

    iput v0, p0, Landroid/support/design/internal/ForegroundLinearLayout;->foregroundGravity:I

    .line 48
    iput-boolean v8, p0, Landroid/support/design/internal/ForegroundLinearLayout;->mForegroundInPadding:Z

    .line 50
    iput-boolean v4, p0, Landroid/support/design/internal/ForegroundLinearLayout;->foregroundBoundsChanged:Z

    .line 63
    sget-object v2, Landroid/support/design/R$styleable;->ForegroundLinearLayout:[I

    new-array v5, v4, [I

    move-object v0, p1

    move-object v1, p2

    move v3, p3

    .line 64
    invoke-static/range {v0 .. v5}, Landroid/support/design/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 67
    .local v6, "a":Landroid/content/res/TypedArray;
    sget v0, Landroid/support/design/R$styleable;->ForegroundLinearLayout_android_foregroundGravity:I

    iget v1, p0, Landroid/support/design/internal/ForegroundLinearLayout;->foregroundGravity:I

    .line 68
    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/support/design/internal/ForegroundLinearLayout;->foregroundGravity:I

    .line 70
    sget v0, Landroid/support/design/R$styleable;->ForegroundLinearLayout_android_foreground:I

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 71
    .local v7, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v7, :cond_3b

    .line 72
    invoke-virtual {p0, v7}, Landroid/support/design/internal/ForegroundLinearLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 75
    :cond_3b
    sget v0, Landroid/support/design/R$styleable;->ForegroundLinearLayout_foregroundInsidePadding:I

    .line 76
    invoke-virtual {v6, v0, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/design/internal/ForegroundLinearLayout;->mForegroundInPadding:Z

    .line 78
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 79
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v7, 0x0

    .line 202
    invoke-super {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->draw(Landroid/graphics/Canvas;)V

    .line 204
    iget-object v5, p0, Landroid/support/design/internal/ForegroundLinearLayout;->foreground:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_42

    .line 205
    iget-object v0, p0, Landroid/support/design/internal/ForegroundLinearLayout;->foreground:Landroid/graphics/drawable/Drawable;

    .line 207
    .local v0, "foreground":Landroid/graphics/drawable/Drawable;
    iget-boolean v5, p0, Landroid/support/design/internal/ForegroundLinearLayout;->foregroundBoundsChanged:Z

    if-eqz v5, :cond_3f

    .line 208
    iput-boolean v7, p0, Landroid/support/design/internal/ForegroundLinearLayout;->foregroundBoundsChanged:Z

    .line 209
    iget-object v3, p0, Landroid/support/design/internal/ForegroundLinearLayout;->selfBounds:Landroid/graphics/Rect;

    .line 210
    .local v3, "selfBounds":Landroid/graphics/Rect;
    iget-object v2, p0, Landroid/support/design/internal/ForegroundLinearLayout;->overlayBounds:Landroid/graphics/Rect;

    .line 212
    .local v2, "overlayBounds":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/support/design/internal/ForegroundLinearLayout;->getRight()I

    move-result v5

    invoke-virtual {p0}, Landroid/support/design/internal/ForegroundLinearLayout;->getLeft()I

    move-result v6

    sub-int v4, v5, v6

    .line 213
    .local v4, "w":I
    invoke-virtual {p0}, Landroid/support/design/internal/ForegroundLinearLayout;->getBottom()I

    move-result v5

    invoke-virtual {p0}, Landroid/support/design/internal/ForegroundLinearLayout;->getTop()I

    move-result v6

    sub-int v1, v5, v6

    .line 215
    .local v1, "h":I
    iget-boolean v5, p0, Landroid/support/design/internal/ForegroundLinearLayout;->mForegroundInPadding:Z

    if-eqz v5, :cond_43

    .line 216
    invoke-virtual {v3, v7, v7, v4, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 222
    :goto_2f
    iget v5, p0, Landroid/support/design/internal/ForegroundLinearLayout;->foregroundGravity:I

    .line 224
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    .line 225
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    .line 222
    invoke-static {v5, v6, v7, v3, v2}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 228
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 231
    .end local v1    # "h":I
    .end local v2    # "overlayBounds":Landroid/graphics/Rect;
    .end local v3    # "selfBounds":Landroid/graphics/Rect;
    .end local v4    # "w":I
    :cond_3f
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 233
    .end local v0    # "foreground":Landroid/graphics/drawable/Drawable;
    :cond_42
    return-void

    .line 219
    .restart local v0    # "foreground":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "h":I
    .restart local v2    # "overlayBounds":Landroid/graphics/Rect;
    .restart local v3    # "selfBounds":Landroid/graphics/Rect;
    .restart local v4    # "w":I
    :cond_43
    invoke-virtual {p0}, Landroid/support/design/internal/ForegroundLinearLayout;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Landroid/support/design/internal/ForegroundLinearLayout;->getPaddingTop()I

    move-result v6

    invoke-virtual {p0}, Landroid/support/design/internal/ForegroundLinearLayout;->getPaddingRight()I

    move-result v7

    sub-int v7, v4, v7

    invoke-virtual {p0}, Landroid/support/design/internal/ForegroundLinearLayout;->getPaddingBottom()I

    move-result v8

    sub-int v8, v1, v8

    .line 218
    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_2f
.end method

.method public drawableHotspotChanged(FF)V
    .registers 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .prologue
    .line 239
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutCompat;->drawableHotspotChanged(FF)V

    .line 240
    iget-object v0, p0, Landroid/support/design/internal/ForegroundLinearLayout;->foreground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    .line 241
    iget-object v0, p0, Landroid/support/design/internal/ForegroundLinearLayout;->foreground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 243
    :cond_c
    return-void
.end method

.method protected drawableStateChanged()V
    .registers 3

    .prologue
    .line 136
    invoke-super {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->drawableStateChanged()V

    .line 137
    iget-object v0, p0, Landroid/support/design/internal/ForegroundLinearLayout;->foreground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroid/support/design/internal/ForegroundLinearLayout;->foreground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 138
    iget-object v0, p0, Landroid/support/design/internal/ForegroundLinearLayout;->foreground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/design/internal/ForegroundLinearLayout;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 140
    :cond_18
    return-void
.end method

.method public getForeground()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 185
    iget-object v0, p0, Landroid/support/design/internal/ForegroundLinearLayout;->foreground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getForegroundGravity()I
    .registers 2

    .prologue
    .line 89
    iget v0, p0, Landroid/support/design/internal/ForegroundLinearLayout;->foregroundGravity:I

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .registers 2
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0xb
    .end annotation

    .prologue
    .line 128
    invoke-super {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->jumpDrawablesToCurrentState()V

    .line 129
    iget-object v0, p0, Landroid/support/design/internal/ForegroundLinearLayout;->foreground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    .line 130
    iget-object v0, p0, Landroid/support/design/internal/ForegroundLinearLayout;->foreground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 132
    :cond_c
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 7
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 190
    invoke-super/range {p0 .. p5}, Landroid/support/v7/widget/LinearLayoutCompat;->onLayout(ZIIII)V

    .line 191
    iget-boolean v0, p0, Landroid/support/design/internal/ForegroundLinearLayout;->foregroundBoundsChanged:Z

    or-int/2addr v0, p1

    iput-boolean v0, p0, Landroid/support/design/internal/ForegroundLinearLayout;->foregroundBoundsChanged:Z

    .line 192
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 6
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 196
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/LinearLayoutCompat;->onSizeChanged(IIII)V

    .line 197
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/internal/ForegroundLinearLayout;->foregroundBoundsChanged:Z

    .line 198
    return-void
.end method

.method public setForeground(Landroid/graphics/drawable/Drawable;)V
    .registers 5
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 151
    iget-object v1, p0, Landroid/support/design/internal/ForegroundLinearLayout;->foreground:Landroid/graphics/drawable/Drawable;

    if-eq v1, p1, :cond_3f

    .line 152
    iget-object v1, p0, Landroid/support/design/internal/ForegroundLinearLayout;->foreground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_13

    .line 153
    iget-object v1, p0, Landroid/support/design/internal/ForegroundLinearLayout;->foreground:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 154
    iget-object v1, p0, Landroid/support/design/internal/ForegroundLinearLayout;->foreground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Landroid/support/design/internal/ForegroundLinearLayout;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 157
    :cond_13
    iput-object p1, p0, Landroid/support/design/internal/ForegroundLinearLayout;->foreground:Landroid/graphics/drawable/Drawable;

    .line 159
    if-eqz p1, :cond_40

    .line 160
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/support/design/internal/ForegroundLinearLayout;->setWillNotDraw(Z)V

    .line 161
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 162
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 163
    invoke-virtual {p0}, Landroid/support/design/internal/ForegroundLinearLayout;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 165
    :cond_2b
    iget v1, p0, Landroid/support/design/internal/ForegroundLinearLayout;->foregroundGravity:I

    const/16 v2, 0x77

    if-ne v1, v2, :cond_39

    .line 166
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 167
    .local v0, "padding":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 172
    .end local v0    # "padding":Landroid/graphics/Rect;
    :cond_39
    :goto_39
    invoke-virtual {p0}, Landroid/support/design/internal/ForegroundLinearLayout;->requestLayout()V

    .line 173
    invoke-virtual {p0}, Landroid/support/design/internal/ForegroundLinearLayout;->invalidate()V

    .line 175
    :cond_3f
    return-void

    .line 170
    :cond_40
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/support/design/internal/ForegroundLinearLayout;->setWillNotDraw(Z)V

    goto :goto_39
.end method

.method public setForegroundGravity(I)V
    .registers 5
    .param p1, "foregroundGravity"    # I

    .prologue
    .line 100
    iget v1, p0, Landroid/support/design/internal/ForegroundLinearLayout;->foregroundGravity:I

    if-eq v1, p1, :cond_2d

    .line 101
    const v1, 0x800007

    and-int/2addr v1, p1

    if-nez v1, :cond_e

    .line 102
    const v1, 0x800003

    or-int/2addr p1, v1

    .line 105
    :cond_e
    and-int/lit8 v1, p1, 0x70

    if-nez v1, :cond_14

    .line 106
    or-int/lit8 p1, p1, 0x30

    .line 109
    :cond_14
    iput p1, p0, Landroid/support/design/internal/ForegroundLinearLayout;->foregroundGravity:I

    .line 111
    iget v1, p0, Landroid/support/design/internal/ForegroundLinearLayout;->foregroundGravity:I

    const/16 v2, 0x77

    if-ne v1, v2, :cond_2a

    iget-object v1, p0, Landroid/support/design/internal/ForegroundLinearLayout;->foreground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2a

    .line 112
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 113
    .local v0, "padding":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/support/design/internal/ForegroundLinearLayout;->foreground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 116
    .end local v0    # "padding":Landroid/graphics/Rect;
    :cond_2a
    invoke-virtual {p0}, Landroid/support/design/internal/ForegroundLinearLayout;->requestLayout()V

    .line 118
    :cond_2d
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 122
    invoke-super {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Landroid/support/design/internal/ForegroundLinearLayout;->foreground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
