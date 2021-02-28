.class Landroid/support/v7/widget/FastScroller;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "FastScroller.java"

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/FastScroller$AnimatorUpdater;,
        Landroid/support/v7/widget/FastScroller$AnimatorListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_STATE_FADING_IN:I = 0x1

.field private static final ANIMATION_STATE_FADING_OUT:I = 0x3

.field private static final ANIMATION_STATE_IN:I = 0x2

.field private static final ANIMATION_STATE_OUT:I = 0x0

.field private static final DRAG_NONE:I = 0x0

.field private static final DRAG_X:I = 0x1

.field private static final DRAG_Y:I = 0x2

.field private static final EMPTY_STATE_SET:[I

.field private static final HIDE_DELAY_AFTER_DRAGGING_MS:I = 0x4b0

.field private static final HIDE_DELAY_AFTER_VISIBLE_MS:I = 0x5dc

.field private static final HIDE_DURATION_MS:I = 0x1f4

.field private static final PRESSED_STATE_SET:[I

.field private static final SCROLLBAR_FULL_OPAQUE:I = 0xff

.field private static final SHOW_DURATION_MS:I = 0x1f4

.field private static final STATE_DRAGGING:I = 0x2

.field private static final STATE_HIDDEN:I = 0x0

.field private static final STATE_VISIBLE:I = 0x1


# instance fields
.field mAnimationState:I

.field private mDragState:I

.field private final mHideRunnable:Ljava/lang/Runnable;

.field mHorizontalDragX:F
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final mHorizontalRange:[I

.field mHorizontalThumbCenterX:I
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

.field private final mHorizontalThumbHeight:I

.field mHorizontalThumbWidth:I
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private final mHorizontalTrackHeight:I

.field private final mMargin:I

.field private mNeedHorizontalScrollbar:Z

.field private mNeedVerticalScrollbar:Z

.field private final mOnScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mRecyclerViewHeight:I

.field private mRecyclerViewWidth:I

.field private final mScrollbarMinimumRange:I

.field final mShowHideAnimator:Landroid/animation/ValueAnimator;

.field private mState:I

.field mVerticalDragY:F
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final mVerticalRange:[I

.field mVerticalThumbCenterY:I
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field final mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

.field mVerticalThumbHeight:I
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final mVerticalThumbWidth:I

.field final mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private final mVerticalTrackWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 74
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10100a7

    aput v1, v0, v2

    sput-object v0, Landroid/support/v7/widget/FastScroller;->PRESSED_STATE_SET:[I

    .line 75
    new-array v0, v2, [I

    sput-object v0, Landroid/support/v7/widget/FastScroller;->EMPTY_STATE_SET:[I

    return-void
.end method

.method constructor <init>(Landroid/support/v7/widget/RecyclerView;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;III)V
    .registers 13
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "verticalThumbDrawable"    # Landroid/graphics/drawable/StateListDrawable;
    .param p3, "verticalTrackDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p4, "horizontalThumbDrawable"    # Landroid/graphics/drawable/StateListDrawable;
    .param p5, "horizontalTrackDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p6, "defaultWidth"    # I
    .param p7, "scrollbarMinimumRange"    # I
    .param p8, "margin"    # I

    .prologue
    const/16 v3, 0xff

    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 141
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 104
    iput v1, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerViewWidth:I

    .line 105
    iput v1, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerViewHeight:I

    .line 112
    iput-boolean v1, p0, Landroid/support/v7/widget/FastScroller;->mNeedVerticalScrollbar:Z

    .line 113
    iput-boolean v1, p0, Landroid/support/v7/widget/FastScroller;->mNeedHorizontalScrollbar:Z

    .line 114
    iput v1, p0, Landroid/support/v7/widget/FastScroller;->mState:I

    .line 115
    iput v1, p0, Landroid/support/v7/widget/FastScroller;->mDragState:I

    .line 117
    new-array v0, v2, [I

    iput-object v0, p0, Landroid/support/v7/widget/FastScroller;->mVerticalRange:[I

    .line 118
    new-array v0, v2, [I

    iput-object v0, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalRange:[I

    .line 119
    new-array v0, v2, [F

    fill-array-data v0, :array_8c

    .line 120
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    .line 121
    iput v1, p0, Landroid/support/v7/widget/FastScroller;->mAnimationState:I

    .line 123
    new-instance v0, Landroid/support/v7/widget/FastScroller$1;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/FastScroller$1;-><init>(Landroid/support/v7/widget/FastScroller;)V

    iput-object v0, p0, Landroid/support/v7/widget/FastScroller;->mHideRunnable:Ljava/lang/Runnable;

    .line 129
    new-instance v0, Landroid/support/v7/widget/FastScroller$2;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/FastScroller$2;-><init>(Landroid/support/v7/widget/FastScroller;)V

    iput-object v0, p0, Landroid/support/v7/widget/FastScroller;->mOnScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    .line 142
    iput-object p2, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 143
    iput-object p3, p0, Landroid/support/v7/widget/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 144
    iput-object p4, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 145
    iput-object p5, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 146
    invoke-virtual {p2}, Landroid/graphics/drawable/StateListDrawable;->getIntrinsicWidth()I

    move-result v0

    invoke-static {p6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbWidth:I

    .line 147
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-static {p6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/FastScroller;->mVerticalTrackWidth:I

    .line 149
    invoke-virtual {p4}, Landroid/graphics/drawable/StateListDrawable;->getIntrinsicWidth()I

    move-result v0

    invoke-static {p6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalThumbHeight:I

    .line 151
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-static {p6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalTrackHeight:I

    .line 152
    iput p7, p0, Landroid/support/v7/widget/FastScroller;->mScrollbarMinimumRange:I

    .line 153
    iput p8, p0, Landroid/support/v7/widget/FastScroller;->mMargin:I

    .line 154
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/StateListDrawable;->setAlpha(I)V

    .line 155
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 157
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/support/v7/widget/FastScroller$AnimatorListener;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/FastScroller$AnimatorListener;-><init>(Landroid/support/v7/widget/FastScroller;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 158
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/support/v7/widget/FastScroller$AnimatorUpdater;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/FastScroller$AnimatorUpdater;-><init>(Landroid/support/v7/widget/FastScroller;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 160
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/FastScroller;->attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 161
    return-void

    .line 119
    :array_8c
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private cancelHide()V
    .registers 3

    .prologue
    .line 267
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Landroid/support/v7/widget/FastScroller;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 268
    return-void
.end method

.method private destroyCallbacks()V
    .registers 3

    .prologue
    .line 183
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->removeItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 184
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->removeOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 185
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Landroid/support/v7/widget/FastScroller;->mOnScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->removeOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 186
    invoke-direct {p0}, Landroid/support/v7/widget/FastScroller;->cancelHide()V

    .line 187
    return-void
.end method

.method private drawHorizontalScrollbar(Landroid/graphics/Canvas;)V
    .registers 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 325
    iget v2, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerViewHeight:I

    .line 327
    .local v2, "viewHeight":I
    iget v3, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalThumbHeight:I

    sub-int v1, v2, v3

    .line 328
    .local v1, "top":I
    iget v3, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalThumbCenterX:I

    iget v4, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalThumbWidth:I

    div-int/lit8 v4, v4, 0x2

    sub-int v0, v3, v4

    .line 329
    .local v0, "left":I
    iget-object v3, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    iget v4, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalThumbWidth:I

    iget v5, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalThumbHeight:I

    invoke-virtual {v3, v6, v6, v4, v5}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    .line 330
    iget-object v3, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerViewWidth:I

    iget v5, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalTrackHeight:I

    .line 331
    invoke-virtual {v3, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 333
    int-to-float v3, v1

    invoke-virtual {p1, v7, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 334
    iget-object v3, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 335
    int-to-float v3, v0

    invoke-virtual {p1, v3, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 336
    iget-object v3, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 337
    neg-int v3, v0

    int-to-float v3, v3

    neg-int v4, v1

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 338
    return-void
.end method

.method private drawVerticalScrollbar(Landroid/graphics/Canvas;)V
    .registers 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 300
    iget v2, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerViewWidth:I

    .line 302
    .local v2, "viewWidth":I
    iget v3, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbWidth:I

    sub-int v0, v2, v3

    .line 303
    .local v0, "left":I
    iget v3, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbCenterY:I

    iget v4, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbHeight:I

    div-int/lit8 v4, v4, 0x2

    sub-int v1, v3, v4

    .line 304
    .local v1, "top":I
    iget-object v3, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    iget v4, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbWidth:I

    iget v5, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbHeight:I

    invoke-virtual {v3, v6, v6, v4, v5}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    .line 305
    iget-object v3, p0, Landroid/support/v7/widget/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Landroid/support/v7/widget/FastScroller;->mVerticalTrackWidth:I

    iget v5, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerViewHeight:I

    .line 306
    invoke-virtual {v3, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 308
    invoke-direct {p0}, Landroid/support/v7/widget/FastScroller;->isLayoutRTL()Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 309
    iget-object v3, p0, Landroid/support/v7/widget/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 310
    iget v3, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbWidth:I

    int-to-float v3, v3

    int-to-float v4, v1

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 311
    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {p1, v3, v7}, Landroid/graphics/Canvas;->scale(FF)V

    .line 312
    iget-object v3, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 313
    invoke-virtual {p1, v7, v7}, Landroid/graphics/Canvas;->scale(FF)V

    .line 314
    iget v3, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbWidth:I

    neg-int v3, v3

    int-to-float v3, v3

    neg-int v4, v1

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 322
    :goto_4c
    return-void

    .line 316
    :cond_4d
    int-to-float v3, v0

    invoke-virtual {p1, v3, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 317
    iget-object v3, p0, Landroid/support/v7/widget/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 318
    int-to-float v3, v1

    invoke-virtual {p1, v8, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 319
    iget-object v3, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 320
    neg-int v3, v0

    int-to-float v3, v3

    neg-int v4, v1

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_4c
.end method

.method private getHorizontalRange()[I
    .registers 5

    .prologue
    .line 551
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalRange:[I

    const/4 v1, 0x0

    iget v2, p0, Landroid/support/v7/widget/FastScroller;->mMargin:I

    aput v2, v0, v1

    .line 552
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalRange:[I

    const/4 v1, 0x1

    iget v2, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerViewWidth:I

    iget v3, p0, Landroid/support/v7/widget/FastScroller;->mMargin:I

    sub-int/2addr v2, v3

    aput v2, v0, v1

    .line 553
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalRange:[I

    return-object v0
.end method

.method private getVerticalRange()[I
    .registers 5

    .prologue
    .line 542
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mVerticalRange:[I

    const/4 v1, 0x0

    iget v2, p0, Landroid/support/v7/widget/FastScroller;->mMargin:I

    aput v2, v0, v1

    .line 543
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mVerticalRange:[I

    const/4 v1, 0x1

    iget v2, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerViewHeight:I

    iget v3, p0, Landroid/support/v7/widget/FastScroller;->mMargin:I

    sub-int/2addr v2, v3

    aput v2, v0, v1

    .line 544
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mVerticalRange:[I

    return-object v0
.end method

.method private horizontalScrollTo(F)V
    .registers 11
    .param p1, "x"    # F

    .prologue
    const/4 v8, 0x0

    .line 470
    invoke-direct {p0}, Landroid/support/v7/widget/FastScroller;->getHorizontalRange()[I

    move-result-object v3

    .line 471
    .local v3, "scrollbarRange":[I
    aget v0, v3, v8

    int-to-float v0, v0

    const/4 v1, 0x1

    aget v1, v3, v1

    int-to-float v1, v1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 472
    iget v0, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalThumbCenterX:I

    int-to-float v0, v0

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_23

    .line 484
    :goto_22
    return-void

    .line 476
    :cond_23
    iget v1, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalDragX:F

    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 477
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result v4

    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 478
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result v5

    iget v6, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerViewWidth:I

    move-object v0, p0

    move v2, p1

    .line 476
    invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/FastScroller;->scrollTo(FF[IIII)I

    move-result v7

    .line 479
    .local v7, "scrollingBy":I
    if-eqz v7, :cond_40

    .line 480
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v7, v8}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    .line 483
    :cond_40
    iput p1, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalDragX:F

    goto :goto_22
.end method

.method private isLayoutRTL()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 216
    iget-object v1, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    if-ne v1, v0, :cond_a

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private resetHideDelay(I)V
    .registers 6
    .param p1, "delay"    # I

    .prologue
    .line 271
    invoke-direct {p0}, Landroid/support/v7/widget/FastScroller;->cancelHide()V

    .line 272
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Landroid/support/v7/widget/FastScroller;->mHideRunnable:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 273
    return-void
.end method

.method private scrollTo(FF[IIII)I
    .registers 15
    .param p1, "oldDragPos"    # F
    .param p2, "newDragPos"    # F
    .param p3, "scrollbarRange"    # [I
    .param p4, "scrollRange"    # I
    .param p5, "scrollOffset"    # I
    .param p6, "viewLength"    # I

    .prologue
    const/4 v5, 0x0

    .line 488
    const/4 v6, 0x1

    aget v6, p3, v6

    aget v7, p3, v5

    sub-int v2, v6, v7

    .line 489
    .local v2, "scrollbarLength":I
    if-nez v2, :cond_c

    move v3, v5

    .line 499
    :cond_b
    :goto_b
    return v3

    .line 492
    :cond_c
    sub-float v6, p2, p1

    int-to-float v7, v2

    div-float v1, v6, v7

    .line 493
    .local v1, "percentage":F
    sub-int v4, p4, p6

    .line 494
    .local v4, "totalPossibleOffset":I
    int-to-float v6, v4

    mul-float/2addr v6, v1

    float-to-int v3, v6

    .line 495
    .local v3, "scrollingBy":I
    add-int v0, p5, v3

    .line 496
    .local v0, "absoluteOffset":I
    if-ge v0, v4, :cond_1c

    if-gez v0, :cond_b

    :cond_1c
    move v3, v5

    .line 499
    goto :goto_b
.end method

.method private setupCallbacks()V
    .registers 3

    .prologue
    .line 177
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 178
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 179
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Landroid/support/v7/widget/FastScroller;->mOnScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 180
    return-void
.end method

.method private verticalScrollTo(F)V
    .registers 11
    .param p1, "y"    # F

    .prologue
    const/4 v8, 0x0

    .line 455
    invoke-direct {p0}, Landroid/support/v7/widget/FastScroller;->getVerticalRange()[I

    move-result-object v3

    .line 456
    .local v3, "scrollbarRange":[I
    aget v0, v3, v8

    int-to-float v0, v0

    const/4 v1, 0x1

    aget v1, v3, v1

    int-to-float v1, v1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 457
    iget v0, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbCenterY:I

    int-to-float v0, v0

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_23

    .line 467
    :goto_22
    return-void

    .line 460
    :cond_23
    iget v1, p0, Landroid/support/v7/widget/FastScroller;->mVerticalDragY:F

    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 461
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v4

    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 462
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v5

    iget v6, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerViewHeight:I

    move-object v0, p0

    move v2, p1

    .line 460
    invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/FastScroller;->scrollTo(FF[IIII)I

    move-result v7

    .line 463
    .local v7, "scrollingBy":I
    if-eqz v7, :cond_40

    .line 464
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v8, v7}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    .line 466
    :cond_40
    iput p1, p0, Landroid/support/v7/widget/FastScroller;->mVerticalDragY:F

    goto :goto_22
.end method


# virtual methods
.method public attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .registers 3
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 164
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-ne v0, p1, :cond_5

    .line 174
    :cond_4
    :goto_4
    return-void

    .line 167
    :cond_5
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_c

    .line 168
    invoke-direct {p0}, Landroid/support/v7/widget/FastScroller;->destroyCallbacks()V

    .line 170
    :cond_c
    iput-object p1, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 171
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_4

    .line 172
    invoke-direct {p0}, Landroid/support/v7/widget/FastScroller;->setupCallbacks()V

    goto :goto_4
.end method

.method getHorizontalThumbDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 525
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    return-object v0
.end method

.method getHorizontalTrackDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 520
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getVerticalThumbDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 535
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    return-object v0
.end method

.method getVerticalTrackDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 530
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public hide()V
    .registers 2

    .prologue
    .line 248
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/FastScroller;->hide(I)V

    .line 249
    return-void
.end method

.method hide(I)V
    .registers 6
    .param p1, "duration"    # I
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 253
    iget v0, p0, Landroid/support/v7/widget/FastScroller;->mAnimationState:I

    packed-switch v0, :pswitch_data_36

    .line 264
    :goto_5
    return-void

    .line 255
    :pswitch_6
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 258
    :pswitch_b
    const/4 v0, 0x3

    iput v0, p0, Landroid/support/v7/widget/FastScroller;->mAnimationState:I

    .line 259
    iget-object v1, p0, Landroid/support/v7/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    const/4 v0, 0x2

    new-array v2, v0, [F

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v2, v3

    const/4 v0, 0x1

    const/4 v3, 0x0

    aput v3, v2, v0

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 260
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 261
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_5

    .line 253
    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_6
        :pswitch_b
    .end packed-switch
.end method

.method public isDragging()Z
    .registers 3

    .prologue
    .line 220
    iget v0, p0, Landroid/support/v7/widget/FastScroller;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method isHidden()Z
    .registers 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 228
    iget v0, p0, Landroid/support/v7/widget/FastScroller;->mState:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method isPointInsideHorizontalThumb(FF)Z
    .registers 5
    .param p1, "x"    # F
    .param p2, "y"    # F
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 513
    iget v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerViewHeight:I

    iget v1, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalThumbHeight:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_24

    iget v0, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalThumbCenterX:I

    iget v1, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalThumbWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_24

    iget v0, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalThumbCenterX:I

    iget v1, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalThumbWidth:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_24

    const/4 v0, 0x1

    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_23
.end method

.method isPointInsideVerticalThumb(FF)Z
    .registers 5
    .param p1, "x"    # F
    .param p2, "y"    # F
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 505
    invoke-direct {p0}, Landroid/support/v7/widget/FastScroller;->isLayoutRTL()Z

    move-result v0

    if-eqz v0, :cond_29

    iget v0, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_33

    :cond_f
    iget v0, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbCenterY:I

    iget v1, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbHeight:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_33

    iget v0, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbCenterY:I

    iget v1, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbHeight:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_33

    const/4 v0, 0x1

    :goto_28
    return v0

    :cond_29
    iget v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerViewWidth:I

    iget v1, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbWidth:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-gez v0, :cond_f

    :cond_33
    const/4 v0, 0x0

    goto :goto_28
.end method

.method isVisible()Z
    .registers 3
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 224
    iget v1, p0, Landroid/support/v7/widget/FastScroller;->mState:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .registers 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p3, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 277
    iget v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerViewWidth:I

    iget-object v1, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_14

    iget v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerViewHeight:I

    iget-object v1, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 278
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_29

    .line 279
    :cond_14
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerViewWidth:I

    .line 280
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerViewHeight:I

    .line 285
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/FastScroller;->setState(I)V

    .line 297
    :cond_28
    :goto_28
    return-void

    .line 289
    :cond_29
    iget v0, p0, Landroid/support/v7/widget/FastScroller;->mAnimationState:I

    if-eqz v0, :cond_28

    .line 290
    iget-boolean v0, p0, Landroid/support/v7/widget/FastScroller;->mNeedVerticalScrollbar:Z

    if-eqz v0, :cond_34

    .line 291
    invoke-direct {p0, p1}, Landroid/support/v7/widget/FastScroller;->drawVerticalScrollbar(Landroid/graphics/Canvas;)V

    .line 293
    :cond_34
    iget-boolean v0, p0, Landroid/support/v7/widget/FastScroller;->mNeedHorizontalScrollbar:Z

    if-eqz v0, :cond_28

    .line 294
    invoke-direct {p0, p1}, Landroid/support/v7/widget/FastScroller;->drawHorizontalScrollbar(Landroid/graphics/Canvas;)V

    goto :goto_28
.end method

.method public onInterceptTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .registers 10
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "ev"    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x2

    .line 390
    iget v3, p0, Landroid/support/v7/widget/FastScroller;->mState:I

    if-ne v3, v6, :cond_48

    .line 391
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0, v3, v4}, Landroid/support/v7/widget/FastScroller;->isPointInsideVerticalThumb(FF)Z

    move-result v2

    .line 392
    .local v2, "insideVerticalThumb":Z
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0, v3, v4}, Landroid/support/v7/widget/FastScroller;->isPointInsideHorizontalThumb(FF)Z

    move-result v1

    .line 393
    .local v1, "insideHorizontalThumb":Z
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_46

    if-nez v2, :cond_28

    if-eqz v1, :cond_46

    .line 395
    :cond_28
    if-eqz v1, :cond_39

    .line 396
    iput v6, p0, Landroid/support/v7/widget/FastScroller;->mDragState:I

    .line 397
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    iput v3, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalDragX:F

    .line 403
    :cond_34
    :goto_34
    invoke-virtual {p0, v5}, Landroid/support/v7/widget/FastScroller;->setState(I)V

    .line 404
    const/4 v0, 0x1

    .line 413
    .end local v1    # "insideHorizontalThumb":Z
    .end local v2    # "insideVerticalThumb":Z
    .local v0, "handled":Z
    :goto_38
    return v0

    .line 398
    .end local v0    # "handled":Z
    .restart local v1    # "insideHorizontalThumb":Z
    .restart local v2    # "insideVerticalThumb":Z
    :cond_39
    if-eqz v2, :cond_34

    .line 399
    iput v5, p0, Landroid/support/v7/widget/FastScroller;->mDragState:I

    .line 400
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    iput v3, p0, Landroid/support/v7/widget/FastScroller;->mVerticalDragY:F

    goto :goto_34

    .line 406
    :cond_46
    const/4 v0, 0x0

    .restart local v0    # "handled":Z
    goto :goto_38

    .line 408
    .end local v0    # "handled":Z
    .end local v1    # "insideHorizontalThumb":Z
    .end local v2    # "insideVerticalThumb":Z
    :cond_48
    iget v3, p0, Landroid/support/v7/widget/FastScroller;->mState:I

    if-ne v3, v5, :cond_4e

    .line 409
    const/4 v0, 0x1

    .restart local v0    # "handled":Z
    goto :goto_38

    .line 411
    .end local v0    # "handled":Z
    :cond_4e
    const/4 v0, 0x0

    .restart local v0    # "handled":Z
    goto :goto_38
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .registers 2
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 452
    return-void
.end method

.method public onTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .registers 9
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "me"    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x2

    .line 418
    iget v2, p0, Landroid/support/v7/widget/FastScroller;->mState:I

    if-nez v2, :cond_8

    .line 449
    :cond_7
    :goto_7
    return-void

    .line 422
    :cond_8
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_47

    .line 423
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroid/support/v7/widget/FastScroller;->isPointInsideVerticalThumb(FF)Z

    move-result v1

    .line 424
    .local v1, "insideVerticalThumb":Z
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroid/support/v7/widget/FastScroller;->isPointInsideHorizontalThumb(FF)Z

    move-result v0

    .line 425
    .local v0, "insideHorizontalThumb":Z
    if-nez v1, :cond_2a

    if-eqz v0, :cond_7

    .line 426
    :cond_2a
    if-eqz v0, :cond_3a

    .line 427
    iput v5, p0, Landroid/support/v7/widget/FastScroller;->mDragState:I

    .line 428
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalDragX:F

    .line 433
    :cond_36
    :goto_36
    invoke-virtual {p0, v4}, Landroid/support/v7/widget/FastScroller;->setState(I)V

    goto :goto_7

    .line 429
    :cond_3a
    if-eqz v1, :cond_36

    .line 430
    iput v4, p0, Landroid/support/v7/widget/FastScroller;->mDragState:I

    .line 431
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Landroid/support/v7/widget/FastScroller;->mVerticalDragY:F

    goto :goto_36

    .line 435
    .end local v0    # "insideHorizontalThumb":Z
    .end local v1    # "insideVerticalThumb":Z
    :cond_47
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v5, :cond_5c

    iget v2, p0, Landroid/support/v7/widget/FastScroller;->mState:I

    if-ne v2, v4, :cond_5c

    .line 436
    iput v3, p0, Landroid/support/v7/widget/FastScroller;->mVerticalDragY:F

    .line 437
    iput v3, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalDragX:F

    .line 438
    invoke-virtual {p0, v5}, Landroid/support/v7/widget/FastScroller;->setState(I)V

    .line 439
    const/4 v2, 0x0

    iput v2, p0, Landroid/support/v7/widget/FastScroller;->mDragState:I

    goto :goto_7

    .line 440
    :cond_5c
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v4, :cond_7

    iget v2, p0, Landroid/support/v7/widget/FastScroller;->mState:I

    if-ne v2, v4, :cond_7

    .line 441
    invoke-virtual {p0}, Landroid/support/v7/widget/FastScroller;->show()V

    .line 442
    iget v2, p0, Landroid/support/v7/widget/FastScroller;->mDragState:I

    if-ne v2, v5, :cond_74

    .line 443
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-direct {p0, v2}, Landroid/support/v7/widget/FastScroller;->horizontalScrollTo(F)V

    .line 445
    :cond_74
    iget v2, p0, Landroid/support/v7/widget/FastScroller;->mDragState:I

    if-ne v2, v4, :cond_7

    .line 446
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v2}, Landroid/support/v7/widget/FastScroller;->verticalScrollTo(F)V

    goto :goto_7
.end method

.method requestRedraw()V
    .registers 2

    .prologue
    .line 191
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 192
    return-void
.end method

.method setState(I)V
    .registers 5
    .param p1, "state"    # I

    .prologue
    const/4 v2, 0x2

    .line 195
    if-ne p1, v2, :cond_11

    iget v0, p0, Landroid/support/v7/widget/FastScroller;->mState:I

    if-eq v0, v2, :cond_11

    .line 196
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    sget-object v1, Landroid/support/v7/widget/FastScroller;->PRESSED_STATE_SET:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 197
    invoke-direct {p0}, Landroid/support/v7/widget/FastScroller;->cancelHide()V

    .line 200
    :cond_11
    if-nez p1, :cond_2b

    .line 201
    invoke-virtual {p0}, Landroid/support/v7/widget/FastScroller;->requestRedraw()V

    .line 206
    :goto_16
    iget v0, p0, Landroid/support/v7/widget/FastScroller;->mState:I

    if-ne v0, v2, :cond_2f

    if-eq p1, v2, :cond_2f

    .line 207
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    sget-object v1, Landroid/support/v7/widget/FastScroller;->EMPTY_STATE_SET:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 208
    const/16 v0, 0x4b0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/FastScroller;->resetHideDelay(I)V

    .line 212
    :cond_28
    :goto_28
    iput p1, p0, Landroid/support/v7/widget/FastScroller;->mState:I

    .line 213
    return-void

    .line 203
    :cond_2b
    invoke-virtual {p0}, Landroid/support/v7/widget/FastScroller;->show()V

    goto :goto_16

    .line 209
    :cond_2f
    const/4 v0, 0x1

    if-ne p1, v0, :cond_28

    .line 210
    const/16 v0, 0x5dc

    invoke-direct {p0, v0}, Landroid/support/v7/widget/FastScroller;->resetHideDelay(I)V

    goto :goto_28
.end method

.method public show()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 233
    iget v0, p0, Landroid/support/v7/widget/FastScroller;->mAnimationState:I

    packed-switch v0, :pswitch_data_3e

    .line 245
    :goto_6
    :pswitch_6
    return-void

    .line 235
    :pswitch_7
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 238
    :pswitch_c
    iput v4, p0, Landroid/support/v7/widget/FastScroller;->mAnimationState:I

    .line 239
    iget-object v1, p0, Landroid/support/v7/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    const/4 v0, 0x2

    new-array v2, v0, [F

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v2, v3

    const/high16 v0, 0x3f800000    # 1.0f

    aput v0, v2, v4

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 240
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 241
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 242
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_6

    .line 233
    nop

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_c
        :pswitch_6
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method updateScrollPosition(II)V
    .registers 13
    .param p1, "offsetX"    # I
    .param p2, "offsetY"    # I

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 348
    iget-object v5, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v3

    .line 349
    .local v3, "verticalContentLength":I
    iget v4, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerViewHeight:I

    .line 350
    .local v4, "verticalVisibleLength":I
    sub-int v5, v3, v4

    if-lez v5, :cond_3e

    iget v5, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerViewHeight:I

    iget v8, p0, Landroid/support/v7/widget/FastScroller;->mScrollbarMinimumRange:I

    if-lt v5, v8, :cond_3e

    move v5, v6

    :goto_17
    iput-boolean v5, p0, Landroid/support/v7/widget/FastScroller;->mNeedVerticalScrollbar:Z

    .line 353
    iget-object v5, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result v0

    .line 354
    .local v0, "horizontalContentLength":I
    iget v1, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerViewWidth:I

    .line 355
    .local v1, "horizontalVisibleLength":I
    sub-int v5, v0, v1

    if-lez v5, :cond_40

    iget v5, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerViewWidth:I

    iget v8, p0, Landroid/support/v7/widget/FastScroller;->mScrollbarMinimumRange:I

    if-lt v5, v8, :cond_40

    move v5, v6

    :goto_2c
    iput-boolean v5, p0, Landroid/support/v7/widget/FastScroller;->mNeedHorizontalScrollbar:Z

    .line 358
    iget-boolean v5, p0, Landroid/support/v7/widget/FastScroller;->mNeedVerticalScrollbar:Z

    if-nez v5, :cond_42

    iget-boolean v5, p0, Landroid/support/v7/widget/FastScroller;->mNeedHorizontalScrollbar:Z

    if-nez v5, :cond_42

    .line 359
    iget v5, p0, Landroid/support/v7/widget/FastScroller;->mState:I

    if-eqz v5, :cond_3d

    .line 360
    invoke-virtual {p0, v7}, Landroid/support/v7/widget/FastScroller;->setState(I)V

    .line 384
    :cond_3d
    :goto_3d
    return-void

    .end local v0    # "horizontalContentLength":I
    .end local v1    # "horizontalVisibleLength":I
    :cond_3e
    move v5, v7

    .line 350
    goto :goto_17

    .restart local v0    # "horizontalContentLength":I
    .restart local v1    # "horizontalVisibleLength":I
    :cond_40
    move v5, v7

    .line 355
    goto :goto_2c

    .line 365
    :cond_42
    iget-boolean v5, p0, Landroid/support/v7/widget/FastScroller;->mNeedVerticalScrollbar:Z

    if-eqz v5, :cond_5b

    .line 366
    int-to-float v5, p2

    int-to-float v7, v4

    div-float/2addr v7, v9

    add-float v2, v5, v7

    .line 367
    .local v2, "middleScreenPos":F
    int-to-float v5, v4

    mul-float/2addr v5, v2

    int-to-float v7, v3

    div-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbCenterY:I

    .line 369
    mul-int v5, v4, v4

    div-int/2addr v5, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbHeight:I

    .line 373
    .end local v2    # "middleScreenPos":F
    :cond_5b
    iget-boolean v5, p0, Landroid/support/v7/widget/FastScroller;->mNeedHorizontalScrollbar:Z

    if-eqz v5, :cond_74

    .line 374
    int-to-float v5, p1

    int-to-float v7, v1

    div-float/2addr v7, v9

    add-float v2, v5, v7

    .line 375
    .restart local v2    # "middleScreenPos":F
    int-to-float v5, v1

    mul-float/2addr v5, v2

    int-to-float v7, v0

    div-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalThumbCenterX:I

    .line 377
    mul-int v5, v1, v1

    div-int/2addr v5, v0

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalThumbWidth:I

    .line 381
    .end local v2    # "middleScreenPos":F
    :cond_74
    iget v5, p0, Landroid/support/v7/widget/FastScroller;->mState:I

    if-eqz v5, :cond_7c

    iget v5, p0, Landroid/support/v7/widget/FastScroller;->mState:I

    if-ne v5, v6, :cond_3d

    .line 382
    :cond_7c
    invoke-virtual {p0, v6}, Landroid/support/v7/widget/FastScroller;->setState(I)V

    goto :goto_3d
.end method
