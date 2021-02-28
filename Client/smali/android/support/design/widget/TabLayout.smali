.class public Landroid/support/design/widget/TabLayout;
.super Landroid/widget/HorizontalScrollView;
.source "TabLayout.java"


# annotations
.annotation runtime Landroid/support/v4/view/ViewPager$DecorView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/TabLayout$AdapterChangeListener;,
        Landroid/support/design/widget/TabLayout$PagerAdapterObserver;,
        Landroid/support/design/widget/TabLayout$ViewPagerOnTabSelectedListener;,
        Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;,
        Landroid/support/design/widget/TabLayout$SlidingTabIndicator;,
        Landroid/support/design/widget/TabLayout$TabView;,
        Landroid/support/design/widget/TabLayout$Tab;,
        Landroid/support/design/widget/TabLayout$OnTabSelectedListener;,
        Landroid/support/design/widget/TabLayout$BaseOnTabSelectedListener;,
        Landroid/support/design/widget/TabLayout$TabIndicatorGravity;,
        Landroid/support/design/widget/TabLayout$TabGravity;,
        Landroid/support/design/widget/TabLayout$Mode;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x12c

.field static final DEFAULT_GAP_TEXT_ICON:I = 0x8
    .annotation build Landroid/support/annotation/Dimension;
        unit = 0x0
    .end annotation
.end field

.field private static final DEFAULT_HEIGHT:I = 0x30
    .annotation build Landroid/support/annotation/Dimension;
        unit = 0x0
    .end annotation
.end field

.field private static final DEFAULT_HEIGHT_WITH_TEXT_ICON:I = 0x48
    .annotation build Landroid/support/annotation/Dimension;
        unit = 0x0
    .end annotation
.end field

.field static final FIXED_WRAP_GUTTER_MIN:I = 0x10
    .annotation build Landroid/support/annotation/Dimension;
        unit = 0x0
    .end annotation
.end field

.field public static final GRAVITY_CENTER:I = 0x1

.field public static final GRAVITY_FILL:I = 0x0

.field public static final INDICATOR_GRAVITY_BOTTOM:I = 0x0

.field public static final INDICATOR_GRAVITY_CENTER:I = 0x1

.field public static final INDICATOR_GRAVITY_STRETCH:I = 0x3

.field public static final INDICATOR_GRAVITY_TOP:I = 0x2

.field private static final INVALID_WIDTH:I = -0x1

.field private static final MIN_INDICATOR_WIDTH:I = 0x18
    .annotation build Landroid/support/annotation/Dimension;
        unit = 0x0
    .end annotation
.end field

.field public static final MODE_FIXED:I = 0x1

.field public static final MODE_SCROLLABLE:I = 0x0

.field private static final TAB_MIN_WIDTH_MARGIN:I = 0x38
    .annotation build Landroid/support/annotation/Dimension;
        unit = 0x0
    .end annotation
.end field

.field private static final tabPool:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool",
            "<",
            "Landroid/support/design/widget/TabLayout$Tab;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private adapterChangeListener:Landroid/support/design/widget/TabLayout$AdapterChangeListener;

.field private contentInsetStart:I

.field private currentVpSelectedListener:Landroid/support/design/widget/TabLayout$BaseOnTabSelectedListener;

.field inlineLabel:Z

.field mode:I

.field private pageChangeListener:Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;

.field private pagerAdapter:Landroid/support/v4/view/PagerAdapter;

.field private pagerAdapterObserver:Landroid/database/DataSetObserver;

.field private final requestedTabMaxWidth:I

.field private final requestedTabMinWidth:I

.field private scrollAnimator:Landroid/animation/ValueAnimator;

.field private final scrollableTabMinWidth:I

.field private selectedListener:Landroid/support/design/widget/TabLayout$BaseOnTabSelectedListener;

.field private final selectedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/design/widget/TabLayout$BaseOnTabSelectedListener;",
            ">;"
        }
    .end annotation
.end field

.field private selectedTab:Landroid/support/design/widget/TabLayout$Tab;

.field private setupViewPagerImplicitly:Z

.field private final slidingTabIndicator:Landroid/support/design/widget/TabLayout$SlidingTabIndicator;

.field final tabBackgroundResId:I

.field tabGravity:I

.field tabIconTint:Landroid/content/res/ColorStateList;

.field tabIconTintMode:Landroid/graphics/PorterDuff$Mode;

.field tabIndicatorAnimationDuration:I

.field tabIndicatorFullWidth:Z

.field tabIndicatorGravity:I

.field tabMaxWidth:I

.field tabPaddingBottom:I

.field tabPaddingEnd:I

.field tabPaddingStart:I

.field tabPaddingTop:I

.field tabRippleColorStateList:Landroid/content/res/ColorStateList;

.field tabSelectedIndicator:Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field tabTextAppearance:I

.field tabTextColors:Landroid/content/res/ColorStateList;

.field tabTextMultiLineSize:F

.field tabTextSize:F

.field private final tabViewContentBounds:Landroid/graphics/RectF;

.field private final tabViewPool:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool",
            "<",
            "Landroid/support/design/widget/TabLayout$TabView;",
            ">;"
        }
    .end annotation
.end field

.field private final tabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/design/widget/TabLayout$Tab;",
            ">;"
        }
    .end annotation
.end field

.field unboundedRipple:Z

.field viewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 191
    new-instance v0, Landroid/support/v4/util/Pools$SynchronizedPool;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/support/v4/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Landroid/support/design/widget/TabLayout;->tabPool:Landroid/support/v4/util/Pools$Pool;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 395
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 396
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 399
    sget v0, Landroid/support/design/R$attr;->tabStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/widget/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 400
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 403
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 339
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->tabs:Ljava/util/ArrayList;

    .line 342
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->tabViewContentBounds:Landroid/graphics/RectF;

    .line 363
    const v0, 0x7fffffff

    iput v0, p0, Landroid/support/design/widget/TabLayout;->tabMaxWidth:I

    .line 379
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    .line 392
    new-instance v0, Landroid/support/v4/util/Pools$SimplePool;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Landroid/support/v4/util/Pools$SimplePool;-><init>(I)V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->tabViewPool:Landroid/support/v4/util/Pools$Pool;

    .line 406
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->setHorizontalScrollBarEnabled(Z)V

    .line 409
    new-instance v0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;

    invoke-direct {v0, p0, p1}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;-><init>(Landroid/support/design/widget/TabLayout;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->slidingTabIndicator:Landroid/support/design/widget/TabLayout$SlidingTabIndicator;

    .line 410
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->slidingTabIndicator:Landroid/support/design/widget/TabLayout$SlidingTabIndicator;

    const/4 v1, 0x0

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-super {p0, v0, v1, v2}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 416
    sget-object v2, Landroid/support/design/R$styleable;->TabLayout:[I

    sget v4, Landroid/support/design/R$style;->Widget_Design_TabLayout:I

    const/4 v0, 0x1

    new-array v5, v0, [I

    const/4 v0, 0x0

    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabTextAppearance:I

    aput v1, v5, v0

    move-object v0, p1

    move-object v1, p2

    move v3, p3

    .line 417
    invoke-static/range {v0 .. v5}, Landroid/support/design/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 425
    .local v6, "a":Landroid/content/res/TypedArray;
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->slidingTabIndicator:Landroid/support/design/widget/TabLayout$SlidingTabIndicator;

    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabIndicatorHeight:I

    const/4 v2, -0x1

    .line 426
    invoke-virtual {v6, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 425
    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->setSelectedIndicatorHeight(I)V

    .line 427
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->slidingTabIndicator:Landroid/support/design/widget/TabLayout$SlidingTabIndicator;

    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabIndicatorColor:I

    const/4 v2, 0x0

    .line 428
    invoke-virtual {v6, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 427
    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->setSelectedIndicatorColor(I)V

    .line 429
    sget v0, Landroid/support/design/R$styleable;->TabLayout_tabIndicator:I

    .line 430
    invoke-static {p1, v6, v0}, Landroid/support/design/resources/MaterialResources;->getDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 429
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->setSelectedTabIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 431
    sget v0, Landroid/support/design/R$styleable;->TabLayout_tabIndicatorGravity:I

    const/4 v1, 0x0

    .line 432
    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 431
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->setSelectedTabIndicatorGravity(I)V

    .line 433
    sget v0, Landroid/support/design/R$styleable;->TabLayout_tabIndicatorFullWidth:I

    const/4 v1, 0x1

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->setTabIndicatorFullWidth(Z)V

    .line 435
    sget v0, Landroid/support/design/R$styleable;->TabLayout_tabPadding:I

    const/4 v1, 0x0

    .line 438
    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/TabLayout;->tabPaddingBottom:I

    iput v0, p0, Landroid/support/design/widget/TabLayout;->tabPaddingEnd:I

    iput v0, p0, Landroid/support/design/widget/TabLayout;->tabPaddingTop:I

    iput v0, p0, Landroid/support/design/widget/TabLayout;->tabPaddingStart:I

    .line 439
    sget v0, Landroid/support/design/R$styleable;->TabLayout_tabPaddingStart:I

    iget v1, p0, Landroid/support/design/widget/TabLayout;->tabPaddingStart:I

    .line 440
    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/TabLayout;->tabPaddingStart:I

    .line 441
    sget v0, Landroid/support/design/R$styleable;->TabLayout_tabPaddingTop:I

    iget v1, p0, Landroid/support/design/widget/TabLayout;->tabPaddingTop:I

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/TabLayout;->tabPaddingTop:I

    .line 442
    sget v0, Landroid/support/design/R$styleable;->TabLayout_tabPaddingEnd:I

    iget v1, p0, Landroid/support/design/widget/TabLayout;->tabPaddingEnd:I

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/TabLayout;->tabPaddingEnd:I

    .line 443
    sget v0, Landroid/support/design/R$styleable;->TabLayout_tabPaddingBottom:I

    iget v1, p0, Landroid/support/design/widget/TabLayout;->tabPaddingBottom:I

    .line 444
    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/TabLayout;->tabPaddingBottom:I

    .line 446
    sget v0, Landroid/support/design/R$styleable;->TabLayout_tabTextAppearance:I

    sget v1, Landroid/support/design/R$style;->TextAppearance_Design_Tab:I

    .line 447
    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/TabLayout;->tabTextAppearance:I

    .line 450
    iget v0, p0, Landroid/support/design/widget/TabLayout;->tabTextAppearance:I

    sget-object v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance:[I

    .line 451
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 454
    .local v9, "ta":Landroid/content/res/TypedArray;
    :try_start_cf
    sget v0, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textSize:I

    const/4 v1, 0x0

    .line 455
    invoke-virtual {v9, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/support/design/widget/TabLayout;->tabTextSize:F

    .line 457
    sget v0, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColor:I

    .line 458
    invoke-static {p1, v9, v0}, Landroid/support/design/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->tabTextColors:Landroid/content/res/ColorStateList;
    :try_end_e1
    .catchall {:try_start_cf .. :try_end_e1} :catchall_19b

    .line 463
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 466
    sget v0, Landroid/support/design/R$styleable;->TabLayout_tabTextColor:I

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_f4

    .line 468
    sget v0, Landroid/support/design/R$styleable;->TabLayout_tabTextColor:I

    .line 469
    invoke-static {p1, v6, v0}, Landroid/support/design/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    .line 472
    :cond_f4
    sget v0, Landroid/support/design/R$styleable;->TabLayout_tabSelectedTextColor:I

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_10f

    .line 476
    sget v0, Landroid/support/design/R$styleable;->TabLayout_tabSelectedTextColor:I

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    .line 477
    .local v8, "selected":I
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-static {v0, v8}, Landroid/support/design/widget/TabLayout;->createColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    .line 480
    .end local v8    # "selected":I
    :cond_10f
    sget v0, Landroid/support/design/R$styleable;->TabLayout_tabIconTint:I

    .line 481
    invoke-static {p1, v6, v0}, Landroid/support/design/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->tabIconTint:Landroid/content/res/ColorStateList;

    .line 482
    sget v0, Landroid/support/design/R$styleable;->TabLayout_tabIconTintMode:I

    const/4 v1, -0x1

    .line 483
    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/design/internal/ViewUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->tabIconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 485
    sget v0, Landroid/support/design/R$styleable;->TabLayout_tabRippleColor:I

    .line 486
    invoke-static {p1, v6, v0}, Landroid/support/design/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->tabRippleColorStateList:Landroid/content/res/ColorStateList;

    .line 488
    sget v0, Landroid/support/design/R$styleable;->TabLayout_tabIndicatorAnimationDuration:I

    const/16 v1, 0x12c

    .line 489
    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/TabLayout;->tabIndicatorAnimationDuration:I

    .line 491
    sget v0, Landroid/support/design/R$styleable;->TabLayout_tabMinWidth:I

    const/4 v1, -0x1

    .line 492
    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/TabLayout;->requestedTabMinWidth:I

    .line 493
    sget v0, Landroid/support/design/R$styleable;->TabLayout_tabMaxWidth:I

    const/4 v1, -0x1

    .line 494
    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/TabLayout;->requestedTabMaxWidth:I

    .line 495
    sget v0, Landroid/support/design/R$styleable;->TabLayout_tabBackground:I

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/TabLayout;->tabBackgroundResId:I

    .line 496
    sget v0, Landroid/support/design/R$styleable;->TabLayout_tabContentStart:I

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/TabLayout;->contentInsetStart:I

    .line 498
    sget v0, Landroid/support/design/R$styleable;->TabLayout_tabMode:I

    const/4 v1, 0x1

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/TabLayout;->mode:I

    .line 499
    sget v0, Landroid/support/design/R$styleable;->TabLayout_tabGravity:I

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/TabLayout;->tabGravity:I

    .line 500
    sget v0, Landroid/support/design/R$styleable;->TabLayout_tabInlineLabel:I

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/design/widget/TabLayout;->inlineLabel:Z

    .line 501
    sget v0, Landroid/support/design/R$styleable;->TabLayout_tabUnboundedRipple:I

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/design/widget/TabLayout;->unboundedRipple:Z

    .line 502
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 505
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 506
    .local v7, "res":Landroid/content/res/Resources;
    sget v0, Landroid/support/design/R$dimen;->design_tab_text_size_2line:I

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/support/design/widget/TabLayout;->tabTextMultiLineSize:F

    .line 507
    sget v0, Landroid/support/design/R$dimen;->design_tab_scrollable_min_width:I

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/TabLayout;->scrollableTabMinWidth:I

    .line 510
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->applyModeAndGravity()V

    .line 511
    return-void

    .line 463
    .end local v7    # "res":Landroid/content/res/Resources;
    :catchall_19b
    move-exception v0

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method static synthetic access$400(Landroid/support/design/widget/TabLayout;)Landroid/graphics/RectF;
    .registers 2
    .param p0, "x0"    # Landroid/support/design/widget/TabLayout;

    .prologue
    .line 167
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->tabViewContentBounds:Landroid/graphics/RectF;

    return-object v0
.end method

.method private addTabFromItemView(Landroid/support/design/widget/TabItem;)V
    .registers 4
    .param p1, "item"    # Landroid/support/design/widget/TabItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 628
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->newTab()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v0

    .line 629
    .local v0, "tab":Landroid/support/design/widget/TabLayout$Tab;
    iget-object v1, p1, Landroid/support/design/widget/TabItem;->text:Ljava/lang/CharSequence;

    if-eqz v1, :cond_d

    .line 630
    iget-object v1, p1, Landroid/support/design/widget/TabItem;->text:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$Tab;

    .line 632
    :cond_d
    iget-object v1, p1, Landroid/support/design/widget/TabItem;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_16

    .line 633
    iget-object v1, p1, Landroid/support/design/widget/TabItem;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$Tab;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/support/design/widget/TabLayout$Tab;

    .line 635
    :cond_16
    iget v1, p1, Landroid/support/design/widget/TabItem;->customLayout:I

    if-eqz v1, :cond_1f

    .line 636
    iget v1, p1, Landroid/support/design/widget/TabItem;->customLayout:I

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$Tab;->setCustomView(I)Landroid/support/design/widget/TabLayout$Tab;

    .line 638
    :cond_1f
    invoke-virtual {p1}, Landroid/support/design/widget/TabItem;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 639
    invoke-virtual {p1}, Landroid/support/design/widget/TabItem;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$Tab;->setContentDescription(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$Tab;

    .line 641
    :cond_30
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 642
    return-void
.end method

.method private addTabView(Landroid/support/design/widget/TabLayout$Tab;)V
    .registers 6
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;

    .prologue
    .line 1369
    iget-object v0, p1, Landroid/support/design/widget/TabLayout$Tab;->view:Landroid/support/design/widget/TabLayout$TabView;

    .line 1370
    .local v0, "tabView":Landroid/support/design/widget/TabLayout$TabView;
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->slidingTabIndicator:Landroid/support/design/widget/TabLayout$SlidingTabIndicator;

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v2

    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->createLayoutParamsForTabs()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1371
    return-void
.end method

.method private addViewInternal(Landroid/view/View;)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1394
    instance-of v0, p1, Landroid/support/design/widget/TabItem;

    if-eqz v0, :cond_a

    .line 1395
    check-cast p1, Landroid/support/design/widget/TabItem;

    .end local p1    # "child":Landroid/view/View;
    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->addTabFromItemView(Landroid/support/design/widget/TabItem;)V

    .line 1399
    return-void

    .line 1397
    .restart local p1    # "child":Landroid/view/View;
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only TabItem instances can be added to TabLayout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private animateToTab(I)V
    .registers 8
    .param p1, "newPosition"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 1510
    const/4 v2, -0x1

    if-ne p1, v2, :cond_6

    .line 1535
    :goto_5
    return-void

    .line 1514
    :cond_6
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 1515
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1a

    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->slidingTabIndicator:Landroid/support/design/widget/TabLayout$SlidingTabIndicator;

    .line 1516
    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->childrenNeedLayout()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 1519
    :cond_1a
    invoke-virtual {p0, p1, v3, v5}, Landroid/support/design/widget/TabLayout;->setScrollPosition(IFZ)V

    goto :goto_5

    .line 1523
    :cond_1e
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getScrollX()I

    move-result v0

    .line 1524
    .local v0, "startScrollX":I
    invoke-direct {p0, p1, v3}, Landroid/support/design/widget/TabLayout;->calculateScrollXForTab(IF)I

    move-result v1

    .line 1526
    .local v1, "targetScrollX":I
    if-eq v0, v1, :cond_3d

    .line 1527
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->ensureScrollAnimator()V

    .line 1529
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v0, v3, v4

    aput v1, v3, v5

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 1530
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 1534
    :cond_3d
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->slidingTabIndicator:Landroid/support/design/widget/TabLayout$SlidingTabIndicator;

    iget v3, p0, Landroid/support/design/widget/TabLayout;->tabIndicatorAnimationDuration:I

    invoke-virtual {v2, p1, v3}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->animateIndicatorToPosition(II)V

    goto :goto_5
.end method

.method private applyModeAndGravity()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1647
    const/4 v0, 0x0

    .line 1648
    .local v0, "paddingStart":I
    iget v1, p0, Landroid/support/design/widget/TabLayout;->mode:I

    if-nez v1, :cond_10

    .line 1650
    iget v1, p0, Landroid/support/design/widget/TabLayout;->contentInsetStart:I

    iget v2, p0, Landroid/support/design/widget/TabLayout;->tabPaddingStart:I

    sub-int/2addr v1, v2

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1652
    :cond_10
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->slidingTabIndicator:Landroid/support/design/widget/TabLayout$SlidingTabIndicator;

    invoke-static {v1, v0, v3, v3, v3}, Landroid/support/v4/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 1654
    iget v1, p0, Landroid/support/design/widget/TabLayout;->mode:I

    packed-switch v1, :pswitch_data_2e

    .line 1663
    :goto_1a
    invoke-virtual {p0, v4}, Landroid/support/design/widget/TabLayout;->updateTabViews(Z)V

    .line 1664
    return-void

    .line 1656
    :pswitch_1e
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->slidingTabIndicator:Landroid/support/design/widget/TabLayout$SlidingTabIndicator;

    invoke-virtual {v1, v4}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->setGravity(I)V

    goto :goto_1a

    .line 1659
    :pswitch_24
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->slidingTabIndicator:Landroid/support/design/widget/TabLayout$SlidingTabIndicator;

    const v2, 0x800003

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->setGravity(I)V

    goto :goto_1a

    .line 1654
    nop

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_24
        :pswitch_1e
    .end packed-switch
.end method

.method private calculateScrollXForTab(IF)I
    .registers 11
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F

    .prologue
    const/4 v1, 0x0

    .line 1625
    iget v6, p0, Landroid/support/design/widget/TabLayout;->mode:I

    if-nez v6, :cond_50

    .line 1626
    iget-object v6, p0, Landroid/support/design/widget/TabLayout;->slidingTabIndicator:Landroid/support/design/widget/TabLayout$SlidingTabIndicator;

    invoke-virtual {v6, p1}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1627
    .local v4, "selectedChild":Landroid/view/View;
    add-int/lit8 v6, p1, 0x1

    iget-object v7, p0, Landroid/support/design/widget/TabLayout;->slidingTabIndicator:Landroid/support/design/widget/TabLayout$SlidingTabIndicator;

    .line 1628
    invoke-virtual {v7}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->getChildCount()I

    move-result v7

    if-ge v6, v7, :cond_49

    iget-object v6, p0, Landroid/support/design/widget/TabLayout;->slidingTabIndicator:Landroid/support/design/widget/TabLayout$SlidingTabIndicator;

    add-int/lit8 v7, p1, 0x1

    .line 1629
    invoke-virtual {v6, v7}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1631
    .local v0, "nextChild":Landroid/view/View;
    :goto_1d
    if-eqz v4, :cond_4b

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 1632
    .local v5, "selectedWidth":I
    :goto_23
    if-eqz v0, :cond_29

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 1635
    .local v1, "nextWidth":I
    :cond_29
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v6

    div-int/lit8 v7, v5, 0x2

    add-int/2addr v6, v7

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int v2, v6, v7

    .line 1637
    .local v2, "scrollBase":I
    add-int v6, v5, v1

    int-to-float v6, v6

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v6, v7

    mul-float/2addr v6, p2

    float-to-int v3, v6

    .line 1639
    .local v3, "scrollOffset":I
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v6

    if-nez v6, :cond_4d

    add-int v6, v2, v3

    .line 1643
    .end local v0    # "nextChild":Landroid/view/View;
    .end local v1    # "nextWidth":I
    .end local v2    # "scrollBase":I
    .end local v3    # "scrollOffset":I
    .end local v4    # "selectedChild":Landroid/view/View;
    .end local v5    # "selectedWidth":I
    :goto_48
    return v6

    .line 1629
    .restart local v4    # "selectedChild":Landroid/view/View;
    :cond_49
    const/4 v0, 0x0

    goto :goto_1d

    .restart local v0    # "nextChild":Landroid/view/View;
    :cond_4b
    move v5, v1

    .line 1631
    goto :goto_23

    .line 1639
    .restart local v1    # "nextWidth":I
    .restart local v2    # "scrollBase":I
    .restart local v3    # "scrollOffset":I
    .restart local v5    # "selectedWidth":I
    :cond_4d
    sub-int v6, v2, v3

    goto :goto_48

    .end local v0    # "nextChild":Landroid/view/View;
    .end local v1    # "nextWidth":I
    .end local v2    # "scrollBase":I
    .end local v3    # "scrollOffset":I
    .end local v4    # "selectedChild":Landroid/view/View;
    .end local v5    # "selectedWidth":I
    :cond_50
    move v6, v1

    .line 1643
    goto :goto_48
.end method

.method private configureTab(Landroid/support/design/widget/TabLayout$Tab;I)V
    .registers 6
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;
    .param p2, "position"    # I

    .prologue
    .line 1359
    invoke-virtual {p1, p2}, Landroid/support/design/widget/TabLayout$Tab;->setPosition(I)V

    .line 1360
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v2, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1362
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1363
    .local v0, "count":I
    add-int/lit8 v1, p2, 0x1

    .local v1, "i":I
    :goto_10
    if-ge v1, v0, :cond_20

    .line 1364
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/TabLayout$Tab;

    invoke-virtual {v2, v1}, Landroid/support/design/widget/TabLayout$Tab;->setPosition(I)V

    .line 1363
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 1366
    :cond_20
    return-void
.end method

.method private static createColorStateList(II)Landroid/content/res/ColorStateList;
    .registers 6
    .param p0, "defaultColor"    # I
    .param p1, "selectedColor"    # I

    .prologue
    const/4 v3, 0x2

    .line 2704
    new-array v2, v3, [[I

    .line 2705
    .local v2, "states":[[I
    new-array v0, v3, [I

    .line 2706
    .local v0, "colors":[I
    const/4 v1, 0x0

    .line 2708
    .local v1, "i":I
    sget-object v3, Landroid/support/design/widget/TabLayout;->SELECTED_STATE_SET:[I

    aput-object v3, v2, v1

    .line 2709
    aput p1, v0, v1

    .line 2710
    add-int/lit8 v1, v1, 0x1

    .line 2713
    sget-object v3, Landroid/support/design/widget/TabLayout;->EMPTY_STATE_SET:[I

    aput-object v3, v2, v1

    .line 2714
    aput p0, v0, v1

    .line 2715
    add-int/lit8 v1, v1, 0x1

    .line 2717
    new-instance v3, Landroid/content/res/ColorStateList;

    invoke-direct {v3, v2, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v3
.end method

.method private createLayoutParamsForTabs()Landroid/widget/LinearLayout$LayoutParams;
    .registers 4

    .prologue
    .line 1402
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1404
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->updateTabViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 1405
    return-object v0
.end method

.method private createTabView(Landroid/support/design/widget/TabLayout$Tab;)Landroid/support/design/widget/TabLayout$TabView;
    .registers 4
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1343
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->tabViewPool:Landroid/support/v4/util/Pools$Pool;

    if-eqz v1, :cond_38

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->tabViewPool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v1}, Landroid/support/v4/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/TabLayout$TabView;

    move-object v0, v1

    .line 1344
    .local v0, "tabView":Landroid/support/design/widget/TabLayout$TabView;
    :goto_d
    if-nez v0, :cond_18

    .line 1345
    new-instance v0, Landroid/support/design/widget/TabLayout$TabView;

    .end local v0    # "tabView":Landroid/support/design/widget/TabLayout$TabView;
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/support/design/widget/TabLayout$TabView;-><init>(Landroid/support/design/widget/TabLayout;Landroid/content/Context;)V

    .line 1347
    .restart local v0    # "tabView":Landroid/support/design/widget/TabLayout$TabView;
    :cond_18
    invoke-virtual {v0, p1}, Landroid/support/design/widget/TabLayout$TabView;->setTab(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 1348
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$TabView;->setFocusable(Z)V

    .line 1349
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->getTabMinWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$TabView;->setMinimumWidth(I)V

    .line 1350
    invoke-static {p1}, Landroid/support/design/widget/TabLayout$Tab;->access$100(Landroid/support/design/widget/TabLayout$Tab;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 1351
    invoke-static {p1}, Landroid/support/design/widget/TabLayout$Tab;->access$200(Landroid/support/design/widget/TabLayout$Tab;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$TabView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1355
    :goto_37
    return-object v0

    .line 1343
    .end local v0    # "tabView":Landroid/support/design/widget/TabLayout$TabView;
    :cond_38
    const/4 v0, 0x0

    goto :goto_d

    .line 1353
    .restart local v0    # "tabView":Landroid/support/design/widget/TabLayout$TabView;
    :cond_3a
    invoke-static {p1}, Landroid/support/design/widget/TabLayout$Tab;->access$100(Landroid/support/design/widget/TabLayout$Tab;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$TabView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_37
.end method

.method private dispatchTabReselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .registers 4
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1619
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 1620
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/TabLayout$BaseOnTabSelectedListener;

    invoke-interface {v1, p1}, Landroid/support/design/widget/TabLayout$BaseOnTabSelectedListener;->onTabReselected(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 1619
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1622
    :cond_18
    return-void
.end method

.method private dispatchTabSelected(Landroid/support/design/widget/TabLayout$Tab;)V
    .registers 4
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1607
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 1608
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/TabLayout$BaseOnTabSelectedListener;

    invoke-interface {v1, p1}, Landroid/support/design/widget/TabLayout$BaseOnTabSelectedListener;->onTabSelected(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 1607
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1610
    :cond_18
    return-void
.end method

.method private dispatchTabUnselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .registers 4
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1613
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 1614
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/TabLayout$BaseOnTabSelectedListener;

    invoke-interface {v1, p1}, Landroid/support/design/widget/TabLayout$BaseOnTabSelectedListener;->onTabUnselected(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 1613
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1616
    :cond_18
    return-void
.end method

.method private ensureScrollAnimator()V
    .registers 5

    .prologue
    .line 1538
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_24

    .line 1539
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    .line 1540
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Landroid/support/design/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1541
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Landroid/support/design/widget/TabLayout;->tabIndicatorAnimationDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1542
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/support/design/widget/TabLayout$1;

    invoke-direct {v1, p0}, Landroid/support/design/widget/TabLayout$1;-><init>(Landroid/support/design/widget/TabLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1550
    :cond_24
    return-void
.end method

.method private getDefaultHeight()I
    .registers 6
    .annotation build Landroid/support/annotation/Dimension;
        unit = 0x0
    .end annotation

    .prologue
    .line 2722
    const/4 v1, 0x0

    .line 2723
    .local v1, "hasIconAndText":Z
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v4, p0, Landroid/support/design/widget/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "count":I
    :goto_8
    if-ge v2, v0, :cond_25

    .line 2724
    iget-object v4, p0, Landroid/support/design/widget/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/design/widget/TabLayout$Tab;

    .line 2725
    .local v3, "tab":Landroid/support/design/widget/TabLayout$Tab;
    if-eqz v3, :cond_2e

    invoke-virtual {v3}, Landroid/support/design/widget/TabLayout$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_2e

    invoke-virtual {v3}, Landroid/support/design/widget/TabLayout$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2e

    .line 2726
    const/4 v1, 0x1

    .line 2730
    .end local v3    # "tab":Landroid/support/design/widget/TabLayout$Tab;
    :cond_25
    if-eqz v1, :cond_31

    iget-boolean v4, p0, Landroid/support/design/widget/TabLayout;->inlineLabel:Z

    if-nez v4, :cond_31

    const/16 v4, 0x48

    :goto_2d
    return v4

    .line 2723
    .restart local v3    # "tab":Landroid/support/design/widget/TabLayout$Tab;
    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 2730
    .end local v3    # "tab":Landroid/support/design/widget/TabLayout$Tab;
    :cond_31
    const/16 v4, 0x30

    goto :goto_2d
.end method

.method private getTabMinWidth()I
    .registers 3

    .prologue
    .line 2734
    iget v0, p0, Landroid/support/design/widget/TabLayout;->requestedTabMinWidth:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 2736
    iget v0, p0, Landroid/support/design/widget/TabLayout;->requestedTabMinWidth:I

    .line 2739
    :goto_7
    return v0

    :cond_8
    iget v0, p0, Landroid/support/design/widget/TabLayout;->mode:I

    if-nez v0, :cond_f

    iget v0, p0, Landroid/support/design/widget/TabLayout;->scrollableTabMinWidth:I

    goto :goto_7

    :cond_f
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private getTabScrollRange()I
    .registers 4

    .prologue
    .line 1293
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->slidingTabIndicator:Landroid/support/design/widget/TabLayout$SlidingTabIndicator;

    .line 1294
    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1293
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private removeTabViewAt(I)V
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 1500
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->slidingTabIndicator:Landroid/support/design/widget/TabLayout$SlidingTabIndicator;

    invoke-virtual {v1, p1}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$TabView;

    .line 1501
    .local v0, "view":Landroid/support/design/widget/TabLayout$TabView;
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->slidingTabIndicator:Landroid/support/design/widget/TabLayout$SlidingTabIndicator;

    invoke-virtual {v1, p1}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->removeViewAt(I)V

    .line 1502
    if-eqz v0, :cond_17

    .line 1503
    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$TabView;->reset()V

    .line 1504
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->tabViewPool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v1, v0}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 1506
    :cond_17
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->requestLayout()V

    .line 1507
    return-void
.end method

.method private setSelectedTabView(I)V
    .registers 8
    .param p1, "position"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1558
    iget-object v3, p0, Landroid/support/design/widget/TabLayout;->slidingTabIndicator:Landroid/support/design/widget/TabLayout$SlidingTabIndicator;

    invoke-virtual {v3}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->getChildCount()I

    move-result v2

    .line 1559
    .local v2, "tabCount":I
    if-ge p1, v2, :cond_26

    .line 1560
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, v2, :cond_26

    .line 1561
    iget-object v3, p0, Landroid/support/design/widget/TabLayout;->slidingTabIndicator:Landroid/support/design/widget/TabLayout$SlidingTabIndicator;

    invoke-virtual {v3, v1}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1562
    .local v0, "child":Landroid/view/View;
    if-ne v1, p1, :cond_22

    move v3, v4

    :goto_16
    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    .line 1563
    if-ne v1, p1, :cond_24

    move v3, v4

    :goto_1c
    invoke-virtual {v0, v3}, Landroid/view/View;->setActivated(Z)V

    .line 1560
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_22
    move v3, v5

    .line 1562
    goto :goto_16

    :cond_24
    move v3, v5

    .line 1563
    goto :goto_1c

    .line 1566
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "i":I
    :cond_26
    return-void
.end method

.method private setupWithViewPager(Landroid/support/v4/view/ViewPager;ZZ)V
    .registers 8
    .param p1, "viewPager"    # Landroid/support/v4/view/ViewPager;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "autoRefresh"    # Z
    .param p3, "implicitSetup"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1193
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->viewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v1, :cond_1b

    .line 1195
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->pageChangeListener:Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;

    if-eqz v1, :cond_10

    .line 1196
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->viewPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->pageChangeListener:Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->removeOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 1198
    :cond_10
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->adapterChangeListener:Landroid/support/design/widget/TabLayout$AdapterChangeListener;

    if-eqz v1, :cond_1b

    .line 1199
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->viewPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->adapterChangeListener:Landroid/support/design/widget/TabLayout$AdapterChangeListener;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->removeOnAdapterChangeListener(Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;)V

    .line 1203
    :cond_1b
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->currentVpSelectedListener:Landroid/support/design/widget/TabLayout$BaseOnTabSelectedListener;

    if-eqz v1, :cond_26

    .line 1205
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->currentVpSelectedListener:Landroid/support/design/widget/TabLayout$BaseOnTabSelectedListener;

    invoke-virtual {p0, v1}, Landroid/support/design/widget/TabLayout;->removeOnTabSelectedListener(Landroid/support/design/widget/TabLayout$BaseOnTabSelectedListener;)V

    .line 1206
    iput-object v3, p0, Landroid/support/design/widget/TabLayout;->currentVpSelectedListener:Landroid/support/design/widget/TabLayout$BaseOnTabSelectedListener;

    .line 1209
    :cond_26
    if-eqz p1, :cond_75

    .line 1210
    iput-object p1, p0, Landroid/support/design/widget/TabLayout;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 1213
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->pageChangeListener:Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;

    if-nez v1, :cond_35

    .line 1214
    new-instance v1, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;

    invoke-direct {v1, p0}, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;-><init>(Landroid/support/design/widget/TabLayout;)V

    iput-object v1, p0, Landroid/support/design/widget/TabLayout;->pageChangeListener:Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;

    .line 1216
    :cond_35
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->pageChangeListener:Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;->reset()V

    .line 1217
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->pageChangeListener:Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;

    invoke-virtual {p1, v1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 1220
    new-instance v1, Landroid/support/design/widget/TabLayout$ViewPagerOnTabSelectedListener;

    invoke-direct {v1, p1}, Landroid/support/design/widget/TabLayout$ViewPagerOnTabSelectedListener;-><init>(Landroid/support/v4/view/ViewPager;)V

    iput-object v1, p0, Landroid/support/design/widget/TabLayout;->currentVpSelectedListener:Landroid/support/design/widget/TabLayout$BaseOnTabSelectedListener;

    .line 1221
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->currentVpSelectedListener:Landroid/support/design/widget/TabLayout$BaseOnTabSelectedListener;

    invoke-virtual {p0, v1}, Landroid/support/design/widget/TabLayout;->addOnTabSelectedListener(Landroid/support/design/widget/TabLayout$BaseOnTabSelectedListener;)V

    .line 1223
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    .line 1224
    .local v0, "adapter":Landroid/support/v4/view/PagerAdapter;
    if-eqz v0, :cond_54

    .line 1227
    invoke-virtual {p0, v0, p2}, Landroid/support/design/widget/TabLayout;->setPagerAdapter(Landroid/support/v4/view/PagerAdapter;Z)V

    .line 1231
    :cond_54
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->adapterChangeListener:Landroid/support/design/widget/TabLayout$AdapterChangeListener;

    if-nez v1, :cond_5f

    .line 1232
    new-instance v1, Landroid/support/design/widget/TabLayout$AdapterChangeListener;

    invoke-direct {v1, p0}, Landroid/support/design/widget/TabLayout$AdapterChangeListener;-><init>(Landroid/support/design/widget/TabLayout;)V

    iput-object v1, p0, Landroid/support/design/widget/TabLayout;->adapterChangeListener:Landroid/support/design/widget/TabLayout$AdapterChangeListener;

    .line 1234
    :cond_5f
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->adapterChangeListener:Landroid/support/design/widget/TabLayout$AdapterChangeListener;

    invoke-virtual {v1, p2}, Landroid/support/design/widget/TabLayout$AdapterChangeListener;->setAutoRefresh(Z)V

    .line 1235
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->adapterChangeListener:Landroid/support/design/widget/TabLayout$AdapterChangeListener;

    invoke-virtual {p1, v1}, Landroid/support/v4/view/ViewPager;->addOnAdapterChangeListener(Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;)V

    .line 1238
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Landroid/support/design/widget/TabLayout;->setScrollPosition(IFZ)V

    .line 1246
    .end local v0    # "adapter":Landroid/support/v4/view/PagerAdapter;
    :goto_72
    iput-boolean p3, p0, Landroid/support/design/widget/TabLayout;->setupViewPagerImplicitly:Z

    .line 1247
    return-void

    .line 1242
    :cond_75
    iput-object v3, p0, Landroid/support/design/widget/TabLayout;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 1243
    const/4 v1, 0x0

    invoke-virtual {p0, v3, v1}, Landroid/support/design/widget/TabLayout;->setPagerAdapter(Landroid/support/v4/view/PagerAdapter;Z)V

    goto :goto_72
.end method

.method private updateAllTabs()V
    .registers 4

    .prologue
    .line 1337
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "z":I
    :goto_7
    if-ge v0, v1, :cond_17

    .line 1338
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/TabLayout$Tab;

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout$Tab;->updateView()V

    .line 1337
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1340
    :cond_17
    return-void
.end method

.method private updateTabViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V
    .registers 4
    .param p1, "lp"    # Landroid/widget/LinearLayout$LayoutParams;

    .prologue
    .line 1409
    iget v0, p0, Landroid/support/design/widget/TabLayout;->mode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    iget v0, p0, Landroid/support/design/widget/TabLayout;->tabGravity:I

    if-nez v0, :cond_11

    .line 1410
    const/4 v0, 0x0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1411
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1416
    :goto_10
    return-void

    .line 1413
    :cond_11
    const/4 v0, -0x2

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1414
    const/4 v0, 0x0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_10
.end method


# virtual methods
.method public addOnTabSelectedListener(Landroid/support/design/widget/TabLayout$BaseOnTabSelectedListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/support/design/widget/TabLayout$BaseOnTabSelectedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 672
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 673
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 675
    :cond_d
    return-void
.end method

.method public addTab(Landroid/support/design/widget/TabLayout$Tab;)V
    .registers 3
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 584
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;Z)V

    .line 585
    return-void
.end method

.method public addTab(Landroid/support/design/widget/TabLayout$Tab;I)V
    .registers 4
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "position"    # I

    .prologue
    .line 595
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;IZ)V

    .line 596
    return-void
.end method

.method public addTab(Landroid/support/design/widget/TabLayout$Tab;IZ)V
    .registers 6
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "position"    # I
    .param p3, "setSelected"    # Z

    .prologue
    .line 616
    iget-object v0, p1, Landroid/support/design/widget/TabLayout$Tab;->parent:Landroid/support/design/widget/TabLayout;

    if-eq v0, p0, :cond_c

    .line 617
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tab belongs to a different TabLayout."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 619
    :cond_c
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/TabLayout;->configureTab(Landroid/support/design/widget/TabLayout$Tab;I)V

    .line 620
    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->addTabView(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 622
    if-eqz p3, :cond_17

    .line 623
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->select()V

    .line 625
    :cond_17
    return-void
.end method

.method public addTab(Landroid/support/design/widget/TabLayout$Tab;Z)V
    .registers 4
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "setSelected"    # Z

    .prologue
    .line 605
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;IZ)V

    .line 606
    return-void
.end method

.method public addView(Landroid/view/View;)V
    .registers 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1375
    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->addViewInternal(Landroid/view/View;)V

    .line 1376
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .registers 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 1380
    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->addViewInternal(Landroid/view/View;)V

    .line 1381
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1390
    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->addViewInternal(Landroid/view/View;)V

    .line 1391
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1385
    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->addViewInternal(Landroid/view/View;)V

    .line 1386
    return-void
.end method

.method public clearOnTabSelectedListeners()V
    .registers 2

    .prologue
    .line 689
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 690
    return-void
.end method

.method protected createTabFromPool()Landroid/support/design/widget/TabLayout$Tab;
    .registers 3

    .prologue
    .line 709
    sget-object v1, Landroid/support/design/widget/TabLayout;->tabPool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v1}, Landroid/support/v4/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$Tab;

    .line 710
    .local v0, "tab":Landroid/support/design/widget/TabLayout$Tab;
    if-nez v0, :cond_f

    .line 711
    new-instance v0, Landroid/support/design/widget/TabLayout$Tab;

    .end local v0    # "tab":Landroid/support/design/widget/TabLayout$Tab;
    invoke-direct {v0}, Landroid/support/design/widget/TabLayout$Tab;-><init>()V

    .line 713
    .restart local v0    # "tab":Landroid/support/design/widget/TabLayout$Tab;
    :cond_f
    return-object v0
.end method

.method dpToPx(I)I
    .registers 4
    .param p1, "dps"    # I
        .annotation build Landroid/support/annotation/Dimension;
            unit = 0x0
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Dimension;
        unit = 0x1
    .end annotation

    .prologue
    .line 1420
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .prologue
    .line 166
    invoke-virtual {p0, p1}, Landroid/support/design/widget/TabLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .registers 3
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 2748
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedTabPosition()I
    .registers 2

    .prologue
    .line 742
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->selectedTab:Landroid/support/design/widget/TabLayout$Tab;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->selectedTab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, -0x1

    goto :goto_a
.end method

.method public getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;
    .registers 3
    .param p1, "index"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 733
    if-ltz p1, :cond_8

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getTabCount()I

    move-result v0

    if-lt p1, v0, :cond_a

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$Tab;

    goto :goto_9
.end method

.method public getTabCount()I
    .registers 2

    .prologue
    .line 727
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getTabGravity()I
    .registers 2

    .prologue
    .line 854
    iget v0, p0, Landroid/support/design/widget/TabLayout;->tabGravity:I

    return v0
.end method

.method public getTabIconTint()Landroid/content/res/ColorStateList;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1062
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->tabIconTint:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTabIndicatorGravity()I
    .registers 2

    .prologue
    .line 887
    iget v0, p0, Landroid/support/design/widget/TabLayout;->tabIndicatorGravity:I

    return v0
.end method

.method getTabMaxWidth()I
    .registers 2

    .prologue
    .line 2752
    iget v0, p0, Landroid/support/design/widget/TabLayout;->tabMaxWidth:I

    return v0
.end method

.method public getTabMode()I
    .registers 2

    .prologue
    .line 831
    iget v0, p0, Landroid/support/design/widget/TabLayout;->mode:I

    return v0
.end method

.method public getTabRippleColor()Landroid/content/res/ColorStateList;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1073
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->tabRippleColorStateList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTabSelectedIndicator()Landroid/graphics/drawable/Drawable;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1120
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTabTextColors()Landroid/content/res/ColorStateList;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1024
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public hasUnboundedRipple()Z
    .registers 2

    .prologue
    .line 1006
    iget-boolean v0, p0, Landroid/support/design/widget/TabLayout;->unboundedRipple:Z

    return v0
.end method

.method public isInlineLabel()Z
    .registers 2

    .prologue
    .line 962
    iget-boolean v0, p0, Landroid/support/design/widget/TabLayout;->inlineLabel:Z

    return v0
.end method

.method public isTabIndicatorFullWidth()Z
    .registers 2

    .prologue
    .line 919
    iget-boolean v0, p0, Landroid/support/design/widget/TabLayout;->tabIndicatorFullWidth:Z

    return v0
.end method

.method public newTab()Landroid/support/design/widget/TabLayout$Tab;
    .registers 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 701
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->createTabFromPool()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v0

    .line 702
    .local v0, "tab":Landroid/support/design/widget/TabLayout$Tab;
    iput-object p0, v0, Landroid/support/design/widget/TabLayout$Tab;->parent:Landroid/support/design/widget/TabLayout;

    .line 703
    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->createTabView(Landroid/support/design/widget/TabLayout$Tab;)Landroid/support/design/widget/TabLayout$TabView;

    move-result-object v1

    iput-object v1, v0, Landroid/support/design/widget/TabLayout$Tab;->view:Landroid/support/design/widget/TabLayout$TabView;

    .line 704
    return-object v0
.end method

.method protected onAttachedToWindow()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 1267
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 1269
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->viewPager:Landroid/support/v4/view/ViewPager;

    if-nez v1, :cond_15

    .line 1272
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1273
    .local v0, "vp":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/support/v4/view/ViewPager;

    if-eqz v1, :cond_15

    .line 1276
    check-cast v0, Landroid/support/v4/view/ViewPager;

    .end local v0    # "vp":Landroid/view/ViewParent;
    invoke-direct {p0, v0, v2, v2}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;ZZ)V

    .line 1279
    :cond_15
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 1283
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 1285
    iget-boolean v0, p0, Landroid/support/design/widget/TabLayout;->setupViewPagerImplicitly:Z

    if-eqz v0, :cond_e

    .line 1287
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 1288
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/widget/TabLayout;->setupViewPagerImplicitly:Z

    .line 1290
    :cond_e
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1426
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->slidingTabIndicator:Landroid/support/design/widget/TabLayout$SlidingTabIndicator;

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1b

    .line 1427
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->slidingTabIndicator:Landroid/support/design/widget/TabLayout$SlidingTabIndicator;

    invoke-virtual {v2, v0}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1428
    .local v1, "tabView":Landroid/view/View;
    instance-of v2, v1, Landroid/support/design/widget/TabLayout$TabView;

    if-eqz v2, :cond_18

    .line 1429
    check-cast v1, Landroid/support/design/widget/TabLayout$TabView;

    .end local v1    # "tabView":Landroid/view/View;
    invoke-static {v1, p1}, Landroid/support/design/widget/TabLayout$TabView;->access$300(Landroid/support/design/widget/TabLayout$TabView;Landroid/graphics/Canvas;)V

    .line 1426
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1433
    :cond_1b
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1434
    return-void
.end method

.method protected onMeasure(II)V
    .registers 14
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1440
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->getDefaultHeight()I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/support/design/widget/TabLayout;->dpToPx(I)I

    move-result v6

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getPaddingTop()I

    move-result v9

    add-int/2addr v6, v9

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getPaddingBottom()I

    move-result v9

    add-int v3, v6, v9

    .line 1441
    .local v3, "idealHeight":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    sparse-switch v6, :sswitch_data_9c

    .line 1454
    :goto_1e
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 1455
    .local v5, "specWidth":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    if-eqz v6, :cond_30

    .line 1458
    iget v6, p0, Landroid/support/design/widget/TabLayout;->requestedTabMaxWidth:I

    if-lez v6, :cond_76

    iget v6, p0, Landroid/support/design/widget/TabLayout;->requestedTabMaxWidth:I

    .line 1461
    :goto_2e
    iput v6, p0, Landroid/support/design/widget/TabLayout;->tabMaxWidth:I

    .line 1465
    :cond_30
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 1467
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getChildCount()I

    move-result v6

    if-ne v6, v7, :cond_63

    .line 1470
    invoke-virtual {p0, v8}, Landroid/support/design/widget/TabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1471
    .local v0, "child":Landroid/view/View;
    const/4 v4, 0x0

    .line 1473
    .local v4, "remeasure":Z
    iget v6, p0, Landroid/support/design/widget/TabLayout;->mode:I

    packed-switch v6, :pswitch_data_a6

    .line 1485
    :goto_43
    if-eqz v4, :cond_63

    .line 1490
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getPaddingTop()I

    move-result v6

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getPaddingBottom()I

    move-result v7

    add-int/2addr v6, v7

    .line 1491
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1488
    invoke-static {p2, v6, v7}, Landroid/support/design/widget/TabLayout;->getChildMeasureSpec(III)I

    move-result v1

    .line 1493
    .local v1, "childHeightMeasureSpec":I
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getMeasuredWidth()I

    move-result v6

    invoke-static {v6, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1494
    .local v2, "childWidthMeasureSpec":I
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    .line 1497
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childHeightMeasureSpec":I
    .end local v2    # "childWidthMeasureSpec":I
    .end local v4    # "remeasure":Z
    :cond_63
    return-void

    .line 1445
    .end local v5    # "specWidth":I
    :sswitch_64
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1444
    invoke-static {v6, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 1446
    goto :goto_1e

    .line 1448
    :sswitch_71
    invoke-static {v3, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 1449
    goto :goto_1e

    .line 1458
    .restart local v5    # "specWidth":I
    :cond_76
    const/16 v6, 0x38

    .line 1461
    invoke-virtual {p0, v6}, Landroid/support/design/widget/TabLayout;->dpToPx(I)I

    move-result v6

    sub-int v6, v5, v6

    goto :goto_2e

    .line 1477
    .restart local v0    # "child":Landroid/view/View;
    .restart local v4    # "remeasure":Z
    :pswitch_7f
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getMeasuredWidth()I

    move-result v9

    if-ge v6, v9, :cond_8b

    move v4, v7

    .line 1478
    :goto_8a
    goto :goto_43

    :cond_8b
    move v4, v8

    .line 1477
    goto :goto_8a

    .line 1481
    :pswitch_8d
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getMeasuredWidth()I

    move-result v9

    if-eq v6, v9, :cond_99

    move v4, v7

    :goto_98
    goto :goto_43

    :cond_99
    move v4, v8

    goto :goto_98

    .line 1441
    nop

    :sswitch_data_9c
    .sparse-switch
        -0x80000000 -> :sswitch_64
        0x0 -> :sswitch_71
    .end sparse-switch

    .line 1473
    :pswitch_data_a6
    .packed-switch 0x0
        :pswitch_7f
        :pswitch_8d
    .end packed-switch
.end method

.method populateFromPagerAdapter()V
    .registers 6

    .prologue
    .line 1318
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->removeAllTabs()V

    .line 1320
    iget-object v3, p0, Landroid/support/design/widget/TabLayout;->pagerAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v3, :cond_44

    .line 1321
    iget-object v3, p0, Landroid/support/design/widget/TabLayout;->pagerAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v3}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    .line 1322
    .local v0, "adapterCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    if-ge v2, v0, :cond_25

    .line 1323
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->newTab()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v3

    iget-object v4, p0, Landroid/support/design/widget/TabLayout;->pagerAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v4, v2}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/design/widget/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;Z)V

    .line 1322
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 1327
    :cond_25
    iget-object v3, p0, Landroid/support/design/widget/TabLayout;->viewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v3, :cond_44

    if-lez v0, :cond_44

    .line 1328
    iget-object v3, p0, Landroid/support/design/widget/TabLayout;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    .line 1329
    .local v1, "curItem":I
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getSelectedTabPosition()I

    move-result v3

    if-eq v1, v3, :cond_44

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getTabCount()I

    move-result v3

    if-ge v1, v3, :cond_44

    .line 1330
    invoke-virtual {p0, v1}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/support/design/widget/TabLayout;->selectTab(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 1334
    .end local v0    # "adapterCount":I
    .end local v1    # "curItem":I
    .end local v2    # "i":I
    :cond_44
    return-void
.end method

.method protected releaseFromTabPool(Landroid/support/design/widget/TabLayout$Tab;)Z
    .registers 3
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;

    .prologue
    .line 718
    sget-object v0, Landroid/support/design/widget/TabLayout;->tabPool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0, p1}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeAllTabs()V
    .registers 5

    .prologue
    .line 788
    iget-object v3, p0, Landroid/support/design/widget/TabLayout;->slidingTabIndicator:Landroid/support/design/widget/TabLayout$SlidingTabIndicator;

    invoke-virtual {v3}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->getChildCount()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_10

    .line 789
    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->removeTabViewAt(I)V

    .line 788
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 792
    :cond_10
    iget-object v3, p0, Landroid/support/design/widget/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/support/design/widget/TabLayout$Tab;>;"
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 793
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/TabLayout$Tab;

    .line 794
    .local v2, "tab":Landroid/support/design/widget/TabLayout$Tab;
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 795
    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout$Tab;->reset()V

    .line 796
    invoke-virtual {p0, v2}, Landroid/support/design/widget/TabLayout;->releaseFromTabPool(Landroid/support/design/widget/TabLayout$Tab;)Z

    goto :goto_16

    .line 799
    .end local v2    # "tab":Landroid/support/design/widget/TabLayout$Tab;
    :cond_2c
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/support/design/widget/TabLayout;->selectedTab:Landroid/support/design/widget/TabLayout$Tab;

    .line 800
    return-void
.end method

.method public removeOnTabSelectedListener(Landroid/support/design/widget/TabLayout$BaseOnTabSelectedListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/support/design/widget/TabLayout$BaseOnTabSelectedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 684
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 685
    return-void
.end method

.method public removeTab(Landroid/support/design/widget/TabLayout$Tab;)V
    .registers 4
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;

    .prologue
    .line 752
    iget-object v0, p1, Landroid/support/design/widget/TabLayout$Tab;->parent:Landroid/support/design/widget/TabLayout;

    if-eq v0, p0, :cond_c

    .line 753
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tab does not belong to this TabLayout."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 756
    :cond_c
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->removeTabAt(I)V

    .line 757
    return-void
.end method

.method public removeTabAt(I)V
    .registers 9
    .param p1, "position"    # I

    .prologue
    const/4 v5, 0x0

    .line 766
    iget-object v4, p0, Landroid/support/design/widget/TabLayout;->selectedTab:Landroid/support/design/widget/TabLayout$Tab;

    if-eqz v4, :cond_35

    iget-object v4, p0, Landroid/support/design/widget/TabLayout;->selectedTab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-virtual {v4}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v3

    .line 767
    .local v3, "selectedTabPosition":I
    :goto_b
    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->removeTabViewAt(I)V

    .line 769
    iget-object v4, p0, Landroid/support/design/widget/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/TabLayout$Tab;

    .line 770
    .local v2, "removedTab":Landroid/support/design/widget/TabLayout$Tab;
    if-eqz v2, :cond_1e

    .line 771
    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout$Tab;->reset()V

    .line 772
    invoke-virtual {p0, v2}, Landroid/support/design/widget/TabLayout;->releaseFromTabPool(Landroid/support/design/widget/TabLayout$Tab;)Z

    .line 775
    :cond_1e
    iget-object v4, p0, Landroid/support/design/widget/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 776
    .local v1, "newTabCount":I
    move v0, p1

    .local v0, "i":I
    :goto_25
    if-ge v0, v1, :cond_37

    .line 777
    iget-object v4, p0, Landroid/support/design/widget/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/design/widget/TabLayout$Tab;

    invoke-virtual {v4, v0}, Landroid/support/design/widget/TabLayout$Tab;->setPosition(I)V

    .line 776
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .end local v0    # "i":I
    .end local v1    # "newTabCount":I
    .end local v2    # "removedTab":Landroid/support/design/widget/TabLayout$Tab;
    .end local v3    # "selectedTabPosition":I
    :cond_35
    move v3, v5

    .line 766
    goto :goto_b

    .line 780
    .restart local v0    # "i":I
    .restart local v1    # "newTabCount":I
    .restart local v2    # "removedTab":Landroid/support/design/widget/TabLayout$Tab;
    .restart local v3    # "selectedTabPosition":I
    :cond_37
    if-ne v3, p1, :cond_45

    .line 781
    iget-object v4, p0, Landroid/support/design/widget/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_46

    const/4 v4, 0x0

    :goto_42
    invoke-virtual {p0, v4}, Landroid/support/design/widget/TabLayout;->selectTab(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 783
    :cond_45
    return-void

    .line 781
    :cond_46
    iget-object v4, p0, Landroid/support/design/widget/TabLayout;->tabs:Ljava/util/ArrayList;

    add-int/lit8 v6, p1, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/design/widget/TabLayout$Tab;

    goto :goto_42
.end method

.method selectTab(Landroid/support/design/widget/TabLayout$Tab;)V
    .registers 3
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;

    .prologue
    .line 1569
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/design/widget/TabLayout;->selectTab(Landroid/support/design/widget/TabLayout$Tab;Z)V

    .line 1570
    return-void
.end method

.method selectTab(Landroid/support/design/widget/TabLayout$Tab;Z)V
    .registers 8
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;
    .param p2, "updateIndicator"    # Z

    .prologue
    const/4 v2, -0x1

    .line 1573
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->selectedTab:Landroid/support/design/widget/TabLayout$Tab;

    .line 1575
    .local v0, "currentTab":Landroid/support/design/widget/TabLayout$Tab;
    if-ne v0, p1, :cond_12

    .line 1576
    if-eqz v0, :cond_11

    .line 1577
    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->dispatchTabReselected(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 1578
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/support/design/widget/TabLayout;->animateToTab(I)V

    .line 1604
    :cond_11
    :goto_11
    return-void

    .line 1581
    :cond_12
    if-eqz p1, :cond_3b

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v1

    .line 1582
    .local v1, "newPosition":I
    :goto_18
    if-eqz p2, :cond_2e

    .line 1583
    if-eqz v0, :cond_22

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v3

    if-ne v3, v2, :cond_3d

    :cond_22
    if-eq v1, v2, :cond_3d

    .line 1586
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0, v1, v3, v4}, Landroid/support/design/widget/TabLayout;->setScrollPosition(IFZ)V

    .line 1590
    :goto_29
    if-eq v1, v2, :cond_2e

    .line 1591
    invoke-direct {p0, v1}, Landroid/support/design/widget/TabLayout;->setSelectedTabView(I)V

    .line 1596
    :cond_2e
    iput-object p1, p0, Landroid/support/design/widget/TabLayout;->selectedTab:Landroid/support/design/widget/TabLayout$Tab;

    .line 1597
    if-eqz v0, :cond_35

    .line 1598
    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->dispatchTabUnselected(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 1600
    :cond_35
    if-eqz p1, :cond_11

    .line 1601
    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->dispatchTabSelected(Landroid/support/design/widget/TabLayout$Tab;)V

    goto :goto_11

    .end local v1    # "newPosition":I
    :cond_3b
    move v1, v2

    .line 1581
    goto :goto_18

    .line 1588
    .restart local v1    # "newPosition":I
    :cond_3d
    invoke-direct {p0, v1}, Landroid/support/design/widget/TabLayout;->animateToTab(I)V

    goto :goto_29
.end method

.method public setInlineLabel(Z)V
    .registers 5
    .param p1, "inline"    # Z

    .prologue
    .line 930
    iget-boolean v2, p0, Landroid/support/design/widget/TabLayout;->inlineLabel:Z

    if-eq v2, p1, :cond_24

    .line 931
    iput-boolean p1, p0, Landroid/support/design/widget/TabLayout;->inlineLabel:Z

    .line 932
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->slidingTabIndicator:Landroid/support/design/widget/TabLayout$SlidingTabIndicator;

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_21

    .line 933
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->slidingTabIndicator:Landroid/support/design/widget/TabLayout$SlidingTabIndicator;

    invoke-virtual {v2, v1}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 934
    .local v0, "child":Landroid/view/View;
    instance-of v2, v0, Landroid/support/design/widget/TabLayout$TabView;

    if-eqz v2, :cond_1e

    .line 935
    check-cast v0, Landroid/support/design/widget/TabLayout$TabView;

    .end local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$TabView;->updateOrientation()V

    .line 932
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 938
    :cond_21
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->applyModeAndGravity()V

    .line 940
    .end local v1    # "i":I
    :cond_24
    return-void
.end method

.method public setInlineLabelResource(I)V
    .registers 3
    .param p1, "inlineResourceId"    # I
        .annotation build Landroid/support/annotation/BoolRes;
        .end annotation
    .end param

    .prologue
    .line 951
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->setInlineLabel(Z)V

    .line 952
    return-void
.end method

.method public setOnTabSelectedListener(Landroid/support/design/widget/TabLayout$BaseOnTabSelectedListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/support/design/widget/TabLayout$BaseOnTabSelectedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 652
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->selectedListener:Landroid/support/design/widget/TabLayout$BaseOnTabSelectedListener;

    if-eqz v0, :cond_9

    .line 653
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->selectedListener:Landroid/support/design/widget/TabLayout$BaseOnTabSelectedListener;

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->removeOnTabSelectedListener(Landroid/support/design/widget/TabLayout$BaseOnTabSelectedListener;)V

    .line 657
    :cond_9
    iput-object p1, p0, Landroid/support/design/widget/TabLayout;->selectedListener:Landroid/support/design/widget/TabLayout$BaseOnTabSelectedListener;

    .line 658
    if-eqz p1, :cond_10

    .line 659
    invoke-virtual {p0, p1}, Landroid/support/design/widget/TabLayout;->addOnTabSelectedListener(Landroid/support/design/widget/TabLayout$BaseOnTabSelectedListener;)V

    .line 661
    :cond_10
    return-void
.end method

.method setPagerAdapter(Landroid/support/v4/view/PagerAdapter;Z)V
    .registers 5
    .param p1, "adapter"    # Landroid/support/v4/view/PagerAdapter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "addObserver"    # Z

    .prologue
    .line 1298
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->pagerAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->pagerAdapterObserver:Landroid/database/DataSetObserver;

    if-eqz v0, :cond_f

    .line 1300
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->pagerAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->pagerAdapterObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 1303
    :cond_f
    iput-object p1, p0, Landroid/support/design/widget/TabLayout;->pagerAdapter:Landroid/support/v4/view/PagerAdapter;

    .line 1305
    if-eqz p2, :cond_25

    if-eqz p1, :cond_25

    .line 1307
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->pagerAdapterObserver:Landroid/database/DataSetObserver;

    if-nez v0, :cond_20

    .line 1308
    new-instance v0, Landroid/support/design/widget/TabLayout$PagerAdapterObserver;

    invoke-direct {v0, p0}, Landroid/support/design/widget/TabLayout$PagerAdapterObserver;-><init>(Landroid/support/design/widget/TabLayout;)V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->pagerAdapterObserver:Landroid/database/DataSetObserver;

    .line 1310
    :cond_20
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->pagerAdapterObserver:Landroid/database/DataSetObserver;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 1314
    :cond_25
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->populateFromPagerAdapter()V

    .line 1315
    return-void
.end method

.method setScrollAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 1553
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->ensureScrollAnimator()V

    .line 1554
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1555
    return-void
.end method

.method public setScrollPosition(IFZ)V
    .registers 5
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "updateSelectedText"    # Z

    .prologue
    .line 547
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/design/widget/TabLayout;->setScrollPosition(IFZZ)V

    .line 548
    return-void
.end method

.method setScrollPosition(IFZZ)V
    .registers 8
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "updateSelectedText"    # Z
    .param p4, "updateIndicatorPosition"    # Z

    .prologue
    .line 555
    int-to-float v1, p1

    add-float/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 556
    .local v0, "roundedPosition":I
    if-ltz v0, :cond_10

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->slidingTabIndicator:Landroid/support/design/widget/TabLayout$SlidingTabIndicator;

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_11

    .line 575
    :cond_10
    :goto_10
    return-void

    .line 561
    :cond_11
    if-eqz p4, :cond_18

    .line 562
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->slidingTabIndicator:Landroid/support/design/widget/TabLayout$SlidingTabIndicator;

    invoke-virtual {v1, p1, p2}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->setIndicatorPositionFromTabPosition(IF)V

    .line 566
    :cond_18
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_29

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 567
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 569
    :cond_29
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/TabLayout;->calculateScrollXForTab(IF)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/support/design/widget/TabLayout;->scrollTo(II)V

    .line 572
    if-eqz p3, :cond_10

    .line 573
    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->setSelectedTabView(I)V

    goto :goto_10
.end method

.method public setSelectedTabIndicator(I)V
    .registers 3
    .param p1, "tabSelectedIndicatorResourceId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 1151
    if-eqz p1, :cond_e

    .line 1153
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1152
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->setSelectedTabIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 1157
    :goto_d
    return-void

    .line 1155
    :cond_e
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->setSelectedTabIndicator(Landroid/graphics/drawable/Drawable;)V

    goto :goto_d
.end method

.method public setSelectedTabIndicator(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "tabSelectedIndicator"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1134
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_b

    .line 1135
    iput-object p1, p0, Landroid/support/design/widget/TabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    .line 1136
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->slidingTabIndicator:Landroid/support/design/widget/TabLayout$SlidingTabIndicator;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1138
    :cond_b
    return-void
.end method

.method public setSelectedTabIndicatorColor(I)V
    .registers 3
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 520
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->slidingTabIndicator:Landroid/support/design/widget/TabLayout$SlidingTabIndicator;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->setSelectedIndicatorColor(I)V

    .line 521
    return-void
.end method

.method public setSelectedTabIndicatorGravity(I)V
    .registers 3
    .param p1, "indicatorGravity"    # I

    .prologue
    .line 872
    iget v0, p0, Landroid/support/design/widget/TabLayout;->tabIndicatorGravity:I

    if-eq v0, p1, :cond_b

    .line 873
    iput p1, p0, Landroid/support/design/widget/TabLayout;->tabIndicatorGravity:I

    .line 874
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->slidingTabIndicator:Landroid/support/design/widget/TabLayout$SlidingTabIndicator;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 876
    :cond_b
    return-void
.end method

.method public setSelectedTabIndicatorHeight(I)V
    .registers 3
    .param p1, "height"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 533
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->slidingTabIndicator:Landroid/support/design/widget/TabLayout$SlidingTabIndicator;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->setSelectedIndicatorHeight(I)V

    .line 534
    return-void
.end method

.method public setTabGravity(I)V
    .registers 3
    .param p1, "gravity"    # I

    .prologue
    .line 841
    iget v0, p0, Landroid/support/design/widget/TabLayout;->tabGravity:I

    if-eq v0, p1, :cond_9

    .line 842
    iput p1, p0, Landroid/support/design/widget/TabLayout;->tabGravity:I

    .line 843
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->applyModeAndGravity()V

    .line 845
    :cond_9
    return-void
.end method

.method public setTabIconTint(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "iconTint"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1043
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->tabIconTint:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_9

    .line 1044
    iput-object p1, p0, Landroid/support/design/widget/TabLayout;->tabIconTint:Landroid/content/res/ColorStateList;

    .line 1045
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->updateAllTabs()V

    .line 1047
    :cond_9
    return-void
.end method

.method public setTabIconTintResource(I)V
    .registers 3
    .param p1, "iconTintResourceId"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 1056
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v7/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->setTabIconTint(Landroid/content/res/ColorStateList;)V

    .line 1057
    return-void
.end method

.method public setTabIndicatorFullWidth(Z)V
    .registers 3
    .param p1, "tabIndicatorFullWidth"    # Z

    .prologue
    .line 906
    iput-boolean p1, p0, Landroid/support/design/widget/TabLayout;->tabIndicatorFullWidth:Z

    .line 907
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->slidingTabIndicator:Landroid/support/design/widget/TabLayout$SlidingTabIndicator;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 908
    return-void
.end method

.method public setTabMode(I)V
    .registers 3
    .param p1, "mode"    # I

    .prologue
    .line 818
    iget v0, p0, Landroid/support/design/widget/TabLayout;->mode:I

    if-eq p1, v0, :cond_9

    .line 819
    iput p1, p0, Landroid/support/design/widget/TabLayout;->mode:I

    .line 820
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->applyModeAndGravity()V

    .line 822
    :cond_9
    return-void
.end method

.method public setTabRippleColor(Landroid/content/res/ColorStateList;)V
    .registers 5
    .param p1, "color"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1087
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->tabRippleColorStateList:Landroid/content/res/ColorStateList;

    if-eq v2, p1, :cond_25

    .line 1088
    iput-object p1, p0, Landroid/support/design/widget/TabLayout;->tabRippleColorStateList:Landroid/content/res/ColorStateList;

    .line 1089
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->slidingTabIndicator:Landroid/support/design/widget/TabLayout$SlidingTabIndicator;

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_25

    .line 1090
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->slidingTabIndicator:Landroid/support/design/widget/TabLayout$SlidingTabIndicator;

    invoke-virtual {v2, v1}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1091
    .local v0, "child":Landroid/view/View;
    instance-of v2, v0, Landroid/support/design/widget/TabLayout$TabView;

    if-eqz v2, :cond_22

    .line 1092
    check-cast v0, Landroid/support/design/widget/TabLayout$TabView;

    .end local v0    # "child":Landroid/view/View;
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/support/design/widget/TabLayout$TabView;->access$000(Landroid/support/design/widget/TabLayout$TabView;Landroid/content/Context;)V

    .line 1089
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1096
    .end local v1    # "i":I
    :cond_25
    return-void
.end method

.method public setTabRippleColorResource(I)V
    .registers 3
    .param p1, "tabRippleColorResourceId"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 1108
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v7/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->setTabRippleColor(Landroid/content/res/ColorStateList;)V

    .line 1109
    return-void
.end method

.method public setTabTextColors(II)V
    .registers 4
    .param p1, "normalColor"    # I
    .param p2, "selectedColor"    # I

    .prologue
    .line 1034
    invoke-static {p1, p2}, Landroid/support/design/widget/TabLayout;->createColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->setTabTextColors(Landroid/content/res/ColorStateList;)V

    .line 1035
    return-void
.end method

.method public setTabTextColors(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "textColor"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1015
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_9

    .line 1016
    iput-object p1, p0, Landroid/support/design/widget/TabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    .line 1017
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->updateAllTabs()V

    .line 1019
    :cond_9
    return-void
.end method

.method public setTabsFromPagerAdapter(Landroid/support/v4/view/PagerAdapter;)V
    .registers 3
    .param p1, "adapter"    # Landroid/support/v4/view/PagerAdapter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1256
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/design/widget/TabLayout;->setPagerAdapter(Landroid/support/v4/view/PagerAdapter;Z)V

    .line 1257
    return-void
.end method

.method public setUnboundedRipple(Z)V
    .registers 5
    .param p1, "unboundedRipple"    # Z

    .prologue
    .line 975
    iget-boolean v2, p0, Landroid/support/design/widget/TabLayout;->unboundedRipple:Z

    if-eq v2, p1, :cond_25

    .line 976
    iput-boolean p1, p0, Landroid/support/design/widget/TabLayout;->unboundedRipple:Z

    .line 977
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->slidingTabIndicator:Landroid/support/design/widget/TabLayout$SlidingTabIndicator;

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_25

    .line 978
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->slidingTabIndicator:Landroid/support/design/widget/TabLayout$SlidingTabIndicator;

    invoke-virtual {v2, v1}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 979
    .local v0, "child":Landroid/view/View;
    instance-of v2, v0, Landroid/support/design/widget/TabLayout$TabView;

    if-eqz v2, :cond_22

    .line 980
    check-cast v0, Landroid/support/design/widget/TabLayout$TabView;

    .end local v0    # "child":Landroid/view/View;
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/support/design/widget/TabLayout$TabView;->access$000(Landroid/support/design/widget/TabLayout$TabView;Landroid/content/Context;)V

    .line 977
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 984
    .end local v1    # "i":I
    :cond_25
    return-void
.end method

.method public setUnboundedRippleResource(I)V
    .registers 3
    .param p1, "unboundedRippleResourceId"    # I
        .annotation build Landroid/support/annotation/BoolRes;
        .end annotation
    .end param

    .prologue
    .line 995
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->setUnboundedRipple(Z)V

    .line 996
    return-void
.end method

.method public setupWithViewPager(Landroid/support/v4/view/ViewPager;)V
    .registers 3
    .param p1, "viewPager"    # Landroid/support/v4/view/ViewPager;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1168
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;Z)V

    .line 1169
    return-void
.end method

.method public setupWithViewPager(Landroid/support/v4/view/ViewPager;Z)V
    .registers 4
    .param p1, "viewPager"    # Landroid/support/v4/view/ViewPager;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "autoRefresh"    # Z

    .prologue
    .line 1188
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;ZZ)V

    .line 1189
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .registers 2

    .prologue
    .line 1262
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->getTabScrollRange()I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method updateTabViews(Z)V
    .registers 5
    .param p1, "requestLayout"    # Z

    .prologue
    .line 1667
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->slidingTabIndicator:Landroid/support/design/widget/TabLayout$SlidingTabIndicator;

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_27

    .line 1668
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->slidingTabIndicator:Landroid/support/design/widget/TabLayout$SlidingTabIndicator;

    invoke-virtual {v2, v1}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1669
    .local v0, "child":Landroid/view/View;
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->getTabMinWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setMinimumWidth(I)V

    .line 1670
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v2}, Landroid/support/design/widget/TabLayout;->updateTabViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 1671
    if-eqz p1, :cond_24

    .line 1672
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 1667
    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1675
    .end local v0    # "child":Landroid/view/View;
    :cond_27
    return-void
.end method
