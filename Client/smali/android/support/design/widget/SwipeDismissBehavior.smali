.class public Landroid/support/design/widget/SwipeDismissBehavior;
.super Landroid/support/design/widget/CoordinatorLayout$Behavior;
.source "SwipeDismissBehavior.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/SwipeDismissBehavior$SettleRunnable;,
        Landroid/support/design/widget/SwipeDismissBehavior$OnDismissListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Landroid/support/design/widget/CoordinatorLayout$Behavior",
        "<TV;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_ALPHA_END_DISTANCE:F = 0.5f

.field private static final DEFAULT_ALPHA_START_DISTANCE:F = 0.0f

.field private static final DEFAULT_DRAG_DISMISS_THRESHOLD:F = 0.5f

.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_SETTLING:I = 0x2

.field public static final SWIPE_DIRECTION_ANY:I = 0x2

.field public static final SWIPE_DIRECTION_END_TO_START:I = 0x1

.field public static final SWIPE_DIRECTION_START_TO_END:I


# instance fields
.field alphaEndSwipeDistance:F

.field alphaStartSwipeDistance:F

.field private final dragCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

.field dragDismissThreshold:F

.field private interceptingEvents:Z

.field listener:Landroid/support/design/widget/SwipeDismissBehavior$OnDismissListener;

.field private sensitivity:F

.field private sensitivitySet:Z

.field swipeDirection:I

.field viewDragHelper:Landroid/support/v4/widget/ViewDragHelper;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .local p0, "this":Landroid/support/design/widget/SwipeDismissBehavior;, "Landroid/support/design/widget/SwipeDismissBehavior<TV;>;"
    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Landroid/support/design/widget/CoordinatorLayout$Behavior;-><init>()V

    .line 84
    iput v1, p0, Landroid/support/design/widget/SwipeDismissBehavior;->sensitivity:F

    .line 87
    const/4 v0, 0x2

    iput v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->swipeDirection:I

    .line 88
    iput v2, p0, Landroid/support/design/widget/SwipeDismissBehavior;->dragDismissThreshold:F

    .line 89
    iput v1, p0, Landroid/support/design/widget/SwipeDismissBehavior;->alphaStartSwipeDistance:F

    .line 90
    iput v2, p0, Landroid/support/design/widget/SwipeDismissBehavior;->alphaEndSwipeDistance:F

    .line 207
    new-instance v0, Landroid/support/design/widget/SwipeDismissBehavior$1;

    invoke-direct {v0, p0}, Landroid/support/design/widget/SwipeDismissBehavior$1;-><init>(Landroid/support/design/widget/SwipeDismissBehavior;)V

    iput-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->dragCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    return-void
.end method

.method static clamp(FFF)F
    .registers 4
    .param p0, "min"    # F
    .param p1, "value"    # F
    .param p2, "max"    # F

    .prologue
    .line 384
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method static clamp(III)I
    .registers 4
    .param p0, "min"    # I
    .param p1, "value"    # I
    .param p2, "max"    # I

    .prologue
    .line 388
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private ensureViewDragHelper(Landroid/view/ViewGroup;)V
    .registers 4
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 354
    .local p0, "this":Landroid/support/design/widget/SwipeDismissBehavior;, "Landroid/support/design/widget/SwipeDismissBehavior<TV;>;"
    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->viewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    if-nez v0, :cond_12

    .line 355
    iget-boolean v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->sensitivitySet:Z

    if-eqz v0, :cond_13

    iget v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->sensitivity:F

    iget-object v1, p0, Landroid/support/design/widget/SwipeDismissBehavior;->dragCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    .line 357
    invoke-static {p1, v0, v1}, Landroid/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v0

    .line 358
    :goto_10
    iput-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->viewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    .line 360
    :cond_12
    return-void

    .line 357
    :cond_13
    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->dragCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    .line 358
    invoke-static {p1, v0}, Landroid/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;Landroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v0

    goto :goto_10
.end method

.method static fraction(FFF)F
    .registers 5
    .param p0, "startValue"    # F
    .param p1, "endValue"    # F
    .param p2, "value"    # F

    .prologue
    .line 403
    sub-float v0, p2, p0

    sub-float v1, p1, p0

    div-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public canSwipeDismissView(Landroid/view/View;)Z
    .registers 3
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 204
    .local p0, "this":Landroid/support/design/widget/SwipeDismissBehavior;, "Landroid/support/design/widget/SwipeDismissBehavior<TV;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public getDragState()I
    .registers 2

    .prologue
    .line 398
    .local p0, "this":Landroid/support/design/widget/SwipeDismissBehavior;, "Landroid/support/design/widget/SwipeDismissBehavior<TV;>;"
    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->viewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->viewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0}, Landroid/support/v4/widget/ViewDragHelper;->getViewDragState()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public onInterceptTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p3, "event"    # Landroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/support/design/widget/SwipeDismissBehavior;, "Landroid/support/design/widget/SwipeDismissBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    const/4 v1, 0x0

    .line 166
    iget-boolean v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->interceptingEvents:Z

    .line 168
    .local v0, "dispatchEventToHelper":Z
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    packed-switch v2, :pswitch_data_2c

    .line 181
    :goto_a
    :pswitch_a
    if-eqz v0, :cond_15

    .line 182
    invoke-direct {p0, p1}, Landroid/support/design/widget/SwipeDismissBehavior;->ensureViewDragHelper(Landroid/view/ViewGroup;)V

    .line 183
    iget-object v1, p0, Landroid/support/design/widget/SwipeDismissBehavior;->viewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v1, p3}, Landroid/support/v4/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 185
    :cond_15
    return v1

    .line 171
    :pswitch_16
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1, p2, v2, v3}, Landroid/support/design/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result v2

    iput-boolean v2, p0, Landroid/support/design/widget/SwipeDismissBehavior;->interceptingEvents:Z

    .line 172
    iget-boolean v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->interceptingEvents:Z

    .line 173
    goto :goto_a

    .line 177
    :pswitch_29
    iput-boolean v1, p0, Landroid/support/design/widget/SwipeDismissBehavior;->interceptingEvents:Z

    goto :goto_a

    .line 168
    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_16
        :pswitch_29
        :pswitch_a
        :pswitch_29
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p3, "event"    # Landroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 190
    .local p0, "this":Landroid/support/design/widget/SwipeDismissBehavior;, "Landroid/support/design/widget/SwipeDismissBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->viewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    if-eqz v0, :cond_b

    .line 191
    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->viewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0, p3}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 192
    const/4 v0, 0x1

    .line 194
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public setDragDismissDistance(F)V
    .registers 4
    .param p1, "distance"    # F

    .prologue
    .line 131
    .local p0, "this":Landroid/support/design/widget/SwipeDismissBehavior;, "Landroid/support/design/widget/SwipeDismissBehavior<TV;>;"
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, p1, v1}, Landroid/support/design/widget/SwipeDismissBehavior;->clamp(FFF)F

    move-result v0

    iput v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->dragDismissThreshold:F

    .line 132
    return-void
.end method

.method public setEndAlphaSwipeDistance(F)V
    .registers 4
    .param p1, "fraction"    # F

    .prologue
    .line 149
    .local p0, "this":Landroid/support/design/widget/SwipeDismissBehavior;, "Landroid/support/design/widget/SwipeDismissBehavior<TV;>;"
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, p1, v1}, Landroid/support/design/widget/SwipeDismissBehavior;->clamp(FFF)F

    move-result v0

    iput v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->alphaEndSwipeDistance:F

    .line 150
    return-void
.end method

.method public setListener(Landroid/support/design/widget/SwipeDismissBehavior$OnDismissListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/support/design/widget/SwipeDismissBehavior$OnDismissListener;

    .prologue
    .line 112
    .local p0, "this":Landroid/support/design/widget/SwipeDismissBehavior;, "Landroid/support/design/widget/SwipeDismissBehavior<TV;>;"
    iput-object p1, p0, Landroid/support/design/widget/SwipeDismissBehavior;->listener:Landroid/support/design/widget/SwipeDismissBehavior$OnDismissListener;

    .line 113
    return-void
.end method

.method public setSensitivity(F)V
    .registers 3
    .param p1, "sensitivity"    # F

    .prologue
    .line 160
    .local p0, "this":Landroid/support/design/widget/SwipeDismissBehavior;, "Landroid/support/design/widget/SwipeDismissBehavior<TV;>;"
    iput p1, p0, Landroid/support/design/widget/SwipeDismissBehavior;->sensitivity:F

    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->sensitivitySet:Z

    .line 162
    return-void
.end method

.method public setStartAlphaSwipeDistance(F)V
    .registers 4
    .param p1, "fraction"    # F

    .prologue
    .line 140
    .local p0, "this":Landroid/support/design/widget/SwipeDismissBehavior;, "Landroid/support/design/widget/SwipeDismissBehavior<TV;>;"
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, p1, v1}, Landroid/support/design/widget/SwipeDismissBehavior;->clamp(FFF)F

    move-result v0

    iput v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->alphaStartSwipeDistance:F

    .line 141
    return-void
.end method

.method public setSwipeDirection(I)V
    .registers 2
    .param p1, "direction"    # I

    .prologue
    .line 122
    .local p0, "this":Landroid/support/design/widget/SwipeDismissBehavior;, "Landroid/support/design/widget/SwipeDismissBehavior<TV;>;"
    iput p1, p0, Landroid/support/design/widget/SwipeDismissBehavior;->swipeDirection:I

    .line 123
    return-void
.end method
