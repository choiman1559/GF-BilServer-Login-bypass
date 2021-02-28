.class public Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;
.super Landroid/support/design/widget/HeaderScrollingViewBehavior;
.source "AppBarLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/AppBarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScrollingViewBehavior"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1558
    invoke-direct {p0}, Landroid/support/design/widget/HeaderScrollingViewBehavior;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1561
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/HeaderScrollingViewBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1563
    sget-object v1, Landroid/support/design/R$styleable;->ScrollingViewBehavior_Layout:[I

    .line 1564
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1565
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Landroid/support/design/R$styleable;->ScrollingViewBehavior_Layout_behavior_overlapTop:I

    const/4 v2, 0x0

    .line 1566
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 1565
    invoke-virtual {p0, v1}, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->setOverlayTop(I)V

    .line 1567
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1568
    return-void
.end method

.method private static getAppBarLayoutOffset(Landroid/support/design/widget/AppBarLayout;)I
    .registers 3
    .param p0, "abl"    # Landroid/support/design/widget/AppBarLayout;

    .prologue
    .line 1643
    .line 1644
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    .line 1645
    .local v0, "behavior":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    instance-of v1, v0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;

    if-eqz v1, :cond_15

    .line 1646
    check-cast v0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;

    .end local v0    # "behavior":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    invoke-virtual {v0}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v1

    .line 1648
    :goto_14
    return v1

    .restart local v0    # "behavior":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    :cond_15
    const/4 v1, 0x0

    goto :goto_14
.end method

.method private offsetChildAsNeeded(Landroid/view/View;Landroid/view/View;)V
    .registers 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "dependency"    # Landroid/view/View;

    .prologue
    .line 1605
    .line 1606
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {v2}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v1

    .line 1607
    .local v1, "behavior":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    instance-of v2, v1, Landroid/support/design/widget/AppBarLayout$BaseBehavior;

    if-eqz v2, :cond_2c

    move-object v0, v1

    .line 1610
    check-cast v0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;

    .line 1613
    .local v0, "ablBehavior":Landroid/support/design/widget/AppBarLayout$BaseBehavior;
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1614
    invoke-static {v0}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->access$000(Landroid/support/design/widget/AppBarLayout$BaseBehavior;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1615
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->getVerticalLayoutGap()I

    move-result v3

    add-int/2addr v2, v3

    .line 1616
    invoke-virtual {p0, p2}, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->getOverlapPixelsForOffset(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    .line 1611
    invoke-static {p1, v2}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 1618
    .end local v0    # "ablBehavior":Landroid/support/design/widget/AppBarLayout$BaseBehavior;
    :cond_2c
    return-void
.end method

.method private updateLiftedStateIfNeeded(Landroid/view/View;Landroid/view/View;)V
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "dependency"    # Landroid/view/View;

    .prologue
    .line 1672
    instance-of v1, p2, Landroid/support/design/widget/AppBarLayout;

    if-eqz v1, :cond_17

    move-object v0, p2

    .line 1673
    check-cast v0, Landroid/support/design/widget/AppBarLayout;

    .line 1674
    .local v0, "appBarLayout":Landroid/support/design/widget/AppBarLayout;
    invoke-virtual {v0}, Landroid/support/design/widget/AppBarLayout;->isLiftOnScroll()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1675
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v1

    if-lez v1, :cond_18

    const/4 v1, 0x1

    :goto_14
    invoke-virtual {v0, v1}, Landroid/support/design/widget/AppBarLayout;->setLiftedState(Z)Z

    .line 1678
    .end local v0    # "appBarLayout":Landroid/support/design/widget/AppBarLayout;
    :cond_17
    return-void

    .line 1675
    .restart local v0    # "appBarLayout":Landroid/support/design/widget/AppBarLayout;
    :cond_18
    const/4 v1, 0x0

    goto :goto_14
.end method


# virtual methods
.method findFirstDependency(Ljava/util/List;)Landroid/support/design/widget/AppBarLayout;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/support/design/widget/AppBarLayout;"
        }
    .end annotation

    .prologue
    .line 1653
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "z":I
    :goto_5
    if-ge v0, v2, :cond_17

    .line 1654
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1655
    .local v1, "view":Landroid/view/View;
    instance-of v3, v1, Landroid/support/design/widget/AppBarLayout;

    if-eqz v3, :cond_14

    .line 1656
    check-cast v1, Landroid/support/design/widget/AppBarLayout;

    .line 1659
    .end local v1    # "view":Landroid/view/View;
    :goto_13
    return-object v1

    .line 1653
    .restart local v1    # "view":Landroid/view/View;
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1659
    .end local v1    # "view":Landroid/view/View;
    :cond_17
    const/4 v1, 0x0

    goto :goto_13
.end method

.method bridge synthetic findFirstDependency(Ljava/util/List;)Landroid/view/View;
    .registers 3

    .prologue
    .line 1556
    invoke-virtual {p0, p1}, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->findFirstDependency(Ljava/util/List;)Landroid/support/design/widget/AppBarLayout;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLeftAndRightOffset()I
    .registers 2

    .prologue
    .line 1556
    invoke-super {p0}, Landroid/support/design/widget/HeaderScrollingViewBehavior;->getLeftAndRightOffset()I

    move-result v0

    return v0
.end method

.method getOverlapRatioForOffset(Landroid/view/View;)F
    .registers 10
    .param p1, "header"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 1622
    instance-of v6, p1, Landroid/support/design/widget/AppBarLayout;

    if-eqz v6, :cond_1a

    move-object v0, p1

    .line 1623
    check-cast v0, Landroid/support/design/widget/AppBarLayout;

    .line 1624
    .local v0, "abl":Landroid/support/design/widget/AppBarLayout;
    invoke-virtual {v0}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v4

    .line 1625
    .local v4, "totalScrollRange":I
    invoke-virtual {v0}, Landroid/support/design/widget/AppBarLayout;->getDownNestedPreScrollRange()I

    move-result v3

    .line 1626
    .local v3, "preScrollDown":I
    invoke-static {v0}, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->getAppBarLayoutOffset(Landroid/support/design/widget/AppBarLayout;)I

    move-result v2

    .line 1628
    .local v2, "offset":I
    if-eqz v3, :cond_1b

    add-int v6, v4, v2

    if-gt v6, v3, :cond_1b

    .line 1639
    .end local v0    # "abl":Landroid/support/design/widget/AppBarLayout;
    .end local v2    # "offset":I
    .end local v3    # "preScrollDown":I
    .end local v4    # "totalScrollRange":I
    :cond_1a
    :goto_1a
    return v5

    .line 1632
    .restart local v0    # "abl":Landroid/support/design/widget/AppBarLayout;
    .restart local v2    # "offset":I
    .restart local v3    # "preScrollDown":I
    .restart local v4    # "totalScrollRange":I
    :cond_1b
    sub-int v1, v4, v3

    .line 1633
    .local v1, "availScrollRange":I
    if-eqz v1, :cond_1a

    .line 1635
    const/high16 v5, 0x3f800000    # 1.0f

    int-to-float v6, v2

    int-to-float v7, v1

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    goto :goto_1a
.end method

.method getScrollRange(Landroid/view/View;)I
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1664
    instance-of v0, p1, Landroid/support/design/widget/AppBarLayout;

    if-eqz v0, :cond_b

    .line 1665
    check-cast p1, Landroid/support/design/widget/AppBarLayout;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    .line 1667
    :goto_a
    return v0

    .restart local p1    # "v":Landroid/view/View;
    :cond_b
    invoke-super {p0, p1}, Landroid/support/design/widget/HeaderScrollingViewBehavior;->getScrollRange(Landroid/view/View;)I

    move-result v0

    goto :goto_a
.end method

.method public bridge synthetic getTopAndBottomOffset()I
    .registers 2

    .prologue
    .line 1556
    invoke-super {p0}, Landroid/support/design/widget/HeaderScrollingViewBehavior;->getTopAndBottomOffset()I

    move-result v0

    return v0
.end method

.method public layoutDependsOn(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .registers 5
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "dependency"    # Landroid/view/View;

    .prologue
    .line 1573
    instance-of v0, p3, Landroid/support/design/widget/AppBarLayout;

    return v0
.end method

.method public onDependentViewChanged(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .registers 5
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "dependency"    # Landroid/view/View;

    .prologue
    .line 1578
    invoke-direct {p0, p2, p3}, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->offsetChildAsNeeded(Landroid/view/View;Landroid/view/View;)V

    .line 1579
    invoke-direct {p0, p2, p3}, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->updateLiftedStateIfNeeded(Landroid/view/View;Landroid/view/View;)V

    .line 1580
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .registers 5

    .prologue
    .line 1556
    invoke-super {p0, p1, p2, p3}, Landroid/support/design/widget/HeaderScrollingViewBehavior;->onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onMeasureChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;IIII)Z
    .registers 8

    .prologue
    .line 1556
    invoke-super/range {p0 .. p6}, Landroid/support/design/widget/HeaderScrollingViewBehavior;->onMeasureChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;IIII)Z

    move-result v0

    return v0
.end method

.method public onRequestChildRectangleOnScreen(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 11
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "rectangle"    # Landroid/graphics/Rect;
    .param p4, "immediate"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1586
    invoke-virtual {p1, p2}, Landroid/support/design/widget/CoordinatorLayout;->getDependencies(Landroid/view/View;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->findFirstDependency(Ljava/util/List;)Landroid/support/design/widget/AppBarLayout;

    move-result-object v0

    .line 1587
    .local v0, "header":Landroid/support/design/widget/AppBarLayout;
    if-eqz v0, :cond_33

    .line 1589
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {p3, v2, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 1591
    iget-object v1, p0, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->tempRect1:Landroid/graphics/Rect;

    .line 1592
    .local v1, "parentRect":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v5

    invoke-virtual {v1, v4, v4, v2, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1594
    invoke-virtual {v1, p3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_33

    .line 1597
    if-nez p4, :cond_31

    move v2, v3

    :goto_2d
    invoke-virtual {v0, v4, v2}, Landroid/support/design/widget/AppBarLayout;->setExpanded(ZZ)V

    .line 1601
    .end local v1    # "parentRect":Landroid/graphics/Rect;
    :goto_30
    return v3

    .restart local v1    # "parentRect":Landroid/graphics/Rect;
    :cond_31
    move v2, v4

    .line 1597
    goto :goto_2d

    .end local v1    # "parentRect":Landroid/graphics/Rect;
    :cond_33
    move v3, v4

    .line 1601
    goto :goto_30
.end method

.method public bridge synthetic setLeftAndRightOffset(I)Z
    .registers 3

    .prologue
    .line 1556
    invoke-super {p0, p1}, Landroid/support/design/widget/HeaderScrollingViewBehavior;->setLeftAndRightOffset(I)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic setTopAndBottomOffset(I)Z
    .registers 3

    .prologue
    .line 1556
    invoke-super {p0, p1}, Landroid/support/design/widget/HeaderScrollingViewBehavior;->setTopAndBottomOffset(I)Z

    move-result v0

    return v0
.end method
