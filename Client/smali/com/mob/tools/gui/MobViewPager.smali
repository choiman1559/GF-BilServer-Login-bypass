.class public Lcom/mob/tools/gui/MobViewPager;
.super Landroid/view/ViewGroup;
.source "MobViewPager.java"


# static fields
.field private static final SNAP_VELOCITY:I = 0x1f4

.field private static final TOUCH_STATE_REST:I = 0x0

.field private static final TOUCH_STATE_SCROLLING:I = 0x1


# instance fields
.field private adapter:Lcom/mob/tools/gui/ViewPagerAdapter;

.field private currentPage:Landroid/view/View;

.field private currentScreen:I

.field private lastMotionX:F

.field private lastMotionY:F

.field private maximumVelocity:I

.field private nextPage:Landroid/view/View;

.field private previousPage:Landroid/view/View;

.field private screenCount:I

.field private scroller:Lcom/mob/tools/gui/SmoothScroller;

.field private skipScreen:Z

.field private touchSlop:I

.field private touchState:I

.field private velocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mob/tools/gui/MobViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/mob/tools/gui/MobViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    iput v0, p0, Lcom/mob/tools/gui/MobViewPager;->touchState:I

    .line 31
    iput-boolean v0, p0, Lcom/mob/tools/gui/MobViewPager;->skipScreen:Z

    .line 43
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/MobViewPager;->init(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method private handleInterceptMove(Landroid/view/MotionEvent;)V
    .registers 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 332
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 333
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 334
    .local v2, "y":F
    iget v4, p0, Lcom/mob/tools/gui/MobViewPager;->lastMotionX:F

    sub-float v4, v0, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-int v1, v4

    .line 335
    .local v1, "xDiff":I
    iget v4, p0, Lcom/mob/tools/gui/MobViewPager;->lastMotionY:F

    sub-float v4, v2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-int v3, v4

    .line 337
    .local v3, "yDiff":I
    if-ge v3, v1, :cond_25

    iget v4, p0, Lcom/mob/tools/gui/MobViewPager;->touchSlop:I

    if-le v1, v4, :cond_25

    .line 338
    const/4 v4, 0x1

    iput v4, p0, Lcom/mob/tools/gui/MobViewPager;->touchState:I

    .line 339
    iput v0, p0, Lcom/mob/tools/gui/MobViewPager;->lastMotionX:F

    .line 341
    :cond_25
    return-void
.end method

.method private handleScrollMove(Landroid/view/MotionEvent;)V
    .registers 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    .line 425
    iget-object v4, p0, Lcom/mob/tools/gui/MobViewPager;->adapter:Lcom/mob/tools/gui/ViewPagerAdapter;

    if-nez v4, :cond_6

    .line 449
    :cond_5
    :goto_5
    return-void

    .line 430
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 431
    .local v3, "x1":F
    iget v4, p0, Lcom/mob/tools/gui/MobViewPager;->lastMotionX:F

    sub-float/2addr v4, v3

    float-to-int v1, v4

    .line 432
    .local v1, "deltaX":I
    iput v3, p0, Lcom/mob/tools/gui/MobViewPager;->lastMotionX:F

    .line 434
    if-gez v1, :cond_25

    .line 435
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getScrollX()I

    move-result v4

    if-lez v4, :cond_5

    .line 437
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getScrollX()I

    move-result v4

    neg-int v4, v4

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {p0, v4, v6}, Lcom/mob/tools/gui/MobViewPager;->scrollBy(II)V

    goto :goto_5

    .line 439
    :cond_25
    if-lez v1, :cond_5

    .line 440
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getChildCount()I

    move-result v4

    if-eqz v4, :cond_5

    .line 441
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v4}, Lcom/mob/tools/gui/MobViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 442
    .local v2, "lastScr":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getScrollX()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getWidth()I

    move-result v5

    sub-int v0, v4, v5

    .line 443
    .local v0, "availableToScroll":I
    if-lez v0, :cond_5

    .line 445
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {p0, v4, v6}, Lcom/mob/tools/gui/MobViewPager;->scrollBy(II)V

    goto :goto_5
.end method

.method private init(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    new-instance v1, Lcom/mob/tools/gui/SmoothScroller;

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mob/tools/gui/SmoothScroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mob/tools/gui/MobViewPager;->scroller:Lcom/mob/tools/gui/SmoothScroller;

    .line 49
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 50
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/mob/tools/gui/MobViewPager;->touchSlop:I

    .line 51
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/mob/tools/gui/MobViewPager;->maximumVelocity:I

    .line 52
    return-void
.end method

.method private onScreenChange(I)V
    .registers 10
    .param p1, "lastScreen"    # I

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 173
    iget-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->adapter:Lcom/mob/tools/gui/ViewPagerAdapter;

    if-eqz v3, :cond_62

    .line 174
    iget-boolean v3, p0, Lcom/mob/tools/gui/MobViewPager;->skipScreen:Z

    if-eqz v3, :cond_63

    iget v3, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    sub-int v3, p1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v3, v6, :cond_63

    .line 176
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->removeAllViews()V

    .line 177
    iget v3, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    if-lez v3, :cond_2f

    .line 178
    iget-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->adapter:Lcom/mob/tools/gui/ViewPagerAdapter;

    iget v4, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    add-int/lit8 v4, v4, -0x1

    iget-object v5, p0, Lcom/mob/tools/gui/MobViewPager;->previousPage:Landroid/view/View;

    invoke-virtual {v3, v4, v5, p0}, Lcom/mob/tools/gui/ViewPagerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->previousPage:Landroid/view/View;

    .line 179
    iget-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->previousPage:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/mob/tools/gui/MobViewPager;->addView(Landroid/view/View;)V

    .line 181
    :cond_2f
    iget-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->adapter:Lcom/mob/tools/gui/ViewPagerAdapter;

    iget v4, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    iget-object v5, p0, Lcom/mob/tools/gui/MobViewPager;->currentPage:Landroid/view/View;

    invoke-virtual {v3, v4, v5, p0}, Lcom/mob/tools/gui/ViewPagerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->currentPage:Landroid/view/View;

    .line 182
    iget-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->currentPage:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/mob/tools/gui/MobViewPager;->addView(Landroid/view/View;)V

    .line 183
    iget v3, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    iget v4, p0, Lcom/mob/tools/gui/MobViewPager;->screenCount:I

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_5b

    .line 184
    iget-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->adapter:Lcom/mob/tools/gui/ViewPagerAdapter;

    iget v4, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/mob/tools/gui/MobViewPager;->nextPage:Landroid/view/View;

    invoke-virtual {v3, v4, v5, p0}, Lcom/mob/tools/gui/ViewPagerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->nextPage:Landroid/view/View;

    .line 185
    iget-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->nextPage:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/mob/tools/gui/MobViewPager;->addView(Landroid/view/View;)V

    .line 224
    :cond_5b
    iget-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->adapter:Lcom/mob/tools/gui/ViewPagerAdapter;

    iget v4, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    invoke-virtual {v3, v4, p1}, Lcom/mob/tools/gui/ViewPagerAdapter;->onScreenChange(II)V

    .line 226
    :cond_62
    return-void

    .line 188
    :cond_63
    iget v3, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    if-le v3, p1, :cond_9f

    .line 189
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_68
    iget v3, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    sub-int/2addr v3, p1

    if-ge v0, v3, :cond_5b

    .line 190
    add-int v3, p1, v0

    add-int/lit8 v1, v3, 0x1

    .line 191
    .local v1, "screen":I
    iget-object v2, p0, Lcom/mob/tools/gui/MobViewPager;->previousPage:Landroid/view/View;

    .line 192
    .local v2, "tmp":Landroid/view/View;
    iget-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->currentPage:Landroid/view/View;

    iput-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->previousPage:Landroid/view/View;

    .line 193
    iget-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->nextPage:Landroid/view/View;

    iput-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->currentPage:Landroid/view/View;

    .line 195
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getChildCount()I

    move-result v3

    if-lt v3, v7, :cond_84

    .line 196
    invoke-virtual {p0, v5}, Lcom/mob/tools/gui/MobViewPager;->removeViewAt(I)V

    .line 198
    :cond_84
    iget v3, p0, Lcom/mob/tools/gui/MobViewPager;->screenCount:I

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_9c

    .line 199
    iget-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->adapter:Lcom/mob/tools/gui/ViewPagerAdapter;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4, v2, p0}, Lcom/mob/tools/gui/ViewPagerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->nextPage:Landroid/view/View;

    .line 200
    iget-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->nextPage:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/mob/tools/gui/MobViewPager;->addView(Landroid/view/View;)V

    .line 189
    :goto_99
    add-int/lit8 v0, v0, 0x1

    goto :goto_68

    .line 202
    :cond_9c
    iput-object v2, p0, Lcom/mob/tools/gui/MobViewPager;->nextPage:Landroid/view/View;

    goto :goto_99

    .line 206
    .end local v0    # "i":I
    .end local v1    # "screen":I
    .end local v2    # "tmp":Landroid/view/View;
    :cond_9f
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_a0
    iget v3, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    sub-int v3, p1, v3

    if-ge v0, v3, :cond_5b

    .line 207
    sub-int v3, p1, v0

    add-int/lit8 v1, v3, -0x1

    .line 208
    .restart local v1    # "screen":I
    iget-object v2, p0, Lcom/mob/tools/gui/MobViewPager;->nextPage:Landroid/view/View;

    .line 209
    .restart local v2    # "tmp":Landroid/view/View;
    iget-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->currentPage:Landroid/view/View;

    iput-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->nextPage:Landroid/view/View;

    .line 210
    iget-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->previousPage:Landroid/view/View;

    iput-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->currentPage:Landroid/view/View;

    .line 212
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getChildCount()I

    move-result v3

    if-lt v3, v7, :cond_bd

    .line 213
    invoke-virtual {p0, v6}, Lcom/mob/tools/gui/MobViewPager;->removeViewAt(I)V

    .line 215
    :cond_bd
    if-lez v1, :cond_d1

    .line 216
    iget-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->adapter:Lcom/mob/tools/gui/ViewPagerAdapter;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4, v2, p0}, Lcom/mob/tools/gui/ViewPagerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->previousPage:Landroid/view/View;

    .line 217
    iget-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->previousPage:Landroid/view/View;

    invoke-virtual {p0, v3, v5}, Lcom/mob/tools/gui/MobViewPager;->addView(Landroid/view/View;I)V

    .line 206
    :goto_ce
    add-int/lit8 v0, v0, 0x1

    goto :goto_a0

    .line 219
    :cond_d1
    iput-object v2, p0, Lcom/mob/tools/gui/MobViewPager;->previousPage:Landroid/view/View;

    goto :goto_ce
.end method


# virtual methods
.method public computeScroll()V
    .registers 8

    .prologue
    .line 146
    iget-object v5, p0, Lcom/mob/tools/gui/MobViewPager;->adapter:Lcom/mob/tools/gui/ViewPagerAdapter;

    if-eqz v5, :cond_8

    iget v5, p0, Lcom/mob/tools/gui/MobViewPager;->screenCount:I

    if-gtz v5, :cond_9

    .line 170
    :cond_8
    :goto_8
    return-void

    .line 150
    :cond_9
    iget-object v5, p0, Lcom/mob/tools/gui/MobViewPager;->scroller:Lcom/mob/tools/gui/SmoothScroller;

    invoke-virtual {v5}, Lcom/mob/tools/gui/SmoothScroller;->computeScrollOffset()Z

    move-result v5

    if-eqz v5, :cond_39

    .line 151
    iget-object v5, p0, Lcom/mob/tools/gui/MobViewPager;->scroller:Lcom/mob/tools/gui/SmoothScroller;

    invoke-virtual {v5}, Lcom/mob/tools/gui/SmoothScroller;->getCurrX()I

    move-result v5

    iget-object v6, p0, Lcom/mob/tools/gui/MobViewPager;->scroller:Lcom/mob/tools/gui/SmoothScroller;

    invoke-virtual {v6}, Lcom/mob/tools/gui/SmoothScroller;->getCurrY()I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/mob/tools/gui/MobViewPager;->scrollTo(II)V

    .line 152
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->postInvalidate()V

    .line 166
    :cond_23
    :goto_23
    iget-object v5, p0, Lcom/mob/tools/gui/MobViewPager;->adapter:Lcom/mob/tools/gui/ViewPagerAdapter;

    if-eqz v5, :cond_8

    .line 167
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getScrollX()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float v2, v5, v6

    .line 168
    .local v2, "position":F
    iget-object v5, p0, Lcom/mob/tools/gui/MobViewPager;->adapter:Lcom/mob/tools/gui/ViewPagerAdapter;

    invoke-virtual {v5, v2}, Lcom/mob/tools/gui/ViewPagerAdapter;->onScreenChanging(F)V

    goto :goto_8

    .line 154
    .end local v2    # "position":F
    :cond_39
    iget v1, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    .line 155
    .local v1, "lastScreen":I
    iget-object v5, p0, Lcom/mob/tools/gui/MobViewPager;->scroller:Lcom/mob/tools/gui/SmoothScroller;

    invoke-virtual {v5}, Lcom/mob/tools/gui/SmoothScroller;->getCurrX()I

    move-result v3

    .line 156
    .local v3, "scrX":I
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getWidth()I

    move-result v4

    .line 157
    .local v4, "w":I
    div-int v0, v3, v4

    .line 158
    .local v0, "index":I
    rem-int v5, v3, v4

    div-int/lit8 v6, v4, 0x2

    if-le v5, v6, :cond_4f

    .line 159
    add-int/lit8 v0, v0, 0x1

    .line 161
    :cond_4f
    const/4 v5, 0x0

    iget v6, p0, Lcom/mob/tools/gui/MobViewPager;->screenCount:I

    add-int/lit8 v6, v6, -0x1

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    .line 162
    iget v5, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    if-eq v1, v5, :cond_23

    .line 163
    invoke-direct {p0, v1}, Lcom/mob/tools/gui/MobViewPager;->onScreenChange(I)V

    goto :goto_23
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 131
    iget-object v2, p0, Lcom/mob/tools/gui/MobViewPager;->adapter:Lcom/mob/tools/gui/ViewPagerAdapter;

    if-eqz v2, :cond_8

    iget v2, p0, Lcom/mob/tools/gui/MobViewPager;->screenCount:I

    if-gtz v2, :cond_9

    .line 143
    :cond_8
    :goto_8
    return-void

    .line 135
    :cond_9
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getDrawingTime()J

    move-result-wide v0

    .line 136
    .local v0, "drawingTime":J
    iget v2, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    if-lez v2, :cond_16

    .line 137
    iget-object v2, p0, Lcom/mob/tools/gui/MobViewPager;->previousPage:Landroid/view/View;

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/mob/tools/gui/MobViewPager;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 139
    :cond_16
    iget-object v2, p0, Lcom/mob/tools/gui/MobViewPager;->currentPage:Landroid/view/View;

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/mob/tools/gui/MobViewPager;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 140
    iget v2, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    iget v3, p0, Lcom/mob/tools/gui/MobViewPager;->screenCount:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_8

    .line 141
    iget-object v2, p0, Lcom/mob/tools/gui/MobViewPager;->nextPage:Landroid/view/View;

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/mob/tools/gui/MobViewPager;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_8
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .registers 7
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 259
    iget-object v1, p0, Lcom/mob/tools/gui/MobViewPager;->adapter:Lcom/mob/tools/gui/ViewPagerAdapter;

    if-nez v1, :cond_b

    .line 260
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    .line 274
    :goto_a
    return v0

    .line 263
    :cond_b
    const/16 v1, 0x11

    if-ne p2, v1, :cond_1b

    .line 264
    iget v1, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    if-lez v1, :cond_2f

    .line 265
    iget v1, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v3}, Lcom/mob/tools/gui/MobViewPager;->scrollToScreen(IZ)V

    goto :goto_a

    .line 268
    :cond_1b
    const/16 v1, 0x42

    if-ne p2, v1, :cond_2f

    .line 269
    iget v1, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    iget v2, p0, Lcom/mob/tools/gui/MobViewPager;->screenCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2f

    .line 270
    iget v1, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, v3}, Lcom/mob/tools/gui/MobViewPager;->scrollToScreen(IZ)V

    goto :goto_a

    .line 274
    :cond_2f
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_a
.end method

.method public getCurrentScreen()I
    .registers 2

    .prologue
    .line 94
    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 282
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 283
    .local v0, "action":I
    const/4 v3, 0x2

    if-ne v0, v3, :cond_e

    iget v3, p0, Lcom/mob/tools/gui/MobViewPager;->touchState:I

    if-eqz v3, :cond_e

    .line 328
    :cond_d
    :goto_d
    return v5

    .line 287
    :cond_e
    iget-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v3, :cond_18

    .line 288
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->velocityTracker:Landroid/view/VelocityTracker;

    .line 290
    :cond_18
    iget-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 292
    packed-switch v0, :pswitch_data_54

    .line 328
    :goto_20
    iget v3, p0, Lcom/mob/tools/gui/MobViewPager;->touchState:I

    if-nez v3, :cond_d

    move v5, v4

    goto :goto_d

    .line 298
    :pswitch_26
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/MobViewPager;->handleInterceptMove(Landroid/view/MotionEvent;)V

    goto :goto_20

    .line 302
    :pswitch_2a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 303
    .local v1, "x1":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 304
    .local v2, "y1":F
    iput v1, p0, Lcom/mob/tools/gui/MobViewPager;->lastMotionX:F

    .line 305
    iput v2, p0, Lcom/mob/tools/gui/MobViewPager;->lastMotionY:F

    .line 312
    iget-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->scroller:Lcom/mob/tools/gui/SmoothScroller;

    invoke-virtual {v3}, Lcom/mob/tools/gui/SmoothScroller;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_42

    move v3, v4

    :goto_3f
    iput v3, p0, Lcom/mob/tools/gui/MobViewPager;->touchState:I

    goto :goto_20

    :cond_42
    move v3, v5

    goto :goto_3f

    .line 316
    .end local v1    # "x1":F
    .end local v2    # "y1":F
    :pswitch_44
    iget-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_50

    .line 317
    iget-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->recycle()V

    .line 318
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->velocityTracker:Landroid/view/VelocityTracker;

    .line 320
    :cond_50
    iput v4, p0, Lcom/mob/tools/gui/MobViewPager;->touchState:I

    goto :goto_20

    .line 292
    nop

    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_2a
        :pswitch_44
        :pswitch_26
        :pswitch_44
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 13
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v6, 0x0

    .line 114
    iget-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->adapter:Lcom/mob/tools/gui/ViewPagerAdapter;

    if-eqz v3, :cond_9

    iget v3, p0, Lcom/mob/tools/gui/MobViewPager;->screenCount:I

    if-gtz v3, :cond_a

    .line 128
    :cond_9
    :goto_9
    return-void

    .line 118
    :cond_a
    sub-int v2, p4, p2

    .line 119
    .local v2, "width":I
    sub-int v1, p5, p3

    .line 120
    .local v1, "height":I
    iget v3, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    mul-int v0, v3, v2

    .line 121
    .local v0, "cLeft":I
    iget v3, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    if-lez v3, :cond_1d

    .line 122
    iget-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->previousPage:Landroid/view/View;

    sub-int v4, v0, v2

    invoke-virtual {v3, v4, v6, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 124
    :cond_1d
    iget-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->currentPage:Landroid/view/View;

    add-int v4, v0, v2

    invoke-virtual {v3, v0, v6, v4, v1}, Landroid/view/View;->layout(IIII)V

    .line 125
    iget v3, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    iget v4, p0, Lcom/mob/tools/gui/MobViewPager;->screenCount:I

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_9

    .line 126
    iget-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->nextPage:Landroid/view/View;

    add-int v4, v0, v2

    add-int v5, v0, v2

    add-int/2addr v5, v2

    invoke-virtual {v3, v4, v6, v5, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_9
.end method

.method protected onMeasure(II)V
    .registers 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    .line 98
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 99
    iget-object v6, p0, Lcom/mob/tools/gui/MobViewPager;->adapter:Lcom/mob/tools/gui/ViewPagerAdapter;

    if-eqz v6, :cond_d

    iget v6, p0, Lcom/mob/tools/gui/MobViewPager;->screenCount:I

    if-gtz v6, :cond_e

    .line 111
    :cond_d
    return-void

    .line 103
    :cond_e
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getMeasuredWidth()I

    move-result v5

    .line 104
    .local v5, "width":I
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getMeasuredHeight()I

    move-result v3

    .line 105
    .local v3, "height":I
    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 106
    .local v1, "adjustedWidthMeasureSpec":I
    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 107
    .local v0, "adjustedHeightMeasureSpec":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1f
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getChildCount()I

    move-result v6

    if-ge v4, v6, :cond_d

    .line 108
    invoke-virtual {p0, v4}, Lcom/mob/tools/gui/MobViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 109
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2, v1, v0}, Landroid/view/View;->measure(II)V

    .line 107
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 344
    iget-object v8, p0, Lcom/mob/tools/gui/MobViewPager;->adapter:Lcom/mob/tools/gui/ViewPagerAdapter;

    if-nez v8, :cond_7

    .line 421
    :goto_6
    return v6

    .line 348
    :cond_7
    iget-object v8, p0, Lcom/mob/tools/gui/MobViewPager;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v8, :cond_11

    .line 349
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v8

    iput-object v8, p0, Lcom/mob/tools/gui/MobViewPager;->velocityTracker:Landroid/view/VelocityTracker;

    .line 351
    :cond_11
    iget-object v8, p0, Lcom/mob/tools/gui/MobViewPager;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 353
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 354
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 356
    .local v5, "x":F
    packed-switch v0, :pswitch_data_a8

    :cond_21
    :goto_21
    move v6, v7

    .line 421
    goto :goto_6

    .line 364
    :pswitch_23
    iget v6, p0, Lcom/mob/tools/gui/MobViewPager;->touchState:I

    if-eqz v6, :cond_21

    .line 369
    iget-object v6, p0, Lcom/mob/tools/gui/MobViewPager;->scroller:Lcom/mob/tools/gui/SmoothScroller;

    invoke-virtual {v6}, Lcom/mob/tools/gui/SmoothScroller;->isFinished()Z

    move-result v6

    if-nez v6, :cond_34

    .line 370
    iget-object v6, p0, Lcom/mob/tools/gui/MobViewPager;->scroller:Lcom/mob/tools/gui/SmoothScroller;

    invoke-virtual {v6}, Lcom/mob/tools/gui/SmoothScroller;->abortAnimation()V

    .line 374
    :cond_34
    iput v5, p0, Lcom/mob/tools/gui/MobViewPager;->lastMotionX:F

    goto :goto_21

    .line 378
    :pswitch_37
    iget v6, p0, Lcom/mob/tools/gui/MobViewPager;->touchState:I

    if-ne v6, v7, :cond_3f

    .line 379
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/MobViewPager;->handleScrollMove(Landroid/view/MotionEvent;)V

    goto :goto_21

    .line 386
    :cond_3f
    invoke-virtual {p0, p1}, Lcom/mob/tools/gui/MobViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_21

    iget v6, p0, Lcom/mob/tools/gui/MobViewPager;->touchState:I

    if-ne v6, v7, :cond_21

    .line 387
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/MobViewPager;->handleScrollMove(Landroid/view/MotionEvent;)V

    goto :goto_21

    .line 392
    :pswitch_4d
    iget v8, p0, Lcom/mob/tools/gui/MobViewPager;->touchState:I

    if-ne v8, v7, :cond_7b

    .line 393
    iget-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->velocityTracker:Landroid/view/VelocityTracker;

    .line 394
    .local v3, "vt":Landroid/view/VelocityTracker;
    const/16 v8, 0x3e8

    iget v9, p0, Lcom/mob/tools/gui/MobViewPager;->maximumVelocity:I

    int-to-float v9, v9

    invoke-virtual {v3, v8, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 395
    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v8

    float-to-int v2, v8

    .line 397
    .local v2, "velocityX":I
    const/16 v8, 0x1f4

    if-le v2, v8, :cond_7e

    iget v8, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    if-lez v8, :cond_7e

    .line 399
    iget v8, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {p0, v8, v6}, Lcom/mob/tools/gui/MobViewPager;->scrollToScreen(IZ)V

    .line 409
    :goto_6f
    iget-object v8, p0, Lcom/mob/tools/gui/MobViewPager;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v8, :cond_7b

    .line 410
    iget-object v8, p0, Lcom/mob/tools/gui/MobViewPager;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8}, Landroid/view/VelocityTracker;->recycle()V

    .line 411
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/mob/tools/gui/MobViewPager;->velocityTracker:Landroid/view/VelocityTracker;

    .line 414
    .end local v2    # "velocityX":I
    .end local v3    # "vt":Landroid/view/VelocityTracker;
    :cond_7b
    iput v6, p0, Lcom/mob/tools/gui/MobViewPager;->touchState:I

    goto :goto_21

    .line 400
    .restart local v2    # "velocityX":I
    .restart local v3    # "vt":Landroid/view/VelocityTracker;
    :cond_7e
    const/16 v8, -0x1f4

    if-ge v2, v8, :cond_92

    iget v8, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    iget v9, p0, Lcom/mob/tools/gui/MobViewPager;->screenCount:I

    add-int/lit8 v9, v9, -0x1

    if-ge v8, v9, :cond_92

    .line 402
    iget v8, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {p0, v8, v6}, Lcom/mob/tools/gui/MobViewPager;->scrollToScreen(IZ)V

    goto :goto_6f

    .line 404
    :cond_92
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getWidth()I

    move-result v1

    .line 405
    .local v1, "screenWidth":I
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getScrollX()I

    move-result v8

    div-int/lit8 v9, v1, 0x2

    add-int/2addr v8, v9

    div-int v4, v8, v1

    .line 406
    .local v4, "whichScreen":I
    invoke-virtual {p0, v4, v6}, Lcom/mob/tools/gui/MobViewPager;->scrollToScreen(IZ)V

    goto :goto_6f

    .line 417
    .end local v1    # "screenWidth":I
    .end local v2    # "velocityX":I
    .end local v3    # "vt":Landroid/view/VelocityTracker;
    .end local v4    # "whichScreen":I
    :pswitch_a3
    iput v6, p0, Lcom/mob/tools/gui/MobViewPager;->touchState:I

    goto/16 :goto_21

    .line 356
    nop

    :pswitch_data_a8
    .packed-switch 0x0
        :pswitch_23
        :pswitch_4d
        :pswitch_37
        :pswitch_a3
    .end packed-switch
.end method

.method public scrollLeft(Z)V
    .registers 3
    .param p1, "immediate"    # Z

    .prologue
    .line 229
    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    if-lez v0, :cond_b

    .line 230
    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/mob/tools/gui/MobViewPager;->scrollToScreen(IZ)V

    .line 232
    :cond_b
    return-void
.end method

.method public scrollRight(Z)V
    .registers 4
    .param p1, "immediate"    # Z

    .prologue
    .line 235
    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    iget v1, p0, Lcom/mob/tools/gui/MobViewPager;->screenCount:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_f

    .line 236
    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/mob/tools/gui/MobViewPager;->scrollToScreen(IZ)V

    .line 238
    :cond_f
    return-void
.end method

.method public scrollToScreen(IZ)V
    .registers 4
    .param p1, "whichScreen"    # I
    .param p2, "immediate"    # Z

    .prologue
    .line 241
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/mob/tools/gui/MobViewPager;->scrollToScreen(IZZ)V

    .line 242
    return-void
.end method

.method public scrollToScreen(IZZ)V
    .registers 11
    .param p1, "whichScreen"    # I
    .param p2, "immediate"    # Z
    .param p3, "skip"    # Z

    .prologue
    const/4 v2, 0x0

    .line 245
    iput-boolean p3, p0, Lcom/mob/tools/gui/MobViewPager;->skipScreen:Z

    .line 246
    iget-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->currentPage:Landroid/view/View;

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/mob/tools/gui/MobViewPager;->currentPage:Landroid/view/View;

    if-ne v0, v1, :cond_14

    .line 247
    iget-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->currentPage:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 249
    :cond_14
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getWidth()I

    move-result v0

    mul-int v6, p1, v0

    .line 250
    .local v6, "newX":I
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getScrollX()I

    move-result v0

    sub-int v3, v6, v0

    .line 251
    .local v3, "delta":I
    iget-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->scroller:Lcom/mob/tools/gui/SmoothScroller;

    invoke-virtual {v0}, Lcom/mob/tools/gui/SmoothScroller;->abortAnimation()V

    .line 252
    if-eqz v3, :cond_34

    .line 253
    iget-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->scroller:Lcom/mob/tools/gui/SmoothScroller;

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getScrollX()I

    move-result v1

    if-eqz p2, :cond_38

    move v5, v2

    :goto_30
    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/mob/tools/gui/SmoothScroller;->startScroll(IIIII)V

    .line 255
    :cond_34
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->invalidate()V

    .line 256
    return-void

    .line 253
    :cond_38
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getWidth()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    div-int/lit8 v5, v4, 0x2

    goto :goto_30
.end method

.method public setAdapter(Lcom/mob/tools/gui/ViewPagerAdapter;)V
    .registers 5
    .param p1, "adapter"    # Lcom/mob/tools/gui/ViewPagerAdapter;

    .prologue
    const/4 v2, 0x0

    .line 55
    iget-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->adapter:Lcom/mob/tools/gui/ViewPagerAdapter;

    if-eqz v0, :cond_b

    .line 56
    iget-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->adapter:Lcom/mob/tools/gui/ViewPagerAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mob/tools/gui/ViewPagerAdapter;->setMobViewPager(Lcom/mob/tools/gui/MobViewPager;)V

    .line 58
    :cond_b
    iput-object p1, p0, Lcom/mob/tools/gui/MobViewPager;->adapter:Lcom/mob/tools/gui/ViewPagerAdapter;

    .line 59
    iget-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->adapter:Lcom/mob/tools/gui/ViewPagerAdapter;

    if-eqz v0, :cond_16

    .line 60
    iget-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->adapter:Lcom/mob/tools/gui/ViewPagerAdapter;

    invoke-virtual {v0, p0}, Lcom/mob/tools/gui/ViewPagerAdapter;->setMobViewPager(Lcom/mob/tools/gui/MobViewPager;)V

    .line 63
    :cond_16
    if-nez p1, :cond_1e

    .line 64
    iput v2, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    .line 65
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->removeAllViews()V

    .line 91
    :cond_1d
    :goto_1d
    return-void

    .line 69
    :cond_1e
    invoke-virtual {p1}, Lcom/mob/tools/gui/ViewPagerAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/mob/tools/gui/MobViewPager;->screenCount:I

    .line 70
    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->screenCount:I

    if-gtz v0, :cond_2e

    .line 71
    iput v2, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    .line 72
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->removeAllViews()V

    goto :goto_1d

    .line 76
    :cond_2e
    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->screenCount:I

    iget v1, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    if-gt v0, v1, :cond_3d

    .line 77
    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->screenCount:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/mob/tools/gui/MobViewPager;->scrollToScreen(IZ)V

    goto :goto_1d

    .line 79
    :cond_3d
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->removeAllViews()V

    .line 80
    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    if-lez v0, :cond_55

    .line 81
    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/mob/tools/gui/MobViewPager;->previousPage:Landroid/view/View;

    invoke-virtual {p1, v0, v1, p0}, Lcom/mob/tools/gui/ViewPagerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->previousPage:Landroid/view/View;

    .line 82
    iget-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->previousPage:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/mob/tools/gui/MobViewPager;->addView(Landroid/view/View;)V

    .line 84
    :cond_55
    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    iget-object v1, p0, Lcom/mob/tools/gui/MobViewPager;->currentPage:Landroid/view/View;

    invoke-virtual {p1, v0, v1, p0}, Lcom/mob/tools/gui/ViewPagerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->currentPage:Landroid/view/View;

    .line 85
    iget-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->currentPage:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/mob/tools/gui/MobViewPager;->addView(Landroid/view/View;)V

    .line 86
    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    iget v1, p0, Lcom/mob/tools/gui/MobViewPager;->screenCount:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1d

    .line 87
    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/mob/tools/gui/MobViewPager;->nextPage:Landroid/view/View;

    invoke-virtual {p1, v0, v1, p0}, Lcom/mob/tools/gui/ViewPagerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->nextPage:Landroid/view/View;

    .line 88
    iget-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->nextPage:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/mob/tools/gui/MobViewPager;->addView(Landroid/view/View;)V

    goto :goto_1d
.end method
