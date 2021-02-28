.class public abstract Landroid/support/design/transformation/FabTransformationBehavior;
.super Landroid/support/design/transformation/ExpandableTransformationBehavior;
.source "FabTransformationBehavior.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;
    }
.end annotation


# instance fields
.field private final tmpArray:[I

.field private final tmpRect:Landroid/graphics/Rect;

.field private final tmpRectF1:Landroid/graphics/RectF;

.field private final tmpRectF2:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 79
    invoke-direct {p0}, Landroid/support/design/transformation/ExpandableTransformationBehavior;-><init>()V

    .line 74
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/transformation/FabTransformationBehavior;->tmpRect:Landroid/graphics/Rect;

    .line 75
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/design/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    .line 76
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/design/transformation/FabTransformationBehavior;->tmpRectF2:Landroid/graphics/RectF;

    .line 77
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/design/transformation/FabTransformationBehavior;->tmpArray:[I

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Landroid/support/design/transformation/ExpandableTransformationBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/transformation/FabTransformationBehavior;->tmpRect:Landroid/graphics/Rect;

    .line 75
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/design/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    .line 76
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/design/transformation/FabTransformationBehavior;->tmpRectF2:Landroid/graphics/RectF;

    .line 77
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/design/transformation/FabTransformationBehavior;->tmpArray:[I

    .line 83
    return-void
.end method

.method private calculateChildContentContainer(Landroid/view/View;)Landroid/view/ViewGroup;
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 633
    sget v1, Landroid/support/design/R$id;->mtrl_child_content_container:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 634
    .local v0, "childContentContainer":Landroid/view/View;
    if-eqz v0, :cond_d

    .line 635
    invoke-direct {p0, v0}, Landroid/support/design/transformation/FabTransformationBehavior;->toViewGroupOrNull(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v1

    .line 645
    .end local p1    # "view":Landroid/view/View;
    :goto_c
    return-object v1

    .line 639
    .restart local p1    # "view":Landroid/view/View;
    :cond_d
    instance-of v1, p1, Landroid/support/design/transformation/TransformationChildLayout;

    if-nez v1, :cond_15

    instance-of v1, p1, Landroid/support/design/transformation/TransformationChildCard;

    if-eqz v1, :cond_21

    .line 640
    :cond_15
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "view":Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 641
    invoke-direct {p0, v0}, Landroid/support/design/transformation/FabTransformationBehavior;->toViewGroupOrNull(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v1

    goto :goto_c

    .line 645
    .restart local p1    # "view":Landroid/view/View;
    :cond_21
    invoke-direct {p0, p1}, Landroid/support/design/transformation/FabTransformationBehavior;->toViewGroupOrNull(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v1

    goto :goto_c
.end method

.method private calculateChildVisibleBoundsAtEndOfExpansion(Landroid/view/View;Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;Landroid/support/design/animation/MotionTiming;Landroid/support/design/animation/MotionTiming;FFFFLandroid/graphics/RectF;)V
    .registers 15
    .param p1, "child"    # Landroid/view/View;
    .param p2, "spec"    # Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;
    .param p3, "translationXTiming"    # Landroid/support/design/animation/MotionTiming;
    .param p4, "translationYTiming"    # Landroid/support/design/animation/MotionTiming;
    .param p5, "fromX"    # F
    .param p6, "fromY"    # F
    .param p7, "toX"    # F
    .param p8, "toY"    # F
    .param p9, "childBounds"    # Landroid/graphics/RectF;

    .prologue
    .line 591
    .line 592
    invoke-direct {p0, p2, p3, p5, p7}, Landroid/support/design/transformation/FabTransformationBehavior;->calculateValueOfAnimationAtEndOfExpansion(Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;Landroid/support/design/animation/MotionTiming;FF)F

    move-result v1

    .line 594
    .local v1, "translationX":F
    invoke-direct {p0, p2, p4, p6, p8}, Landroid/support/design/transformation/FabTransformationBehavior;->calculateValueOfAnimationAtEndOfExpansion(Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;Landroid/support/design/animation/MotionTiming;FF)F

    move-result v2

    .line 597
    .local v2, "translationY":F
    iget-object v3, p0, Landroid/support/design/transformation/FabTransformationBehavior;->tmpRect:Landroid/graphics/Rect;

    .line 598
    .local v3, "window":Landroid/graphics/Rect;
    invoke-virtual {p1, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 599
    iget-object v4, p0, Landroid/support/design/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    .line 600
    .local v4, "windowF":Landroid/graphics/RectF;
    invoke-virtual {v4, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 603
    iget-object v0, p0, Landroid/support/design/transformation/FabTransformationBehavior;->tmpRectF2:Landroid/graphics/RectF;

    .line 604
    .local v0, "childVisibleBounds":Landroid/graphics/RectF;
    invoke-direct {p0, p1, v0}, Landroid/support/design/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 605
    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 606
    invoke-virtual {v0, v4}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    .line 608
    invoke-virtual {p9, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 609
    return-void
.end method

.method private calculateRevealCenterX(Landroid/view/View;Landroid/view/View;Landroid/support/design/animation/Positioning;)F
    .registers 9
    .param p1, "dependency"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "positioning"    # Landroid/support/design/animation/Positioning;

    .prologue
    .line 556
    iget-object v1, p0, Landroid/support/design/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    .line 557
    .local v1, "dependencyBounds":Landroid/graphics/RectF;
    iget-object v0, p0, Landroid/support/design/transformation/FabTransformationBehavior;->tmpRectF2:Landroid/graphics/RectF;

    .line 559
    .local v0, "childBounds":Landroid/graphics/RectF;
    invoke-direct {p0, p1, v1}, Landroid/support/design/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 560
    invoke-direct {p0, p2, v0}, Landroid/support/design/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 562
    invoke-direct {p0, p1, p2, p3}, Landroid/support/design/transformation/FabTransformationBehavior;->calculateTranslationX(Landroid/view/View;Landroid/view/View;Landroid/support/design/animation/Positioning;)F

    move-result v2

    .line 563
    .local v2, "translationX":F
    neg-float v3, v2

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 565
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget v4, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    return v3
.end method

.method private calculateRevealCenterY(Landroid/view/View;Landroid/view/View;Landroid/support/design/animation/Positioning;)F
    .registers 9
    .param p1, "dependency"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "positioning"    # Landroid/support/design/animation/Positioning;

    .prologue
    .line 569
    iget-object v1, p0, Landroid/support/design/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    .line 570
    .local v1, "dependencyBounds":Landroid/graphics/RectF;
    iget-object v0, p0, Landroid/support/design/transformation/FabTransformationBehavior;->tmpRectF2:Landroid/graphics/RectF;

    .line 572
    .local v0, "childBounds":Landroid/graphics/RectF;
    invoke-direct {p0, p1, v1}, Landroid/support/design/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 573
    invoke-direct {p0, p2, v0}, Landroid/support/design/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 575
    invoke-direct {p0, p1, p2, p3}, Landroid/support/design/transformation/FabTransformationBehavior;->calculateTranslationY(Landroid/view/View;Landroid/view/View;Landroid/support/design/animation/Positioning;)F

    move-result v2

    .line 576
    .local v2, "translationY":F
    const/4 v3, 0x0

    neg-float v4, v2

    invoke-virtual {v0, v3, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 578
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    iget v4, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v4

    return v3
.end method

.method private calculateTranslationX(Landroid/view/View;Landroid/view/View;Landroid/support/design/animation/Positioning;)F
    .registers 9
    .param p1, "dependency"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "positioning"    # Landroid/support/design/animation/Positioning;

    .prologue
    .line 492
    iget-object v1, p0, Landroid/support/design/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    .line 493
    .local v1, "dependencyBounds":Landroid/graphics/RectF;
    iget-object v0, p0, Landroid/support/design/transformation/FabTransformationBehavior;->tmpRectF2:Landroid/graphics/RectF;

    .line 495
    .local v0, "childBounds":Landroid/graphics/RectF;
    invoke-direct {p0, p1, v1}, Landroid/support/design/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 496
    invoke-direct {p0, p2, v0}, Landroid/support/design/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 498
    const/4 v2, 0x0

    .line 499
    .local v2, "translationX":F
    iget v3, p3, Landroid/support/design/animation/Positioning;->gravity:I

    and-int/lit8 v3, v3, 0x7

    packed-switch v3, :pswitch_data_30

    .line 512
    :goto_12
    :pswitch_12
    iget v3, p3, Landroid/support/design/animation/Positioning;->xAdjustment:F

    add-float/2addr v2, v3

    .line 513
    return v2

    .line 501
    :pswitch_16
    iget v3, v0, Landroid/graphics/RectF;->left:F

    iget v4, v1, Landroid/graphics/RectF;->left:F

    sub-float v2, v3, v4

    .line 502
    goto :goto_12

    .line 504
    :pswitch_1d
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    sub-float v2, v3, v4

    .line 505
    goto :goto_12

    .line 507
    :pswitch_28
    iget v3, v0, Landroid/graphics/RectF;->right:F

    iget v4, v1, Landroid/graphics/RectF;->right:F

    sub-float v2, v3, v4

    .line 508
    goto :goto_12

    .line 499
    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_12
        :pswitch_16
        :pswitch_12
        :pswitch_28
    .end packed-switch
.end method

.method private calculateTranslationY(Landroid/view/View;Landroid/view/View;Landroid/support/design/animation/Positioning;)F
    .registers 9
    .param p1, "dependency"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "positioning"    # Landroid/support/design/animation/Positioning;

    .prologue
    .line 517
    iget-object v1, p0, Landroid/support/design/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    .line 518
    .local v1, "dependencyBounds":Landroid/graphics/RectF;
    iget-object v0, p0, Landroid/support/design/transformation/FabTransformationBehavior;->tmpRectF2:Landroid/graphics/RectF;

    .line 520
    .local v0, "childBounds":Landroid/graphics/RectF;
    invoke-direct {p0, p1, v1}, Landroid/support/design/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 521
    invoke-direct {p0, p2, v0}, Landroid/support/design/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 523
    const/4 v2, 0x0

    .line 524
    .local v2, "translationY":F
    iget v3, p3, Landroid/support/design/animation/Positioning;->gravity:I

    and-int/lit8 v3, v3, 0x70

    sparse-switch v3, :sswitch_data_30

    .line 537
    :goto_12
    iget v3, p3, Landroid/support/design/animation/Positioning;->yAdjustment:F

    add-float/2addr v2, v3

    .line 538
    return v2

    .line 526
    :sswitch_16
    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget v4, v1, Landroid/graphics/RectF;->top:F

    sub-float v2, v3, v4

    .line 527
    goto :goto_12

    .line 529
    :sswitch_1d
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    sub-float v2, v3, v4

    .line 530
    goto :goto_12

    .line 532
    :sswitch_28
    iget v3, v0, Landroid/graphics/RectF;->bottom:F

    iget v4, v1, Landroid/graphics/RectF;->bottom:F

    sub-float v2, v3, v4

    .line 533
    goto :goto_12

    .line 524
    nop

    :sswitch_data_30
    .sparse-switch
        0x10 -> :sswitch_1d
        0x30 -> :sswitch_16
        0x50 -> :sswitch_28
    .end sparse-switch
.end method

.method private calculateValueOfAnimationAtEndOfExpansion(Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;Landroid/support/design/animation/MotionTiming;FF)F
    .registers 19
    .param p1, "spec"    # Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;
    .param p2, "timing"    # Landroid/support/design/animation/MotionTiming;
    .param p3, "from"    # F
    .param p4, "to"    # F

    .prologue
    .line 613
    invoke-virtual/range {p2 .. p2}, Landroid/support/design/animation/MotionTiming;->getDelay()J

    move-result-wide v2

    .line 614
    .local v2, "delay":J
    invoke-virtual/range {p2 .. p2}, Landroid/support/design/animation/MotionTiming;->getDuration()J

    move-result-wide v4

    .line 617
    .local v4, "duration":J
    iget-object v10, p1, Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Landroid/support/design/animation/MotionSpec;

    const-string v11, "expansion"

    invoke-virtual {v10, v11}, Landroid/support/design/animation/MotionSpec;->getTiming(Ljava/lang/String;)Landroid/support/design/animation/MotionTiming;

    move-result-object v8

    .line 618
    .local v8, "expansionTiming":Landroid/support/design/animation/MotionTiming;
    invoke-virtual {v8}, Landroid/support/design/animation/MotionTiming;->getDelay()J

    move-result-wide v10

    invoke-virtual {v8}, Landroid/support/design/animation/MotionTiming;->getDuration()J

    move-result-wide v12

    add-long v6, v10, v12

    .line 621
    .local v6, "expansionEnd":J
    const-wide/16 v10, 0x11

    add-long/2addr v6, v10

    .line 622
    sub-long v10, v6, v2

    long-to-float v10, v10

    long-to-float v11, v4

    div-float v9, v10, v11

    .line 625
    .local v9, "fraction":F
    invoke-virtual/range {p2 .. p2}, Landroid/support/design/animation/MotionTiming;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v10

    invoke-interface {v10, v9}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v9

    .line 626
    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v0, v1, v9}, Landroid/support/design/animation/AnimationUtils;->lerp(FFF)F

    move-result v10

    return v10
.end method

.method private calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V
    .registers 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/RectF;

    .prologue
    const/4 v4, 0x0

    .line 542
    move-object v0, p2

    .line 543
    .local v0, "windowBounds":Landroid/graphics/RectF;
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 545
    iget-object v1, p0, Landroid/support/design/transformation/FabTransformationBehavior;->tmpArray:[I

    .line 546
    .local v1, "windowLocation":[I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 548
    const/4 v2, 0x0

    aget v2, v1, v2

    int-to-float v2, v2

    const/4 v3, 0x1

    aget v3, v1, v3

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 552
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v2

    neg-float v2, v2

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v3

    neg-float v3, v3

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 553
    return-void
.end method

.method private createChildrenFadeAnimation(Landroid/view/View;Landroid/view/View;ZZLandroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;)V
    .registers 16
    .param p1, "unusedDependency"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "expanded"    # Z
    .param p4, "currentlyAnimating"    # Z
    .param p5, "spec"    # Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "ZZ",
            "Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p6, "animations":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    .local p7, "unusedListeners":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator$AnimatorListener;>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 459
    instance-of v3, p2, Landroid/view/ViewGroup;

    if-nez v3, :cond_8

    .line 489
    :cond_7
    :goto_7
    return-void

    .line 462
    :cond_8
    instance-of v3, p2, Landroid/support/design/circularreveal/CircularRevealWidget;

    if-eqz v3, :cond_10

    sget v3, Landroid/support/design/circularreveal/CircularRevealHelper;->STRATEGY:I

    if-eqz v3, :cond_7

    .line 468
    :cond_10
    invoke-direct {p0, p2}, Landroid/support/design/transformation/FabTransformationBehavior;->calculateChildContentContainer(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v1

    .line 469
    .local v1, "childContentContainer":Landroid/view/ViewGroup;
    if-eqz v1, :cond_7

    .line 475
    if-eqz p3, :cond_3e

    .line 476
    if-nez p4, :cond_23

    .line 477
    sget-object v3, Landroid/support/design/animation/ChildrenAlphaProperty;->CHILDREN_ALPHA:Landroid/util/Property;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 479
    :cond_23
    sget-object v3, Landroid/support/design/animation/ChildrenAlphaProperty;->CHILDREN_ALPHA:Landroid/util/Property;

    new-array v4, v7, [F

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v4, v6

    .line 480
    invoke-static {v1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 486
    .local v0, "animator":Landroid/animation/Animator;
    :goto_2f
    iget-object v3, p5, Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Landroid/support/design/animation/MotionSpec;

    const-string v4, "contentFade"

    invoke-virtual {v3, v4}, Landroid/support/design/animation/MotionSpec;->getTiming(Ljava/lang/String;)Landroid/support/design/animation/MotionTiming;

    move-result-object v2

    .line 487
    .local v2, "timing":Landroid/support/design/animation/MotionTiming;
    invoke-virtual {v2, v0}, Landroid/support/design/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    .line 488
    invoke-interface {p6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 482
    .end local v0    # "animator":Landroid/animation/Animator;
    .end local v2    # "timing":Landroid/support/design/animation/MotionTiming;
    :cond_3e
    sget-object v3, Landroid/support/design/animation/ChildrenAlphaProperty;->CHILDREN_ALPHA:Landroid/util/Property;

    new-array v4, v7, [F

    aput v5, v4, v6

    .line 483
    invoke-static {v1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .restart local v0    # "animator":Landroid/animation/Animator;
    goto :goto_2f
.end method

.method private createColorAnimation(Landroid/view/View;Landroid/view/View;ZZLandroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;)V
    .registers 16
    .param p1, "dependency"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "expanded"    # Z
    .param p4, "currentlyAnimating"    # Z
    .param p5, "spec"    # Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "ZZ",
            "Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p6, "animations":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    .local p7, "unusedListeners":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator$AnimatorListener;>;"
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 419
    instance-of v5, p2, Landroid/support/design/circularreveal/CircularRevealWidget;

    if-nez v5, :cond_7

    .line 449
    :goto_6
    return-void

    :cond_7
    move-object v1, p2

    .line 422
    check-cast v1, Landroid/support/design/circularreveal/CircularRevealWidget;

    .line 424
    .local v1, "circularRevealChild":Landroid/support/design/circularreveal/CircularRevealWidget;
    invoke-direct {p0, p1}, Landroid/support/design/transformation/FabTransformationBehavior;->getBackgroundTint(Landroid/view/View;)I

    move-result v3

    .line 425
    .local v3, "tint":I
    const v5, 0xffffff

    and-int v4, v3, v5

    .line 428
    .local v4, "transparent":I
    if-eqz p3, :cond_3a

    .line 429
    if-nez p4, :cond_1a

    .line 430
    invoke-interface {v1, v3}, Landroid/support/design/circularreveal/CircularRevealWidget;->setCircularRevealScrimColor(I)V

    .line 432
    :cond_1a
    sget-object v5, Landroid/support/design/circularreveal/CircularRevealWidget$CircularRevealScrimColorProperty;->CIRCULAR_REVEAL_SCRIM_COLOR:Landroid/util/Property;

    new-array v6, v6, [I

    aput v4, v6, v7

    .line 433
    invoke-static {v1, v5, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 445
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    :goto_24
    invoke-static {}, Landroid/support/design/animation/ArgbEvaluatorCompat;->getInstance()Landroid/support/design/animation/ArgbEvaluatorCompat;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 446
    iget-object v5, p5, Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Landroid/support/design/animation/MotionSpec;

    const-string v6, "color"

    invoke-virtual {v5, v6}, Landroid/support/design/animation/MotionSpec;->getTiming(Ljava/lang/String;)Landroid/support/design/animation/MotionTiming;

    move-result-object v2

    .line 447
    .local v2, "timing":Landroid/support/design/animation/MotionTiming;
    invoke-virtual {v2, v0}, Landroid/support/design/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    .line 448
    invoke-interface {p6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 438
    .end local v0    # "animator":Landroid/animation/ObjectAnimator;
    .end local v2    # "timing":Landroid/support/design/animation/MotionTiming;
    :cond_3a
    sget-object v5, Landroid/support/design/circularreveal/CircularRevealWidget$CircularRevealScrimColorProperty;->CIRCULAR_REVEAL_SCRIM_COLOR:Landroid/util/Property;

    new-array v6, v6, [I

    aput v3, v6, v7

    .line 439
    invoke-static {v1, v5, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .restart local v0    # "animator":Landroid/animation/ObjectAnimator;
    goto :goto_24
.end method

.method private createElevationAnimation(Landroid/view/View;Landroid/view/View;ZZLandroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;)V
    .registers 15
    .param p1, "dependency"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "expanded"    # Z
    .param p4, "currentlyAnimating"    # Z
    .param p5, "spec"    # Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "ZZ",
            "Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p6, "animations":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    .local p7, "unusedListeners":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator$AnimatorListener;>;"
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 187
    invoke-static {p2}, Landroid/support/v4/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result v3

    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result v4

    sub-float v2, v3, v4

    .line 190
    .local v2, "translationZ":F
    if-eqz p3, :cond_2e

    .line 191
    if-nez p4, :cond_14

    .line 192
    neg-float v3, v2

    invoke-virtual {p2, v3}, Landroid/view/View;->setTranslationZ(F)V

    .line 194
    :cond_14
    sget-object v3, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v4, v5, [F

    const/4 v5, 0x0

    aput v5, v4, v6

    invoke-static {p2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 199
    .local v0, "animator":Landroid/animation/Animator;
    :goto_1f
    iget-object v3, p5, Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Landroid/support/design/animation/MotionSpec;

    const-string v4, "elevation"

    invoke-virtual {v3, v4}, Landroid/support/design/animation/MotionSpec;->getTiming(Ljava/lang/String;)Landroid/support/design/animation/MotionTiming;

    move-result-object v1

    .line 200
    .local v1, "timing":Landroid/support/design/animation/MotionTiming;
    invoke-virtual {v1, v0}, Landroid/support/design/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    .line 201
    invoke-interface {p6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    return-void

    .line 196
    .end local v0    # "animator":Landroid/animation/Animator;
    .end local v1    # "timing":Landroid/support/design/animation/MotionTiming;
    :cond_2e
    sget-object v3, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v4, v5, [F

    neg-float v5, v2

    aput v5, v4, v6

    invoke-static {p2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .restart local v0    # "animator":Landroid/animation/Animator;
    goto :goto_1f
.end method

.method private createExpansionAnimation(Landroid/view/View;Landroid/view/View;ZZLandroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;FFLjava/util/List;Ljava/util/List;)V
    .registers 40
    .param p1, "dependency"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "expanded"    # Z
    .param p4, "currentlyAnimating"    # Z
    .param p5, "spec"    # Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;
    .param p6, "childWidth"    # F
    .param p7, "childHeight"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "ZZ",
            "Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;",
            "FF",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 334
    .local p8, "animations":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    .local p9, "listeners":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator$AnimatorListener;>;"
    move-object/from16 v0, p2

    instance-of v6, v0, Landroid/support/design/circularreveal/CircularRevealWidget;

    if-nez v6, :cond_7

    .line 409
    .end local p1    # "dependency":Landroid/view/View;
    :goto_6
    return-void

    .restart local p1    # "dependency":Landroid/view/View;
    :cond_7
    move-object/from16 v27, p2

    .line 337
    check-cast v27, Landroid/support/design/circularreveal/CircularRevealWidget;

    .line 339
    .local v27, "circularRevealChild":Landroid/support/design/circularreveal/CircularRevealWidget;
    move-object/from16 v0, p5

    iget-object v6, v0, Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;->positioning:Landroid/support/design/animation/Positioning;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v6}, Landroid/support/design/transformation/FabTransformationBehavior;->calculateRevealCenterX(Landroid/view/View;Landroid/view/View;Landroid/support/design/animation/Positioning;)F

    move-result v4

    .line 340
    .local v4, "revealCenterX":F
    move-object/from16 v0, p5

    iget-object v6, v0, Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;->positioning:Landroid/support/design/animation/Positioning;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v6}, Landroid/support/design/transformation/FabTransformationBehavior;->calculateRevealCenterY(Landroid/view/View;Landroid/view/View;Landroid/support/design/animation/Positioning;)F

    move-result v5

    .line 341
    .local v5, "revealCenterY":F
    check-cast p1, Landroid/support/design/widget/FloatingActionButton;

    .end local p1    # "dependency":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/design/transformation/FabTransformationBehavior;->tmpRect:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/support/design/widget/FloatingActionButton;->getContentRect(Landroid/graphics/Rect;)Z

    .line 342
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/design/transformation/FabTransformationBehavior;->tmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float v28, v6, v7

    .line 345
    .local v28, "dependencyRadius":F
    move-object/from16 v0, p5

    iget-object v6, v0, Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Landroid/support/design/animation/MotionSpec;

    const-string v7, "expansion"

    invoke-virtual {v6, v7}, Landroid/support/design/animation/MotionSpec;->getTiming(Ljava/lang/String;)Landroid/support/design/animation/MotionTiming;

    move-result-object v29

    .line 347
    .local v29, "timing":Landroid/support/design/animation/MotionTiming;
    if-eqz p3, :cond_ac

    .line 348
    if-nez p4, :cond_59

    .line 349
    new-instance v6, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    move/from16 v0, v28

    invoke-direct {v6, v4, v5, v0}, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;-><init>(FFF)V

    move-object/from16 v0, v27

    invoke-interface {v0, v6}, Landroid/support/design/circularreveal/CircularRevealWidget;->setRevealInfo(Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;)V

    .line 352
    :cond_59
    if-eqz p4, :cond_a9

    .line 353
    invoke-interface/range {v27 .. v27}, Landroid/support/design/circularreveal/CircularRevealWidget;->getRevealInfo()Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    move-result-object v6

    iget v12, v6, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    .line 354
    .local v12, "fromRadius":F
    :goto_61
    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v8, p6

    move/from16 v9, p7

    .line 355
    invoke-static/range {v4 .. v9}, Landroid/support/design/widget/MathUtils;->distanceToFurthestCorner(FFFFFF)F

    move-result v24

    .line 359
    .local v24, "toRadius":F
    move-object/from16 v0, v27

    move/from16 v1, v24

    invoke-static {v0, v4, v5, v1}, Landroid/support/design/circularreveal/CircularRevealCompat;->createCircularReveal(Landroid/support/design/circularreveal/CircularRevealWidget;FFF)Landroid/animation/Animator;

    move-result-object v26

    .line 361
    .local v26, "animator":Landroid/animation/Animator;
    new-instance v6, Landroid/support/design/transformation/FabTransformationBehavior$4;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v6, v0, v1}, Landroid/support/design/transformation/FabTransformationBehavior$4;-><init>(Landroid/support/design/transformation/FabTransformationBehavior;Landroid/support/design/circularreveal/CircularRevealWidget;)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 375
    invoke-virtual/range {v29 .. v29}, Landroid/support/design/animation/MotionTiming;->getDelay()J

    move-result-wide v8

    float-to-int v10, v4

    float-to-int v11, v5

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-object/from16 v13, p8

    .line 373
    invoke-direct/range {v6 .. v13}, Landroid/support/design/transformation/FabTransformationBehavior;->createPreFillRadialExpansion(Landroid/view/View;JIIFLjava/util/List;)V

    .line 406
    :goto_90
    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/support/design/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    .line 407
    move-object/from16 v0, p8

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 408
    invoke-static/range {v27 .. v27}, Landroid/support/design/circularreveal/CircularRevealCompat;->createCircularRevealListener(Landroid/support/design/circularreveal/CircularRevealWidget;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v6

    move-object/from16 v0, p9

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .end local v12    # "fromRadius":F
    .end local v24    # "toRadius":F
    .end local v26    # "animator":Landroid/animation/Animator;
    :cond_a9
    move/from16 v12, v28

    .line 353
    goto :goto_61

    .line 382
    :cond_ac
    invoke-interface/range {v27 .. v27}, Landroid/support/design/circularreveal/CircularRevealWidget;->getRevealInfo()Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    move-result-object v6

    iget v12, v6, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    .line 383
    .restart local v12    # "fromRadius":F
    move/from16 v24, v28

    .line 385
    .restart local v24    # "toRadius":F
    move-object/from16 v0, v27

    move/from16 v1, v24

    invoke-static {v0, v4, v5, v1}, Landroid/support/design/circularreveal/CircularRevealCompat;->createCircularReveal(Landroid/support/design/circularreveal/CircularRevealWidget;FFF)Landroid/animation/Animator;

    move-result-object v26

    .line 390
    .restart local v26    # "animator":Landroid/animation/Animator;
    invoke-virtual/range {v29 .. v29}, Landroid/support/design/animation/MotionTiming;->getDelay()J

    move-result-wide v8

    float-to-int v10, v4

    float-to-int v11, v5

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-object/from16 v13, p8

    .line 388
    invoke-direct/range {v6 .. v13}, Landroid/support/design/transformation/FabTransformationBehavior;->createPreFillRadialExpansion(Landroid/view/View;JIIFLjava/util/List;)V

    .line 397
    invoke-virtual/range {v29 .. v29}, Landroid/support/design/animation/MotionTiming;->getDelay()J

    move-result-wide v16

    .line 398
    invoke-virtual/range {v29 .. v29}, Landroid/support/design/animation/MotionTiming;->getDuration()J

    move-result-wide v18

    move-object/from16 v0, p5

    iget-object v6, v0, Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Landroid/support/design/animation/MotionSpec;

    .line 399
    invoke-virtual {v6}, Landroid/support/design/animation/MotionSpec;->getTotalDuration()J

    move-result-wide v20

    float-to-int v0, v4

    move/from16 v22, v0

    float-to-int v0, v5

    move/from16 v23, v0

    move-object/from16 v14, p0

    move-object/from16 v15, p2

    move-object/from16 v25, p8

    .line 395
    invoke-direct/range {v14 .. v25}, Landroid/support/design/transformation/FabTransformationBehavior;->createPostFillRadialExpansion(Landroid/view/View;JJJIIFLjava/util/List;)V

    goto :goto_90
.end method

.method private createIconFadeAnimation(Landroid/view/View;Landroid/view/View;ZZLandroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;)V
    .registers 18
    .param p1, "dependency"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "expanded"    # Z
    .param p4, "currentlyAnimating"    # Z
    .param p5, "spec"    # Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "ZZ",
            "Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 272
    .local p6, "animations":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    .local p7, "listeners":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator$AnimatorListener;>;"
    instance-of v6, p2, Landroid/support/design/circularreveal/CircularRevealWidget;

    if-eqz v6, :cond_8

    instance-of v6, p1, Landroid/widget/ImageView;

    if-nez v6, :cond_9

    .line 322
    :cond_8
    :goto_8
    return-void

    :cond_9
    move-object v2, p2

    .line 276
    check-cast v2, Landroid/support/design/circularreveal/CircularRevealWidget;

    .local v2, "circularRevealChild":Landroid/support/design/circularreveal/CircularRevealWidget;
    move-object v3, p1

    .line 277
    check-cast v3, Landroid/widget/ImageView;

    .line 278
    .local v3, "dependencyImageView":Landroid/widget/ImageView;
    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 280
    .local v4, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_8

    .line 283
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 287
    if-eqz p3, :cond_51

    .line 288
    if-nez p4, :cond_21

    .line 289
    const/16 v6, 0xff

    invoke-virtual {v4, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 291
    :cond_21
    sget-object v6, Landroid/support/design/animation/DrawableAlphaProperty;->DRAWABLE_ALPHA_COMPAT:Landroid/util/Property;

    const/4 v7, 0x1

    new-array v7, v7, [I

    const/4 v8, 0x0

    const/4 v9, 0x0

    aput v9, v7, v8

    invoke-static {v4, v6, v7}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 296
    .local v1, "animator":Landroid/animation/ObjectAnimator;
    :goto_2e
    new-instance v6, Landroid/support/design/transformation/FabTransformationBehavior$2;

    invoke-direct {v6, p0, p2}, Landroid/support/design/transformation/FabTransformationBehavior$2;-><init>(Landroid/support/design/transformation/FabTransformationBehavior;Landroid/view/View;)V

    invoke-virtual {v1, v6}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 306
    iget-object v6, p5, Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Landroid/support/design/animation/MotionSpec;

    const-string v7, "iconFade"

    invoke-virtual {v6, v7}, Landroid/support/design/animation/MotionSpec;->getTiming(Ljava/lang/String;)Landroid/support/design/animation/MotionTiming;

    move-result-object v5

    .line 307
    .local v5, "timing":Landroid/support/design/animation/MotionTiming;
    invoke-virtual {v5, v1}, Landroid/support/design/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    .line 308
    move-object/from16 v0, p6

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    new-instance v6, Landroid/support/design/transformation/FabTransformationBehavior$3;

    invoke-direct {v6, p0, v2, v4}, Landroid/support/design/transformation/FabTransformationBehavior$3;-><init>(Landroid/support/design/transformation/FabTransformationBehavior;Landroid/support/design/circularreveal/CircularRevealWidget;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p7

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 293
    .end local v1    # "animator":Landroid/animation/ObjectAnimator;
    .end local v5    # "timing":Landroid/support/design/animation/MotionTiming;
    :cond_51
    sget-object v6, Landroid/support/design/animation/DrawableAlphaProperty;->DRAWABLE_ALPHA_COMPAT:Landroid/util/Property;

    const/4 v7, 0x1

    new-array v7, v7, [I

    const/4 v8, 0x0

    const/16 v9, 0xff

    aput v9, v7, v8

    invoke-static {v4, v6, v7}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .restart local v1    # "animator":Landroid/animation/ObjectAnimator;
    goto :goto_2e
.end method

.method private createPostFillRadialExpansion(Landroid/view/View;JJJIIFLjava/util/List;)V
    .registers 16
    .param p1, "child"    # Landroid/view/View;
    .param p2, "delay"    # J
    .param p4, "duration"    # J
    .param p6, "totalDuration"    # J
    .param p8, "revealCenterX"    # I
    .param p9, "revealCenterY"    # I
    .param p10, "toRadius"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "JJJIIF",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 695
    .local p11, "animations":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1f

    .line 697
    add-long v2, p2, p4

    cmp-long v1, v2, p6

    if-gez v1, :cond_1f

    .line 699
    invoke-static {p1, p8, p9, p10, p10}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    .line 701
    .local v0, "animator":Landroid/animation/Animator;
    add-long v2, p2, p4

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 702
    add-long v2, p2, p4

    sub-long v2, p6, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 703
    invoke-interface {p11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 706
    .end local v0    # "animator":Landroid/animation/Animator;
    :cond_1f
    return-void
.end method

.method private createPreFillRadialExpansion(Landroid/view/View;JIIFLjava/util/List;)V
    .registers 14
    .param p1, "child"    # Landroid/view/View;
    .param p2, "delay"    # J
    .param p4, "revealCenterX"    # I
    .param p5, "revealCenterY"    # I
    .param p6, "fromRadius"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "JIIF",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p7, "animations":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    const-wide/16 v4, 0x0

    .line 673
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_19

    .line 675
    cmp-long v1, p2, v4

    if-lez v1, :cond_19

    .line 677
    invoke-static {p1, p4, p5, p6, p6}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    .line 679
    .local v0, "animator":Landroid/animation/Animator;
    invoke-virtual {v0, v4, v5}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 680
    invoke-virtual {v0, p2, p3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 681
    invoke-interface {p7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 684
    .end local v0    # "animator":Landroid/animation/Animator;
    :cond_19
    return-void
.end method

.method private createTranslationAnimation(Landroid/view/View;Landroid/view/View;ZZLandroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;Landroid/graphics/RectF;)V
    .registers 26
    .param p1, "dependency"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "expanded"    # Z
    .param p4, "currentlyAnimating"    # Z
    .param p5, "spec"    # Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;
    .param p8, "childBounds"    # Landroid/graphics/RectF;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "ZZ",
            "Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;",
            "Landroid/graphics/RectF;",
            ")V"
        }
    .end annotation

    .prologue
    .line 213
    .local p6, "animations":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    .local p7, "unusedListeners":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator$AnimatorListener;>;"
    move-object/from16 v0, p5

    iget-object v3, v0, Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;->positioning:Landroid/support/design/animation/Positioning;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v3}, Landroid/support/design/transformation/FabTransformationBehavior;->calculateTranslationX(Landroid/view/View;Landroid/view/View;Landroid/support/design/animation/Positioning;)F

    move-result v13

    .line 214
    .local v13, "translationX":F
    move-object/from16 v0, p5

    iget-object v3, v0, Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;->positioning:Landroid/support/design/animation/Positioning;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v3}, Landroid/support/design/transformation/FabTransformationBehavior;->calculateTranslationY(Landroid/view/View;Landroid/view/View;Landroid/support/design/animation/Positioning;)F

    move-result v15

    .line 221
    .local v15, "translationY":F
    const/4 v3, 0x0

    cmpl-float v3, v13, v3

    if-eqz v3, :cond_26

    const/4 v3, 0x0

    cmpl-float v3, v15, v3

    if-nez v3, :cond_8c

    .line 223
    :cond_26
    move-object/from16 v0, p5

    iget-object v3, v0, Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Landroid/support/design/animation/MotionSpec;

    const-string v4, "translationXLinear"

    invoke-virtual {v3, v4}, Landroid/support/design/animation/MotionSpec;->getTiming(Ljava/lang/String;)Landroid/support/design/animation/MotionTiming;

    move-result-object v6

    .line 224
    .local v6, "translationXTiming":Landroid/support/design/animation/MotionTiming;
    move-object/from16 v0, p5

    iget-object v3, v0, Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Landroid/support/design/animation/MotionSpec;

    const-string v4, "translationYLinear"

    invoke-virtual {v3, v4}, Landroid/support/design/animation/MotionSpec;->getTiming(Ljava/lang/String;)Landroid/support/design/animation/MotionTiming;

    move-result-object v7

    .line 235
    .local v7, "translationYTiming":Landroid/support/design/animation/MotionTiming;
    :goto_3a
    if-eqz p3, :cond_c5

    .line 236
    if-nez p4, :cond_4a

    .line 237
    neg-float v3, v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 238
    neg-float v3, v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 240
    :cond_4a
    sget-object v3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v4, 0x1

    new-array v4, v4, [F

    const/4 v5, 0x0

    const/4 v8, 0x0

    aput v8, v4, v5

    move-object/from16 v0, p2

    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    .line 241
    .local v14, "translationXAnimator":Landroid/animation/ValueAnimator;
    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v4, 0x1

    new-array v4, v4, [F

    const/4 v5, 0x0

    const/4 v8, 0x0

    aput v8, v4, v5

    move-object/from16 v0, p2

    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v16

    .line 243
    .local v16, "translationYAnimator":Landroid/animation/ValueAnimator;
    neg-float v8, v13

    neg-float v9, v15

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p5

    move-object/from16 v12, p8

    invoke-direct/range {v3 .. v12}, Landroid/support/design/transformation/FabTransformationBehavior;->calculateChildVisibleBoundsAtEndOfExpansion(Landroid/view/View;Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;Landroid/support/design/animation/MotionTiming;Landroid/support/design/animation/MotionTiming;FFFFLandroid/graphics/RectF;)V

    .line 258
    :goto_77
    invoke-virtual {v6, v14}, Landroid/support/design/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    .line 259
    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/support/design/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    .line 260
    move-object/from16 v0, p6

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    move-object/from16 v0, p6

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    return-void

    .line 225
    .end local v6    # "translationXTiming":Landroid/support/design/animation/MotionTiming;
    .end local v7    # "translationYTiming":Landroid/support/design/animation/MotionTiming;
    .end local v14    # "translationXAnimator":Landroid/animation/ValueAnimator;
    .end local v16    # "translationYAnimator":Landroid/animation/ValueAnimator;
    :cond_8c
    if-eqz p3, :cond_93

    const/4 v3, 0x0

    cmpg-float v3, v15, v3

    if-ltz v3, :cond_9a

    :cond_93
    if-nez p3, :cond_af

    const/4 v3, 0x0

    cmpl-float v3, v15, v3

    if-lez v3, :cond_af

    .line 227
    :cond_9a
    move-object/from16 v0, p5

    iget-object v3, v0, Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Landroid/support/design/animation/MotionSpec;

    const-string v4, "translationXCurveUpwards"

    invoke-virtual {v3, v4}, Landroid/support/design/animation/MotionSpec;->getTiming(Ljava/lang/String;)Landroid/support/design/animation/MotionTiming;

    move-result-object v6

    .line 228
    .restart local v6    # "translationXTiming":Landroid/support/design/animation/MotionTiming;
    move-object/from16 v0, p5

    iget-object v3, v0, Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Landroid/support/design/animation/MotionSpec;

    const-string v4, "translationYCurveUpwards"

    invoke-virtual {v3, v4}, Landroid/support/design/animation/MotionSpec;->getTiming(Ljava/lang/String;)Landroid/support/design/animation/MotionTiming;

    move-result-object v7

    .restart local v7    # "translationYTiming":Landroid/support/design/animation/MotionTiming;
    goto :goto_3a

    .line 231
    .end local v6    # "translationXTiming":Landroid/support/design/animation/MotionTiming;
    .end local v7    # "translationYTiming":Landroid/support/design/animation/MotionTiming;
    :cond_af
    move-object/from16 v0, p5

    iget-object v3, v0, Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Landroid/support/design/animation/MotionSpec;

    const-string v4, "translationXCurveDownwards"

    invoke-virtual {v3, v4}, Landroid/support/design/animation/MotionSpec;->getTiming(Ljava/lang/String;)Landroid/support/design/animation/MotionTiming;

    move-result-object v6

    .line 232
    .restart local v6    # "translationXTiming":Landroid/support/design/animation/MotionTiming;
    move-object/from16 v0, p5

    iget-object v3, v0, Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Landroid/support/design/animation/MotionSpec;

    const-string v4, "translationYCurveDownwards"

    invoke-virtual {v3, v4}, Landroid/support/design/animation/MotionSpec;->getTiming(Ljava/lang/String;)Landroid/support/design/animation/MotionTiming;

    move-result-object v7

    .restart local v7    # "translationYTiming":Landroid/support/design/animation/MotionTiming;
    goto/16 :goto_3a

    .line 254
    :cond_c5
    sget-object v3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v4, 0x1

    new-array v4, v4, [F

    const/4 v5, 0x0

    neg-float v8, v13

    aput v8, v4, v5

    move-object/from16 v0, p2

    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    .line 255
    .restart local v14    # "translationXAnimator":Landroid/animation/ValueAnimator;
    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v4, 0x1

    new-array v4, v4, [F

    const/4 v5, 0x0

    neg-float v8, v15

    aput v8, v4, v5

    move-object/from16 v0, p2

    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v16

    .restart local v16    # "translationYAnimator":Landroid/animation/ValueAnimator;
    goto :goto_77
.end method

.method private getBackgroundTint(Landroid/view/View;)I
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 658
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 659
    .local v0, "tintList":Landroid/content/res/ColorStateList;
    if-eqz v0, :cond_13

    .line 660
    invoke-virtual {p1}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    .line 662
    :goto_12
    return v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_12
.end method

.method private toViewGroupOrNull(Landroid/view/View;)Landroid/view/ViewGroup;
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 650
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_7

    .line 651
    check-cast p1, Landroid/view/ViewGroup;

    .line 653
    .end local p1    # "view":Landroid/view/View;
    :goto_6
    return-object p1

    .restart local p1    # "view":Landroid/view/View;
    :cond_7
    const/4 p1, 0x0

    goto :goto_6
.end method


# virtual methods
.method public layoutDependsOn(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .registers 8
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "dependency"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 88
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_11

    .line 89
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "This behavior cannot be attached to a GONE view. Set the view to INVISIBLE instead."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 93
    :cond_11
    instance-of v2, p3, Landroid/support/design/widget/FloatingActionButton;

    if-eqz v2, :cond_24

    .line 94
    check-cast p3, Landroid/support/design/widget/FloatingActionButton;

    .line 95
    .end local p3    # "dependency":Landroid/view/View;
    invoke-virtual {p3}, Landroid/support/design/widget/FloatingActionButton;->getExpandedComponentIdHint()I

    move-result v0

    .line 96
    .local v0, "expandedComponentIdHint":I
    if-eqz v0, :cond_23

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v0, v2, :cond_24

    :cond_23
    const/4 v1, 0x1

    .line 98
    .end local v0    # "expandedComponentIdHint":I
    :cond_24
    return v1
.end method

.method public onAttachedToLayoutParams(Landroid/support/design/widget/CoordinatorLayout$LayoutParams;)V
    .registers 3
    .param p1, "lp"    # Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 104
    iget v0, p1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    if-nez v0, :cond_8

    .line 107
    const/16 v0, 0x50

    iput v0, p1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    .line 109
    :cond_8
    return-void
.end method

.method protected onCreateExpandedStateChangeAnimation(Landroid/view/View;Landroid/view/View;ZZ)Landroid/animation/AnimatorSet;
    .registers 31
    .param p1, "dependency"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "expanded"    # Z
    .param p4, "isAnimating"    # Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 115
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/support/design/transformation/FabTransformationBehavior;->onCreateMotionSpec(Landroid/content/Context;Z)Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;

    move-result-object v9

    .line 117
    .local v9, "spec":Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .local v10, "animations":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .local v11, "listeners":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator$AnimatorListener;>;"
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_29

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    .line 121
    invoke-direct/range {v4 .. v11}, Landroid/support/design/transformation/FabTransformationBehavior;->createElevationAnimation(Landroid/view/View;Landroid/view/View;ZZLandroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;)V

    .line 125
    :cond_29
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/support/design/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    .local v12, "childBounds":Landroid/graphics/RectF;
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    .line 126
    invoke-direct/range {v4 .. v12}, Landroid/support/design/transformation/FabTransformationBehavior;->createTranslationAnimation(Landroid/view/View;Landroid/view/View;ZZLandroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;Landroid/graphics/RectF;)V

    .line 128
    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    move-result v19

    .line 129
    .local v19, "childWidth":F
    invoke-virtual {v12}, Landroid/graphics/RectF;->height()F

    move-result v20

    .local v20, "childHeight":F
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    .line 131
    invoke-direct/range {v4 .. v11}, Landroid/support/design/transformation/FabTransformationBehavior;->createIconFadeAnimation(Landroid/view/View;Landroid/view/View;ZZLandroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;)V

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move/from16 v16, p3

    move/from16 v17, p4

    move-object/from16 v18, v9

    move-object/from16 v21, v10

    move-object/from16 v22, v11

    .line 132
    invoke-direct/range {v13 .. v22}, Landroid/support/design/transformation/FabTransformationBehavior;->createExpansionAnimation(Landroid/view/View;Landroid/view/View;ZZLandroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;FFLjava/util/List;Ljava/util/List;)V

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    .line 142
    invoke-direct/range {v4 .. v11}, Landroid/support/design/transformation/FabTransformationBehavior;->createColorAnimation(Landroid/view/View;Landroid/view/View;ZZLandroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;)V

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    .line 143
    invoke-direct/range {v4 .. v11}, Landroid/support/design/transformation/FabTransformationBehavior;->createChildrenFadeAnimation(Landroid/view/View;Landroid/view/View;ZZLandroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;)V

    .line 146
    new-instance v25, Landroid/animation/AnimatorSet;

    invoke-direct/range {v25 .. v25}, Landroid/animation/AnimatorSet;-><init>()V

    .line 147
    .local v25, "set":Landroid/animation/AnimatorSet;
    move-object/from16 v0, v25

    invoke-static {v0, v10}, Landroid/support/design/animation/AnimatorSetCompat;->playTogether(Landroid/animation/AnimatorSet;Ljava/util/List;)V

    .line 148
    new-instance v4, Landroid/support/design/transformation/FabTransformationBehavior$1;

    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/support/design/transformation/FabTransformationBehavior$1;-><init>(Landroid/support/design/transformation/FabTransformationBehavior;ZLandroid/view/View;Landroid/view/View;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 170
    const/16 v24, 0x0

    .local v24, "i":I
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v23

    .local v23, "count":I
    :goto_9e
    move/from16 v0, v24

    move/from16 v1, v23

    if-ge v0, v1, :cond_b4

    .line 171
    move/from16 v0, v24

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator$AnimatorListener;

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 170
    add-int/lit8 v24, v24, 0x1

    goto :goto_9e

    .line 173
    :cond_b4
    return-object v25
.end method

.method protected abstract onCreateMotionSpec(Landroid/content/Context;Z)Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;
.end method
