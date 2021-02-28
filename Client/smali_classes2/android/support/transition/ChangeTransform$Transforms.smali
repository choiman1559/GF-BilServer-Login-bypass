.class Landroid/support/transition/ChangeTransform$Transforms;
.super Ljava/lang/Object;
.source "ChangeTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/transition/ChangeTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Transforms"
.end annotation


# instance fields
.field final mRotationX:F

.field final mRotationY:F

.field final mRotationZ:F

.field final mScaleX:F

.field final mScaleY:F

.field final mTranslationX:F

.field final mTranslationY:F

.field final mTranslationZ:F


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 467
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iput v0, p0, Landroid/support/transition/ChangeTransform$Transforms;->mTranslationX:F

    .line 468
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iput v0, p0, Landroid/support/transition/ChangeTransform$Transforms;->mTranslationY:F

    .line 469
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getTranslationZ(Landroid/view/View;)F

    move-result v0

    iput v0, p0, Landroid/support/transition/ChangeTransform$Transforms;->mTranslationZ:F

    .line 470
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v0

    iput v0, p0, Landroid/support/transition/ChangeTransform$Transforms;->mScaleX:F

    .line 471
    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v0

    iput v0, p0, Landroid/support/transition/ChangeTransform$Transforms;->mScaleY:F

    .line 472
    invoke-virtual {p1}, Landroid/view/View;->getRotationX()F

    move-result v0

    iput v0, p0, Landroid/support/transition/ChangeTransform$Transforms;->mRotationX:F

    .line 473
    invoke-virtual {p1}, Landroid/view/View;->getRotationY()F

    move-result v0

    iput v0, p0, Landroid/support/transition/ChangeTransform$Transforms;->mRotationY:F

    .line 474
    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    move-result v0

    iput v0, p0, Landroid/support/transition/ChangeTransform$Transforms;->mRotationZ:F

    .line 475
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 484
    instance-of v2, p1, Landroid/support/transition/ChangeTransform$Transforms;

    if-nez v2, :cond_6

    .line 488
    :cond_5
    :goto_5
    return v1

    :cond_6
    move-object v0, p1

    .line 487
    check-cast v0, Landroid/support/transition/ChangeTransform$Transforms;

    .line 488
    .local v0, "thatTransform":Landroid/support/transition/ChangeTransform$Transforms;
    iget v2, v0, Landroid/support/transition/ChangeTransform$Transforms;->mTranslationX:F

    iget v3, p0, Landroid/support/transition/ChangeTransform$Transforms;->mTranslationX:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_5

    iget v2, v0, Landroid/support/transition/ChangeTransform$Transforms;->mTranslationY:F

    iget v3, p0, Landroid/support/transition/ChangeTransform$Transforms;->mTranslationY:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_5

    iget v2, v0, Landroid/support/transition/ChangeTransform$Transforms;->mTranslationZ:F

    iget v3, p0, Landroid/support/transition/ChangeTransform$Transforms;->mTranslationZ:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_5

    iget v2, v0, Landroid/support/transition/ChangeTransform$Transforms;->mScaleX:F

    iget v3, p0, Landroid/support/transition/ChangeTransform$Transforms;->mScaleX:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_5

    iget v2, v0, Landroid/support/transition/ChangeTransform$Transforms;->mScaleY:F

    iget v3, p0, Landroid/support/transition/ChangeTransform$Transforms;->mScaleY:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_5

    iget v2, v0, Landroid/support/transition/ChangeTransform$Transforms;->mRotationX:F

    iget v3, p0, Landroid/support/transition/ChangeTransform$Transforms;->mRotationX:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_5

    iget v2, v0, Landroid/support/transition/ChangeTransform$Transforms;->mRotationY:F

    iget v3, p0, Landroid/support/transition/ChangeTransform$Transforms;->mRotationY:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_5

    iget v2, v0, Landroid/support/transition/ChangeTransform$Transforms;->mRotationZ:F

    iget v3, p0, Landroid/support/transition/ChangeTransform$Transforms;->mRotationZ:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_5

    const/4 v1, 0x1

    goto :goto_5
.end method

.method public hashCode()I
    .registers 6

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 500
    iget v2, p0, Landroid/support/transition/ChangeTransform$Transforms;->mTranslationX:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_7f

    iget v2, p0, Landroid/support/transition/ChangeTransform$Transforms;->mTranslationX:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 501
    .local v0, "code":I
    :goto_e
    mul-int/lit8 v3, v0, 0x1f

    iget v2, p0, Landroid/support/transition/ChangeTransform$Transforms;->mTranslationY:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_81

    iget v2, p0, Landroid/support/transition/ChangeTransform$Transforms;->mTranslationY:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    :goto_1c
    add-int v0, v3, v2

    .line 502
    mul-int/lit8 v3, v0, 0x1f

    iget v2, p0, Landroid/support/transition/ChangeTransform$Transforms;->mTranslationZ:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_83

    iget v2, p0, Landroid/support/transition/ChangeTransform$Transforms;->mTranslationZ:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    :goto_2c
    add-int v0, v3, v2

    .line 503
    mul-int/lit8 v3, v0, 0x1f

    iget v2, p0, Landroid/support/transition/ChangeTransform$Transforms;->mScaleX:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_85

    iget v2, p0, Landroid/support/transition/ChangeTransform$Transforms;->mScaleX:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    :goto_3c
    add-int v0, v3, v2

    .line 504
    mul-int/lit8 v3, v0, 0x1f

    iget v2, p0, Landroid/support/transition/ChangeTransform$Transforms;->mScaleY:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_87

    iget v2, p0, Landroid/support/transition/ChangeTransform$Transforms;->mScaleY:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    :goto_4c
    add-int v0, v3, v2

    .line 505
    mul-int/lit8 v3, v0, 0x1f

    iget v2, p0, Landroid/support/transition/ChangeTransform$Transforms;->mRotationX:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_89

    iget v2, p0, Landroid/support/transition/ChangeTransform$Transforms;->mRotationX:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    :goto_5c
    add-int v0, v3, v2

    .line 506
    mul-int/lit8 v3, v0, 0x1f

    iget v2, p0, Landroid/support/transition/ChangeTransform$Transforms;->mRotationY:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_8b

    iget v2, p0, Landroid/support/transition/ChangeTransform$Transforms;->mRotationY:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    :goto_6c
    add-int v0, v3, v2

    .line 507
    mul-int/lit8 v2, v0, 0x1f

    iget v3, p0, Landroid/support/transition/ChangeTransform$Transforms;->mRotationZ:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_7c

    iget v1, p0, Landroid/support/transition/ChangeTransform$Transforms;->mRotationZ:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    :cond_7c
    add-int v0, v2, v1

    .line 508
    return v0

    .end local v0    # "code":I
    :cond_7f
    move v0, v1

    .line 500
    goto :goto_e

    .restart local v0    # "code":I
    :cond_81
    move v2, v1

    .line 501
    goto :goto_1c

    :cond_83
    move v2, v1

    .line 502
    goto :goto_2c

    :cond_85
    move v2, v1

    .line 503
    goto :goto_3c

    :cond_87
    move v2, v1

    .line 504
    goto :goto_4c

    :cond_89
    move v2, v1

    .line 505
    goto :goto_5c

    :cond_8b
    move v2, v1

    .line 506
    goto :goto_6c
.end method

.method public restore(Landroid/view/View;)V
    .registers 11
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 478
    iget v1, p0, Landroid/support/transition/ChangeTransform$Transforms;->mTranslationX:F

    iget v2, p0, Landroid/support/transition/ChangeTransform$Transforms;->mTranslationY:F

    iget v3, p0, Landroid/support/transition/ChangeTransform$Transforms;->mTranslationZ:F

    iget v4, p0, Landroid/support/transition/ChangeTransform$Transforms;->mScaleX:F

    iget v5, p0, Landroid/support/transition/ChangeTransform$Transforms;->mScaleY:F

    iget v6, p0, Landroid/support/transition/ChangeTransform$Transforms;->mRotationX:F

    iget v7, p0, Landroid/support/transition/ChangeTransform$Transforms;->mRotationY:F

    iget v8, p0, Landroid/support/transition/ChangeTransform$Transforms;->mRotationZ:F

    move-object v0, p1

    invoke-static/range {v0 .. v8}, Landroid/support/transition/ChangeTransform;->setTransforms(Landroid/view/View;FFFFFFFF)V

    .line 480
    return-void
.end method
