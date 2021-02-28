.class public Landroid/support/design/internal/BottomNavigationMenuView;
.super Landroid/view/ViewGroup;
.source "BottomNavigationMenuView.java"

# interfaces
.implements Landroid/support/v7/view/menu/MenuView;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final ACTIVE_ANIMATION_DURATION_MS:J = 0x73L

.field private static final CHECKED_STATE_SET:[I

.field private static final DISABLED_STATE_SET:[I


# instance fields
.field private final activeItemMaxWidth:I

.field private final activeItemMinWidth:I

.field private buttons:[Landroid/support/design/internal/BottomNavigationItemView;

.field private final inactiveItemMaxWidth:I

.field private final inactiveItemMinWidth:I

.field private itemBackground:Landroid/graphics/drawable/Drawable;

.field private itemBackgroundRes:I

.field private final itemHeight:I

.field private itemHorizontalTranslationEnabled:Z

.field private itemIconSize:I
    .annotation build Landroid/support/annotation/Dimension;
    .end annotation
.end field

.field private itemIconTint:Landroid/content/res/ColorStateList;

.field private final itemPool:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool",
            "<",
            "Landroid/support/design/internal/BottomNavigationItemView;",
            ">;"
        }
    .end annotation
.end field

.field private itemTextAppearanceActive:I
    .annotation build Landroid/support/annotation/StyleRes;
    .end annotation
.end field

.field private itemTextAppearanceInactive:I
    .annotation build Landroid/support/annotation/StyleRes;
    .end annotation
.end field

.field private final itemTextColorDefault:Landroid/content/res/ColorStateList;

.field private itemTextColorFromUser:Landroid/content/res/ColorStateList;

.field private labelVisibilityMode:I

.field private menu:Landroid/support/v7/view/menu/MenuBuilder;

.field private final onClickListener:Landroid/view/View$OnClickListener;

.field private presenter:Landroid/support/design/internal/BottomNavigationPresenter;

.field private selectedItemId:I

.field private selectedItemPosition:I

.field private final set:Landroid/support/transition/TransitionSet;

.field private tempChildWidths:[I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 53
    new-array v0, v3, [I

    const v1, 0x10100a0

    aput v1, v0, v2

    sput-object v0, Landroid/support/design/internal/BottomNavigationMenuView;->CHECKED_STATE_SET:[I

    .line 54
    new-array v0, v3, [I

    const v1, -0x101009e

    aput v1, v0, v2

    sput-object v0, Landroid/support/design/internal/BottomNavigationMenuView;->DISABLED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/internal/BottomNavigationMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x5

    const/4 v2, 0x0

    .line 90
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    new-instance v1, Landroid/support/v4/util/Pools$SynchronizedPool;

    invoke-direct {v1, v4}, Landroid/support/v4/util/Pools$SynchronizedPool;-><init>(I)V

    iput-object v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->itemPool:Landroid/support/v4/util/Pools$Pool;

    .line 69
    iput v2, p0, Landroid/support/design/internal/BottomNavigationMenuView;->selectedItemId:I

    .line 70
    iput v2, p0, Landroid/support/design/internal/BottomNavigationMenuView;->selectedItemPosition:I

    .line 91
    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 92
    .local v0, "res":Landroid/content/res/Resources;
    sget v1, Landroid/support/design/R$dimen;->design_bottom_navigation_item_max_width:I

    .line 93
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->inactiveItemMaxWidth:I

    .line 94
    sget v1, Landroid/support/design/R$dimen;->design_bottom_navigation_item_min_width:I

    .line 95
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->inactiveItemMinWidth:I

    .line 96
    sget v1, Landroid/support/design/R$dimen;->design_bottom_navigation_active_item_max_width:I

    .line 97
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->activeItemMaxWidth:I

    .line 98
    sget v1, Landroid/support/design/R$dimen;->design_bottom_navigation_active_item_min_width:I

    .line 99
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->activeItemMinWidth:I

    .line 100
    sget v1, Landroid/support/design/R$dimen;->design_bottom_navigation_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->itemHeight:I

    .line 101
    const v1, 0x1010038

    invoke-virtual {p0, v1}, Landroid/support/design/internal/BottomNavigationMenuView;->createDefaultColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->itemTextColorDefault:Landroid/content/res/ColorStateList;

    .line 103
    new-instance v1, Landroid/support/transition/AutoTransition;

    invoke-direct {v1}, Landroid/support/transition/AutoTransition;-><init>()V

    iput-object v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->set:Landroid/support/transition/TransitionSet;

    .line 104
    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->set:Landroid/support/transition/TransitionSet;

    invoke-virtual {v1, v2}, Landroid/support/transition/TransitionSet;->setOrdering(I)Landroid/support/transition/TransitionSet;

    .line 105
    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->set:Landroid/support/transition/TransitionSet;

    const-wide/16 v2, 0x73

    invoke-virtual {v1, v2, v3}, Landroid/support/transition/TransitionSet;->setDuration(J)Landroid/support/transition/TransitionSet;

    .line 106
    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->set:Landroid/support/transition/TransitionSet;

    new-instance v2, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v2}, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/support/transition/TransitionSet;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/support/transition/TransitionSet;

    .line 107
    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->set:Landroid/support/transition/TransitionSet;

    new-instance v2, Landroid/support/design/internal/TextScale;

    invoke-direct {v2}, Landroid/support/design/internal/TextScale;-><init>()V

    invoke-virtual {v1, v2}, Landroid/support/transition/TransitionSet;->addTransition(Landroid/support/transition/Transition;)Landroid/support/transition/TransitionSet;

    .line 109
    new-instance v1, Landroid/support/design/internal/BottomNavigationMenuView$1;

    invoke-direct {v1, p0}, Landroid/support/design/internal/BottomNavigationMenuView$1;-><init>(Landroid/support/design/internal/BottomNavigationMenuView;)V

    iput-object v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->onClickListener:Landroid/view/View$OnClickListener;

    .line 120
    new-array v1, v4, [I

    iput-object v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->tempChildWidths:[I

    .line 121
    return-void
.end method

.method static synthetic access$000(Landroid/support/design/internal/BottomNavigationMenuView;)Landroid/support/design/internal/BottomNavigationPresenter;
    .registers 2
    .param p0, "x0"    # Landroid/support/design/internal/BottomNavigationMenuView;

    .prologue
    .line 50
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->presenter:Landroid/support/design/internal/BottomNavigationPresenter;

    return-object v0
.end method

.method static synthetic access$100(Landroid/support/design/internal/BottomNavigationMenuView;)Landroid/support/v7/view/menu/MenuBuilder;
    .registers 2
    .param p0, "x0"    # Landroid/support/design/internal/BottomNavigationMenuView;

    .prologue
    .line 50
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    return-object v0
.end method

.method private getNewItem()Landroid/support/design/internal/BottomNavigationItemView;
    .registers 3

    .prologue
    .line 569
    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->itemPool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v1}, Landroid/support/v4/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/internal/BottomNavigationItemView;

    .line 570
    .local v0, "item":Landroid/support/design/internal/BottomNavigationItemView;
    if-nez v0, :cond_13

    .line 571
    new-instance v0, Landroid/support/design/internal/BottomNavigationItemView;

    .end local v0    # "item":Landroid/support/design/internal/BottomNavigationItemView;
    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/design/internal/BottomNavigationItemView;-><init>(Landroid/content/Context;)V

    .line 573
    .restart local v0    # "item":Landroid/support/design/internal/BottomNavigationItemView;
    :cond_13
    return-object v0
.end method

.method private isShifting(II)Z
    .registers 6
    .param p1, "labelVisibilityMode"    # I
    .param p2, "childCount"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 581
    const/4 v2, -0x1

    if-ne p1, v2, :cond_b

    const/4 v2, 0x3

    if-le p2, v2, :cond_9

    :cond_8
    :goto_8
    return v0

    :cond_9
    move v0, v1

    goto :goto_8

    :cond_b
    if-eqz p1, :cond_8

    move v0, v1

    goto :goto_8
.end method


# virtual methods
.method public buildMenuView()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 487
    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationMenuView;->removeAllViews()V

    .line 488
    iget-object v4, p0, Landroid/support/design/internal/BottomNavigationMenuView;->buttons:[Landroid/support/design/internal/BottomNavigationItemView;

    if-eqz v4, :cond_1b

    .line 489
    iget-object v6, p0, Landroid/support/design/internal/BottomNavigationMenuView;->buttons:[Landroid/support/design/internal/BottomNavigationItemView;

    array-length v7, v6

    move v4, v5

    :goto_d
    if-ge v4, v7, :cond_1b

    aget-object v2, v6, v4

    .line 490
    .local v2, "item":Landroid/support/design/internal/BottomNavigationItemView;
    if-eqz v2, :cond_18

    .line 491
    iget-object v8, p0, Landroid/support/design/internal/BottomNavigationMenuView;->itemPool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v8, v2}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 489
    :cond_18
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 495
    .end local v2    # "item":Landroid/support/design/internal/BottomNavigationItemView;
    :cond_1b
    iget-object v4, p0, Landroid/support/design/internal/BottomNavigationMenuView;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v4}, Landroid/support/v7/view/menu/MenuBuilder;->size()I

    move-result v4

    if-nez v4, :cond_2b

    .line 496
    iput v5, p0, Landroid/support/design/internal/BottomNavigationMenuView;->selectedItemId:I

    .line 497
    iput v5, p0, Landroid/support/design/internal/BottomNavigationMenuView;->selectedItemPosition:I

    .line 498
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/support/design/internal/BottomNavigationMenuView;->buttons:[Landroid/support/design/internal/BottomNavigationItemView;

    .line 530
    :goto_2a
    return-void

    .line 501
    :cond_2b
    iget-object v4, p0, Landroid/support/design/internal/BottomNavigationMenuView;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v4}, Landroid/support/v7/view/menu/MenuBuilder;->size()I

    move-result v4

    new-array v4, v4, [Landroid/support/design/internal/BottomNavigationItemView;

    iput-object v4, p0, Landroid/support/design/internal/BottomNavigationMenuView;->buttons:[Landroid/support/design/internal/BottomNavigationItemView;

    .line 502
    iget v4, p0, Landroid/support/design/internal/BottomNavigationMenuView;->labelVisibilityMode:I

    iget-object v6, p0, Landroid/support/design/internal/BottomNavigationMenuView;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v6}, Landroid/support/v7/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-direct {p0, v4, v6}, Landroid/support/design/internal/BottomNavigationMenuView;->isShifting(II)Z

    move-result v3

    .line 503
    .local v3, "shifting":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_46
    iget-object v4, p0, Landroid/support/design/internal/BottomNavigationMenuView;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v4}, Landroid/support/v7/view/menu/MenuBuilder;->size()I

    move-result v4

    if-ge v1, v4, :cond_b7

    .line 504
    iget-object v4, p0, Landroid/support/design/internal/BottomNavigationMenuView;->presenter:Landroid/support/design/internal/BottomNavigationPresenter;

    invoke-virtual {v4, v9}, Landroid/support/design/internal/BottomNavigationPresenter;->setUpdateSuspended(Z)V

    .line 505
    iget-object v4, p0, Landroid/support/design/internal/BottomNavigationMenuView;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v4, v1}, Landroid/support/v7/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v9}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 506
    iget-object v4, p0, Landroid/support/design/internal/BottomNavigationMenuView;->presenter:Landroid/support/design/internal/BottomNavigationPresenter;

    invoke-virtual {v4, v5}, Landroid/support/design/internal/BottomNavigationPresenter;->setUpdateSuspended(Z)V

    .line 507
    invoke-direct {p0}, Landroid/support/design/internal/BottomNavigationMenuView;->getNewItem()Landroid/support/design/internal/BottomNavigationItemView;

    move-result-object v0

    .line 508
    .local v0, "child":Landroid/support/design/internal/BottomNavigationItemView;
    iget-object v4, p0, Landroid/support/design/internal/BottomNavigationMenuView;->buttons:[Landroid/support/design/internal/BottomNavigationItemView;

    aput-object v0, v4, v1

    .line 509
    iget-object v4, p0, Landroid/support/design/internal/BottomNavigationMenuView;->itemIconTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v4}, Landroid/support/design/internal/BottomNavigationItemView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 510
    iget v4, p0, Landroid/support/design/internal/BottomNavigationMenuView;->itemIconSize:I

    invoke-virtual {v0, v4}, Landroid/support/design/internal/BottomNavigationItemView;->setIconSize(I)V

    .line 512
    iget-object v4, p0, Landroid/support/design/internal/BottomNavigationMenuView;->itemTextColorDefault:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v4}, Landroid/support/design/internal/BottomNavigationItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 513
    iget v4, p0, Landroid/support/design/internal/BottomNavigationMenuView;->itemTextAppearanceInactive:I

    invoke-virtual {v0, v4}, Landroid/support/design/internal/BottomNavigationItemView;->setTextAppearanceInactive(I)V

    .line 514
    iget v4, p0, Landroid/support/design/internal/BottomNavigationMenuView;->itemTextAppearanceActive:I

    invoke-virtual {v0, v4}, Landroid/support/design/internal/BottomNavigationItemView;->setTextAppearanceActive(I)V

    .line 515
    iget-object v4, p0, Landroid/support/design/internal/BottomNavigationMenuView;->itemTextColorFromUser:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v4}, Landroid/support/design/internal/BottomNavigationItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 516
    iget-object v4, p0, Landroid/support/design/internal/BottomNavigationMenuView;->itemBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_b1

    .line 517
    iget-object v4, p0, Landroid/support/design/internal/BottomNavigationMenuView;->itemBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4}, Landroid/support/design/internal/BottomNavigationItemView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    .line 521
    :goto_90
    invoke-virtual {v0, v3}, Landroid/support/design/internal/BottomNavigationItemView;->setShifting(Z)V

    .line 522
    iget v4, p0, Landroid/support/design/internal/BottomNavigationMenuView;->labelVisibilityMode:I

    invoke-virtual {v0, v4}, Landroid/support/design/internal/BottomNavigationItemView;->setLabelVisibilityMode(I)V

    .line 523
    iget-object v4, p0, Landroid/support/design/internal/BottomNavigationMenuView;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v4, v1}, Landroid/support/v7/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    check-cast v4, Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v0, v4, v5}, Landroid/support/design/internal/BottomNavigationItemView;->initialize(Landroid/support/v7/view/menu/MenuItemImpl;I)V

    .line 524
    invoke-virtual {v0, v1}, Landroid/support/design/internal/BottomNavigationItemView;->setItemPosition(I)V

    .line 525
    iget-object v4, p0, Landroid/support/design/internal/BottomNavigationMenuView;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/support/design/internal/BottomNavigationItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 526
    invoke-virtual {p0, v0}, Landroid/support/design/internal/BottomNavigationMenuView;->addView(Landroid/view/View;)V

    .line 503
    add-int/lit8 v1, v1, 0x1

    goto :goto_46

    .line 519
    :cond_b1
    iget v4, p0, Landroid/support/design/internal/BottomNavigationMenuView;->itemBackgroundRes:I

    invoke-virtual {v0, v4}, Landroid/support/design/internal/BottomNavigationItemView;->setItemBackground(I)V

    goto :goto_90

    .line 528
    .end local v0    # "child":Landroid/support/design/internal/BottomNavigationItemView;
    :cond_b7
    iget-object v4, p0, Landroid/support/design/internal/BottomNavigationMenuView;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v4}, Landroid/support/v7/view/menu/MenuBuilder;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Landroid/support/design/internal/BottomNavigationMenuView;->selectedItemPosition:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Landroid/support/design/internal/BottomNavigationMenuView;->selectedItemPosition:I

    .line 529
    iget-object v4, p0, Landroid/support/design/internal/BottomNavigationMenuView;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    iget v5, p0, Landroid/support/design/internal/BottomNavigationMenuView;->selectedItemPosition:I

    invoke-virtual {v4, v5}, Landroid/support/v7/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v9}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto/16 :goto_2a
.end method

.method public createDefaultColorStateList(I)Landroid/content/res/ColorStateList;
    .registers 13
    .param p1, "baseColorThemeAttr"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 463
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 464
    .local v3, "value":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationMenuView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v5, p1, v3, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v5

    if-nez v5, :cond_19

    .line 475
    :cond_18
    :goto_18
    return-object v4

    .line 467
    :cond_19
    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationMenuView;->getContext()Landroid/content/Context;

    move-result-object v5

    iget v6, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-static {v5, v6}, Landroid/support/v7/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 468
    .local v0, "baseColor":Landroid/content/res/ColorStateList;
    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationMenuView;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 469
    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    sget v6, Landroid/support/v7/appcompat/R$attr;->colorPrimary:I

    .line 470
    invoke-virtual {v5, v6, v3, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 473
    iget v1, v3, Landroid/util/TypedValue;->data:I

    .line 474
    .local v1, "colorPrimary":I
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    .line 475
    .local v2, "defaultColor":I
    new-instance v4, Landroid/content/res/ColorStateList;

    new-array v5, v7, [[I

    sget-object v6, Landroid/support/design/internal/BottomNavigationMenuView;->DISABLED_STATE_SET:[I

    aput-object v6, v5, v9

    sget-object v6, Landroid/support/design/internal/BottomNavigationMenuView;->CHECKED_STATE_SET:[I

    aput-object v6, v5, v8

    sget-object v6, Landroid/support/design/internal/BottomNavigationMenuView;->EMPTY_STATE_SET:[I

    aput-object v6, v5, v10

    new-array v6, v7, [I

    sget-object v7, Landroid/support/design/internal/BottomNavigationMenuView;->DISABLED_STATE_SET:[I

    .line 478
    invoke-virtual {v0, v7, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v7

    aput v7, v6, v9

    aput v1, v6, v8

    aput v2, v6, v10

    invoke-direct {v4, v5, v6}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    goto :goto_18
.end method

.method public getIconTintList()Landroid/content/res/ColorStateList;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 252
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->itemIconTint:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getItemBackground()Landroid/graphics/drawable/Drawable;
    .registers 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 404
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->buttons:[Landroid/support/design/internal/BottomNavigationItemView;

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->buttons:[Landroid/support/design/internal/BottomNavigationItemView;

    array-length v0, v0

    if-lez v0, :cond_13

    .line 407
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->buttons:[Landroid/support/design/internal/BottomNavigationItemView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/support/design/internal/BottomNavigationItemView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 409
    :goto_12
    return-object v0

    :cond_13
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->itemBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_12
.end method

.method public getItemBackgroundRes()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 380
    iget v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->itemBackgroundRes:I

    return v0
.end method

.method public getItemIconSize()I
    .registers 2
    .annotation build Landroid/support/annotation/Dimension;
    .end annotation

    .prologue
    .line 274
    iget v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->itemIconSize:I

    return v0
.end method

.method public getItemTextAppearanceActive()I
    .registers 2
    .annotation build Landroid/support/annotation/StyleRes;
    .end annotation

    .prologue
    .line 355
    iget v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->itemTextAppearanceActive:I

    return v0
.end method

.method public getItemTextAppearanceInactive()I
    .registers 2
    .annotation build Landroid/support/annotation/StyleRes;
    .end annotation

    .prologue
    .line 326
    iget v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->itemTextAppearanceInactive:I

    return v0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .registers 2

    .prologue
    .line 297
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->itemTextColorFromUser:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getLabelVisibilityMode()I
    .registers 2

    .prologue
    .line 436
    iget v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->labelVisibilityMode:I

    return v0
.end method

.method public getSelectedItemId()I
    .registers 2

    .prologue
    .line 577
    iget v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->selectedItemId:I

    return v0
.end method

.method public getWindowAnimations()I
    .registers 2

    .prologue
    .line 228
    const/4 v0, 0x0

    return v0
.end method

.method public initialize(Landroid/support/v7/view/menu/MenuBuilder;)V
    .registers 2
    .param p1, "menu"    # Landroid/support/v7/view/menu/MenuBuilder;

    .prologue
    .line 125
    iput-object p1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    .line 126
    return-void
.end method

.method public isItemHorizontalTranslationEnabled()Z
    .registers 2

    .prologue
    .line 459
    iget-boolean v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->itemHorizontalTranslationEnabled:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .registers 15
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v8, 0x0

    .line 208
    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationMenuView;->getChildCount()I

    move-result v1

    .line 209
    .local v1, "count":I
    sub-int v5, p4, p2

    .line 210
    .local v5, "width":I
    sub-int v2, p5, p3

    .line 211
    .local v2, "height":I
    const/4 v4, 0x0

    .line 212
    .local v4, "used":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_b
    if-ge v3, v1, :cond_3e

    .line 213
    invoke-virtual {p0, v3}, Landroid/support/design/internal/BottomNavigationMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 214
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_1c

    .line 212
    :goto_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 217
    :cond_1c
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_35

    .line 218
    sub-int v6, v5, v4

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v6, v7

    sub-int v7, v5, v4

    invoke-virtual {v0, v6, v8, v7, v2}, Landroid/view/View;->layout(IIII)V

    .line 222
    :goto_2f
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v4, v6

    goto :goto_19

    .line 220
    :cond_35
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v0, v4, v8, v6, v2}, Landroid/view/View;->layout(IIII)V

    goto :goto_2f

    .line 224
    .end local v0    # "child":Landroid/view/View;
    :cond_3e
    return-void
.end method

.method protected onMeasure(II)V
    .registers 27
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 130
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v20

    .line 132
    .local v20, "width":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/design/internal/BottomNavigationMenuView;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/support/v7/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 134
    .local v19, "visibleCount":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/internal/BottomNavigationMenuView;->getChildCount()I

    move-result v17

    .line 136
    .local v17, "totalCount":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/design/internal/BottomNavigationMenuView;->itemHeight:I

    move/from16 v21, v0

    const/high16 v22, 0x40000000    # 2.0f

    invoke-static/range {v21 .. v22}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 138
    .local v10, "heightSpec":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/design/internal/BottomNavigationMenuView;->labelVisibilityMode:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/support/design/internal/BottomNavigationMenuView;->isShifting(II)Z

    move-result v21

    if-eqz v21, :cond_10d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/design/internal/BottomNavigationMenuView;->itemHorizontalTranslationEnabled:Z

    move/from16 v21, v0

    if-eqz v21, :cond_10d

    .line 139
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/design/internal/BottomNavigationMenuView;->selectedItemPosition:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/support/design/internal/BottomNavigationMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 140
    .local v3, "activeChild":Landroid/view/View;
    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/design/internal/BottomNavigationMenuView;->activeItemMinWidth:I

    .line 141
    .local v4, "activeItemWidth":I
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_75

    .line 144
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/design/internal/BottomNavigationMenuView;->activeItemMaxWidth:I

    move/from16 v21, v0

    const/high16 v22, -0x80000000

    .line 145
    invoke-static/range {v21 .. v22}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v21

    .line 144
    move/from16 v0, v21

    invoke-virtual {v3, v0, v10}, Landroid/view/View;->measure(II)V

    .line 146
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    move/from16 v0, v21

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 148
    :cond_75
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_f9

    const/16 v21, 0x1

    :goto_83
    sub-int v12, v19, v21

    .line 149
    .local v12, "inactiveCount":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/design/internal/BottomNavigationMenuView;->inactiveItemMinWidth:I

    move/from16 v21, v0

    mul-int v21, v21, v12

    sub-int v5, v20, v21

    .line 150
    .local v5, "activeMaxAvailable":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/design/internal/BottomNavigationMenuView;->activeItemMaxWidth:I

    move/from16 v21, v0

    .line 151
    move/from16 v0, v21

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v21

    move/from16 v0, v21

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 152
    .local v6, "activeWidth":I
    sub-int v22, v20, v6

    if-nez v12, :cond_fc

    const/16 v21, 0x1

    :goto_a7
    div-int v13, v22, v21

    .line 154
    .local v13, "inactiveMaxAvailable":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/design/internal/BottomNavigationMenuView;->inactiveItemMaxWidth:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-static {v13, v0}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 155
    .local v14, "inactiveWidth":I
    sub-int v21, v20, v6

    mul-int v22, v14, v12

    sub-int v9, v21, v22

    .line 157
    .local v9, "extra":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_bc
    move/from16 v0, v17

    if-ge v11, v0, :cond_163

    .line 158
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/support/design/internal/BottomNavigationMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_102

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/design/internal/BottomNavigationMenuView;->tempChildWidths:[I

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/design/internal/BottomNavigationMenuView;->selectedItemPosition:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ne v11, v0, :cond_ff

    move/from16 v21, v6

    :goto_e4
    aput v21, v22, v11

    .line 163
    if-lez v9, :cond_f6

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/design/internal/BottomNavigationMenuView;->tempChildWidths:[I

    move-object/from16 v21, v0

    aget v22, v21, v11

    add-int/lit8 v22, v22, 0x1

    aput v22, v21, v11

    .line 165
    add-int/lit8 v9, v9, -0x1

    .line 157
    :cond_f6
    :goto_f6
    add-int/lit8 v11, v11, 0x1

    goto :goto_bc

    .line 148
    .end local v5    # "activeMaxAvailable":I
    .end local v6    # "activeWidth":I
    .end local v9    # "extra":I
    .end local v11    # "i":I
    .end local v12    # "inactiveCount":I
    .end local v13    # "inactiveMaxAvailable":I
    .end local v14    # "inactiveWidth":I
    :cond_f9
    const/16 v21, 0x0

    goto :goto_83

    .restart local v5    # "activeMaxAvailable":I
    .restart local v6    # "activeWidth":I
    .restart local v12    # "inactiveCount":I
    :cond_fc
    move/from16 v21, v12

    .line 152
    goto :goto_a7

    .restart local v9    # "extra":I
    .restart local v11    # "i":I
    .restart local v13    # "inactiveMaxAvailable":I
    .restart local v14    # "inactiveWidth":I
    :cond_ff
    move/from16 v21, v14

    .line 159
    goto :goto_e4

    .line 168
    :cond_102
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/design/internal/BottomNavigationMenuView;->tempChildWidths:[I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput v22, v21, v11

    goto :goto_f6

    .line 172
    .end local v3    # "activeChild":Landroid/view/View;
    .end local v4    # "activeItemWidth":I
    .end local v5    # "activeMaxAvailable":I
    .end local v6    # "activeWidth":I
    .end local v9    # "extra":I
    .end local v11    # "i":I
    .end local v12    # "inactiveCount":I
    .end local v13    # "inactiveMaxAvailable":I
    .end local v14    # "inactiveWidth":I
    :cond_10d
    if-nez v19, :cond_155

    const/16 v21, 0x1

    :goto_111
    div-int v15, v20, v21

    .line 173
    .local v15, "maxAvailable":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/design/internal/BottomNavigationMenuView;->activeItemMaxWidth:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-static {v15, v0}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 174
    .local v8, "childWidth":I
    mul-int v21, v8, v19

    sub-int v9, v20, v21

    .line 175
    .restart local v9    # "extra":I
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_124
    move/from16 v0, v17

    if-ge v11, v0, :cond_163

    .line 176
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/support/design/internal/BottomNavigationMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_158

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/design/internal/BottomNavigationMenuView;->tempChildWidths:[I

    move-object/from16 v21, v0

    aput v8, v21, v11

    .line 178
    if-lez v9, :cond_152

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/design/internal/BottomNavigationMenuView;->tempChildWidths:[I

    move-object/from16 v21, v0

    aget v22, v21, v11

    add-int/lit8 v22, v22, 0x1

    aput v22, v21, v11

    .line 180
    add-int/lit8 v9, v9, -0x1

    .line 175
    :cond_152
    :goto_152
    add-int/lit8 v11, v11, 0x1

    goto :goto_124

    .end local v8    # "childWidth":I
    .end local v9    # "extra":I
    .end local v11    # "i":I
    .end local v15    # "maxAvailable":I
    :cond_155
    move/from16 v21, v19

    .line 172
    goto :goto_111

    .line 183
    .restart local v8    # "childWidth":I
    .restart local v9    # "extra":I
    .restart local v11    # "i":I
    .restart local v15    # "maxAvailable":I
    :cond_158
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/design/internal/BottomNavigationMenuView;->tempChildWidths:[I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput v22, v21, v11

    goto :goto_152

    .line 188
    .end local v8    # "childWidth":I
    .end local v15    # "maxAvailable":I
    :cond_163
    const/16 v18, 0x0

    .line 189
    .local v18, "totalWidth":I
    const/4 v11, 0x0

    :goto_166
    move/from16 v0, v17

    if-ge v11, v0, :cond_1a7

    .line 190
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/support/design/internal/BottomNavigationMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 191
    .local v7, "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_17f

    .line 189
    :goto_17c
    add-int/lit8 v11, v11, 0x1

    goto :goto_166

    .line 194
    :cond_17f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/design/internal/BottomNavigationMenuView;->tempChildWidths:[I

    move-object/from16 v21, v0

    aget v21, v21, v11

    const/high16 v22, 0x40000000    # 2.0f

    .line 195
    invoke-static/range {v21 .. v22}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v21

    .line 194
    move/from16 v0, v21

    invoke-virtual {v7, v0, v10}, Landroid/view/View;->measure(II)V

    .line 196
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    .line 197
    .local v16, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v16

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 198
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    add-int v18, v18, v21

    goto :goto_17c

    .line 200
    .end local v7    # "child":Landroid/view/View;
    .end local v16    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_1a7
    const/high16 v21, 0x40000000    # 2.0f

    .line 202
    move/from16 v0, v18

    move/from16 v1, v21

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v21

    const/16 v22, 0x0

    .line 201
    move/from16 v0, v18

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/design/internal/BottomNavigationMenuView;->itemHeight:I

    move/from16 v22, v0

    const/16 v23, 0x0

    .line 203
    move/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v0, v10, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v22

    .line 200
    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/support/design/internal/BottomNavigationMenuView;->setMeasuredDimension(II)V

    .line 204
    return-void
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)V
    .registers 6
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 237
    iput-object p1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->itemIconTint:Landroid/content/res/ColorStateList;

    .line 238
    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->buttons:[Landroid/support/design/internal/BottomNavigationItemView;

    if-eqz v1, :cond_14

    .line 239
    iget-object v2, p0, Landroid/support/design/internal/BottomNavigationMenuView;->buttons:[Landroid/support/design/internal/BottomNavigationItemView;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v3, :cond_14

    aget-object v0, v2, v1

    .line 240
    .local v0, "item":Landroid/support/design/internal/BottomNavigationItemView;
    invoke-virtual {v0, p1}, Landroid/support/design/internal/BottomNavigationItemView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 239
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 243
    .end local v0    # "item":Landroid/support/design/internal/BottomNavigationItemView;
    :cond_14
    return-void
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 6
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 389
    iput-object p1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->itemBackground:Landroid/graphics/drawable/Drawable;

    .line 390
    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->buttons:[Landroid/support/design/internal/BottomNavigationItemView;

    if-eqz v1, :cond_14

    .line 391
    iget-object v2, p0, Landroid/support/design/internal/BottomNavigationMenuView;->buttons:[Landroid/support/design/internal/BottomNavigationItemView;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v3, :cond_14

    aget-object v0, v2, v1

    .line 392
    .local v0, "item":Landroid/support/design/internal/BottomNavigationItemView;
    invoke-virtual {v0, p1}, Landroid/support/design/internal/BottomNavigationItemView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    .line 391
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 395
    .end local v0    # "item":Landroid/support/design/internal/BottomNavigationItemView;
    :cond_14
    return-void
.end method

.method public setItemBackgroundRes(I)V
    .registers 6
    .param p1, "background"    # I

    .prologue
    .line 364
    iput p1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->itemBackgroundRes:I

    .line 365
    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->buttons:[Landroid/support/design/internal/BottomNavigationItemView;

    if-eqz v1, :cond_14

    .line 366
    iget-object v2, p0, Landroid/support/design/internal/BottomNavigationMenuView;->buttons:[Landroid/support/design/internal/BottomNavigationItemView;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v3, :cond_14

    aget-object v0, v2, v1

    .line 367
    .local v0, "item":Landroid/support/design/internal/BottomNavigationItemView;
    invoke-virtual {v0, p1}, Landroid/support/design/internal/BottomNavigationItemView;->setItemBackground(I)V

    .line 366
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 370
    .end local v0    # "item":Landroid/support/design/internal/BottomNavigationItemView;
    :cond_14
    return-void
.end method

.method public setItemHorizontalTranslationEnabled(Z)V
    .registers 2
    .param p1, "itemHorizontalTranslationEnabled"    # Z

    .prologue
    .line 448
    iput-boolean p1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->itemHorizontalTranslationEnabled:Z

    .line 449
    return-void
.end method

.method public setItemIconSize(I)V
    .registers 6
    .param p1, "iconSize"    # I
        .annotation build Landroid/support/annotation/Dimension;
        .end annotation
    .end param

    .prologue
    .line 263
    iput p1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->itemIconSize:I

    .line 264
    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->buttons:[Landroid/support/design/internal/BottomNavigationItemView;

    if-eqz v1, :cond_14

    .line 265
    iget-object v2, p0, Landroid/support/design/internal/BottomNavigationMenuView;->buttons:[Landroid/support/design/internal/BottomNavigationItemView;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v3, :cond_14

    aget-object v0, v2, v1

    .line 266
    .local v0, "item":Landroid/support/design/internal/BottomNavigationItemView;
    invoke-virtual {v0, p1}, Landroid/support/design/internal/BottomNavigationItemView;->setIconSize(I)V

    .line 265
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 269
    .end local v0    # "item":Landroid/support/design/internal/BottomNavigationItemView;
    :cond_14
    return-void
.end method

.method public setItemTextAppearanceActive(I)V
    .registers 7
    .param p1, "textAppearanceRes"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 335
    iput p1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->itemTextAppearanceActive:I

    .line 336
    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->buttons:[Landroid/support/design/internal/BottomNavigationItemView;

    if-eqz v1, :cond_1d

    .line 337
    iget-object v2, p0, Landroid/support/design/internal/BottomNavigationMenuView;->buttons:[Landroid/support/design/internal/BottomNavigationItemView;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v3, :cond_1d

    aget-object v0, v2, v1

    .line 338
    .local v0, "item":Landroid/support/design/internal/BottomNavigationItemView;
    invoke-virtual {v0, p1}, Landroid/support/design/internal/BottomNavigationItemView;->setTextAppearanceActive(I)V

    .line 341
    iget-object v4, p0, Landroid/support/design/internal/BottomNavigationMenuView;->itemTextColorFromUser:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_1a

    .line 342
    iget-object v4, p0, Landroid/support/design/internal/BottomNavigationMenuView;->itemTextColorFromUser:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v4}, Landroid/support/design/internal/BottomNavigationItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 337
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 346
    .end local v0    # "item":Landroid/support/design/internal/BottomNavigationItemView;
    :cond_1d
    return-void
.end method

.method public setItemTextAppearanceInactive(I)V
    .registers 7
    .param p1, "textAppearanceRes"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 306
    iput p1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->itemTextAppearanceInactive:I

    .line 307
    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->buttons:[Landroid/support/design/internal/BottomNavigationItemView;

    if-eqz v1, :cond_1d

    .line 308
    iget-object v2, p0, Landroid/support/design/internal/BottomNavigationMenuView;->buttons:[Landroid/support/design/internal/BottomNavigationItemView;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v3, :cond_1d

    aget-object v0, v2, v1

    .line 309
    .local v0, "item":Landroid/support/design/internal/BottomNavigationItemView;
    invoke-virtual {v0, p1}, Landroid/support/design/internal/BottomNavigationItemView;->setTextAppearanceInactive(I)V

    .line 312
    iget-object v4, p0, Landroid/support/design/internal/BottomNavigationMenuView;->itemTextColorFromUser:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_1a

    .line 313
    iget-object v4, p0, Landroid/support/design/internal/BottomNavigationMenuView;->itemTextColorFromUser:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v4}, Landroid/support/design/internal/BottomNavigationItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 308
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 317
    .end local v0    # "item":Landroid/support/design/internal/BottomNavigationItemView;
    :cond_1d
    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .registers 6
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 283
    iput-object p1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->itemTextColorFromUser:Landroid/content/res/ColorStateList;

    .line 284
    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->buttons:[Landroid/support/design/internal/BottomNavigationItemView;

    if-eqz v1, :cond_14

    .line 285
    iget-object v2, p0, Landroid/support/design/internal/BottomNavigationMenuView;->buttons:[Landroid/support/design/internal/BottomNavigationItemView;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v3, :cond_14

    aget-object v0, v2, v1

    .line 286
    .local v0, "item":Landroid/support/design/internal/BottomNavigationItemView;
    invoke-virtual {v0, p1}, Landroid/support/design/internal/BottomNavigationItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 285
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 289
    .end local v0    # "item":Landroid/support/design/internal/BottomNavigationItemView;
    :cond_14
    return-void
.end method

.method public setLabelVisibilityMode(I)V
    .registers 2
    .param p1, "labelVisibilityMode"    # I

    .prologue
    .line 427
    iput p1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->labelVisibilityMode:I

    .line 428
    return-void
.end method

.method public setPresenter(Landroid/support/design/internal/BottomNavigationPresenter;)V
    .registers 2
    .param p1, "presenter"    # Landroid/support/design/internal/BottomNavigationPresenter;

    .prologue
    .line 483
    iput-object p1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->presenter:Landroid/support/design/internal/BottomNavigationPresenter;

    .line 484
    return-void
.end method

.method tryRestoreSelectedItemId(I)V
    .registers 6
    .param p1, "itemId"    # I

    .prologue
    .line 587
    iget-object v3, p0, Landroid/support/design/internal/BottomNavigationMenuView;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v3}, Landroid/support/v7/view/menu/MenuBuilder;->size()I

    move-result v2

    .line 588
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v2, :cond_1d

    .line 589
    iget-object v3, p0, Landroid/support/design/internal/BottomNavigationMenuView;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v3, v0}, Landroid/support/v7/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 590
    .local v1, "item":Landroid/view/MenuItem;
    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    if-ne p1, v3, :cond_1e

    .line 591
    iput p1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->selectedItemId:I

    .line 592
    iput v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->selectedItemPosition:I

    .line 593
    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 597
    .end local v1    # "item":Landroid/view/MenuItem;
    :cond_1d
    return-void

    .line 588
    .restart local v1    # "item":Landroid/view/MenuItem;
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method public updateMenuView()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 533
    iget-object v5, p0, Landroid/support/design/internal/BottomNavigationMenuView;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v5, :cond_9

    iget-object v5, p0, Landroid/support/design/internal/BottomNavigationMenuView;->buttons:[Landroid/support/design/internal/BottomNavigationItemView;

    if-nez v5, :cond_a

    .line 566
    :cond_9
    :goto_9
    return-void

    .line 537
    :cond_a
    iget-object v5, p0, Landroid/support/design/internal/BottomNavigationMenuView;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v5}, Landroid/support/v7/view/menu/MenuBuilder;->size()I

    move-result v2

    .line 538
    .local v2, "menuSize":I
    iget-object v5, p0, Landroid/support/design/internal/BottomNavigationMenuView;->buttons:[Landroid/support/design/internal/BottomNavigationItemView;

    array-length v5, v5

    if-eq v2, v5, :cond_19

    .line 540
    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationMenuView;->buildMenuView()V

    goto :goto_9

    .line 544
    :cond_19
    iget v3, p0, Landroid/support/design/internal/BottomNavigationMenuView;->selectedItemId:I

    .line 546
    .local v3, "previousSelectedId":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1c
    if-ge v0, v2, :cond_35

    .line 547
    iget-object v5, p0, Landroid/support/design/internal/BottomNavigationMenuView;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v5, v0}, Landroid/support/v7/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 548
    .local v1, "item":Landroid/view/MenuItem;
    invoke-interface {v1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_32

    .line 549
    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    iput v5, p0, Landroid/support/design/internal/BottomNavigationMenuView;->selectedItemId:I

    .line 550
    iput v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->selectedItemPosition:I

    .line 546
    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 553
    .end local v1    # "item":Landroid/view/MenuItem;
    :cond_35
    iget v5, p0, Landroid/support/design/internal/BottomNavigationMenuView;->selectedItemId:I

    if-eq v3, v5, :cond_3e

    .line 555
    iget-object v5, p0, Landroid/support/design/internal/BottomNavigationMenuView;->set:Landroid/support/transition/TransitionSet;

    invoke-static {p0, v5}, Landroid/support/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/support/transition/Transition;)V

    .line 558
    :cond_3e
    iget v5, p0, Landroid/support/design/internal/BottomNavigationMenuView;->labelVisibilityMode:I

    iget-object v6, p0, Landroid/support/design/internal/BottomNavigationMenuView;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v6}, Landroid/support/v7/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-direct {p0, v5, v6}, Landroid/support/design/internal/BottomNavigationMenuView;->isShifting(II)Z

    move-result v4

    .line 559
    .local v4, "shifting":Z
    const/4 v0, 0x0

    :goto_4f
    if-ge v0, v2, :cond_9

    .line 560
    iget-object v5, p0, Landroid/support/design/internal/BottomNavigationMenuView;->presenter:Landroid/support/design/internal/BottomNavigationPresenter;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/support/design/internal/BottomNavigationPresenter;->setUpdateSuspended(Z)V

    .line 561
    iget-object v5, p0, Landroid/support/design/internal/BottomNavigationMenuView;->buttons:[Landroid/support/design/internal/BottomNavigationItemView;

    aget-object v5, v5, v0

    iget v6, p0, Landroid/support/design/internal/BottomNavigationMenuView;->labelVisibilityMode:I

    invoke-virtual {v5, v6}, Landroid/support/design/internal/BottomNavigationItemView;->setLabelVisibilityMode(I)V

    .line 562
    iget-object v5, p0, Landroid/support/design/internal/BottomNavigationMenuView;->buttons:[Landroid/support/design/internal/BottomNavigationItemView;

    aget-object v5, v5, v0

    invoke-virtual {v5, v4}, Landroid/support/design/internal/BottomNavigationItemView;->setShifting(Z)V

    .line 563
    iget-object v5, p0, Landroid/support/design/internal/BottomNavigationMenuView;->buttons:[Landroid/support/design/internal/BottomNavigationItemView;

    aget-object v6, v5, v0

    iget-object v5, p0, Landroid/support/design/internal/BottomNavigationMenuView;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v5, v0}, Landroid/support/v7/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    check-cast v5, Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v6, v5, v7}, Landroid/support/design/internal/BottomNavigationItemView;->initialize(Landroid/support/v7/view/menu/MenuItemImpl;I)V

    .line 564
    iget-object v5, p0, Landroid/support/design/internal/BottomNavigationMenuView;->presenter:Landroid/support/design/internal/BottomNavigationPresenter;

    invoke-virtual {v5, v7}, Landroid/support/design/internal/BottomNavigationPresenter;->setUpdateSuspended(Z)V

    .line 559
    add-int/lit8 v0, v0, 0x1

    goto :goto_4f
.end method
