.class public Landroid/support/design/shape/InterpolateOnScrollPositionChangeHelper;
.super Ljava/lang/Object;
.source "InterpolateOnScrollPositionChangeHelper.java"


# annotations
.annotation build Landroid/support/design/internal/Experimental;
    value = "The shapes API is currently experimental and subject to change"
.end annotation


# instance fields
.field private final containerLocation:[I

.field private containingScrollView:Landroid/widget/ScrollView;

.field private materialShapeDrawable:Landroid/support/design/shape/MaterialShapeDrawable;

.field private final scrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private final scrollLocation:[I

.field private shapedView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/support/design/shape/MaterialShapeDrawable;Landroid/widget/ScrollView;)V
    .registers 6
    .param p1, "shapedView"    # Landroid/view/View;
    .param p2, "materialShapeDrawable"    # Landroid/support/design/shape/MaterialShapeDrawable;
    .param p3, "containingScrollView"    # Landroid/widget/ScrollView;

    .prologue
    const/4 v1, 0x2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-array v0, v1, [I

    iput-object v0, p0, Landroid/support/design/shape/InterpolateOnScrollPositionChangeHelper;->scrollLocation:[I

    .line 33
    new-array v0, v1, [I

    iput-object v0, p0, Landroid/support/design/shape/InterpolateOnScrollPositionChangeHelper;->containerLocation:[I

    .line 34
    new-instance v0, Landroid/support/design/shape/InterpolateOnScrollPositionChangeHelper$1;

    invoke-direct {v0, p0}, Landroid/support/design/shape/InterpolateOnScrollPositionChangeHelper$1;-><init>(Landroid/support/design/shape/InterpolateOnScrollPositionChangeHelper;)V

    iput-object v0, p0, Landroid/support/design/shape/InterpolateOnScrollPositionChangeHelper;->scrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 54
    iput-object p1, p0, Landroid/support/design/shape/InterpolateOnScrollPositionChangeHelper;->shapedView:Landroid/view/View;

    .line 55
    iput-object p2, p0, Landroid/support/design/shape/InterpolateOnScrollPositionChangeHelper;->materialShapeDrawable:Landroid/support/design/shape/MaterialShapeDrawable;

    .line 56
    iput-object p3, p0, Landroid/support/design/shape/InterpolateOnScrollPositionChangeHelper;->containingScrollView:Landroid/widget/ScrollView;

    .line 57
    return-void
.end method


# virtual methods
.method public setContainingScrollView(Landroid/widget/ScrollView;)V
    .registers 2
    .param p1, "containingScrollView"    # Landroid/widget/ScrollView;

    .prologue
    .line 74
    iput-object p1, p0, Landroid/support/design/shape/InterpolateOnScrollPositionChangeHelper;->containingScrollView:Landroid/widget/ScrollView;

    .line 75
    return-void
.end method

.method public setMaterialShapeDrawable(Landroid/support/design/shape/MaterialShapeDrawable;)V
    .registers 2
    .param p1, "materialShapeDrawable"    # Landroid/support/design/shape/MaterialShapeDrawable;

    .prologue
    .line 65
    iput-object p1, p0, Landroid/support/design/shape/InterpolateOnScrollPositionChangeHelper;->materialShapeDrawable:Landroid/support/design/shape/MaterialShapeDrawable;

    .line 66
    return-void
.end method

.method public startListeningForScrollChanges(Landroid/view/ViewTreeObserver;)V
    .registers 3
    .param p1, "viewTreeObserver"    # Landroid/view/ViewTreeObserver;

    .prologue
    .line 84
    iget-object v0, p0, Landroid/support/design/shape/InterpolateOnScrollPositionChangeHelper;->scrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 85
    return-void
.end method

.method public stopListeningForScrollChanges(Landroid/view/ViewTreeObserver;)V
    .registers 3
    .param p1, "viewTreeObserver"    # Landroid/view/ViewTreeObserver;

    .prologue
    .line 94
    iget-object v0, p0, Landroid/support/design/shape/InterpolateOnScrollPositionChangeHelper;->scrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 95
    return-void
.end method

.method public updateInterpolationForScreenPosition()V
    .registers 10

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    .line 102
    iget-object v4, p0, Landroid/support/design/shape/InterpolateOnScrollPositionChangeHelper;->containingScrollView:Landroid/widget/ScrollView;

    if-nez v4, :cond_9

    .line 132
    :cond_8
    :goto_8
    return-void

    .line 106
    :cond_9
    iget-object v4, p0, Landroid/support/design/shape/InterpolateOnScrollPositionChangeHelper;->containingScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v4}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v4

    if-nez v4, :cond_19

    .line 108
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Scroll bar must contain a child to calculate interpolation."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 112
    :cond_19
    iget-object v4, p0, Landroid/support/design/shape/InterpolateOnScrollPositionChangeHelper;->containingScrollView:Landroid/widget/ScrollView;

    iget-object v5, p0, Landroid/support/design/shape/InterpolateOnScrollPositionChangeHelper;->scrollLocation:[I

    invoke-virtual {v4, v5}, Landroid/widget/ScrollView;->getLocationInWindow([I)V

    .line 113
    iget-object v4, p0, Landroid/support/design/shape/InterpolateOnScrollPositionChangeHelper;->containingScrollView:Landroid/widget/ScrollView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Landroid/support/design/shape/InterpolateOnScrollPositionChangeHelper;->containerLocation:[I

    invoke-virtual {v4, v5}, Landroid/view/View;->getLocationInWindow([I)V

    .line 114
    iget-object v4, p0, Landroid/support/design/shape/InterpolateOnScrollPositionChangeHelper;->shapedView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    iget-object v5, p0, Landroid/support/design/shape/InterpolateOnScrollPositionChangeHelper;->scrollLocation:[I

    aget v5, v5, v6

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/support/design/shape/InterpolateOnScrollPositionChangeHelper;->containerLocation:[I

    aget v5, v5, v6

    add-int v3, v4, v5

    .line 115
    .local v3, "y":I
    iget-object v4, p0, Landroid/support/design/shape/InterpolateOnScrollPositionChangeHelper;->shapedView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 116
    .local v1, "viewHeight":I
    iget-object v4, p0, Landroid/support/design/shape/InterpolateOnScrollPositionChangeHelper;->containingScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v4}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    .line 119
    .local v2, "windowHeight":I
    if-gez v3, :cond_62

    .line 120
    iget-object v4, p0, Landroid/support/design/shape/InterpolateOnScrollPositionChangeHelper;->materialShapeDrawable:Landroid/support/design/shape/MaterialShapeDrawable;

    int-to-float v5, v3

    int-to-float v6, v1

    div-float/2addr v5, v6

    add-float/2addr v5, v7

    .line 121
    invoke-static {v7, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v8, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 120
    invoke-virtual {v4, v5}, Landroid/support/design/shape/MaterialShapeDrawable;->setInterpolation(F)V

    .line 122
    iget-object v4, p0, Landroid/support/design/shape/InterpolateOnScrollPositionChangeHelper;->shapedView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    goto :goto_8

    .line 123
    :cond_62
    add-int v4, v3, v1

    if-le v4, v2, :cond_82

    .line 124
    add-int v4, v3, v1

    sub-int v0, v4, v2

    .line 125
    .local v0, "distanceOffScreen":I
    iget-object v4, p0, Landroid/support/design/shape/InterpolateOnScrollPositionChangeHelper;->materialShapeDrawable:Landroid/support/design/shape/MaterialShapeDrawable;

    int-to-float v5, v0

    int-to-float v6, v1

    div-float/2addr v5, v6

    sub-float v5, v7, v5

    .line 126
    invoke-static {v7, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v8, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 125
    invoke-virtual {v4, v5}, Landroid/support/design/shape/MaterialShapeDrawable;->setInterpolation(F)V

    .line 127
    iget-object v4, p0, Landroid/support/design/shape/InterpolateOnScrollPositionChangeHelper;->shapedView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    goto :goto_8

    .line 128
    .end local v0    # "distanceOffScreen":I
    :cond_82
    iget-object v4, p0, Landroid/support/design/shape/InterpolateOnScrollPositionChangeHelper;->materialShapeDrawable:Landroid/support/design/shape/MaterialShapeDrawable;

    invoke-virtual {v4}, Landroid/support/design/shape/MaterialShapeDrawable;->getInterpolation()F

    move-result v4

    cmpl-float v4, v4, v7

    if-eqz v4, :cond_8

    .line 129
    iget-object v4, p0, Landroid/support/design/shape/InterpolateOnScrollPositionChangeHelper;->materialShapeDrawable:Landroid/support/design/shape/MaterialShapeDrawable;

    invoke-virtual {v4, v7}, Landroid/support/design/shape/MaterialShapeDrawable;->setInterpolation(F)V

    .line 130
    iget-object v4, p0, Landroid/support/design/shape/InterpolateOnScrollPositionChangeHelper;->shapedView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    goto/16 :goto_8
.end method
