.class public Landroid/support/v4/widget/DrawerLayout;
.super Landroid/view/ViewGroup;
.source "DrawerLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/DrawerLayout$ChildAccessibilityDelegate;,
        Landroid/support/v4/widget/DrawerLayout$AccessibilityDelegate;,
        Landroid/support/v4/widget/DrawerLayout$LayoutParams;,
        Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;,
        Landroid/support/v4/widget/DrawerLayout$SavedState;,
        Landroid/support/v4/widget/DrawerLayout$SimpleDrawerListener;,
        Landroid/support/v4/widget/DrawerLayout$DrawerListener;
    }
.end annotation


# static fields
.field private static final ALLOW_EDGE_LOCK:Z = false

.field static final CAN_HIDE_DESCENDANTS:Z

.field private static final CHILDREN_DISALLOW_INTERCEPT:Z = true

.field private static final DEFAULT_SCRIM_COLOR:I = -0x67000000

.field private static final DRAWER_ELEVATION:I = 0xa

.field static final LAYOUT_ATTRS:[I

.field public static final LOCK_MODE_LOCKED_CLOSED:I = 0x1

.field public static final LOCK_MODE_LOCKED_OPEN:I = 0x2

.field public static final LOCK_MODE_UNDEFINED:I = 0x3

.field public static final LOCK_MODE_UNLOCKED:I = 0x0

.field private static final MIN_DRAWER_MARGIN:I = 0x40

.field private static final MIN_FLING_VELOCITY:I = 0x190

.field private static final PEEK_DELAY:I = 0xa0

.field private static final SET_DRAWER_SHADOW_FROM_ELEVATION:Z

.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "DrawerLayout"

.field private static final THEME_ATTRS:[I

.field private static final TOUCH_SLOP_SENSITIVITY:F = 1.0f


# instance fields
.field private final mChildAccessibilityDelegate:Landroid/support/v4/widget/DrawerLayout$ChildAccessibilityDelegate;

.field private mChildHitRect:Landroid/graphics/Rect;

.field private mChildInvertedMatrix:Landroid/graphics/Matrix;

.field private mChildrenCanceledTouch:Z

.field private mDisallowInterceptRequested:Z

.field private mDrawStatusBarBackground:Z

.field private mDrawerElevation:F

.field private mDrawerState:I

.field private mFirstLayout:Z

.field private mInLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mLastInsets:Ljava/lang/Object;

.field private final mLeftCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

.field private final mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

.field private mListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/widget/DrawerLayout$DrawerListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLockModeEnd:I

.field private mLockModeLeft:I

.field private mLockModeRight:I

.field private mLockModeStart:I

.field private mMinDrawerMargin:I

.field private final mNonDrawerViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mRightCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

.field private final mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

.field private mScrimColor:I

.field private mScrimOpacity:F

.field private mScrimPaint:Landroid/graphics/Paint;

.field private mShadowEnd:Landroid/graphics/drawable/Drawable;

.field private mShadowLeft:Landroid/graphics/drawable/Drawable;

.field private mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

.field private mShadowRight:Landroid/graphics/drawable/Drawable;

.field private mShadowRightResolved:Landroid/graphics/drawable/Drawable;

.field private mShadowStart:Landroid/graphics/drawable/Drawable;

.field private mStatusBarBackground:Landroid/graphics/drawable/Drawable;

.field private mTitleLeft:Ljava/lang/CharSequence;

.field private mTitleRight:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 104
    new-array v0, v1, [I

    const v3, 0x1010434

    aput v3, v0, v2

    sput-object v0, Landroid/support/v4/widget/DrawerLayout;->THEME_ATTRS:[I

    .line 184
    new-array v0, v1, [I

    const v3, 0x10100b3

    aput v3, v0, v2

    sput-object v0, Landroid/support/v4/widget/DrawerLayout;->LAYOUT_ATTRS:[I

    .line 189
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v0, v3, :cond_26

    move v0, v1

    :goto_1b
    sput-boolean v0, Landroid/support/v4/widget/DrawerLayout;->CAN_HIDE_DESCENDANTS:Z

    .line 192
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v0, v3, :cond_28

    :goto_23
    sput-boolean v1, Landroid/support/v4/widget/DrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    return-void

    :cond_26
    move v0, v2

    .line 189
    goto :goto_1b

    :cond_28
    move v1, v2

    .line 192
    goto :goto_23
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 306
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 307
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 310
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 311
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyle"    # I

    .prologue
    const/4 v9, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x3

    .line 314
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 195
    new-instance v3, Landroid/support/v4/widget/DrawerLayout$ChildAccessibilityDelegate;

    invoke-direct {v3}, Landroid/support/v4/widget/DrawerLayout$ChildAccessibilityDelegate;-><init>()V

    iput-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->mChildAccessibilityDelegate:Landroid/support/v4/widget/DrawerLayout$ChildAccessibilityDelegate;

    .line 201
    const/high16 v3, -0x67000000

    iput v3, p0, Landroid/support/v4/widget/DrawerLayout;->mScrimColor:I

    .line 203
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->mScrimPaint:Landroid/graphics/Paint;

    .line 211
    iput-boolean v7, p0, Landroid/support/v4/widget/DrawerLayout;->mFirstLayout:Z

    .line 213
    iput v5, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeLeft:I

    .line 214
    iput v5, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeRight:I

    .line 215
    iput v5, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeStart:I

    .line 216
    iput v5, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeEnd:I

    .line 238
    iput-object v6, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    .line 239
    iput-object v6, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    .line 240
    iput-object v6, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    .line 241
    iput-object v6, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    .line 315
    const/high16 v3, 0x40000

    invoke-virtual {p0, v3}, Landroid/support/v4/widget/DrawerLayout;->setDescendantFocusability(I)V

    .line 316
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->density:F

    .line 317
    .local v1, "density":F
    const/high16 v3, 0x42800000    # 64.0f

    mul-float/2addr v3, v1

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Landroid/support/v4/widget/DrawerLayout;->mMinDrawerMargin:I

    .line 318
    const/high16 v3, 0x43c80000    # 400.0f

    mul-float v2, v3, v1

    .line 320
    .local v2, "minVel":F
    new-instance v3, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    invoke-direct {v3, p0, v5}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;-><init>(Landroid/support/v4/widget/DrawerLayout;I)V

    iput-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    .line 321
    new-instance v3, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    const/4 v4, 0x5

    invoke-direct {v3, p0, v4}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;-><init>(Landroid/support/v4/widget/DrawerLayout;I)V

    iput-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->mRightCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    .line 323
    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    invoke-static {p0, v8, v3}, Landroid/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    .line 324
    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v3, v7}, Landroid/support/v4/widget/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    .line 325
    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v3, v2}, Landroid/support/v4/widget/ViewDragHelper;->setMinVelocity(F)V

    .line 326
    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    iget-object v4, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->setDragger(Landroid/support/v4/widget/ViewDragHelper;)V

    .line 328
    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->mRightCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    invoke-static {p0, v8, v3}, Landroid/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    .line 329
    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    .line 330
    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v3, v2}, Landroid/support/v4/widget/ViewDragHelper;->setMinVelocity(F)V

    .line 331
    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->mRightCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    iget-object v4, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->setDragger(Landroid/support/v4/widget/ViewDragHelper;)V

    .line 334
    invoke-virtual {p0, v7}, Landroid/support/v4/widget/DrawerLayout;->setFocusableInTouchMode(Z)V

    .line 336
    invoke-static {p0, v7}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 339
    new-instance v3, Landroid/support/v4/widget/DrawerLayout$AccessibilityDelegate;

    invoke-direct {v3, p0}, Landroid/support/v4/widget/DrawerLayout$AccessibilityDelegate;-><init>(Landroid/support/v4/widget/DrawerLayout;)V

    invoke-static {p0, v3}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 340
    invoke-virtual {p0, v9}, Landroid/support/v4/widget/DrawerLayout;->setMotionEventSplittingEnabled(Z)V

    .line 341
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_c5

    .line 342
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_d7

    .line 343
    new-instance v3, Landroid/support/v4/widget/DrawerLayout$1;

    invoke-direct {v3, p0}, Landroid/support/v4/widget/DrawerLayout$1;-><init>(Landroid/support/v4/widget/DrawerLayout;)V

    invoke-virtual {p0, v3}, Landroid/support/v4/widget/DrawerLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 351
    const/16 v3, 0x500

    invoke-virtual {p0, v3}, Landroid/support/v4/widget/DrawerLayout;->setSystemUiVisibility(I)V

    .line 353
    sget-object v3, Landroid/support/v4/widget/DrawerLayout;->THEME_ATTRS:[I

    invoke-virtual {p1, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 355
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    :try_start_bc
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;
    :try_end_c2
    .catchall {:try_start_bc .. :try_end_c2} :catchall_d2

    .line 357
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 364
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_c5
    :goto_c5
    const/high16 v3, 0x41200000    # 10.0f

    mul-float/2addr v3, v1

    iput v3, p0, Landroid/support/v4/widget/DrawerLayout;->mDrawerElevation:F

    .line 366
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    .line 367
    return-void

    .line 357
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    :catchall_d2
    move-exception v3

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v3

    .line 360
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_d7
    iput-object v6, p0, Landroid/support/v4/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_c5
.end method

.method private dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .registers 10
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 774
    invoke-virtual {p2}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 775
    .local v0, "childMatrix":Landroid/graphics/Matrix;
    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v5

    if-nez v5, :cond_16

    .line 776
    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/DrawerLayout;->getTransformedMotionEvent(Landroid/view/MotionEvent;Landroid/view/View;)Landroid/view/MotionEvent;

    move-result-object v4

    .line 777
    .local v4, "transformedEvent":Landroid/view/MotionEvent;
    invoke-virtual {p2, v4}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 778
    .local v1, "handled":Z
    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    .line 786
    .end local v4    # "transformedEvent":Landroid/view/MotionEvent;
    :goto_15
    return v1

    .line 780
    .end local v1    # "handled":Z
    :cond_16
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getScrollX()I

    move-result v5

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v2, v5

    .line 781
    .local v2, "offsetX":F
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getScrollY()I

    move-result v5

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v3, v5

    .line 782
    .local v3, "offsetY":F
    invoke-virtual {p1, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 783
    invoke-virtual {p2, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 784
    .restart local v1    # "handled":Z
    neg-float v5, v2

    neg-float v6, v3

    invoke-virtual {p1, v5, v6}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    goto :goto_15
.end method

.method private getTransformedMotionEvent(Landroid/view/MotionEvent;Landroid/view/View;)Landroid/view/MotionEvent;
    .registers 9
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 794
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getScrollX()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v1, v4

    .line 795
    .local v1, "offsetX":F
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getScrollY()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v2, v4

    .line 796
    .local v2, "offsetY":F
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    .line 797
    .local v3, "transformedEvent":Landroid/view/MotionEvent;
    invoke-virtual {v3, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 798
    invoke-virtual {p2}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 799
    .local v0, "childMatrix":Landroid/graphics/Matrix;
    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v4

    if-nez v4, :cond_3a

    .line 800
    iget-object v4, p0, Landroid/support/v4/widget/DrawerLayout;->mChildInvertedMatrix:Landroid/graphics/Matrix;

    if-nez v4, :cond_30

    .line 801
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    iput-object v4, p0, Landroid/support/v4/widget/DrawerLayout;->mChildInvertedMatrix:Landroid/graphics/Matrix;

    .line 803
    :cond_30
    iget-object v4, p0, Landroid/support/v4/widget/DrawerLayout;->mChildInvertedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v4}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 804
    iget-object v4, p0, Landroid/support/v4/widget/DrawerLayout;->mChildInvertedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    .line 806
    :cond_3a
    return-object v3
.end method

.method static gravityToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "gravity"    # I

    .prologue
    .line 1005
    and-int/lit8 v0, p0, 0x3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_8

    .line 1006
    const-string v0, "LEFT"

    .line 1011
    :goto_7
    return-object v0

    .line 1008
    :cond_8
    and-int/lit8 v0, p0, 0x5

    const/4 v1, 0x5

    if-ne v0, v1, :cond_10

    .line 1009
    const-string v0, "RIGHT"

    goto :goto_7

    .line 1011
    :cond_10
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method private static hasOpaqueBackground(Landroid/view/View;)Z
    .registers 5
    .param p0, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 1325
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1326
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_f

    .line 1327
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_f

    const/4 v1, 0x1

    .line 1329
    :cond_f
    return v1
.end method

.method private hasPeekingDrawer()Z
    .registers 5

    .prologue
    .line 1875
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v0

    .line 1876
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_1a

    .line 1877
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 1878
    .local v2, "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    iget-boolean v3, v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->isPeeking:Z

    if-eqz v3, :cond_17

    .line 1879
    const/4 v3, 0x1

    .line 1882
    .end local v2    # "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    :goto_16
    return v3

    .line 1876
    .restart local v2    # "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1882
    .end local v2    # "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    :cond_1a
    const/4 v3, 0x0

    goto :goto_16
.end method

.method private hasVisibleDrawer()Z
    .registers 2

    .prologue
    .line 1945
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->findVisibleDrawer()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method static includeChildForAccessibility(Landroid/view/View;)Z
    .registers 3
    .param p0, "child"    # Landroid/view/View;

    .prologue
    .line 2085
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_10

    .line 2087
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private isInBoundsOfChild(FFLandroid/view/View;)Z
    .registers 7
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "child"    # Landroid/view/View;

    .prologue
    .line 761
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mChildHitRect:Landroid/graphics/Rect;

    if-nez v0, :cond_b

    .line 762
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mChildHitRect:Landroid/graphics/Rect;

    .line 764
    :cond_b
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mChildHitRect:Landroid/graphics/Rect;

    invoke-virtual {p3, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 765
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mChildHitRect:Landroid/graphics/Rect;

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method private mirror(Landroid/graphics/drawable/Drawable;I)Z
    .registers 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "layoutDirection"    # I

    .prologue
    .line 1208
    if-eqz p1, :cond_8

    invoke-static {p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->isAutoMirrored(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1209
    :cond_8
    const/4 v0, 0x0

    .line 1213
    :goto_9
    return v0

    .line 1212
    :cond_a
    invoke-static {p1, p2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    .line 1213
    const/4 v0, 0x1

    goto :goto_9
.end method

.method private resolveLeftShadow()Landroid/graphics/drawable/Drawable;
    .registers 3

    .prologue
    .line 1166
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    .line 1168
    .local v0, "layoutDirection":I
    if-nez v0, :cond_12

    .line 1169
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1e

    .line 1171
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v0}, Landroid/support/v4/widget/DrawerLayout;->mirror(Landroid/graphics/drawable/Drawable;I)Z

    .line 1172
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    .line 1181
    :goto_11
    return-object v1

    .line 1175
    :cond_12
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1e

    .line 1177
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v0}, Landroid/support/v4/widget/DrawerLayout;->mirror(Landroid/graphics/drawable/Drawable;I)Z

    .line 1178
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    goto :goto_11

    .line 1181
    :cond_1e
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    goto :goto_11
.end method

.method private resolveRightShadow()Landroid/graphics/drawable/Drawable;
    .registers 3

    .prologue
    .line 1185
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    .line 1186
    .local v0, "layoutDirection":I
    if-nez v0, :cond_12

    .line 1187
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1e

    .line 1189
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v0}, Landroid/support/v4/widget/DrawerLayout;->mirror(Landroid/graphics/drawable/Drawable;I)Z

    .line 1190
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    .line 1199
    :goto_11
    return-object v1

    .line 1193
    :cond_12
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1e

    .line 1195
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v0}, Landroid/support/v4/widget/DrawerLayout;->mirror(Landroid/graphics/drawable/Drawable;I)Z

    .line 1196
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    goto :goto_11

    .line 1199
    :cond_1e
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    goto :goto_11
.end method

.method private resolveShadowDrawables()V
    .registers 2

    .prologue
    .line 1158
    sget-boolean v0, Landroid/support/v4/widget/DrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    if-eqz v0, :cond_5

    .line 1163
    :goto_4
    return-void

    .line 1161
    :cond_5
    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->resolveLeftShadow()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    .line 1162
    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->resolveRightShadow()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    goto :goto_4
.end method

.method private updateChildrenImportantForAccessibility(Landroid/view/View;Z)V
    .registers 7
    .param p1, "drawerView"    # Landroid/view/View;
    .param p2, "isDrawerOpen"    # Z

    .prologue
    .line 900
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v1

    .line 901
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    if-ge v2, v1, :cond_23

    .line 902
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 903
    .local v0, "child":Landroid/view/View;
    if-nez p2, :cond_13

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_17

    :cond_13
    if-eqz p2, :cond_1e

    if-ne v0, p1, :cond_1e

    .line 906
    :cond_17
    const/4 v3, 0x1

    invoke-static {v0, v3}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 901
    :goto_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 909
    :cond_1e
    const/4 v3, 0x4

    invoke-static {v0, v3}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    goto :goto_1b

    .line 913
    .end local v0    # "child":Landroid/view/View;
    :cond_23
    return-void
.end method


# virtual methods
.method public addDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/support/v4/widget/DrawerLayout$DrawerListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 511
    if-nez p1, :cond_3

    .line 518
    :goto_2
    return-void

    .line 514
    :cond_3
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    if-nez v0, :cond_e

    .line 515
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    .line 517
    :cond_e
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .registers 11
    .param p2, "direction"    # I
    .param p3, "focusableMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 1911
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getDescendantFocusability()I

    move-result v5

    const/high16 v6, 0x60000

    if-ne v5, v6, :cond_9

    .line 1942
    :goto_8
    return-void

    .line 1917
    :cond_9
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v1

    .line 1918
    .local v1, "childCount":I
    const/4 v3, 0x0

    .line 1919
    .local v3, "isDrawerOpen":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    if-ge v2, v1, :cond_2e

    .line 1920
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1921
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 1922
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 1923
    const/4 v3, 0x1

    .line 1924
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1919
    :cond_25
    :goto_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 1927
    :cond_28
    iget-object v5, p0, Landroid/support/v4/widget/DrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_25

    .line 1931
    .end local v0    # "child":Landroid/view/View;
    :cond_2e
    if-nez v3, :cond_4d

    .line 1932
    iget-object v5, p0, Landroid/support/v4/widget/DrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1933
    .local v4, "nonDrawerViewsCount":I
    const/4 v2, 0x0

    :goto_37
    if-ge v2, v4, :cond_4d

    .line 1934
    iget-object v5, p0, Landroid/support/v4/widget/DrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1935
    .restart local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_4a

    .line 1936
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1933
    :cond_4a
    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    .line 1941
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "nonDrawerViewsCount":I
    :cond_4d
    iget-object v5, p0, Landroid/support/v4/widget/DrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    goto :goto_8
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 2057
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2059
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->findOpenDrawer()Landroid/view/View;

    move-result-object v0

    .line 2060
    .local v0, "openDrawer":Landroid/view/View;
    if-nez v0, :cond_f

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 2063
    :cond_f
    const/4 v1, 0x4

    invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 2074
    :goto_13
    sget-boolean v1, Landroid/support/v4/widget/DrawerLayout;->CAN_HIDE_DESCENDANTS:Z

    if-nez v1, :cond_1c

    .line 2075
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mChildAccessibilityDelegate:Landroid/support/v4/widget/DrawerLayout$ChildAccessibilityDelegate;

    invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 2077
    :cond_1c
    return-void

    .line 2068
    :cond_1d
    const/4 v1, 0x1

    invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    goto :goto_13
.end method

.method cancelChildViewTouch()V
    .registers 12

    .prologue
    const/4 v5, 0x0

    .line 1961
    iget-boolean v2, p0, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    if-nez v2, :cond_28

    .line 1962
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1963
    .local v0, "now":J
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 1965
    .local v8, "cancelEvent":Landroid/view/MotionEvent;
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v9

    .line 1966
    .local v9, "childCount":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_16
    if-ge v10, v9, :cond_22

    .line 1967
    invoke-virtual {p0, v10}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1966
    add-int/lit8 v10, v10, 0x1

    goto :goto_16

    .line 1969
    :cond_22
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 1970
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    .line 1972
    .end local v0    # "now":J
    .end local v8    # "cancelEvent":Landroid/view/MotionEvent;
    .end local v9    # "childCount":I
    .end local v10    # "i":I
    :cond_28
    return-void
.end method

.method checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z
    .registers 5
    .param p1, "drawerView"    # Landroid/view/View;
    .param p2, "checkFor"    # I

    .prologue
    .line 950
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->getDrawerViewAbsoluteGravity(Landroid/view/View;)I

    move-result v0

    .line 951
    .local v0, "absGravity":I
    and-int v1, v0, p2

    if-ne v1, p2, :cond_a

    const/4 v1, 0x1

    :goto_9
    return v1

    :cond_a
    const/4 v1, 0x0

    goto :goto_9
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1901
    instance-of v0, p1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    if-eqz v0, :cond_c

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public closeDrawer(I)V
    .registers 3
    .param p1, "gravity"    # I

    .prologue
    .line 1789
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(IZ)V

    .line 1790
    return-void
.end method

.method public closeDrawer(IZ)V
    .registers 7
    .param p1, "gravity"    # I
    .param p2, "animate"    # Z

    .prologue
    .line 1800
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v0

    .line 1801
    .local v0, "drawerView":Landroid/view/View;
    if-nez v0, :cond_23

    .line 1802
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No drawer view found with gravity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1803
    invoke-static {p1}, Landroid/support/v4/widget/DrawerLayout;->gravityToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1805
    :cond_23
    invoke-virtual {p0, v0, p2}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;Z)V

    .line 1806
    return-void
.end method

.method public closeDrawer(Landroid/view/View;)V
    .registers 3
    .param p1, "drawerView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1747
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;Z)V

    .line 1748
    return-void
.end method

.method public closeDrawer(Landroid/view/View;Z)V
    .registers 7
    .param p1, "drawerView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "animate"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1757
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 1758
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a sliding drawer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1761
    :cond_27
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 1762
    .local v0, "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    iget-boolean v1, p0, Landroid/support/v4/widget/DrawerLayout;->mFirstLayout:Z

    if-eqz v1, :cond_39

    .line 1763
    iput v2, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    .line 1764
    iput v3, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->openState:I

    .line 1779
    :goto_35
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1780
    return-void

    .line 1765
    :cond_39
    if-eqz p2, :cond_65

    .line 1766
    iget v1, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->openState:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->openState:I

    .line 1768
    const/4 v1, 0x3

    invoke-virtual {p0, p1, v1}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 1769
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    neg-int v2, v2

    .line 1770
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    .line 1769
    invoke-virtual {v1, p1, v2, v3}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    goto :goto_35

    .line 1772
    :cond_57
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v1, p1, v2, v3}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    goto :goto_35

    .line 1775
    :cond_65
    invoke-virtual {p0, p1, v2}, Landroid/support/v4/widget/DrawerLayout;->moveDrawerToOffset(Landroid/view/View;F)V

    .line 1776
    iget v1, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, v1, v3, p1}, Landroid/support/v4/widget/DrawerLayout;->updateDrawerState(IILandroid/view/View;)V

    .line 1777
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_35
.end method

.method public closeDrawers()V
    .registers 2

    .prologue
    .line 1637
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers(Z)V

    .line 1638
    return-void
.end method

.method closeDrawers(Z)V
    .registers 11
    .param p1, "peekingOnly"    # Z

    .prologue
    .line 1641
    const/4 v5, 0x0

    .line 1642
    .local v5, "needsInvalidate":Z
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v1

    .line 1643
    .local v1, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_6
    if-ge v3, v1, :cond_4c

    .line 1644
    invoke-virtual {p0, v3}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1645
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 1647
    .local v4, "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_1e

    if-eqz p1, :cond_21

    iget-boolean v6, v4, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->isPeeking:Z

    if-nez v6, :cond_21

    .line 1643
    :cond_1e
    :goto_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 1651
    :cond_21
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 1653
    .local v2, "childWidth":I
    const/4 v6, 0x3

    invoke-virtual {p0, v0, v6}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v6

    if-eqz v6, :cond_3c

    .line 1654
    iget-object v6, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    neg-int v7, v2

    .line 1655
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v8

    .line 1654
    invoke-virtual {v6, v0, v7, v8}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v6

    or-int/2addr v5, v6

    .line 1661
    :goto_38
    const/4 v6, 0x0

    iput-boolean v6, v4, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->isPeeking:Z

    goto :goto_1e

    .line 1657
    :cond_3c
    iget-object v6, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    .line 1658
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v8

    .line 1657
    invoke-virtual {v6, v0, v7, v8}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v6

    or-int/2addr v5, v6

    goto :goto_38

    .line 1664
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "childWidth":I
    .end local v4    # "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    :cond_4c
    iget-object v6, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    invoke-virtual {v6}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    .line 1665
    iget-object v6, p0, Landroid/support/v4/widget/DrawerLayout;->mRightCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    invoke-virtual {v6}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    .line 1667
    if-eqz v5, :cond_5b

    .line 1668
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1670
    :cond_5b
    return-void
.end method

.method public computeScroll()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 1309
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v0

    .line 1310
    .local v0, "childCount":I
    const/4 v5, 0x0

    .line 1311
    .local v5, "scrimOpacity":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1c

    .line 1312
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget v3, v6, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    .line 1313
    .local v3, "onscreen":F
    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 1311
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1315
    .end local v3    # "onscreen":F
    :cond_1c
    iput v5, p0, Landroid/support/v4/widget/DrawerLayout;->mScrimOpacity:F

    .line 1317
    iget-object v6, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v6, v7}, Landroid/support/v4/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v2

    .line 1318
    .local v2, "leftDraggerSettling":Z
    iget-object v6, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v6, v7}, Landroid/support/v4/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v4

    .line 1319
    .local v4, "rightDraggerSettling":Z
    if-nez v2, :cond_2e

    if-eqz v4, :cond_31

    .line 1320
    :cond_2e
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1322
    :cond_31
    return-void
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1536
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_17

    .line 1537
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/16 v6, 0xa

    if-eq v5, v6, :cond_17

    iget v5, p0, Landroid/support/v4/widget/DrawerLayout;->mScrimOpacity:F

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_1c

    .line 1539
    :cond_17
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    .line 1564
    :goto_1b
    return v5

    .line 1542
    :cond_1c
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v1

    .line 1543
    .local v1, "childrenCount":I
    if-eqz v1, :cond_49

    .line 1544
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 1545
    .local v3, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 1548
    .local v4, "y":F
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_2c
    if-ltz v2, :cond_49

    .line 1549
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1553
    .local v0, "child":Landroid/view/View;
    invoke-direct {p0, v3, v4, v0}, Landroid/support/v4/widget/DrawerLayout;->isInBoundsOfChild(FFLandroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_3e

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_41

    .line 1548
    :cond_3e
    add-int/lit8 v2, v2, -0x1

    goto :goto_2c

    .line 1558
    :cond_41
    invoke-direct {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 1559
    const/4 v5, 0x1

    goto :goto_1b

    .line 1564
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "i":I
    .end local v3    # "x":F
    .end local v4    # "y":F
    :cond_49
    const/4 v5, 0x0

    goto :goto_1b
.end method

.method dispatchOnDrawerClosed(Landroid/view/View;)V
    .registers 9
    .param p1, "drawerView"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 850
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 851
    .local v2, "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    iget v4, v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->openState:I

    and-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_40

    .line 852
    iput v6, v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->openState:I

    .line 854
    iget-object v4, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    if-eqz v4, :cond_2c

    .line 857
    iget-object v4, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .line 858
    .local v1, "listenerCount":I
    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_1c
    if-ltz v0, :cond_2c

    .line 859
    iget-object v4, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    invoke-interface {v4, p1}, Landroid/support/v4/widget/DrawerLayout$DrawerListener;->onDrawerClosed(Landroid/view/View;)V

    .line 858
    add-int/lit8 v0, v0, -0x1

    goto :goto_1c

    .line 863
    .end local v0    # "i":I
    .end local v1    # "listenerCount":I
    :cond_2c
    invoke-direct {p0, p1, v6}, Landroid/support/v4/widget/DrawerLayout;->updateChildrenImportantForAccessibility(Landroid/view/View;Z)V

    .line 868
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->hasWindowFocus()Z

    move-result v4

    if-eqz v4, :cond_40

    .line 869
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getRootView()Landroid/view/View;

    move-result-object v3

    .line 870
    .local v3, "rootView":Landroid/view/View;
    if-eqz v3, :cond_40

    .line 871
    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 875
    .end local v3    # "rootView":Landroid/view/View;
    :cond_40
    return-void
.end method

.method dispatchOnDrawerOpened(Landroid/view/View;)V
    .registers 7
    .param p1, "drawerView"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 878
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 879
    .local v2, "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    iget v3, v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->openState:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_39

    .line 880
    iput v4, v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->openState:I

    .line 881
    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    if-eqz v3, :cond_2b

    .line 884
    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 885
    .local v1, "listenerCount":I
    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_1b
    if-ltz v0, :cond_2b

    .line 886
    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    invoke-interface {v3, p1}, Landroid/support/v4/widget/DrawerLayout$DrawerListener;->onDrawerOpened(Landroid/view/View;)V

    .line 885
    add-int/lit8 v0, v0, -0x1

    goto :goto_1b

    .line 890
    .end local v0    # "i":I
    .end local v1    # "listenerCount":I
    :cond_2b
    invoke-direct {p0, p1, v4}, Landroid/support/v4/widget/DrawerLayout;->updateChildrenImportantForAccessibility(Landroid/view/View;Z)V

    .line 893
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->hasWindowFocus()Z

    move-result v3

    if-eqz v3, :cond_39

    .line 894
    const/16 v3, 0x20

    invoke-virtual {p0, v3}, Landroid/support/v4/widget/DrawerLayout;->sendAccessibilityEvent(I)V

    .line 897
    :cond_39
    return-void
.end method

.method dispatchOnDrawerSlide(Landroid/view/View;F)V
    .registers 6
    .param p1, "drawerView"    # Landroid/view/View;
    .param p2, "slideOffset"    # F

    .prologue
    .line 916
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    if-eqz v2, :cond_1c

    .line 919
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 920
    .local v1, "listenerCount":I
    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_c
    if-ltz v0, :cond_1c

    .line 921
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    invoke-interface {v2, p1, p2}, Landroid/support/v4/widget/DrawerLayout$DrawerListener;->onDrawerSlide(Landroid/view/View;F)V

    .line 920
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    .line 924
    .end local v0    # "i":I
    .end local v1    # "listenerCount":I
    :cond_1c
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 34
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 1401
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/DrawerLayout;->getHeight()I

    move-result v18

    .line 1402
    .local v18, "height":I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v17

    .line 1403
    .local v17, "drawingContent":Z
    const/4 v13, 0x0

    .local v13, "clipLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v14

    .line 1405
    .local v14, "clipRight":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v21

    .line 1406
    .local v21, "restoreCount":I
    if-eqz v17, :cond_7b

    .line 1407
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v10

    .line 1408
    .local v10, "childCount":I
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_1d
    move/from16 v0, v19

    if-ge v0, v10, :cond_71

    .line 1409
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 1410
    .local v25, "v":Landroid/view/View;
    move-object/from16 v0, v25

    move-object/from16 v1, p2

    if-eq v0, v1, :cond_4d

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_4d

    .line 1411
    invoke-static/range {v25 .. v25}, Landroid/support/v4/widget/DrawerLayout;->hasOpaqueBackground(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_4d

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 1412
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getHeight()I

    move-result v2

    move/from16 v0, v18

    if-ge v2, v0, :cond_50

    .line 1408
    :cond_4d
    :goto_4d
    add-int/lit8 v19, v19, 0x1

    goto :goto_1d

    .line 1416
    :cond_50
    const/4 v2, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v2

    if-eqz v2, :cond_66

    .line 1417
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getRight()I

    move-result v27

    .line 1418
    .local v27, "vright":I
    move/from16 v0, v27

    if-le v0, v13, :cond_4d

    move/from16 v13, v27

    goto :goto_4d

    .line 1420
    .end local v27    # "vright":I
    :cond_66
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLeft()I

    move-result v26

    .line 1421
    .local v26, "vleft":I
    move/from16 v0, v26

    if-ge v0, v14, :cond_4d

    move/from16 v14, v26

    goto :goto_4d

    .line 1424
    .end local v25    # "v":Landroid/view/View;
    .end local v26    # "vleft":I
    :cond_71
    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/DrawerLayout;->getHeight()I

    move-result v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v2, v14, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 1426
    .end local v10    # "childCount":I
    .end local v19    # "i":I
    :cond_7b
    invoke-super/range {p0 .. p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v22

    .line 1427
    .local v22, "result":Z
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1429
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/widget/DrawerLayout;->mScrimOpacity:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_c8

    if-eqz v17, :cond_c8

    .line 1430
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/widget/DrawerLayout;->mScrimColor:I

    const/high16 v3, -0x1000000

    and-int/2addr v2, v3

    ushr-int/lit8 v9, v2, 0x18

    .line 1431
    .local v9, "baseAlpha":I
    int-to-float v2, v9

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v4/widget/DrawerLayout;->mScrimOpacity:F

    mul-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v20, v0

    .line 1432
    .local v20, "imag":I
    shl-int/lit8 v2, v20, 0x18

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v4/widget/DrawerLayout;->mScrimColor:I

    const v4, 0xffffff

    and-int/2addr v3, v4

    or-int v15, v2, v3

    .line 1433
    .local v15, "color":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->mScrimPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 1435
    int-to-float v3, v13

    const/4 v4, 0x0

    int-to-float v5, v14

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/DrawerLayout;->getHeight()I

    move-result v2

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v4/widget/DrawerLayout;->mScrimPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1460
    .end local v9    # "baseAlpha":I
    .end local v15    # "color":I
    .end local v20    # "imag":I
    :cond_c7
    :goto_c7
    return v22

    .line 1436
    :cond_c8
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_123

    const/4 v2, 0x3

    .line 1437
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v2

    if-eqz v2, :cond_123

    .line 1438
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v23

    .line 1439
    .local v23, "shadowWidth":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v12

    .line 1440
    .local v12, "childRight":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v2}, Landroid/support/v4/widget/ViewDragHelper;->getEdgeSize()I

    move-result v16

    .line 1441
    .local v16, "drawerPeekDistance":I
    const/4 v2, 0x0

    int-to-float v3, v12

    move/from16 v0, v16

    int-to-float v4, v0

    div-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    .line 1442
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 1443
    .local v8, "alpha":F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v3

    add-int v4, v12, v23

    .line 1444
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 1443
    invoke-virtual {v2, v12, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1445
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v3, v8

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1446
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_c7

    .line 1447
    .end local v8    # "alpha":F
    .end local v12    # "childRight":I
    .end local v16    # "drawerPeekDistance":I
    .end local v23    # "shadowWidth":I
    :cond_123
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_c7

    const/4 v2, 0x5

    .line 1448
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v2

    if-eqz v2, :cond_c7

    .line 1449
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v23

    .line 1450
    .restart local v23    # "shadowWidth":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v11

    .line 1451
    .local v11, "childLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v2

    sub-int v24, v2, v11

    .line 1452
    .local v24, "showing":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v2}, Landroid/support/v4/widget/ViewDragHelper;->getEdgeSize()I

    move-result v16

    .line 1453
    .restart local v16    # "drawerPeekDistance":I
    const/4 v2, 0x0

    move/from16 v0, v24

    int-to-float v3, v0

    move/from16 v0, v16

    int-to-float v4, v0

    div-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    .line 1454
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 1455
    .restart local v8    # "alpha":F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    sub-int v3, v11, v23

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v4

    .line 1456
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 1455
    invoke-virtual {v2, v3, v4, v11, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1457
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v3, v8

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1458
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_c7
.end method

.method findDrawerWithGravity(I)Landroid/view/View;
    .registers 8
    .param p1, "gravity"    # I

    .prologue
    .line 985
    .line 986
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v5

    .line 985
    invoke-static {p1, v5}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v5

    and-int/lit8 v0, v5, 0x7

    .line 987
    .local v0, "absHorizGravity":I
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v3

    .line 988
    .local v3, "childCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_f
    if-ge v4, v3, :cond_21

    .line 989
    invoke-virtual {p0, v4}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 990
    .local v1, "child":Landroid/view/View;
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->getDrawerViewAbsoluteGravity(Landroid/view/View;)I

    move-result v2

    .line 991
    .local v2, "childAbsGravity":I
    and-int/lit8 v5, v2, 0x7

    if-ne v5, v0, :cond_1e

    .line 995
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childAbsGravity":I
    :goto_1d
    return-object v1

    .line 988
    .restart local v1    # "child":Landroid/view/View;
    .restart local v2    # "childAbsGravity":I
    :cond_1e
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 995
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childAbsGravity":I
    :cond_21
    const/4 v1, 0x0

    goto :goto_1d
.end method

.method findOpenDrawer()Landroid/view/View;
    .registers 7

    .prologue
    .line 955
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v1

    .line 956
    .local v1, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_5
    if-ge v3, v1, :cond_1c

    .line 957
    invoke-virtual {p0, v3}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 958
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 959
    .local v2, "childLp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    iget v4, v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->openState:I

    and-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_19

    .line 963
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "childLp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    :goto_18
    return-object v0

    .line 956
    .restart local v0    # "child":Landroid/view/View;
    .restart local v2    # "childLp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 963
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "childLp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    :cond_1c
    const/4 v0, 0x0

    goto :goto_18
.end method

.method findVisibleDrawer()Landroid/view/View;
    .registers 5

    .prologue
    .line 1949
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v1

    .line 1950
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    if-ge v2, v1, :cond_1b

    .line 1951
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1952
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->isDrawerVisible(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1956
    .end local v0    # "child":Landroid/view/View;
    :goto_17
    return-object v0

    .line 1950
    .restart local v0    # "child":Landroid/view/View;
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1956
    .end local v0    # "child":Landroid/view/View;
    :cond_1b
    const/4 v0, 0x0

    goto :goto_17
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 1887
    new-instance v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1906
    new-instance v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1892
    instance-of v0, p1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    if-eqz v0, :cond_c

    new-instance v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    check-cast p1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)V

    :goto_b
    return-object v0

    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_c
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_18

    new-instance v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_b

    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_18
    new-instance v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_b
.end method

.method public getDrawerElevation()F
    .registers 2

    .prologue
    .line 393
    sget-boolean v0, Landroid/support/v4/widget/DrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    if-eqz v0, :cond_7

    .line 394
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->mDrawerElevation:F

    .line 396
    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getDrawerLockMode(I)I
    .registers 9
    .param p1, "edgeGravity"    # I

    .prologue
    const/4 v6, 0x3

    .line 652
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    .line 654
    .local v1, "layoutDirection":I
    sparse-switch p1, :sswitch_data_52

    .line 697
    :cond_8
    const/4 v2, 0x0

    :goto_9
    return v2

    .line 656
    :sswitch_a
    iget v5, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeLeft:I

    if-eq v5, v6, :cond_11

    .line 657
    iget v2, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeLeft:I

    goto :goto_9

    .line 659
    :cond_11
    if-nez v1, :cond_18

    iget v2, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeStart:I

    .line 661
    .local v2, "leftLockMode":I
    :goto_15
    if-eq v2, v6, :cond_8

    goto :goto_9

    .line 659
    .end local v2    # "leftLockMode":I
    :cond_18
    iget v2, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeEnd:I

    goto :goto_15

    .line 666
    :sswitch_1b
    iget v5, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeRight:I

    if-eq v5, v6, :cond_22

    .line 667
    iget v2, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeRight:I

    goto :goto_9

    .line 669
    :cond_22
    if-nez v1, :cond_2a

    iget v3, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeEnd:I

    .line 671
    .local v3, "rightLockMode":I
    :goto_26
    if-eq v3, v6, :cond_8

    move v2, v3

    .line 672
    goto :goto_9

    .line 669
    .end local v3    # "rightLockMode":I
    :cond_2a
    iget v3, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeStart:I

    goto :goto_26

    .line 676
    :sswitch_2d
    iget v5, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeStart:I

    if-eq v5, v6, :cond_34

    .line 677
    iget v2, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeStart:I

    goto :goto_9

    .line 679
    :cond_34
    if-nez v1, :cond_3c

    iget v4, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeLeft:I

    .line 681
    .local v4, "startLockMode":I
    :goto_38
    if-eq v4, v6, :cond_8

    move v2, v4

    .line 682
    goto :goto_9

    .line 679
    .end local v4    # "startLockMode":I
    :cond_3c
    iget v4, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeRight:I

    goto :goto_38

    .line 686
    :sswitch_3f
    iget v5, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeEnd:I

    if-eq v5, v6, :cond_46

    .line 687
    iget v2, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeEnd:I

    goto :goto_9

    .line 689
    :cond_46
    if-nez v1, :cond_4e

    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeRight:I

    .line 691
    .local v0, "endLockMode":I
    :goto_4a
    if-eq v0, v6, :cond_8

    move v2, v0

    .line 692
    goto :goto_9

    .line 689
    .end local v0    # "endLockMode":I
    :cond_4e
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeLeft:I

    goto :goto_4a

    .line 654
    nop

    :sswitch_data_52
    .sparse-switch
        0x3 -> :sswitch_a
        0x5 -> :sswitch_1b
        0x800003 -> :sswitch_2d
        0x800005 -> :sswitch_3f
    .end sparse-switch
.end method

.method public getDrawerLockMode(Landroid/view/View;)I
    .registers 6
    .param p1, "drawerView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 709
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 710
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a drawer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 712
    :cond_25
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget v0, v1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 713
    .local v0, "drawerGravity":I
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->getDrawerLockMode(I)I

    move-result v1

    return v1
.end method

.method public getDrawerTitle(I)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "edgeGravity"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 746
    .line 747
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    .line 746
    invoke-static {p1, v1}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v0

    .line 748
    .local v0, "absGravity":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_e

    .line 749
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mTitleLeft:Ljava/lang/CharSequence;

    .line 753
    :goto_d
    return-object v1

    .line 750
    :cond_e
    const/4 v1, 0x5

    if-ne v0, v1, :cond_14

    .line 751
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mTitleRight:Ljava/lang/CharSequence;

    goto :goto_d

    .line 753
    :cond_14
    const/4 v1, 0x0

    goto :goto_d
.end method

.method getDrawerViewAbsoluteGravity(Landroid/view/View;)I
    .registers 4
    .param p1, "drawerView"    # Landroid/view/View;

    .prologue
    .line 945
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget v0, v1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 946
    .local v0, "gravity":I
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v1

    return v1
.end method

.method getDrawerViewOffset(Landroid/view/View;)F
    .registers 3
    .param p1, "drawerView"    # Landroid/view/View;

    .prologue
    .line 937
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    return v0
.end method

.method public getStatusBarBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1350
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method isContentView(Landroid/view/View;)Z
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1464
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isDrawerOpen(I)Z
    .registers 4
    .param p1, "drawerGravity"    # I

    .prologue
    .line 1836
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v0

    .line 1837
    .local v0, "drawerView":Landroid/view/View;
    if-eqz v0, :cond_b

    .line 1838
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v1

    .line 1840
    :goto_a
    return v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public isDrawerOpen(Landroid/view/View;)Z
    .registers 6
    .param p1, "drawer"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    .line 1819
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_26

    .line 1820
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a drawer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1822
    :cond_26
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 1823
    .local v0, "drawerLp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    iget v2, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->openState:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v1, :cond_33

    :goto_32
    return v1

    :cond_33
    const/4 v1, 0x0

    goto :goto_32
.end method

.method isDrawerView(Landroid/view/View;)Z
    .registers 6
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 1468
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget v1, v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 1470
    .local v1, "gravity":I
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v2

    .line 1469
    invoke-static {v1, v2}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v0

    .line 1471
    .local v0, "absGravity":I
    and-int/lit8 v2, v0, 0x3

    if-eqz v2, :cond_17

    move v2, v3

    .line 1479
    :goto_16
    return v2

    .line 1475
    :cond_17
    and-int/lit8 v2, v0, 0x5

    if-eqz v2, :cond_1d

    move v2, v3

    .line 1477
    goto :goto_16

    .line 1479
    :cond_1d
    const/4 v2, 0x0

    goto :goto_16
.end method

.method public isDrawerVisible(I)Z
    .registers 4
    .param p1, "drawerGravity"    # I

    .prologue
    .line 1867
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v0

    .line 1868
    .local v0, "drawerView":Landroid/view/View;
    if-eqz v0, :cond_b

    .line 1869
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->isDrawerVisible(Landroid/view/View;)Z

    move-result v1

    .line 1871
    :goto_a
    return v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public isDrawerVisible(Landroid/view/View;)Z
    .registers 5
    .param p1, "drawer"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1852
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 1853
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a drawer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1855
    :cond_25
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_34

    const/4 v0, 0x1

    :goto_33
    return v0

    :cond_34
    const/4 v0, 0x0

    goto :goto_33
.end method

.method moveDrawerToOffset(Landroid/view/View;F)V
    .registers 9
    .param p1, "drawerView"    # Landroid/view/View;
    .param p2, "slideOffset"    # F

    .prologue
    .line 967
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->getDrawerViewOffset(Landroid/view/View;)F

    move-result v2

    .line 968
    .local v2, "oldOffset":F
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 969
    .local v4, "width":I
    int-to-float v5, v4

    mul-float/2addr v5, v2

    float-to-int v3, v5

    .line 970
    .local v3, "oldPos":I
    int-to-float v5, v4

    mul-float/2addr v5, p2

    float-to-int v1, v5

    .line 971
    .local v1, "newPos":I
    sub-int v0, v1, v3

    .line 973
    .local v0, "dx":I
    const/4 v5, 0x3

    .line 974
    invoke-virtual {p0, p1, v5}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 973
    .end local v0    # "dx":I
    :goto_17
    invoke-virtual {p1, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 975
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/DrawerLayout;->setDrawerViewOffset(Landroid/view/View;F)V

    .line 976
    return-void

    .line 974
    .restart local v0    # "dx":I
    :cond_1e
    neg-int v0, v0

    goto :goto_17
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 1022
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 1023
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->mFirstLayout:Z

    .line 1024
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 1016
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 1017
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->mFirstLayout:Z

    .line 1018
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 6
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 1383
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 1384
    iget-boolean v1, p0, Landroid/support/v4/widget/DrawerLayout;->mDrawStatusBarBackground:Z

    if-eqz v1, :cond_2e

    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2e

    .line 1386
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_31

    .line 1387
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    if-eqz v1, :cond_2f

    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    check-cast v1, Landroid/view/WindowInsets;

    .line 1388
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v0

    .line 1392
    .local v0, "inset":I
    :goto_1e
    if-lez v0, :cond_2e

    .line 1393
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v3

    invoke-virtual {v1, v2, v2, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1394
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1397
    .end local v0    # "inset":I
    :cond_2e
    return-void

    :cond_2f
    move v0, v2

    .line 1388
    goto :goto_1e

    .line 1390
    :cond_31
    const/4 v0, 0x0

    .restart local v0    # "inset":I
    goto :goto_1e
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1485
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1488
    .local v0, "action":I
    iget-object v8, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v8, p1}, Landroid/support/v4/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    iget-object v9, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    .line 1489
    invoke-virtual {v9, p1}, Landroid/support/v4/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    or-int v2, v8, v9

    .line 1491
    .local v2, "interceptForDrag":Z
    const/4 v3, 0x0

    .line 1493
    .local v3, "interceptForTap":Z
    packed-switch v0, :pswitch_data_6e

    .line 1527
    :cond_18
    :goto_18
    if-nez v2, :cond_26

    if-nez v3, :cond_26

    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->hasPeekingDrawer()Z

    move-result v8

    if-nez v8, :cond_26

    iget-boolean v8, p0, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    if-eqz v8, :cond_27

    :cond_26
    move v6, v7

    :cond_27
    return v6

    .line 1495
    :pswitch_28
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 1496
    .local v4, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 1497
    .local v5, "y":F
    iput v4, p0, Landroid/support/v4/widget/DrawerLayout;->mInitialMotionX:F

    .line 1498
    iput v5, p0, Landroid/support/v4/widget/DrawerLayout;->mInitialMotionY:F

    .line 1499
    iget v8, p0, Landroid/support/v4/widget/DrawerLayout;->mScrimOpacity:F

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-lez v8, :cond_4c

    .line 1500
    iget-object v8, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    float-to-int v9, v4

    float-to-int v10, v5

    invoke-virtual {v8, v9, v10}, Landroid/support/v4/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v1

    .line 1501
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_4c

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_4c

    .line 1502
    const/4 v3, 0x1

    .line 1505
    .end local v1    # "child":Landroid/view/View;
    :cond_4c
    iput-boolean v6, p0, Landroid/support/v4/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    .line 1506
    iput-boolean v6, p0, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    goto :goto_18

    .line 1512
    .end local v4    # "x":F
    .end local v5    # "y":F
    :pswitch_51
    iget-object v8, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Landroid/support/v4/widget/ViewDragHelper;->checkTouchSlop(I)Z

    move-result v8

    if-eqz v8, :cond_18

    .line 1513
    iget-object v8, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    invoke-virtual {v8}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    .line 1514
    iget-object v8, p0, Landroid/support/v4/widget/DrawerLayout;->mRightCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    invoke-virtual {v8}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    goto :goto_18

    .line 1521
    :pswitch_65
    invoke-virtual {p0, v7}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers(Z)V

    .line 1522
    iput-boolean v6, p0, Landroid/support/v4/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    .line 1523
    iput-boolean v6, p0, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    goto :goto_18

    .line 1493
    nop

    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_28
        :pswitch_65
        :pswitch_51
        :pswitch_65
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1976
    const/4 v0, 0x4

    if-ne p1, v0, :cond_e

    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->hasVisibleDrawer()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1977
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 1978
    const/4 v0, 0x1

    .line 1980
    :goto_d
    return v0

    :cond_e
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_d
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1985
    const/4 v1, 0x4

    if-ne p1, v1, :cond_18

    .line 1986
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->findVisibleDrawer()Landroid/view/View;

    move-result-object v0

    .line 1987
    .local v0, "visibleDrawer":Landroid/view/View;
    if-eqz v0, :cond_12

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_12

    .line 1988
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers()V

    .line 1990
    :cond_12
    if-eqz v0, :cond_16

    const/4 v1, 0x1

    .line 1992
    .end local v0    # "visibleDrawer":Landroid/view/View;
    :goto_15
    return v1

    .line 1990
    .restart local v0    # "visibleDrawer":Landroid/view/View;
    :cond_16
    const/4 v1, 0x0

    goto :goto_15

    .line 1992
    .end local v0    # "visibleDrawer":Landroid/view/View;
    :cond_18
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_15
.end method

.method protected onLayout(ZIIII)V
    .registers 29
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 1218
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v4/widget/DrawerLayout;->mInLayout:Z

    .line 1219
    sub-int v17, p4, p2

    .line 1220
    .local v17, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v6

    .line 1221
    .local v6, "childCount":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_f
    if-ge v12, v6, :cond_149

    .line 1222
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1224
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v18

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_26

    .line 1221
    :cond_23
    :goto_23
    add-int/lit8 v12, v12, 0x1

    goto :goto_f

    .line 1228
    :cond_26
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 1230
    .local v13, "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/support/v4/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v18

    if-eqz v18, :cond_5c

    .line 1231
    iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->leftMargin:I

    move/from16 v18, v0

    iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    move/from16 v19, v0

    iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->leftMargin:I

    move/from16 v20, v0

    .line 1232
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    add-int v20, v20, v21

    iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    move/from16 v21, v0

    .line 1233
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v22

    add-int v21, v21, v22

    .line 1231
    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    goto :goto_23

    .line 1235
    :cond_5c
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    .line 1236
    .local v10, "childWidth":I
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1240
    .local v7, "childHeight":I
    const/16 v18, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v5, v1}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v18

    if-eqz v18, :cond_d5

    .line 1241
    neg-int v0, v10

    move/from16 v18, v0

    int-to-float v0, v10

    move/from16 v19, v0

    iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    add-int v8, v18, v19

    .line 1242
    .local v8, "childLeft":I
    add-int v18, v10, v8

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    int-to-float v0, v10

    move/from16 v19, v0

    div-float v14, v18, v19

    .line 1248
    .local v14, "newOffset":F
    :goto_8f
    iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    move/from16 v18, v0

    cmpl-float v18, v14, v18

    if-eqz v18, :cond_f2

    const/4 v4, 0x1

    .line 1250
    .local v4, "changeOffset":Z
    :goto_98
    iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    move/from16 v18, v0

    and-int/lit8 v16, v18, 0x70

    .line 1252
    .local v16, "vgrav":I
    sparse-switch v16, :sswitch_data_15a

    .line 1255
    iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    move/from16 v18, v0

    add-int v19, v8, v10

    iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    move/from16 v20, v0

    add-int v20, v20, v7

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v5, v8, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 1286
    :goto_b6
    if-eqz v4, :cond_bd

    .line 1287
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v14}, Landroid/support/v4/widget/DrawerLayout;->setDrawerViewOffset(Landroid/view/View;F)V

    .line 1290
    :cond_bd
    iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    move/from16 v18, v0

    const/16 v19, 0x0

    cmpl-float v18, v18, v19

    if-lez v18, :cond_147

    const/4 v15, 0x0

    .line 1291
    .local v15, "newVisibility":I
    :goto_c8
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v18

    move/from16 v0, v18

    if-eq v0, v15, :cond_23

    .line 1292
    invoke-virtual {v5, v15}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_23

    .line 1244
    .end local v4    # "changeOffset":Z
    .end local v8    # "childLeft":I
    .end local v14    # "newOffset":F
    .end local v15    # "newVisibility":I
    .end local v16    # "vgrav":I
    :cond_d5
    int-to-float v0, v10

    move/from16 v18, v0

    iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    sub-int v8, v17, v18

    .line 1245
    .restart local v8    # "childLeft":I
    sub-int v18, v17, v8

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    int-to-float v0, v10

    move/from16 v19, v0

    div-float v14, v18, v19

    .restart local v14    # "newOffset":F
    goto :goto_8f

    .line 1248
    :cond_f2
    const/4 v4, 0x0

    goto :goto_98

    .line 1261
    .restart local v4    # "changeOffset":Z
    .restart local v16    # "vgrav":I
    :sswitch_f4
    sub-int v11, p5, p3

    .line 1262
    .local v11, "height":I
    iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    move/from16 v18, v0

    sub-int v18, v11, v18

    .line 1263
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v19

    sub-int v18, v18, v19

    add-int v19, v8, v10

    iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    move/from16 v20, v0

    sub-int v20, v11, v20

    .line 1262
    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v5, v8, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    goto :goto_b6

    .line 1270
    .end local v11    # "height":I
    :sswitch_114
    sub-int v11, p5, p3

    .line 1271
    .restart local v11    # "height":I
    sub-int v18, v11, v7

    div-int/lit8 v9, v18, 0x2

    .line 1275
    .local v9, "childTop":I
    iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v9, v0, :cond_130

    .line 1276
    iget v9, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    .line 1280
    :cond_124
    :goto_124
    add-int v18, v8, v10

    add-int v19, v9, v7

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v5, v8, v9, v0, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_b6

    .line 1277
    :cond_130
    add-int v18, v9, v7

    iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    move/from16 v19, v0

    sub-int v19, v11, v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_124

    .line 1278
    iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    move/from16 v18, v0

    sub-int v18, v11, v18

    sub-int v9, v18, v7

    goto :goto_124

    .line 1290
    .end local v9    # "childTop":I
    .end local v11    # "height":I
    :cond_147
    const/4 v15, 0x4

    goto :goto_c8

    .line 1296
    .end local v4    # "changeOffset":Z
    .end local v5    # "child":Landroid/view/View;
    .end local v7    # "childHeight":I
    .end local v8    # "childLeft":I
    .end local v10    # "childWidth":I
    .end local v13    # "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    .end local v14    # "newOffset":F
    .end local v16    # "vgrav":I
    :cond_149
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v4/widget/DrawerLayout;->mInLayout:Z

    .line 1297
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v4/widget/DrawerLayout;->mFirstLayout:Z

    .line 1298
    return-void

    .line 1252
    :sswitch_data_15a
    .sparse-switch
        0x10 -> :sswitch_114
        0x50 -> :sswitch_f4
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .registers 32
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .prologue
    .line 1029
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v23

    .line 1030
    .local v23, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v16

    .line 1031
    .local v16, "heightMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v24

    .line 1032
    .local v24, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v17

    .line 1034
    .local v17, "heightSize":I
    const/high16 v25, 0x40000000    # 2.0f

    move/from16 v0, v23

    move/from16 v1, v25

    if-ne v0, v1, :cond_20

    const/high16 v25, 0x40000000    # 2.0f

    move/from16 v0, v16

    move/from16 v1, v25

    if-eq v0, v1, :cond_3a

    .line 1035
    :cond_20
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/DrawerLayout;->isInEditMode()Z

    move-result v25

    if-eqz v25, :cond_87

    .line 1040
    const/high16 v25, -0x80000000

    move/from16 v0, v23

    move/from16 v1, v25

    if-ne v0, v1, :cond_79

    .line 1041
    const/high16 v23, 0x40000000    # 2.0f

    .line 1046
    :cond_30
    :goto_30
    const/high16 v25, -0x80000000

    move/from16 v0, v16

    move/from16 v1, v25

    if-ne v0, v1, :cond_80

    .line 1047
    const/high16 v16, 0x40000000    # 2.0f

    .line 1058
    :cond_3a
    :goto_3a
    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/DrawerLayout;->setMeasuredDimension(II)V

    .line 1060
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    move-object/from16 v25, v0

    if-eqz v25, :cond_8f

    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v25

    if-eqz v25, :cond_8f

    const/4 v5, 0x1

    .line 1061
    .local v5, "applyInsets":Z
    :goto_52
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v20

    .line 1065
    .local v20, "layoutDirection":I
    const/4 v14, 0x0

    .line 1066
    .local v14, "hasDrawerOnLeftEdge":Z
    const/4 v15, 0x0

    .line 1067
    .local v15, "hasDrawerOnRightEdge":Z
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v8

    .line 1068
    .local v8, "childCount":I
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_5e
    move/from16 v0, v18

    if-ge v0, v8, :cond_2bb

    .line 1069
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1071
    .local v7, "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v25

    const/16 v26, 0x8

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_91

    .line 1068
    :goto_76
    add-int/lit8 v18, v18, 0x1

    goto :goto_5e

    .line 1042
    .end local v5    # "applyInsets":Z
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "childCount":I
    .end local v14    # "hasDrawerOnLeftEdge":Z
    .end local v15    # "hasDrawerOnRightEdge":Z
    .end local v18    # "i":I
    .end local v20    # "layoutDirection":I
    :cond_79
    if-nez v23, :cond_30

    .line 1043
    const/high16 v23, 0x40000000    # 2.0f

    .line 1044
    const/16 v24, 0x12c

    goto :goto_30

    .line 1048
    :cond_80
    if-nez v16, :cond_3a

    .line 1049
    const/high16 v16, 0x40000000    # 2.0f

    .line 1050
    const/16 v17, 0x12c

    goto :goto_3a

    .line 1053
    :cond_87
    new-instance v25, Ljava/lang/IllegalArgumentException;

    const-string v26, "DrawerLayout must be measured with MeasureSpec.EXACTLY."

    invoke-direct/range {v25 .. v26}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 1060
    :cond_8f
    const/4 v5, 0x0

    goto :goto_52

    .line 1075
    .restart local v5    # "applyInsets":Z
    .restart local v7    # "child":Landroid/view/View;
    .restart local v8    # "childCount":I
    .restart local v14    # "hasDrawerOnLeftEdge":Z
    .restart local v15    # "hasDrawerOnRightEdge":Z
    .restart local v18    # "i":I
    .restart local v20    # "layoutDirection":I
    :cond_91
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    check-cast v21, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 1077
    .local v21, "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    if-eqz v5, :cond_e6

    .line 1078
    move-object/from16 v0, v21

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    move/from16 v25, v0

    move/from16 v0, v25

    move/from16 v1, v20

    invoke-static {v0, v1}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v6

    .line 1079
    .local v6, "cgrav":I
    invoke-static {v7}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v25

    if-eqz v25, :cond_142

    .line 1080
    sget v25, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v26, 0x15

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_e6

    .line 1081
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/view/WindowInsets;

    .line 1082
    .local v22, "wi":Landroid/view/WindowInsets;
    const/16 v25, 0x3

    move/from16 v0, v25

    if-ne v6, v0, :cond_11f

    .line 1083
    invoke-virtual/range {v22 .. v22}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v25

    .line 1084
    invoke-virtual/range {v22 .. v22}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v26

    const/16 v27, 0x0

    .line 1085
    invoke-virtual/range {v22 .. v22}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v28

    .line 1083
    move-object/from16 v0, v22

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v22

    .line 1091
    :cond_e1
    :goto_e1
    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 1113
    .end local v6    # "cgrav":I
    .end local v22    # "wi":Landroid/view/WindowInsets;
    :cond_e6
    :goto_e6
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/support/v4/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v25

    if-eqz v25, :cond_1c3

    .line 1115
    move-object/from16 v0, v21

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->leftMargin:I

    move/from16 v25, v0

    sub-int v25, v24, v25

    move-object/from16 v0, v21

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->rightMargin:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    const/high16 v26, 0x40000000    # 2.0f

    invoke-static/range {v25 .. v26}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 1117
    .local v11, "contentWidthSpec":I
    move-object/from16 v0, v21

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    move/from16 v25, v0

    sub-int v25, v17, v25

    move-object/from16 v0, v21

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    const/high16 v26, 0x40000000    # 2.0f

    invoke-static/range {v25 .. v26}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 1119
    .local v10, "contentHeightSpec":I
    invoke-virtual {v7, v11, v10}, Landroid/view/View;->measure(II)V

    goto/16 :goto_76

    .line 1086
    .end local v10    # "contentHeightSpec":I
    .end local v11    # "contentWidthSpec":I
    .restart local v6    # "cgrav":I
    .restart local v22    # "wi":Landroid/view/WindowInsets;
    :cond_11f
    const/16 v25, 0x5

    move/from16 v0, v25

    if-ne v6, v0, :cond_e1

    .line 1087
    const/16 v25, 0x0

    invoke-virtual/range {v22 .. v22}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v26

    .line 1088
    invoke-virtual/range {v22 .. v22}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v27

    .line 1089
    invoke-virtual/range {v22 .. v22}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v28

    .line 1087
    move-object/from16 v0, v22

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v22

    goto :goto_e1

    .line 1094
    .end local v22    # "wi":Landroid/view/WindowInsets;
    :cond_142
    sget v25, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v26, 0x15

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_e6

    .line 1095
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/view/WindowInsets;

    .line 1096
    .restart local v22    # "wi":Landroid/view/WindowInsets;
    const/16 v25, 0x3

    move/from16 v0, v25

    if-ne v6, v0, :cond_1a0

    .line 1097
    invoke-virtual/range {v22 .. v22}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v25

    .line 1098
    invoke-virtual/range {v22 .. v22}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v26

    const/16 v27, 0x0

    .line 1099
    invoke-virtual/range {v22 .. v22}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v28

    .line 1097
    move-object/from16 v0, v22

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v22

    .line 1105
    :cond_176
    :goto_176
    invoke-virtual/range {v22 .. v22}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, v21

    iput v0, v1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->leftMargin:I

    .line 1106
    invoke-virtual/range {v22 .. v22}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, v21

    iput v0, v1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    .line 1107
    invoke-virtual/range {v22 .. v22}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, v21

    iput v0, v1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->rightMargin:I

    .line 1108
    invoke-virtual/range {v22 .. v22}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, v21

    iput v0, v1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_e6

    .line 1100
    :cond_1a0
    const/16 v25, 0x5

    move/from16 v0, v25

    if-ne v6, v0, :cond_176

    .line 1101
    const/16 v25, 0x0

    invoke-virtual/range {v22 .. v22}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v26

    .line 1102
    invoke-virtual/range {v22 .. v22}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v27

    .line 1103
    invoke-virtual/range {v22 .. v22}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v28

    .line 1101
    move-object/from16 v0, v22

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v22

    goto :goto_176

    .line 1120
    .end local v6    # "cgrav":I
    .end local v22    # "wi":Landroid/view/WindowInsets;
    :cond_1c3
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v25

    if-eqz v25, :cond_286

    .line 1121
    sget-boolean v25, Landroid/support/v4/widget/DrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    if-eqz v25, :cond_1e8

    .line 1122
    invoke-static {v7}, Landroid/support/v4/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result v25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout;->mDrawerElevation:F

    move/from16 v26, v0

    cmpl-float v25, v25, v26

    if-eqz v25, :cond_1e8

    .line 1123
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout;->mDrawerElevation:F

    move/from16 v25, v0

    move/from16 v0, v25

    invoke-static {v7, v0}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 1127
    :cond_1e8
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/support/v4/widget/DrawerLayout;->getDrawerViewAbsoluteGravity(Landroid/view/View;)I

    move-result v25

    and-int/lit8 v9, v25, 0x7

    .line 1130
    .local v9, "childGravity":I
    const/16 v25, 0x3

    move/from16 v0, v25

    if-ne v9, v0, :cond_235

    const/16 v19, 0x1

    .line 1131
    .local v19, "isLeftEdgeDrawer":Z
    :goto_1f8
    if-eqz v19, :cond_1fc

    if-nez v14, :cond_200

    :cond_1fc
    if-nez v19, :cond_238

    if-eqz v15, :cond_238

    .line 1133
    :cond_200
    new-instance v25, Ljava/lang/IllegalStateException;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Child drawer has absolute gravity "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 1134
    invoke-static {v9}, Landroid/support/v4/widget/DrawerLayout;->gravityToString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " but this "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "DrawerLayout"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " already has a "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "drawer view along that edge"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 1130
    .end local v19    # "isLeftEdgeDrawer":Z
    :cond_235
    const/16 v19, 0x0

    goto :goto_1f8

    .line 1137
    .restart local v19    # "isLeftEdgeDrawer":Z
    :cond_238
    if-eqz v19, :cond_284

    .line 1138
    const/4 v14, 0x1

    .line 1142
    :goto_23b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout;->mMinDrawerMargin:I

    move/from16 v25, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->leftMargin:I

    move/from16 v26, v0

    add-int v25, v25, v26

    move-object/from16 v0, v21

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->rightMargin:I

    move/from16 v26, v0

    add-int v25, v25, v26

    move-object/from16 v0, v21

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->width:I

    move/from16 v26, v0

    move/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Landroid/support/v4/widget/DrawerLayout;->getChildMeasureSpec(III)I

    move-result v13

    .line 1145
    .local v13, "drawerWidthSpec":I
    move-object/from16 v0, v21

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    move/from16 v25, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    move/from16 v26, v0

    add-int v25, v25, v26

    move-object/from16 v0, v21

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->height:I

    move/from16 v26, v0

    move/from16 v0, p2

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Landroid/support/v4/widget/DrawerLayout;->getChildMeasureSpec(III)I

    move-result v12

    .line 1148
    .local v12, "drawerHeightSpec":I
    invoke-virtual {v7, v13, v12}, Landroid/view/View;->measure(II)V

    goto/16 :goto_76

    .line 1140
    .end local v12    # "drawerHeightSpec":I
    .end local v13    # "drawerWidthSpec":I
    :cond_284
    const/4 v15, 0x1

    goto :goto_23b

    .line 1150
    .end local v9    # "childGravity":I
    .end local v19    # "isLeftEdgeDrawer":Z
    :cond_286
    new-instance v25, Ljava/lang/IllegalStateException;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Child "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " at index "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " does not have a valid layout_gravity - must be Gravity.LEFT, "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "Gravity.RIGHT or Gravity.NO_GRAVITY"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 1155
    .end local v7    # "child":Landroid/view/View;
    .end local v21    # "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    :cond_2bb
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 7
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    const/4 v4, 0x3

    .line 1997
    instance-of v2, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;

    if-nez v2, :cond_9

    .line 1998
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2024
    :cond_8
    :goto_8
    return-void

    :cond_9
    move-object v0, p1

    .line 2002
    check-cast v0, Landroid/support/v4/widget/DrawerLayout$SavedState;

    .line 2003
    .local v0, "ss":Landroid/support/v4/widget/DrawerLayout$SavedState;
    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2005
    iget v2, v0, Landroid/support/v4/widget/DrawerLayout$SavedState;->openDrawerGravity:I

    if-eqz v2, :cond_22

    .line 2006
    iget v2, v0, Landroid/support/v4/widget/DrawerLayout$SavedState;->openDrawerGravity:I

    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v1

    .line 2007
    .local v1, "toOpen":Landroid/view/View;
    if-eqz v1, :cond_22

    .line 2008
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(Landroid/view/View;)V

    .line 2012
    .end local v1    # "toOpen":Landroid/view/View;
    :cond_22
    iget v2, v0, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeLeft:I

    if-eq v2, v4, :cond_2b

    .line 2013
    iget v2, v0, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeLeft:I

    invoke-virtual {p0, v2, v4}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    .line 2015
    :cond_2b
    iget v2, v0, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeRight:I

    if-eq v2, v4, :cond_35

    .line 2016
    iget v2, v0, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeRight:I

    const/4 v3, 0x5

    invoke-virtual {p0, v2, v3}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    .line 2018
    :cond_35
    iget v2, v0, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeStart:I

    if-eq v2, v4, :cond_41

    .line 2019
    iget v2, v0, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeStart:I

    const v3, 0x800003

    invoke-virtual {p0, v2, v3}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    .line 2021
    :cond_41
    iget v2, v0, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeEnd:I

    if-eq v2, v4, :cond_8

    .line 2022
    iget v2, v0, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeEnd:I

    const v3, 0x800005

    invoke-virtual {p0, v2, v3}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    goto :goto_8
.end method

.method public onRtlPropertiesChanged(I)V
    .registers 2
    .param p1, "layoutDirection"    # I

    .prologue
    .line 1378
    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->resolveShadowDrawables()V

    .line 1379
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 13

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 2028
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v7

    .line 2029
    .local v7, "superState":Landroid/os/Parcelable;
    new-instance v6, Landroid/support/v4/widget/DrawerLayout$SavedState;

    invoke-direct {v6, v7}, Landroid/support/v4/widget/DrawerLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2031
    .local v6, "ss":Landroid/support/v4/widget/DrawerLayout$SavedState;
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v1

    .line 2032
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    if-ge v2, v1, :cond_2f

    .line 2033
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2034
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 2036
    .local v5, "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    iget v10, v5, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->openState:I

    if-ne v10, v8, :cond_40

    move v4, v8

    .line 2038
    .local v4, "isOpenedAndNotClosing":Z
    :goto_21
    iget v10, v5, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->openState:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_42

    move v3, v8

    .line 2039
    .local v3, "isClosedAndOpening":Z
    :goto_27
    if-nez v4, :cond_2b

    if-eqz v3, :cond_44

    .line 2042
    :cond_2b
    iget v8, v5, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    iput v8, v6, Landroid/support/v4/widget/DrawerLayout$SavedState;->openDrawerGravity:I

    .line 2047
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "isClosedAndOpening":Z
    .end local v4    # "isOpenedAndNotClosing":Z
    .end local v5    # "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    :cond_2f
    iget v8, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeLeft:I

    iput v8, v6, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeLeft:I

    .line 2048
    iget v8, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeRight:I

    iput v8, v6, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeRight:I

    .line 2049
    iget v8, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeStart:I

    iput v8, v6, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeStart:I

    .line 2050
    iget v8, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeEnd:I

    iput v8, v6, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeEnd:I

    .line 2052
    return-object v6

    .restart local v0    # "child":Landroid/view/View;
    .restart local v5    # "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    :cond_40
    move v4, v9

    .line 2036
    goto :goto_21

    .restart local v4    # "isOpenedAndNotClosing":Z
    :cond_42
    move v3, v9

    .line 2038
    goto :goto_27

    .line 2032
    .restart local v3    # "isClosedAndOpening":Z
    :cond_44
    add-int/lit8 v2, v2, 0x1

    goto :goto_10
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 15
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1569
    iget-object v10, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v10, p1}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 1570
    iget-object v10, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v10, p1}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 1572
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1573
    .local v0, "action":I
    const/4 v7, 0x1

    .line 1575
    .local v7, "wantTouchEvents":Z
    and-int/lit16 v10, v0, 0xff

    packed-switch v10, :pswitch_data_7e

    .line 1616
    :goto_14
    :pswitch_14
    return v7

    .line 1577
    :pswitch_15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    .line 1578
    .local v8, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    .line 1579
    .local v9, "y":F
    iput v8, p0, Landroid/support/v4/widget/DrawerLayout;->mInitialMotionX:F

    .line 1580
    iput v9, p0, Landroid/support/v4/widget/DrawerLayout;->mInitialMotionY:F

    .line 1581
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/support/v4/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    .line 1582
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    goto :goto_14

    .line 1587
    .end local v8    # "x":F
    .end local v9    # "y":F
    :pswitch_28
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    .line 1588
    .restart local v8    # "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    .line 1589
    .restart local v9    # "y":F
    const/4 v4, 0x1

    .line 1590
    .local v4, "peekingOnly":Z
    iget-object v10, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    float-to-int v11, v8

    float-to-int v12, v9

    invoke-virtual {v10, v11, v12}, Landroid/support/v4/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v6

    .line 1591
    .local v6, "touchedView":Landroid/view/View;
    if-eqz v6, :cond_69

    invoke-virtual {p0, v6}, Landroid/support/v4/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_69

    .line 1592
    iget v10, p0, Landroid/support/v4/widget/DrawerLayout;->mInitialMotionX:F

    sub-float v1, v8, v10

    .line 1593
    .local v1, "dx":F
    iget v10, p0, Landroid/support/v4/widget/DrawerLayout;->mInitialMotionY:F

    sub-float v2, v9, v10

    .line 1594
    .local v2, "dy":F
    iget-object v10, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v10}, Landroid/support/v4/widget/ViewDragHelper;->getTouchSlop()I

    move-result v5

    .line 1595
    .local v5, "slop":I
    mul-float v10, v1, v1

    mul-float v11, v2, v2

    add-float/2addr v10, v11

    mul-int v11, v5, v5

    int-to-float v11, v11

    cmpg-float v10, v10, v11

    if-gez v10, :cond_69

    .line 1597
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->findOpenDrawer()Landroid/view/View;

    move-result-object v3

    .line 1598
    .local v3, "openDrawer":Landroid/view/View;
    if-eqz v3, :cond_69

    .line 1599
    invoke-virtual {p0, v3}, Landroid/support/v4/widget/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_70

    const/4 v4, 0x1

    .line 1603
    .end local v1    # "dx":F
    .end local v2    # "dy":F
    .end local v3    # "openDrawer":Landroid/view/View;
    .end local v5    # "slop":I
    :cond_69
    :goto_69
    invoke-virtual {p0, v4}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers(Z)V

    .line 1604
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/support/v4/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    goto :goto_14

    .line 1599
    .restart local v1    # "dx":F
    .restart local v2    # "dy":F
    .restart local v3    # "openDrawer":Landroid/view/View;
    .restart local v5    # "slop":I
    :cond_70
    const/4 v4, 0x0

    goto :goto_69

    .line 1609
    .end local v1    # "dx":F
    .end local v2    # "dy":F
    .end local v3    # "openDrawer":Landroid/view/View;
    .end local v4    # "peekingOnly":Z
    .end local v5    # "slop":I
    .end local v6    # "touchedView":Landroid/view/View;
    .end local v8    # "x":F
    .end local v9    # "y":F
    :pswitch_72
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers(Z)V

    .line 1610
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/support/v4/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    .line 1611
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    goto :goto_14

    .line 1575
    nop

    :pswitch_data_7e
    .packed-switch 0x0
        :pswitch_15
        :pswitch_28
        :pswitch_14
        :pswitch_72
    .end packed-switch
.end method

.method public openDrawer(I)V
    .registers 3
    .param p1, "gravity"    # I

    .prologue
    .line 1722
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(IZ)V

    .line 1723
    return-void
.end method

.method public openDrawer(IZ)V
    .registers 7
    .param p1, "gravity"    # I
    .param p2, "animate"    # Z

    .prologue
    .line 1733
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v0

    .line 1734
    .local v0, "drawerView":Landroid/view/View;
    if-nez v0, :cond_23

    .line 1735
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No drawer view found with gravity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1736
    invoke-static {p1}, Landroid/support/v4/widget/DrawerLayout;->gravityToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1738
    :cond_23
    invoke-virtual {p0, v0, p2}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(Landroid/view/View;Z)V

    .line 1739
    return-void
.end method

.method public openDrawer(Landroid/view/View;)V
    .registers 3
    .param p1, "drawerView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1678
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(Landroid/view/View;Z)V

    .line 1679
    return-void
.end method

.method public openDrawer(Landroid/view/View;Z)V
    .registers 8
    .param p1, "drawerView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "animate"    # Z

    .prologue
    const/4 v4, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 1688
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 1689
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a sliding drawer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1692
    :cond_29
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 1693
    .local v0, "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    iget-boolean v1, p0, Landroid/support/v4/widget/DrawerLayout;->mFirstLayout:Z

    if-eqz v1, :cond_3e

    .line 1694
    iput v2, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    .line 1695
    iput v4, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->openState:I

    .line 1697
    invoke-direct {p0, p1, v4}, Landroid/support/v4/widget/DrawerLayout;->updateChildrenImportantForAccessibility(Landroid/view/View;Z)V

    .line 1712
    :goto_3a
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1713
    return-void

    .line 1698
    :cond_3e
    if-eqz p2, :cond_6a

    .line 1699
    iget v1, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->openState:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->openState:I

    .line 1701
    const/4 v1, 0x3

    invoke-virtual {p0, p1, v1}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 1702
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v1, p1, v3, v2}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    goto :goto_3a

    .line 1704
    :cond_57
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1705
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    .line 1704
    invoke-virtual {v1, p1, v2, v3}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    goto :goto_3a

    .line 1708
    :cond_6a
    invoke-virtual {p0, p1, v2}, Landroid/support/v4/widget/DrawerLayout;->moveDrawerToOffset(Landroid/view/View;F)V

    .line 1709
    iget v1, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, v1, v3, p1}, Landroid/support/v4/widget/DrawerLayout;->updateDrawerState(IILandroid/view/View;)V

    .line 1710
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3a
.end method

.method public removeDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/support/v4/widget/DrawerLayout$DrawerListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 528
    if-nez p1, :cond_3

    .line 536
    :cond_2
    :goto_2
    return-void

    .line 531
    :cond_3
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 535
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 3
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 1625
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 1627
    iput-boolean p1, p0, Landroid/support/v4/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    .line 1628
    if-eqz p1, :cond_b

    .line 1629
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers(Z)V

    .line 1631
    :cond_b
    return-void
.end method

.method public requestLayout()V
    .registers 2

    .prologue
    .line 1302
    iget-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->mInLayout:Z

    if-nez v0, :cond_7

    .line 1303
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 1305
    :cond_7
    return-void
.end method

.method public setChildInsets(Ljava/lang/Object;Z)V
    .registers 4
    .param p1, "insets"    # Ljava/lang/Object;
    .param p2, "draw"    # Z
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 405
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    .line 406
    iput-boolean p2, p0, Landroid/support/v4/widget/DrawerLayout;->mDrawStatusBarBackground:Z

    .line 407
    if-nez p2, :cond_14

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_d
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->setWillNotDraw(Z)V

    .line 408
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->requestLayout()V

    .line 409
    return-void

    .line 407
    :cond_14
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public setDrawerElevation(F)V
    .registers 5
    .param p1, "elevation"    # F

    .prologue
    .line 376
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->mDrawerElevation:F

    .line 377
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1b

    .line 378
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 379
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 380
    iget v2, p0, Landroid/support/v4/widget/DrawerLayout;->mDrawerElevation:F

    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 377
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 383
    .end local v0    # "child":Landroid/view/View;
    :cond_1b
    return-void
.end method

.method public setDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/support/v4/widget/DrawerLayout$DrawerListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 493
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    if-eqz v0, :cond_9

    .line 494
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->removeDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    .line 496
    :cond_9
    if-eqz p1, :cond_e

    .line 497
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->addDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    .line 501
    :cond_e
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->mListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    .line 502
    return-void
.end method

.method public setDrawerLockMode(I)V
    .registers 3
    .param p1, "lockMode"    # I

    .prologue
    .line 552
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    .line 553
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    .line 554
    return-void
.end method

.method public setDrawerLockMode(II)V
    .registers 8
    .param p1, "lockMode"    # I
    .param p2, "edgeGravity"    # I

    .prologue
    .line 576
    .line 577
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v4

    .line 576
    invoke-static {p2, v4}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v0

    .line 579
    .local v0, "absGravity":I
    sparse-switch p2, :sswitch_data_3c

    .line 594
    :goto_b
    if-eqz p1, :cond_15

    .line 596
    const/4 v4, 0x3

    if-ne v0, v4, :cond_25

    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    .line 597
    .local v1, "helper":Landroid/support/v4/widget/ViewDragHelper;
    :goto_12
    invoke-virtual {v1}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    .line 599
    .end local v1    # "helper":Landroid/support/v4/widget/ViewDragHelper;
    :cond_15
    packed-switch p1, :pswitch_data_4e

    .line 614
    :cond_18
    :goto_18
    return-void

    .line 581
    :sswitch_19
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeLeft:I

    goto :goto_b

    .line 584
    :sswitch_1c
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeRight:I

    goto :goto_b

    .line 587
    :sswitch_1f
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeStart:I

    goto :goto_b

    .line 590
    :sswitch_22
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeEnd:I

    goto :goto_b

    .line 596
    :cond_25
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    goto :goto_12

    .line 601
    :pswitch_28
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v3

    .line 602
    .local v3, "toOpen":Landroid/view/View;
    if-eqz v3, :cond_18

    .line 603
    invoke-virtual {p0, v3}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(Landroid/view/View;)V

    goto :goto_18

    .line 607
    .end local v3    # "toOpen":Landroid/view/View;
    :pswitch_32
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v2

    .line 608
    .local v2, "toClose":Landroid/view/View;
    if-eqz v2, :cond_18

    .line 609
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    goto :goto_18

    .line 579
    :sswitch_data_3c
    .sparse-switch
        0x3 -> :sswitch_19
        0x5 -> :sswitch_1c
        0x800003 -> :sswitch_1f
        0x800005 -> :sswitch_22
    .end sparse-switch

    .line 599
    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_32
        :pswitch_28
    .end packed-switch
.end method

.method public setDrawerLockMode(ILandroid/view/View;)V
    .registers 7
    .param p1, "lockMode"    # I
    .param p2, "drawerView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 635
    invoke-virtual {p0, p2}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 636
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "drawer with appropriate layout_gravity"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 639
    :cond_2b
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget v0, v1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 640
    .local v0, "gravity":I
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    .line 641
    return-void
.end method

.method public setDrawerShadow(II)V
    .registers 4
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2, "gravity"    # I

    .prologue
    .line 465
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/support/v4/widget/DrawerLayout;->setDrawerShadow(Landroid/graphics/drawable/Drawable;I)V

    .line 466
    return-void
.end method

.method public setDrawerShadow(Landroid/graphics/drawable/Drawable;I)V
    .registers 6
    .param p1, "shadowDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "gravity"    # I

    .prologue
    const v2, 0x800005

    const v1, 0x800003

    .line 431
    sget-boolean v0, Landroid/support/v4/widget/DrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    if-eqz v0, :cond_b

    .line 448
    :cond_a
    :goto_a
    return-void

    .line 435
    :cond_b
    and-int v0, p2, v1

    if-ne v0, v1, :cond_18

    .line 436
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    .line 446
    :goto_11
    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->resolveShadowDrawables()V

    .line 447
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    goto :goto_a

    .line 437
    :cond_18
    and-int v0, p2, v2

    if-ne v0, v2, :cond_1f

    .line 438
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    goto :goto_11

    .line 439
    :cond_1f
    and-int/lit8 v0, p2, 0x3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_27

    .line 440
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    goto :goto_11

    .line 441
    :cond_27
    and-int/lit8 v0, p2, 0x5

    const/4 v1, 0x5

    if-ne v0, v1, :cond_a

    .line 442
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    goto :goto_11
.end method

.method public setDrawerTitle(ILjava/lang/CharSequence;)V
    .registers 5
    .param p1, "edgeGravity"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 727
    .line 728
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    .line 727
    invoke-static {p1, v1}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v0

    .line 729
    .local v0, "absGravity":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_e

    .line 730
    iput-object p2, p0, Landroid/support/v4/widget/DrawerLayout;->mTitleLeft:Ljava/lang/CharSequence;

    .line 734
    :cond_d
    :goto_d
    return-void

    .line 731
    :cond_e
    const/4 v1, 0x5

    if-ne v0, v1, :cond_d

    .line 732
    iput-object p2, p0, Landroid/support/v4/widget/DrawerLayout;->mTitleRight:Ljava/lang/CharSequence;

    goto :goto_d
.end method

.method setDrawerViewOffset(Landroid/view/View;F)V
    .registers 5
    .param p1, "drawerView"    # Landroid/view/View;
    .param p2, "slideOffset"    # F

    .prologue
    .line 927
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 928
    .local v0, "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    iget v1, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    cmpl-float v1, p2, v1

    if-nez v1, :cond_d

    .line 934
    :goto_c
    return-void

    .line 932
    :cond_d
    iput p2, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    .line 933
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/DrawerLayout;->dispatchOnDrawerSlide(Landroid/view/View;F)V

    goto :goto_c
.end method

.method public setScrimColor(I)V
    .registers 2
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 474
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->mScrimColor:I

    .line 475
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 476
    return-void
.end method

.method public setStatusBarBackground(I)V
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 1360
    if-eqz p1, :cond_10

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_a
    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 1361
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1362
    return-void

    .line 1360
    :cond_10
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "bg"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1339
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 1340
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1341
    return-void
.end method

.method public setStatusBarBackgroundColor(I)V
    .registers 3
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 1372
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 1373
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1374
    return-void
.end method

.method updateDrawerState(IILandroid/view/View;)V
    .registers 13
    .param p1, "forGravity"    # I
    .param p2, "activeState"    # I
    .param p3, "activeDrawer"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 814
    iget-object v6, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v6}, Landroid/support/v4/widget/ViewDragHelper;->getViewDragState()I

    move-result v1

    .line 815
    .local v1, "leftState":I
    iget-object v6, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v6}, Landroid/support/v4/widget/ViewDragHelper;->getViewDragState()I

    move-result v4

    .line 818
    .local v4, "rightState":I
    if-eq v1, v7, :cond_12

    if-ne v4, v7, :cond_49

    .line 819
    :cond_12
    const/4 v5, 0x1

    .line 826
    .local v5, "state":I
    :goto_13
    if-eqz p3, :cond_27

    if-nez p2, :cond_27

    .line 827
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 828
    .local v3, "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    iget v6, v3, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_51

    .line 829
    invoke-virtual {p0, p3}, Landroid/support/v4/widget/DrawerLayout;->dispatchOnDrawerClosed(Landroid/view/View;)V

    .line 835
    .end local v3    # "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    :cond_27
    :goto_27
    iget v6, p0, Landroid/support/v4/widget/DrawerLayout;->mDrawerState:I

    if-eq v5, v6, :cond_5d

    .line 836
    iput v5, p0, Landroid/support/v4/widget/DrawerLayout;->mDrawerState:I

    .line 838
    iget-object v6, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    if-eqz v6, :cond_5d

    .line 841
    iget-object v6, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    .line 842
    .local v2, "listenerCount":I
    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_39
    if-ltz v0, :cond_5d

    .line 843
    iget-object v6, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    invoke-interface {v6, v5}, Landroid/support/v4/widget/DrawerLayout$DrawerListener;->onDrawerStateChanged(I)V

    .line 842
    add-int/lit8 v0, v0, -0x1

    goto :goto_39

    .line 820
    .end local v0    # "i":I
    .end local v2    # "listenerCount":I
    .end local v5    # "state":I
    :cond_49
    if-eq v1, v8, :cond_4d

    if-ne v4, v8, :cond_4f

    .line 821
    :cond_4d
    const/4 v5, 0x2

    .restart local v5    # "state":I
    goto :goto_13

    .line 823
    .end local v5    # "state":I
    :cond_4f
    const/4 v5, 0x0

    .restart local v5    # "state":I
    goto :goto_13

    .line 830
    .restart local v3    # "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    :cond_51
    iget v6, v3, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v7

    if-nez v6, :cond_27

    .line 831
    invoke-virtual {p0, p3}, Landroid/support/v4/widget/DrawerLayout;->dispatchOnDrawerOpened(Landroid/view/View;)V

    goto :goto_27

    .line 847
    .end local v3    # "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    :cond_5d
    return-void
.end method
