.class public Landroid/support/design/widget/AppBarLayout;
.super Landroid/widget/LinearLayout;
.source "AppBarLayout.java"


# annotations
.annotation runtime Landroid/support/design/widget/CoordinatorLayout$DefaultBehavior;
    value = Landroid/support/design/widget/AppBarLayout$Behavior;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;,
        Landroid/support/design/widget/AppBarLayout$BaseBehavior;,
        Landroid/support/design/widget/AppBarLayout$Behavior;,
        Landroid/support/design/widget/AppBarLayout$LayoutParams;,
        Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;,
        Landroid/support/design/widget/AppBarLayout$BaseOnOffsetChangedListener;
    }
.end annotation


# static fields
.field private static final INVALID_SCROLL_RANGE:I = -0x1

.field static final PENDING_ACTION_ANIMATE_ENABLED:I = 0x4

.field static final PENDING_ACTION_COLLAPSED:I = 0x2

.field static final PENDING_ACTION_EXPANDED:I = 0x1

.field static final PENDING_ACTION_FORCE:I = 0x8

.field static final PENDING_ACTION_NONE:I


# instance fields
.field private downPreScrollRange:I

.field private downScrollRange:I

.field private haveChildWithInterpolator:Z

.field private lastInsets:Landroid/support/v4/view/WindowInsetsCompat;

.field private liftOnScroll:Z

.field private liftable:Z

.field private liftableOverride:Z

.field private lifted:Z

.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/design/widget/AppBarLayout$BaseOnOffsetChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private pendingAction:I

.field private tmpStatesArray:[I

.field private totalScrollRange:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 169
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/AppBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 170
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v7, 0x15

    const/4 v0, -0x1

    const/4 v3, 0x0

    .line 173
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 148
    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->totalScrollRange:I

    .line 149
    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->downPreScrollRange:I

    .line 150
    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->downScrollRange:I

    .line 154
    iput v3, p0, Landroid/support/design/widget/AppBarLayout;->pendingAction:I

    .line 174
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/design/widget/AppBarLayout;->setOrientation(I)V

    .line 176
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v7, :cond_1f

    .line 179
    invoke-static {p0}, Landroid/support/design/widget/ViewUtilsLollipop;->setBoundsViewOutlineProvider(Landroid/view/View;)V

    .line 183
    sget v0, Landroid/support/design/R$style;->Widget_Design_AppBarLayout:I

    invoke-static {p0, p2, v3, v0}, Landroid/support/design/widget/ViewUtilsLollipop;->setStateListAnimatorFromAttrs(Landroid/view/View;Landroid/util/AttributeSet;II)V

    .line 187
    :cond_1f
    sget-object v2, Landroid/support/design/R$styleable;->AppBarLayout:[I

    sget v4, Landroid/support/design/R$style;->Widget_Design_AppBarLayout:I

    new-array v5, v3, [I

    move-object v0, p1

    move-object v1, p2

    .line 188
    invoke-static/range {v0 .. v5}, Landroid/support/design/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 190
    .local v6, "a":Landroid/content/res/TypedArray;
    sget v0, Landroid/support/design/R$styleable;->AppBarLayout_android_background:I

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 191
    sget v0, Landroid/support/design/R$styleable;->AppBarLayout_expanded:I

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 192
    sget v0, Landroid/support/design/R$styleable;->AppBarLayout_expanded:I

    .line 193
    invoke-virtual {v6, v0, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 192
    invoke-direct {p0, v0, v3, v3}, Landroid/support/design/widget/AppBarLayout;->setExpanded(ZZZ)V

    .line 197
    :cond_45
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v7, :cond_5b

    sget v0, Landroid/support/design/R$styleable;->AppBarLayout_elevation:I

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 198
    sget v0, Landroid/support/design/R$styleable;->AppBarLayout_elevation:I

    .line 199
    invoke-virtual {v6, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    int-to-float v0, v0

    .line 198
    invoke-static {p0, v0}, Landroid/support/design/widget/ViewUtilsLollipop;->setDefaultAppBarLayoutStateListAnimator(Landroid/view/View;F)V

    .line 201
    :cond_5b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_83

    .line 204
    sget v0, Landroid/support/design/R$styleable;->AppBarLayout_android_keyboardNavigationCluster:I

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_72

    .line 205
    sget v0, Landroid/support/design/R$styleable;->AppBarLayout_android_keyboardNavigationCluster:I

    .line 206
    invoke-virtual {v6, v0, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 205
    invoke-virtual {p0, v0}, Landroid/support/design/widget/AppBarLayout;->setKeyboardNavigationCluster(Z)V

    .line 208
    :cond_72
    sget v0, Landroid/support/design/R$styleable;->AppBarLayout_android_touchscreenBlocksFocus:I

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_83

    .line 209
    sget v0, Landroid/support/design/R$styleable;->AppBarLayout_android_touchscreenBlocksFocus:I

    .line 210
    invoke-virtual {v6, v0, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 209
    invoke-virtual {p0, v0}, Landroid/support/design/widget/AppBarLayout;->setTouchscreenBlocksFocus(Z)V

    .line 213
    :cond_83
    sget v0, Landroid/support/design/R$styleable;->AppBarLayout_liftOnScroll:I

    invoke-virtual {v6, v0, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/design/widget/AppBarLayout;->liftOnScroll:Z

    .line 214
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 216
    new-instance v0, Landroid/support/design/widget/AppBarLayout$1;

    invoke-direct {v0, p0}, Landroid/support/design/widget/AppBarLayout$1;-><init>(Landroid/support/design/widget/AppBarLayout;)V

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    .line 224
    return-void
.end method

.method private hasCollapsibleChild()Z
    .registers 4

    .prologue
    .line 292
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v1

    .local v1, "z":I
    :goto_5
    if-ge v0, v1, :cond_1c

    .line 293
    invoke-virtual {p0, v0}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    invoke-virtual {v2}, Landroid/support/design/widget/AppBarLayout$LayoutParams;->isCollapsible()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 294
    const/4 v2, 0x1

    .line 297
    :goto_18
    return v2

    .line 292
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 297
    :cond_1c
    const/4 v2, 0x0

    goto :goto_18
.end method

.method private invalidateScrollRanges()V
    .registers 2

    .prologue
    const/4 v0, -0x1

    .line 302
    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->totalScrollRange:I

    .line 303
    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->downPreScrollRange:I

    .line 304
    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->downScrollRange:I

    .line 305
    return-void
.end method

.method private setExpanded(ZZZ)V
    .registers 7
    .param p1, "expanded"    # Z
    .param p2, "animate"    # Z
    .param p3, "force"    # Z

    .prologue
    const/4 v0, 0x0

    .line 347
    if-eqz p1, :cond_14

    const/4 v1, 0x1

    move v2, v1

    :goto_5
    if-eqz p2, :cond_17

    const/4 v1, 0x4

    :goto_8
    or-int/2addr v1, v2

    if-eqz p3, :cond_d

    const/16 v0, 0x8

    :cond_d
    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->pendingAction:I

    .line 351
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->requestLayout()V

    .line 352
    return-void

    .line 347
    :cond_14
    const/4 v1, 0x2

    move v2, v1

    goto :goto_5

    :cond_17
    move v1, v0

    goto :goto_8
.end method

.method private setLiftableState(Z)Z
    .registers 3
    .param p1, "liftable"    # Z

    .prologue
    .line 569
    iget-boolean v0, p0, Landroid/support/design/widget/AppBarLayout;->liftable:Z

    if-eq v0, p1, :cond_b

    .line 570
    iput-boolean p1, p0, Landroid/support/design/widget/AppBarLayout;->liftable:Z

    .line 571
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->refreshDrawableState()V

    .line 572
    const/4 v0, 0x1

    .line 574
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method


# virtual methods
.method public addOnOffsetChangedListener(Landroid/support/design/widget/AppBarLayout$BaseOnOffsetChangedListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/support/design/widget/AppBarLayout$BaseOnOffsetChangedListener;

    .prologue
    .line 233
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout;->listeners:Ljava/util/List;

    if-nez v0, :cond_b

    .line 234
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/AppBarLayout;->listeners:Ljava/util/List;

    .line 236
    :cond_b
    if-eqz p1, :cond_1a

    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 237
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    :cond_1a
    return-void
.end method

.method public addOnOffsetChangedListener(Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;

    .prologue
    .line 242
    invoke-virtual {p0, p1}, Landroid/support/design/widget/AppBarLayout;->addOnOffsetChangedListener(Landroid/support/design/widget/AppBarLayout$BaseOnOffsetChangedListener;)V

    .line 243
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 356
    instance-of v0, p1, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    return v0
.end method

.method dispatchOffsetUpdates(I)V
    .registers 6
    .param p1, "offset"    # I

    .prologue
    .line 505
    iget-object v3, p0, Landroid/support/design/widget/AppBarLayout;->listeners:Ljava/util/List;

    if-eqz v3, :cond_1d

    .line 506
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Landroid/support/design/widget/AppBarLayout;->listeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "z":I
    :goto_b
    if-ge v0, v2, :cond_1d

    .line 507
    iget-object v3, p0, Landroid/support/design/widget/AppBarLayout;->listeners:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/AppBarLayout$BaseOnOffsetChangedListener;

    .line 508
    .local v1, "listener":Landroid/support/design/widget/AppBarLayout$BaseOnOffsetChangedListener;
    if-eqz v1, :cond_1a

    .line 509
    invoke-interface {v1, p0, p1}, Landroid/support/design/widget/AppBarLayout$BaseOnOffsetChangedListener;->onOffsetChanged(Landroid/support/design/widget/AppBarLayout;I)V

    .line 506
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 513
    .end local v0    # "i":I
    .end local v1    # "listener":Landroid/support/design/widget/AppBarLayout$BaseOnOffsetChangedListener;
    .end local v2    # "z":I
    :cond_1d
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/support/design/widget/AppBarLayout$LayoutParams;
    .registers 4

    .prologue
    .line 361
    new-instance v0, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/support/design/widget/AppBarLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .prologue
    .line 110
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->generateDefaultLayoutParams()Landroid/support/design/widget/AppBarLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .registers 2

    .prologue
    .line 110
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->generateDefaultLayoutParams()Landroid/support/design/widget/AppBarLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/design/widget/AppBarLayout$LayoutParams;
    .registers 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 366
    new-instance v0, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/design/widget/AppBarLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/design/widget/AppBarLayout$LayoutParams;
    .registers 4
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 371
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_12

    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_12

    .line 372
    new-instance v0, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Landroid/support/design/widget/AppBarLayout$LayoutParams;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 376
    :goto_11
    return-object v0

    .line 373
    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_12
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1e

    .line 374
    new-instance v0, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Landroid/support/design/widget/AppBarLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_11

    .line 376
    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_1e
    new-instance v0, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/design/widget/AppBarLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_11
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Landroid/support/design/widget/AppBarLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/design/widget/AppBarLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Landroid/support/design/widget/AppBarLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/design/widget/AppBarLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 3

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Landroid/support/design/widget/AppBarLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/design/widget/AppBarLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 3

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Landroid/support/design/widget/AppBarLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/design/widget/AppBarLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method getDownNestedPreScrollRange()I
    .registers 9

    .prologue
    .line 431
    iget v6, p0, Landroid/support/design/widget/AppBarLayout;->downPreScrollRange:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_8

    .line 433
    iget v6, p0, Landroid/support/design/widget/AppBarLayout;->downPreScrollRange:I

    .line 463
    :goto_7
    return v6

    .line 436
    :cond_8
    const/4 v5, 0x0

    .line 437
    .local v5, "range":I
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    .local v3, "i":I
    :goto_f
    if-ltz v3, :cond_4e

    .line 438
    invoke-virtual {p0, v3}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 439
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    .line 440
    .local v4, "lp":Landroid/support/design/widget/AppBarLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 441
    .local v1, "childHeight":I
    iget v2, v4, Landroid/support/design/widget/AppBarLayout$LayoutParams;->scrollFlags:I

    .line 443
    .local v2, "flags":I
    and-int/lit8 v6, v2, 0x5

    const/4 v7, 0x5

    if-ne v6, v7, :cond_4c

    .line 445
    iget v6, v4, Landroid/support/design/widget/AppBarLayout$LayoutParams;->topMargin:I

    iget v7, v4, Landroid/support/design/widget/AppBarLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v6, v7

    add-int/2addr v5, v6

    .line 447
    and-int/lit8 v6, v2, 0x8

    if-eqz v6, :cond_38

    .line 449
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v6

    add-int/2addr v5, v6

    .line 437
    :cond_35
    :goto_35
    add-int/lit8 v3, v3, -0x1

    goto :goto_f

    .line 450
    :cond_38
    and-int/lit8 v6, v2, 0x2

    if-eqz v6, :cond_44

    .line 452
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v6

    sub-int v6, v1, v6

    add-int/2addr v5, v6

    goto :goto_35

    .line 455
    :cond_44
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v6

    sub-int v6, v1, v6

    add-int/2addr v5, v6

    goto :goto_35

    .line 457
    :cond_4c
    if-lez v5, :cond_35

    .line 463
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childHeight":I
    .end local v2    # "flags":I
    .end local v4    # "lp":Landroid/support/design/widget/AppBarLayout$LayoutParams;
    :cond_4e
    const/4 v6, 0x0

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, p0, Landroid/support/design/widget/AppBarLayout;->downPreScrollRange:I

    goto :goto_7
.end method

.method getDownNestedScrollRange()I
    .registers 10

    .prologue
    .line 468
    iget v7, p0, Landroid/support/design/widget/AppBarLayout;->downScrollRange:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_8

    .line 470
    iget v7, p0, Landroid/support/design/widget/AppBarLayout;->downScrollRange:I

    .line 499
    :goto_7
    return v7

    .line 473
    :cond_8
    const/4 v5, 0x0

    .line 474
    .local v5, "range":I
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v6

    .local v6, "z":I
    :goto_e
    if-ge v3, v6, :cond_39

    .line 475
    invoke-virtual {p0, v3}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 476
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    .line 477
    .local v4, "lp":Landroid/support/design/widget/AppBarLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 478
    .local v1, "childHeight":I
    iget v7, v4, Landroid/support/design/widget/AppBarLayout$LayoutParams;->topMargin:I

    iget v8, v4, Landroid/support/design/widget/AppBarLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v7, v8

    add-int/2addr v1, v7

    .line 480
    iget v2, v4, Landroid/support/design/widget/AppBarLayout$LayoutParams;->scrollFlags:I

    .line 482
    .local v2, "flags":I
    and-int/lit8 v7, v2, 0x1

    if-eqz v7, :cond_39

    .line 484
    add-int/2addr v5, v1

    .line 486
    and-int/lit8 v7, v2, 0x2

    if-eqz v7, :cond_41

    .line 490
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v7

    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v8

    add-int/2addr v7, v8

    sub-int/2addr v5, v7

    .line 499
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childHeight":I
    .end local v2    # "flags":I
    .end local v4    # "lp":Landroid/support/design/widget/AppBarLayout$LayoutParams;
    :cond_39
    const/4 v7, 0x0

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, p0, Landroid/support/design/widget/AppBarLayout;->downScrollRange:I

    goto :goto_7

    .line 474
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "childHeight":I
    .restart local v2    # "flags":I
    .restart local v4    # "lp":Landroid/support/design/widget/AppBarLayout$LayoutParams;
    :cond_41
    add-int/lit8 v3, v3, 0x1

    goto :goto_e
.end method

.method public final getMinimumHeightForVisibleOverlappingContent()I
    .registers 6

    .prologue
    .line 516
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v3

    .line 517
    .local v3, "topInset":I
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v2

    .line 518
    .local v2, "minHeight":I
    if-eqz v2, :cond_e

    .line 520
    mul-int/lit8 v4, v2, 0x2

    add-int/2addr v4, v3

    .line 533
    :goto_d
    return v4

    .line 524
    :cond_e
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v0

    .line 525
    .local v0, "childCount":I
    const/4 v4, 0x1

    if-lt v0, v4, :cond_25

    add-int/lit8 v4, v0, -0x1

    .line 526
    invoke-virtual {p0, v4}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v1

    .line 527
    .local v1, "lastChildMinHeight":I
    :goto_1f
    if-eqz v1, :cond_27

    .line 528
    mul-int/lit8 v4, v1, 0x2

    add-int/2addr v4, v3

    goto :goto_d

    .line 526
    .end local v1    # "lastChildMinHeight":I
    :cond_25
    const/4 v1, 0x0

    goto :goto_1f

    .line 533
    .restart local v1    # "lastChildMinHeight":I
    :cond_27
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x3

    goto :goto_d
.end method

.method getPendingAction()I
    .registers 2

    .prologue
    .line 637
    iget v0, p0, Landroid/support/design/widget/AppBarLayout;->pendingAction:I

    return v0
.end method

.method public getTargetElevation()F
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 633
    const/4 v0, 0x0

    return v0
.end method

.method final getTopInset()I
    .registers 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 646
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout;->lastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout;->lastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v0}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public final getTotalScrollRange()I
    .registers 10

    .prologue
    .line 389
    iget v7, p0, Landroid/support/design/widget/AppBarLayout;->totalScrollRange:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_8

    .line 390
    iget v7, p0, Landroid/support/design/widget/AppBarLayout;->totalScrollRange:I

    .line 417
    :goto_7
    return v7

    .line 393
    :cond_8
    const/4 v5, 0x0

    .line 394
    .local v5, "range":I
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v6

    .local v6, "z":I
    :goto_e
    if-ge v3, v6, :cond_34

    .line 395
    invoke-virtual {p0, v3}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 396
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    .line 397
    .local v4, "lp":Landroid/support/design/widget/AppBarLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 398
    .local v1, "childHeight":I
    iget v2, v4, Landroid/support/design/widget/AppBarLayout$LayoutParams;->scrollFlags:I

    .line 400
    .local v2, "flags":I
    and-int/lit8 v7, v2, 0x1

    if-eqz v7, :cond_34

    .line 402
    iget v7, v4, Landroid/support/design/widget/AppBarLayout$LayoutParams;->topMargin:I

    add-int/2addr v7, v1

    iget v8, v4, Landroid/support/design/widget/AppBarLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v7, v8

    add-int/2addr v5, v7

    .line 404
    and-int/lit8 v7, v2, 0x2

    if-eqz v7, :cond_42

    .line 408
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v7

    sub-int/2addr v5, v7

    .line 417
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childHeight":I
    .end local v2    # "flags":I
    .end local v4    # "lp":Landroid/support/design/widget/AppBarLayout$LayoutParams;
    :cond_34
    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v8

    sub-int v8, v5, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, p0, Landroid/support/design/widget/AppBarLayout;->totalScrollRange:I

    goto :goto_7

    .line 394
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "childHeight":I
    .restart local v2    # "flags":I
    .restart local v4    # "lp":Landroid/support/design/widget/AppBarLayout$LayoutParams;
    :cond_42
    add-int/lit8 v3, v3, 0x1

    goto :goto_e
.end method

.method getUpNestedPreScrollRange()I
    .registers 2

    .prologue
    .line 426
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    return v0
.end method

.method hasChildWithInterpolator()Z
    .registers 2

    .prologue
    .line 380
    iget-boolean v0, p0, Landroid/support/design/widget/AppBarLayout;->haveChildWithInterpolator:Z

    return v0
.end method

.method hasScrollableChildren()Z
    .registers 2

    .prologue
    .line 421
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isLiftOnScroll()Z
    .registers 2

    .prologue
    .line 610
    iget-boolean v0, p0, Landroid/support/design/widget/AppBarLayout;->liftOnScroll:Z

    return v0
.end method

.method protected onCreateDrawableState(I)[I
    .registers 6
    .param p1, "extraSpace"    # I

    .prologue
    .line 538
    iget-object v2, p0, Landroid/support/design/widget/AppBarLayout;->tmpStatesArray:[I

    if-nez v2, :cond_9

    .line 541
    const/4 v2, 0x4

    new-array v2, v2, [I

    iput-object v2, p0, Landroid/support/design/widget/AppBarLayout;->tmpStatesArray:[I

    .line 543
    :cond_9
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout;->tmpStatesArray:[I

    .line 544
    .local v0, "extraStates":[I
    array-length v2, v0

    add-int/2addr v2, p1

    invoke-super {p0, v2}, Landroid/widget/LinearLayout;->onCreateDrawableState(I)[I

    move-result-object v1

    .line 546
    .local v1, "states":[I
    const/4 v3, 0x0

    iget-boolean v2, p0, Landroid/support/design/widget/AppBarLayout;->liftable:Z

    if-eqz v2, :cond_42

    sget v2, Landroid/support/design/R$attr;->state_liftable:I

    :goto_18
    aput v2, v0, v3

    .line 547
    const/4 v3, 0x1

    iget-boolean v2, p0, Landroid/support/design/widget/AppBarLayout;->liftable:Z

    if-eqz v2, :cond_46

    iget-boolean v2, p0, Landroid/support/design/widget/AppBarLayout;->lifted:Z

    if-eqz v2, :cond_46

    sget v2, Landroid/support/design/R$attr;->state_lifted:I

    :goto_25
    aput v2, v0, v3

    .line 551
    const/4 v3, 0x2

    iget-boolean v2, p0, Landroid/support/design/widget/AppBarLayout;->liftable:Z

    if-eqz v2, :cond_4a

    sget v2, Landroid/support/design/R$attr;->state_collapsible:I

    :goto_2e
    aput v2, v0, v3

    .line 552
    const/4 v3, 0x3

    iget-boolean v2, p0, Landroid/support/design/widget/AppBarLayout;->liftable:Z

    if-eqz v2, :cond_4e

    iget-boolean v2, p0, Landroid/support/design/widget/AppBarLayout;->lifted:Z

    if-eqz v2, :cond_4e

    sget v2, Landroid/support/design/R$attr;->state_collapsed:I

    :goto_3b
    aput v2, v0, v3

    .line 554
    invoke-static {v1, v0}, Landroid/support/design/widget/AppBarLayout;->mergeDrawableStates([I[I)[I

    move-result-object v2

    return-object v2

    .line 546
    :cond_42
    sget v2, Landroid/support/design/R$attr;->state_liftable:I

    neg-int v2, v2

    goto :goto_18

    .line 547
    :cond_46
    sget v2, Landroid/support/design/R$attr;->state_lifted:I

    neg-int v2, v2

    goto :goto_25

    .line 551
    :cond_4a
    sget v2, Landroid/support/design/R$attr;->state_collapsible:I

    neg-int v2, v2

    goto :goto_2e

    .line 552
    :cond_4e
    sget v2, Landroid/support/design/R$attr;->state_collapsed:I

    neg-int v2, v2

    goto :goto_3b
.end method

.method protected onLayout(ZIIII)V
    .registers 14
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 270
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 271
    invoke-direct {p0}, Landroid/support/design/widget/AppBarLayout;->invalidateScrollRanges()V

    .line 273
    iput-boolean v5, p0, Landroid/support/design/widget/AppBarLayout;->haveChildWithInterpolator:Z

    .line 274
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v4

    .local v4, "z":I
    :goto_f
    if-ge v2, v4, :cond_23

    .line 275
    invoke-virtual {p0, v2}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 276
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    .line 277
    .local v1, "childLp":Landroid/support/design/widget/AppBarLayout$LayoutParams;
    invoke-virtual {v1}, Landroid/support/design/widget/AppBarLayout$LayoutParams;->getScrollInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v3

    .line 279
    .local v3, "interpolator":Landroid/view/animation/Interpolator;
    if-eqz v3, :cond_36

    .line 280
    iput-boolean v6, p0, Landroid/support/design/widget/AppBarLayout;->haveChildWithInterpolator:Z

    .line 286
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childLp":Landroid/support/design/widget/AppBarLayout$LayoutParams;
    .end local v3    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_23
    iget-boolean v7, p0, Landroid/support/design/widget/AppBarLayout;->liftableOverride:Z

    if-nez v7, :cond_35

    .line 287
    iget-boolean v7, p0, Landroid/support/design/widget/AppBarLayout;->liftOnScroll:Z

    if-nez v7, :cond_31

    invoke-direct {p0}, Landroid/support/design/widget/AppBarLayout;->hasCollapsibleChild()Z

    move-result v7

    if-eqz v7, :cond_32

    :cond_31
    move v5, v6

    :cond_32
    invoke-direct {p0, v5}, Landroid/support/design/widget/AppBarLayout;->setLiftableState(Z)Z

    .line 289
    :cond_35
    return-void

    .line 274
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "childLp":Landroid/support/design/widget/AppBarLayout$LayoutParams;
    .restart local v3    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_f
.end method

.method protected onMeasure(II)V
    .registers 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 264
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 265
    invoke-direct {p0}, Landroid/support/design/widget/AppBarLayout;->invalidateScrollRanges()V

    .line 266
    return-void
.end method

.method onWindowInsetChanged(Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .registers 4
    .param p1, "insets"    # Landroid/support/v4/view/WindowInsetsCompat;

    .prologue
    .line 650
    const/4 v0, 0x0

    .line 652
    .local v0, "newInsets":Landroid/support/v4/view/WindowInsetsCompat;
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 654
    move-object v0, p1

    .line 658
    :cond_8
    iget-object v1, p0, Landroid/support/design/widget/AppBarLayout;->lastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-static {v1, v0}, Landroid/support/v4/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 659
    iput-object v0, p0, Landroid/support/design/widget/AppBarLayout;->lastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    .line 660
    invoke-direct {p0}, Landroid/support/design/widget/AppBarLayout;->invalidateScrollRanges()V

    .line 663
    :cond_15
    return-object p1
.end method

.method public removeOnOffsetChangedListener(Landroid/support/design/widget/AppBarLayout$BaseOnOffsetChangedListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/support/design/widget/AppBarLayout$BaseOnOffsetChangedListener;

    .prologue
    .line 253
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout;->listeners:Ljava/util/List;

    if-eqz v0, :cond_b

    if-eqz p1, :cond_b

    .line 254
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 256
    :cond_b
    return-void
.end method

.method public removeOnOffsetChangedListener(Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;

    .prologue
    .line 259
    invoke-virtual {p0, p1}, Landroid/support/design/widget/AppBarLayout;->removeOnOffsetChangedListener(Landroid/support/design/widget/AppBarLayout$BaseOnOffsetChangedListener;)V

    .line 260
    return-void
.end method

.method resetPendingAction()V
    .registers 2

    .prologue
    .line 641
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->pendingAction:I

    .line 642
    return-void
.end method

.method public setExpanded(Z)V
    .registers 3
    .param p1, "expanded"    # Z

    .prologue
    .line 328
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/support/design/widget/AppBarLayout;->setExpanded(ZZ)V

    .line 329
    return-void
.end method

.method public setExpanded(ZZ)V
    .registers 4
    .param p1, "expanded"    # Z
    .param p2, "animate"    # Z

    .prologue
    .line 343
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/widget/AppBarLayout;->setExpanded(ZZZ)V

    .line 344
    return-void
.end method

.method public setLiftOnScroll(Z)V
    .registers 2
    .param p1, "liftOnScroll"    # Z

    .prologue
    .line 605
    iput-boolean p1, p0, Landroid/support/design/widget/AppBarLayout;->liftOnScroll:Z

    .line 606
    return-void
.end method

.method public setLiftable(Z)Z
    .registers 3
    .param p1, "liftable"    # Z

    .prologue
    .line 563
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/AppBarLayout;->liftableOverride:Z

    .line 564
    invoke-direct {p0, p1}, Landroid/support/design/widget/AppBarLayout;->setLiftableState(Z)Z

    move-result v0

    return v0
.end method

.method public setLifted(Z)Z
    .registers 3
    .param p1, "lifted"    # Z

    .prologue
    .line 583
    invoke-virtual {p0, p1}, Landroid/support/design/widget/AppBarLayout;->setLiftedState(Z)Z

    move-result v0

    return v0
.end method

.method setLiftedState(Z)Z
    .registers 3
    .param p1, "lifted"    # Z

    .prologue
    .line 588
    iget-boolean v0, p0, Landroid/support/design/widget/AppBarLayout;->lifted:Z

    if-eq v0, p1, :cond_b

    .line 589
    iput-boolean p1, p0, Landroid/support/design/widget/AppBarLayout;->lifted:Z

    .line 590
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->refreshDrawableState()V

    .line 591
    const/4 v0, 0x1

    .line 593
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public setOrientation(I)V
    .registers 4
    .param p1, "orientation"    # I

    .prologue
    .line 309
    const/4 v0, 0x1

    if-eq p1, v0, :cond_b

    .line 310
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AppBarLayout is always vertical and does not support horizontal orientation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 313
    :cond_b
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 314
    return-void
.end method

.method public setTargetElevation(F)V
    .registers 4
    .param p1, "elevation"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 622
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_9

    .line 623
    invoke-static {p0, p1}, Landroid/support/design/widget/ViewUtilsLollipop;->setDefaultAppBarLayoutStateListAnimator(Landroid/view/View;F)V

    .line 625
    :cond_9
    return-void
.end method
