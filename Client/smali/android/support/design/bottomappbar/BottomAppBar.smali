.class public Landroid/support/design/bottomappbar/BottomAppBar;
.super Landroid/support/v7/widget/Toolbar;
.source "BottomAppBar.java"

# interfaces
.implements Landroid/support/design/widget/CoordinatorLayout$AttachedBehavior;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/bottomappbar/BottomAppBar$SavedState;,
        Landroid/support/design/bottomappbar/BottomAppBar$Behavior;,
        Landroid/support/design/bottomappbar/BottomAppBar$FabAlignmentMode;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:J = 0x12cL

.field public static final FAB_ALIGNMENT_MODE_CENTER:I = 0x0

.field public static final FAB_ALIGNMENT_MODE_END:I = 0x1


# instance fields
.field private attachAnimator:Landroid/animation/Animator;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private fabAlignmentMode:I

.field fabAnimationListener:Landroid/animation/AnimatorListenerAdapter;

.field private fabAttached:Z

.field private final fabOffsetEndMode:I

.field private hideOnScroll:Z

.field private final materialShapeDrawable:Landroid/support/design/shape/MaterialShapeDrawable;

.field private menuAnimator:Landroid/animation/Animator;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private modeAnimator:Landroid/animation/Animator;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final topEdgeTreatment:Landroid/support/design/bottomappbar/BottomAppBarTopEdgeTreatment;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 119
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/support/design/bottomappbar/BottomAppBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 123
    sget v0, Landroid/support/design/R$attr;->bottomAppBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/bottomappbar/BottomAppBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 124
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 127
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->fabAttached:Z

    .line 641
    new-instance v0, Landroid/support/design/bottomappbar/BottomAppBar$7;

    invoke-direct {v0, p0}, Landroid/support/design/bottomappbar/BottomAppBar$7;-><init>(Landroid/support/design/bottomappbar/BottomAppBar;)V

    iput-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->fabAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    .line 129
    sget-object v2, Landroid/support/design/R$styleable;->BottomAppBar:[I

    sget v4, Landroid/support/design/R$style;->Widget_MaterialComponents_BottomAppBar:I

    const/4 v0, 0x0

    new-array v5, v0, [I

    move-object v0, p1

    move-object v1, p2

    move v3, p3

    .line 130
    invoke-static/range {v0 .. v5}, Landroid/support/design/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 137
    .local v6, "a":Landroid/content/res/TypedArray;
    sget v0, Landroid/support/design/R$styleable;->BottomAppBar_backgroundTint:I

    .line 138
    invoke-static {p1, v6, v0}, Landroid/support/design/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v8

    .line 140
    .local v8, "backgroundTint":Landroid/content/res/ColorStateList;
    sget v0, Landroid/support/design/R$styleable;->BottomAppBar_fabCradleMargin:I

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    int-to-float v10, v0

    .line 141
    .local v10, "fabCradleMargin":F
    sget v0, Landroid/support/design/R$styleable;->BottomAppBar_fabCradleRoundedCornerRadius:I

    const/4 v1, 0x0

    .line 142
    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    int-to-float v9, v0

    .line 143
    .local v9, "fabCornerRadius":F
    sget v0, Landroid/support/design/R$styleable;->BottomAppBar_fabCradleVerticalOffset:I

    const/4 v1, 0x0

    .line 144
    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    int-to-float v11, v0

    .line 145
    .local v11, "fabVerticalOffset":F
    sget v0, Landroid/support/design/R$styleable;->BottomAppBar_fabAlignmentMode:I

    const/4 v1, 0x0

    .line 146
    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->fabAlignmentMode:I

    .line 147
    sget v0, Landroid/support/design/R$styleable;->BottomAppBar_hideOnScroll:I

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->hideOnScroll:Z

    .line 149
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 152
    invoke-virtual {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/design/R$dimen;->mtrl_bottomappbar_fabOffsetEndMode:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->fabOffsetEndMode:I

    .line 154
    new-instance v0, Landroid/support/design/bottomappbar/BottomAppBarTopEdgeTreatment;

    invoke-direct {v0, v10, v9, v11}, Landroid/support/design/bottomappbar/BottomAppBarTopEdgeTreatment;-><init>(FFF)V

    iput-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->topEdgeTreatment:Landroid/support/design/bottomappbar/BottomAppBarTopEdgeTreatment;

    .line 156
    new-instance v7, Landroid/support/design/shape/ShapePathModel;

    invoke-direct {v7}, Landroid/support/design/shape/ShapePathModel;-><init>()V

    .line 157
    .local v7, "appBarModel":Landroid/support/design/shape/ShapePathModel;
    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->topEdgeTreatment:Landroid/support/design/bottomappbar/BottomAppBarTopEdgeTreatment;

    invoke-virtual {v7, v0}, Landroid/support/design/shape/ShapePathModel;->setTopEdge(Landroid/support/design/shape/EdgeTreatment;)V

    .line 158
    new-instance v0, Landroid/support/design/shape/MaterialShapeDrawable;

    invoke-direct {v0, v7}, Landroid/support/design/shape/MaterialShapeDrawable;-><init>(Landroid/support/design/shape/ShapePathModel;)V

    iput-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->materialShapeDrawable:Landroid/support/design/shape/MaterialShapeDrawable;

    .line 159
    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->materialShapeDrawable:Landroid/support/design/shape/MaterialShapeDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/design/shape/MaterialShapeDrawable;->setShadowEnabled(Z)V

    .line 160
    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->materialShapeDrawable:Landroid/support/design/shape/MaterialShapeDrawable;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/support/design/shape/MaterialShapeDrawable;->setPaintStyle(Landroid/graphics/Paint$Style;)V

    .line 161
    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->materialShapeDrawable:Landroid/support/design/shape/MaterialShapeDrawable;

    invoke-static {v0, v8}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 162
    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->materialShapeDrawable:Landroid/support/design/shape/MaterialShapeDrawable;

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 163
    return-void
.end method

.method static synthetic access$002(Landroid/support/design/bottomappbar/BottomAppBar;Landroid/animation/Animator;)Landroid/animation/Animator;
    .registers 2
    .param p0, "x0"    # Landroid/support/design/bottomappbar/BottomAppBar;
    .param p1, "x1"    # Landroid/animation/Animator;

    .prologue
    .line 86
    iput-object p1, p0, Landroid/support/design/bottomappbar/BottomAppBar;->modeAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$100(Landroid/support/design/bottomappbar/BottomAppBar;)Landroid/support/design/bottomappbar/BottomAppBarTopEdgeTreatment;
    .registers 2
    .param p0, "x0"    # Landroid/support/design/bottomappbar/BottomAppBar;

    .prologue
    .line 86
    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->topEdgeTreatment:Landroid/support/design/bottomappbar/BottomAppBarTopEdgeTreatment;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/support/design/bottomappbar/BottomAppBar;Landroid/support/design/widget/FloatingActionButton;)V
    .registers 2
    .param p0, "x0"    # Landroid/support/design/bottomappbar/BottomAppBar;
    .param p1, "x1"    # Landroid/support/design/widget/FloatingActionButton;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Landroid/support/design/bottomappbar/BottomAppBar;->addFabAnimationListeners(Landroid/support/design/widget/FloatingActionButton;)V

    return-void
.end method

.method static synthetic access$1100(Landroid/support/design/bottomappbar/BottomAppBar;)Landroid/support/design/widget/FloatingActionButton;
    .registers 2
    .param p0, "x0"    # Landroid/support/design/bottomappbar/BottomAppBar;

    .prologue
    .line 86
    invoke-direct {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->findDependentFab()Landroid/support/design/widget/FloatingActionButton;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Landroid/support/design/bottomappbar/BottomAppBar;)Z
    .registers 2
    .param p0, "x0"    # Landroid/support/design/bottomappbar/BottomAppBar;

    .prologue
    .line 86
    invoke-direct {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->isAnimationRunning()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Landroid/support/design/bottomappbar/BottomAppBar;)V
    .registers 1
    .param p0, "x0"    # Landroid/support/design/bottomappbar/BottomAppBar;

    .prologue
    .line 86
    invoke-direct {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->setCutoutState()V

    return-void
.end method

.method static synthetic access$1400(Landroid/support/design/bottomappbar/BottomAppBar;)F
    .registers 2
    .param p0, "x0"    # Landroid/support/design/bottomappbar/BottomAppBar;

    .prologue
    .line 86
    invoke-direct {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->getFabTranslationY()F

    move-result v0

    return v0
.end method

.method static synthetic access$200(Landroid/support/design/bottomappbar/BottomAppBar;)Landroid/support/design/shape/MaterialShapeDrawable;
    .registers 2
    .param p0, "x0"    # Landroid/support/design/bottomappbar/BottomAppBar;

    .prologue
    .line 86
    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->materialShapeDrawable:Landroid/support/design/shape/MaterialShapeDrawable;

    return-object v0
.end method

.method static synthetic access$302(Landroid/support/design/bottomappbar/BottomAppBar;Landroid/animation/Animator;)Landroid/animation/Animator;
    .registers 2
    .param p0, "x0"    # Landroid/support/design/bottomappbar/BottomAppBar;
    .param p1, "x1"    # Landroid/animation/Animator;

    .prologue
    .line 86
    iput-object p1, p0, Landroid/support/design/bottomappbar/BottomAppBar;->menuAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$400(Landroid/support/design/bottomappbar/BottomAppBar;Landroid/support/v7/widget/ActionMenuView;IZ)V
    .registers 4
    .param p0, "x0"    # Landroid/support/design/bottomappbar/BottomAppBar;
    .param p1, "x1"    # Landroid/support/v7/widget/ActionMenuView;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 86
    invoke-direct {p0, p1, p2, p3}, Landroid/support/design/bottomappbar/BottomAppBar;->translateActionMenuView(Landroid/support/v7/widget/ActionMenuView;IZ)V

    return-void
.end method

.method static synthetic access$502(Landroid/support/design/bottomappbar/BottomAppBar;Landroid/animation/Animator;)Landroid/animation/Animator;
    .registers 2
    .param p0, "x0"    # Landroid/support/design/bottomappbar/BottomAppBar;
    .param p1, "x1"    # Landroid/animation/Animator;

    .prologue
    .line 86
    iput-object p1, p0, Landroid/support/design/bottomappbar/BottomAppBar;->attachAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$600(Landroid/support/design/bottomappbar/BottomAppBar;)Z
    .registers 2
    .param p0, "x0"    # Landroid/support/design/bottomappbar/BottomAppBar;

    .prologue
    .line 86
    iget-boolean v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->fabAttached:Z

    return v0
.end method

.method static synthetic access$700(Landroid/support/design/bottomappbar/BottomAppBar;Z)V
    .registers 2
    .param p0, "x0"    # Landroid/support/design/bottomappbar/BottomAppBar;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    invoke-direct {p0, p1}, Landroid/support/design/bottomappbar/BottomAppBar;->maybeAnimateAttachChange(Z)V

    return-void
.end method

.method static synthetic access$800(Landroid/support/design/bottomappbar/BottomAppBar;)I
    .registers 2
    .param p0, "x0"    # Landroid/support/design/bottomappbar/BottomAppBar;

    .prologue
    .line 86
    iget v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->fabAlignmentMode:I

    return v0
.end method

.method static synthetic access$900(Landroid/support/design/bottomappbar/BottomAppBar;IZ)V
    .registers 3
    .param p0, "x0"    # Landroid/support/design/bottomappbar/BottomAppBar;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Landroid/support/design/bottomappbar/BottomAppBar;->maybeAnimateMenuView(IZ)V

    return-void
.end method

.method private addFabAnimationListeners(Landroid/support/design/widget/FloatingActionButton;)V
    .registers 3
    .param p1, "fab"    # Landroid/support/design/widget/FloatingActionButton;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 657
    invoke-direct {p0, p1}, Landroid/support/design/bottomappbar/BottomAppBar;->removeFabAnimationListeners(Landroid/support/design/widget/FloatingActionButton;)V

    .line 658
    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->fabAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p1, v0}, Landroid/support/design/widget/FloatingActionButton;->addOnHideAnimationListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 659
    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->fabAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p1, v0}, Landroid/support/design/widget/FloatingActionButton;->addOnShowAnimationListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 660
    return-void
.end method

.method private cancelAnimations()V
    .registers 2

    .prologue
    .line 590
    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->attachAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_9

    .line 591
    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->attachAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 593
    :cond_9
    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->menuAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_12

    .line 594
    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->menuAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 596
    :cond_12
    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->modeAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_1b

    .line 597
    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->modeAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 599
    :cond_1b
    return-void
.end method

.method private createCradleShapeAnimation(ZLjava/util/List;)V
    .registers 7
    .param p1, "showCradle"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 474
    .local p2, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    if-eqz p1, :cond_b

    .line 475
    iget-object v1, p0, Landroid/support/design/bottomappbar/BottomAppBar;->topEdgeTreatment:Landroid/support/design/bottomappbar/BottomAppBarTopEdgeTreatment;

    invoke-direct {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->getFabTranslationX()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/design/bottomappbar/BottomAppBarTopEdgeTreatment;->setHorizontalOffset(F)V

    .line 478
    :cond_b
    const/4 v1, 0x2

    new-array v2, v1, [F

    const/4 v1, 0x0

    iget-object v3, p0, Landroid/support/design/bottomappbar/BottomAppBar;->materialShapeDrawable:Landroid/support/design/shape/MaterialShapeDrawable;

    .line 479
    invoke-virtual {v3}, Landroid/support/design/shape/MaterialShapeDrawable;->getInterpolation()F

    move-result v3

    aput v3, v2, v1

    const/4 v3, 0x1

    if-eqz p1, :cond_33

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_1c
    aput v1, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 480
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v1, Landroid/support/design/bottomappbar/BottomAppBar$6;

    invoke-direct {v1, p0}, Landroid/support/design/bottomappbar/BottomAppBar$6;-><init>(Landroid/support/design/bottomappbar/BottomAppBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 487
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 488
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 489
    return-void

    .line 479
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    :cond_33
    const/4 v1, 0x0

    goto :goto_1c
.end method

.method private createCradleTranslationAnimation(ILjava/util/List;)V
    .registers 7
    .param p1, "targetMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 316
    .local p2, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    iget-boolean v1, p0, Landroid/support/design/bottomappbar/BottomAppBar;->fabAttached:Z

    if-nez v1, :cond_5

    .line 334
    :goto_4
    return-void

    .line 320
    :cond_5
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/support/design/bottomappbar/BottomAppBar;->topEdgeTreatment:Landroid/support/design/bottomappbar/BottomAppBarTopEdgeTreatment;

    .line 322
    invoke-virtual {v3}, Landroid/support/design/bottomappbar/BottomAppBarTopEdgeTreatment;->getHorizontalOffset()F

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    invoke-direct {p0, p1}, Landroid/support/design/bottomappbar/BottomAppBar;->getFabTranslationX(I)I

    move-result v3

    int-to-float v3, v3

    aput v3, v1, v2

    .line 321
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 324
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v1, Landroid/support/design/bottomappbar/BottomAppBar$2;

    invoke-direct {v1, p0}, Landroid/support/design/bottomappbar/BottomAppBar$2;-><init>(Landroid/support/design/bottomappbar/BottomAppBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 332
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 333
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4
.end method

.method private createFabTranslationXAnimation(ILjava/util/List;)V
    .registers 9
    .param p1, "targetMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 360
    .line 361
    .local p2, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    invoke-direct {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->findDependentFab()Landroid/support/design/widget/FloatingActionButton;

    move-result-object v1

    const-string v2, "translationX"

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Landroid/support/design/bottomappbar/BottomAppBar;->getFabTranslationX(I)I

    move-result v5

    int-to-float v5, v5

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 362
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 363
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    return-void
.end method

.method private createFabTranslationYAnimation(ZLjava/util/List;)V
    .registers 9
    .param p1, "targetAttached"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 492
    .local p2, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    invoke-direct {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->findDependentFab()Landroid/support/design/widget/FloatingActionButton;

    move-result-object v1

    .line 493
    .local v1, "fab":Landroid/support/design/widget/FloatingActionButton;
    if-nez v1, :cond_7

    .line 501
    :goto_6
    return-void

    .line 497
    :cond_7
    const-string v2, "translationY"

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    .line 498
    invoke-direct {p0, p1}, Landroid/support/design/bottomappbar/BottomAppBar;->getFabTranslationY(Z)F

    move-result v5

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 499
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 500
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6
.end method

.method private createMenuViewTranslationAnimation(IZLjava/util/List;)V
    .registers 13
    .param p1, "targetMode"    # I
    .param p2, "targetAttached"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 403
    invoke-direct {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->getActionMenuView()Landroid/support/v7/widget/ActionMenuView;

    move-result-object v0

    .line 406
    .local v0, "actionMenuView":Landroid/support/v7/widget/ActionMenuView;
    if-nez v0, :cond_b

    .line 443
    :cond_a
    :goto_a
    return-void

    .line 410
    :cond_b
    const-string v4, "alpha"

    new-array v5, v7, [F

    aput v6, v5, v8

    invoke-static {v0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 412
    .local v1, "fadeIn":Landroid/animation/Animator;
    iget-boolean v4, p0, Landroid/support/design/bottomappbar/BottomAppBar;->fabAttached:Z

    if-nez v4, :cond_21

    if-eqz p2, :cond_52

    invoke-direct {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->isVisibleFab()Z

    move-result v4

    if-eqz v4, :cond_52

    :cond_21
    iget v4, p0, Landroid/support/design/bottomappbar/BottomAppBar;->fabAlignmentMode:I

    if-eq v4, v7, :cond_27

    if-ne p1, v7, :cond_52

    .line 415
    :cond_27
    const-string v4, "alpha"

    new-array v5, v7, [F

    const/4 v6, 0x0

    aput v6, v5, v8

    invoke-static {v0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 417
    .local v2, "fadeOut":Landroid/animation/Animator;
    new-instance v4, Landroid/support/design/bottomappbar/BottomAppBar$4;

    invoke-direct {v4, p0, v0, p1, p2}, Landroid/support/design/bottomappbar/BottomAppBar$4;-><init>(Landroid/support/design/bottomappbar/BottomAppBar;Landroid/support/v7/widget/ActionMenuView;IZ)V

    invoke-virtual {v2, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 434
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 435
    .local v3, "set":Landroid/animation/AnimatorSet;
    const-wide/16 v4, 0x96

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 436
    const/4 v4, 0x2

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v2, v4, v8

    aput-object v1, v4, v7

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 437
    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 438
    .end local v2    # "fadeOut":Landroid/animation/Animator;
    .end local v3    # "set":Landroid/animation/AnimatorSet;
    :cond_52
    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->getAlpha()F

    move-result v4

    cmpg-float v4, v4, v6

    if-gez v4, :cond_a

    .line 441
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a
.end method

.method private findDependentFab()Landroid/support/design/widget/FloatingActionButton;
    .registers 6
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 338
    invoke-virtual {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/support/design/widget/CoordinatorLayout;

    if-nez v2, :cond_b

    move-object v1, v3

    .line 350
    :goto_a
    return-object v1

    .line 343
    :cond_b
    invoke-virtual {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/CoordinatorLayout;

    invoke-virtual {v2, p0}, Landroid/support/design/widget/CoordinatorLayout;->getDependents(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    .line 344
    .local v0, "dependents":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 345
    .local v1, "v":Landroid/view/View;
    instance-of v4, v1, Landroid/support/design/widget/FloatingActionButton;

    if-eqz v4, :cond_19

    .line 346
    check-cast v1, Landroid/support/design/widget/FloatingActionButton;

    goto :goto_a

    .end local v1    # "v":Landroid/view/View;
    :cond_2c
    move-object v1, v3

    .line 350
    goto :goto_a
.end method

.method private getActionMenuView()Landroid/support/v7/widget/ActionMenuView;
    .registers 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 544
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_15

    .line 545
    invoke-virtual {p0, v0}, Landroid/support/design/bottomappbar/BottomAppBar;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 546
    .local v1, "view":Landroid/view/View;
    instance-of v2, v1, Landroid/support/v7/widget/ActionMenuView;

    if-eqz v2, :cond_12

    .line 547
    check-cast v1, Landroid/support/v7/widget/ActionMenuView;

    .line 551
    .end local v1    # "view":Landroid/view/View;
    :goto_11
    return-object v1

    .line 544
    .restart local v1    # "view":Landroid/view/View;
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 551
    .end local v1    # "view":Landroid/view/View;
    :cond_15
    const/4 v1, 0x0

    goto :goto_11
.end method

.method private getFabTranslationX()F
    .registers 2

    .prologue
    .line 539
    iget v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->fabAlignmentMode:I

    invoke-direct {p0, v0}, Landroid/support/design/bottomappbar/BottomAppBar;->getFabTranslationX(I)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method private getFabTranslationX(I)I
    .registers 6
    .param p1, "fabAlignmentMode"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 532
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v3

    if-ne v3, v1, :cond_19

    move v0, v1

    .line 533
    .local v0, "isRtl":Z
    :goto_9
    if-ne p1, v1, :cond_1b

    .line 534
    invoke-virtual {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Landroid/support/design/bottomappbar/BottomAppBar;->fabOffsetEndMode:I

    sub-int/2addr v2, v3

    if-eqz v0, :cond_17

    const/4 v1, -0x1

    :cond_17
    mul-int/2addr v1, v2

    .line 533
    :goto_18
    return v1

    .end local v0    # "isRtl":Z
    :cond_19
    move v0, v2

    .line 532
    goto :goto_9

    .restart local v0    # "isRtl":Z
    :cond_1b
    move v1, v2

    .line 534
    goto :goto_18
.end method

.method private getFabTranslationY()F
    .registers 2

    .prologue
    .line 528
    iget-boolean v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->fabAttached:Z

    invoke-direct {p0, v0}, Landroid/support/design/bottomappbar/BottomAppBar;->getFabTranslationY(Z)F

    move-result v0

    return v0
.end method

.method private getFabTranslationY(Z)F
    .registers 11
    .param p1, "targetAttached"    # Z

    .prologue
    const/4 v7, 0x0

    .line 504
    invoke-direct {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->findDependentFab()Landroid/support/design/widget/FloatingActionButton;

    move-result-object v2

    .line 505
    .local v2, "fab":Landroid/support/design/widget/FloatingActionButton;
    if-nez v2, :cond_8

    .line 524
    :goto_7
    return v7

    .line 510
    :cond_8
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 511
    .local v4, "fabContentRect":Landroid/graphics/Rect;
    invoke-virtual {v2, v4}, Landroid/support/design/widget/FloatingActionButton;->getContentRect(Landroid/graphics/Rect;)Z

    .line 513
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v5, v8

    .line 514
    .local v5, "fabHeight":F
    cmpl-float v7, v5, v7

    if-nez v7, :cond_1e

    .line 516
    invoke-virtual {v2}, Landroid/support/design/widget/FloatingActionButton;->getMeasuredHeight()I

    move-result v7

    int-to-float v5, v7

    .line 518
    :cond_1e
    invoke-virtual {v2}, Landroid/support/design/widget/FloatingActionButton;->getHeight()I

    move-result v7

    iget v8, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    int-to-float v3, v7

    .line 519
    .local v3, "fabBottomShadow":F
    invoke-virtual {v2}, Landroid/support/design/widget/FloatingActionButton;->getHeight()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v6, v7

    .line 521
    .local v6, "fabVerticalShadowPadding":F
    invoke-virtual {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->getCradleVerticalOffset()F

    move-result v7

    neg-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v5, v8

    add-float/2addr v7, v8

    add-float v0, v7, v3

    .line 522
    .local v0, "attached":F
    invoke-virtual {v2}, Landroid/support/design/widget/FloatingActionButton;->getPaddingBottom()I

    move-result v7

    int-to-float v7, v7

    sub-float v1, v6, v7

    .line 524
    .local v1, "detached":F
    invoke-virtual {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->getMeasuredHeight()I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    if-eqz p1, :cond_4d

    .end local v0    # "attached":F
    :goto_4b
    add-float/2addr v7, v0

    goto :goto_7

    .restart local v0    # "attached":F
    :cond_4d
    move v0, v1

    goto :goto_4b
.end method

.method private isAnimationRunning()Z
    .registers 2

    .prologue
    .line 602
    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->attachAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->attachAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_24

    :cond_c
    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->menuAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->menuAnimator:Landroid/animation/Animator;

    .line 603
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_24

    :cond_18
    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->modeAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_26

    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->modeAnimator:Landroid/animation/Animator;

    .line 604
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_26

    :cond_24
    const/4 v0, 0x1

    .line 602
    :goto_25
    return v0

    .line 604
    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method

.method private isVisibleFab()Z
    .registers 3

    .prologue
    .line 354
    invoke-direct {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->findDependentFab()Landroid/support/design/widget/FloatingActionButton;

    move-result-object v0

    .line 355
    .local v0, "fab":Landroid/support/design/widget/FloatingActionButton;
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->isOrWillBeShown()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method private maybeAnimateAttachChange(Z)V
    .registers 6
    .param p1, "targetAttached"    # Z

    .prologue
    .line 446
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 470
    :goto_6
    return-void

    .line 450
    :cond_7
    iget-object v2, p0, Landroid/support/design/bottomappbar/BottomAppBar;->attachAnimator:Landroid/animation/Animator;

    if-eqz v2, :cond_10

    .line 451
    iget-object v2, p0, Landroid/support/design/bottomappbar/BottomAppBar;->attachAnimator:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    .line 454
    :cond_10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 456
    .local v0, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    if-eqz p1, :cond_3e

    invoke-direct {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->isVisibleFab()Z

    move-result v2

    if-eqz v2, :cond_3e

    const/4 v2, 0x1

    :goto_1e
    invoke-direct {p0, v2, v0}, Landroid/support/design/bottomappbar/BottomAppBar;->createCradleShapeAnimation(ZLjava/util/List;)V

    .line 457
    invoke-direct {p0, p1, v0}, Landroid/support/design/bottomappbar/BottomAppBar;->createFabTranslationYAnimation(ZLjava/util/List;)V

    .line 459
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 460
    .local v1, "set":Landroid/animation/AnimatorSet;
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 461
    iput-object v1, p0, Landroid/support/design/bottomappbar/BottomAppBar;->attachAnimator:Landroid/animation/Animator;

    .line 462
    iget-object v2, p0, Landroid/support/design/bottomappbar/BottomAppBar;->attachAnimator:Landroid/animation/Animator;

    new-instance v3, Landroid/support/design/bottomappbar/BottomAppBar$5;

    invoke-direct {v3, p0}, Landroid/support/design/bottomappbar/BottomAppBar$5;-><init>(Landroid/support/design/bottomappbar/BottomAppBar;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 469
    iget-object v2, p0, Landroid/support/design/bottomappbar/BottomAppBar;->attachAnimator:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    goto :goto_6

    .line 456
    .end local v1    # "set":Landroid/animation/AnimatorSet;
    :cond_3e
    const/4 v2, 0x0

    goto :goto_1e
.end method

.method private maybeAnimateMenuView(IZ)V
    .registers 7
    .param p1, "targetMode"    # I
    .param p2, "newFabAttached"    # Z

    .prologue
    .line 367
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 396
    :goto_6
    return-void

    .line 371
    :cond_7
    iget-object v2, p0, Landroid/support/design/bottomappbar/BottomAppBar;->menuAnimator:Landroid/animation/Animator;

    if-eqz v2, :cond_10

    .line 372
    iget-object v2, p0, Landroid/support/design/bottomappbar/BottomAppBar;->menuAnimator:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    .line 375
    :cond_10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 378
    .local v0, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    invoke-direct {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->isVisibleFab()Z

    move-result v2

    if-nez v2, :cond_1d

    .line 379
    const/4 p1, 0x0

    .line 380
    const/4 p2, 0x0

    .line 383
    :cond_1d
    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/bottomappbar/BottomAppBar;->createMenuViewTranslationAnimation(IZLjava/util/List;)V

    .line 385
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 386
    .local v1, "set":Landroid/animation/AnimatorSet;
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 387
    iput-object v1, p0, Landroid/support/design/bottomappbar/BottomAppBar;->menuAnimator:Landroid/animation/Animator;

    .line 388
    iget-object v2, p0, Landroid/support/design/bottomappbar/BottomAppBar;->menuAnimator:Landroid/animation/Animator;

    new-instance v3, Landroid/support/design/bottomappbar/BottomAppBar$3;

    invoke-direct {v3, p0}, Landroid/support/design/bottomappbar/BottomAppBar$3;-><init>(Landroid/support/design/bottomappbar/BottomAppBar;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 395
    iget-object v2, p0, Landroid/support/design/bottomappbar/BottomAppBar;->menuAnimator:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    goto :goto_6
.end method

.method private maybeAnimateModeChange(I)V
    .registers 6
    .param p1, "targetMode"    # I

    .prologue
    .line 288
    iget v2, p0, Landroid/support/design/bottomappbar/BottomAppBar;->fabAlignmentMode:I

    if-eq v2, p1, :cond_a

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 312
    :cond_a
    :goto_a
    return-void

    .line 292
    :cond_b
    iget-object v2, p0, Landroid/support/design/bottomappbar/BottomAppBar;->modeAnimator:Landroid/animation/Animator;

    if-eqz v2, :cond_14

    .line 293
    iget-object v2, p0, Landroid/support/design/bottomappbar/BottomAppBar;->modeAnimator:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    .line 296
    :cond_14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 298
    .local v0, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    invoke-direct {p0, p1, v0}, Landroid/support/design/bottomappbar/BottomAppBar;->createCradleTranslationAnimation(ILjava/util/List;)V

    .line 299
    invoke-direct {p0, p1, v0}, Landroid/support/design/bottomappbar/BottomAppBar;->createFabTranslationXAnimation(ILjava/util/List;)V

    .line 301
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 302
    .local v1, "set":Landroid/animation/AnimatorSet;
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 303
    iput-object v1, p0, Landroid/support/design/bottomappbar/BottomAppBar;->modeAnimator:Landroid/animation/Animator;

    .line 304
    iget-object v2, p0, Landroid/support/design/bottomappbar/BottomAppBar;->modeAnimator:Landroid/animation/Animator;

    new-instance v3, Landroid/support/design/bottomappbar/BottomAppBar$1;

    invoke-direct {v3, p0}, Landroid/support/design/bottomappbar/BottomAppBar$1;-><init>(Landroid/support/design/bottomappbar/BottomAppBar;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 311
    iget-object v2, p0, Landroid/support/design/bottomappbar/BottomAppBar;->modeAnimator:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    goto :goto_a
.end method

.method private removeFabAnimationListeners(Landroid/support/design/widget/FloatingActionButton;)V
    .registers 3
    .param p1, "fab"    # Landroid/support/design/widget/FloatingActionButton;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 663
    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->fabAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p1, v0}, Landroid/support/design/widget/FloatingActionButton;->removeOnHideAnimationListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 664
    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->fabAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p1, v0}, Landroid/support/design/widget/FloatingActionButton;->removeOnShowAnimationListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 665
    return-void
.end method

.method private setCutoutState()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 619
    iget-object v2, p0, Landroid/support/design/bottomappbar/BottomAppBar;->topEdgeTreatment:Landroid/support/design/bottomappbar/BottomAppBarTopEdgeTreatment;

    invoke-direct {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->getFabTranslationX()F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/support/design/bottomappbar/BottomAppBarTopEdgeTreatment;->setHorizontalOffset(F)V

    .line 620
    invoke-direct {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->findDependentFab()Landroid/support/design/widget/FloatingActionButton;

    move-result-object v1

    .line 621
    .local v1, "fab":Landroid/support/design/widget/FloatingActionButton;
    iget-object v4, p0, Landroid/support/design/bottomappbar/BottomAppBar;->materialShapeDrawable:Landroid/support/design/shape/MaterialShapeDrawable;

    iget-boolean v2, p0, Landroid/support/design/bottomappbar/BottomAppBar;->fabAttached:Z

    if-eqz v2, :cond_43

    invoke-direct {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->isVisibleFab()Z

    move-result v2

    if-eqz v2, :cond_43

    move v2, v3

    :goto_1d
    invoke-virtual {v4, v2}, Landroid/support/design/shape/MaterialShapeDrawable;->setInterpolation(F)V

    .line 622
    if-eqz v1, :cond_30

    .line 623
    invoke-direct {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->getFabTranslationY()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/design/widget/FloatingActionButton;->setTranslationY(F)V

    .line 624
    invoke-direct {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->getFabTranslationX()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/design/widget/FloatingActionButton;->setTranslationX(F)V

    .line 626
    :cond_30
    invoke-direct {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->getActionMenuView()Landroid/support/v7/widget/ActionMenuView;

    move-result-object v0

    .line 627
    .local v0, "actionMenuView":Landroid/support/v7/widget/ActionMenuView;
    if-eqz v0, :cond_42

    .line 628
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/ActionMenuView;->setAlpha(F)V

    .line 629
    invoke-direct {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->isVisibleFab()Z

    move-result v2

    if-nez v2, :cond_45

    .line 630
    invoke-direct {p0, v0, v5, v5}, Landroid/support/design/bottomappbar/BottomAppBar;->translateActionMenuView(Landroid/support/v7/widget/ActionMenuView;IZ)V

    .line 635
    :cond_42
    :goto_42
    return-void

    .line 621
    .end local v0    # "actionMenuView":Landroid/support/v7/widget/ActionMenuView;
    :cond_43
    const/4 v2, 0x0

    goto :goto_1d

    .line 632
    .restart local v0    # "actionMenuView":Landroid/support/v7/widget/ActionMenuView;
    :cond_45
    iget v2, p0, Landroid/support/design/bottomappbar/BottomAppBar;->fabAlignmentMode:I

    iget-boolean v3, p0, Landroid/support/design/bottomappbar/BottomAppBar;->fabAttached:Z

    invoke-direct {p0, v0, v2, v3}, Landroid/support/design/bottomappbar/BottomAppBar;->translateActionMenuView(Landroid/support/v7/widget/ActionMenuView;IZ)V

    goto :goto_42
.end method

.method private translateActionMenuView(Landroid/support/v7/widget/ActionMenuView;IZ)V
    .registers 15
    .param p1, "actionMenuView"    # Landroid/support/v7/widget/ActionMenuView;
    .param p2, "fabAlignmentMode"    # I
    .param p3, "fabAttached"    # Z

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 566
    const/4 v5, 0x0

    .line 567
    .local v5, "toolbarLeftContentEnd":I
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v7

    if-ne v7, v8, :cond_3e

    move v3, v8

    .line 570
    .local v3, "isRtl":Z
    :goto_a
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    invoke-virtual {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->getChildCount()I

    move-result v7

    if-ge v1, v7, :cond_47

    .line 571
    invoke-virtual {p0, v1}, Landroid/support/design/bottomappbar/BottomAppBar;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 573
    .local v6, "view":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    instance-of v7, v7, Landroid/support/v7/widget/Toolbar$LayoutParams;

    if-eqz v7, :cond_40

    .line 574
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/support/v7/widget/Toolbar$LayoutParams;

    iget v7, v7, Landroid/support/v7/widget/Toolbar$LayoutParams;->gravity:I

    const v10, 0x800007

    and-int/2addr v7, v10

    const v10, 0x800003

    if-ne v7, v10, :cond_40

    move v2, v8

    .line 577
    .local v2, "isAlignedToStart":Z
    :goto_2f
    if-eqz v2, :cond_3b

    .line 578
    if-eqz v3, :cond_42

    .line 579
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v7

    :goto_37
    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 570
    :cond_3b
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .end local v1    # "i":I
    .end local v2    # "isAlignedToStart":Z
    .end local v3    # "isRtl":Z
    .end local v6    # "view":Landroid/view/View;
    :cond_3e
    move v3, v9

    .line 567
    goto :goto_a

    .restart local v1    # "i":I
    .restart local v3    # "isRtl":Z
    .restart local v6    # "view":Landroid/view/View;
    :cond_40
    move v2, v9

    .line 574
    goto :goto_2f

    .line 579
    .restart local v2    # "isAlignedToStart":Z
    :cond_42
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    goto :goto_37

    .line 583
    .end local v2    # "isAlignedToStart":Z
    .end local v6    # "view":Landroid/view/View;
    :cond_47
    if-eqz v3, :cond_58

    invoke-virtual {p1}, Landroid/support/v7/widget/ActionMenuView;->getRight()I

    move-result v0

    .line 584
    .local v0, "end":I
    :goto_4d
    sub-int v4, v5, v0

    .line 585
    .local v4, "offset":I
    if-ne p2, v8, :cond_5d

    if-eqz p3, :cond_5d

    int-to-float v7, v4

    :goto_54
    invoke-virtual {p1, v7}, Landroid/support/v7/widget/ActionMenuView;->setTranslationX(F)V

    .line 587
    return-void

    .line 583
    .end local v0    # "end":I
    .end local v4    # "offset":I
    :cond_58
    invoke-virtual {p1}, Landroid/support/v7/widget/ActionMenuView;->getLeft()I

    move-result v0

    goto :goto_4d

    .line 585
    .restart local v0    # "end":I
    .restart local v4    # "offset":I
    :cond_5d
    const/4 v7, 0x0

    goto :goto_54
.end method


# virtual methods
.method public getBackgroundTint()Landroid/content/res/ColorStateList;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 193
    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->materialShapeDrawable:Landroid/support/design/shape/MaterialShapeDrawable;

    invoke-virtual {v0}, Landroid/support/design/shape/MaterialShapeDrawable;->getTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/design/widget/CoordinatorLayout$Behavior",
            "<",
            "Landroid/support/design/bottomappbar/BottomAppBar;",
            ">;"
        }
    .end annotation

    .prologue
    .line 680
    new-instance v0, Landroid/support/design/bottomappbar/BottomAppBar$Behavior;

    invoke-direct {v0}, Landroid/support/design/bottomappbar/BottomAppBar$Behavior;-><init>()V

    return-object v0
.end method

.method public getCradleVerticalOffset()F
    .registers 2
    .annotation build Landroid/support/annotation/Dimension;
    .end annotation

    .prologue
    .line 233
    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->topEdgeTreatment:Landroid/support/design/bottomappbar/BottomAppBarTopEdgeTreatment;

    invoke-virtual {v0}, Landroid/support/design/bottomappbar/BottomAppBarTopEdgeTreatment;->getCradleVerticalOffset()F

    move-result v0

    return v0
.end method

.method public getFabAlignmentMode()I
    .registers 2

    .prologue
    .line 171
    iget v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->fabAlignmentMode:I

    return v0
.end method

.method public getFabCradleMargin()F
    .registers 2

    .prologue
    .line 200
    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->topEdgeTreatment:Landroid/support/design/bottomappbar/BottomAppBarTopEdgeTreatment;

    invoke-virtual {v0}, Landroid/support/design/bottomappbar/BottomAppBarTopEdgeTreatment;->getFabCradleMargin()F

    move-result v0

    return v0
.end method

.method public getFabCradleRoundedCornerRadius()F
    .registers 2
    .annotation build Landroid/support/annotation/Dimension;
    .end annotation

    .prologue
    .line 216
    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->topEdgeTreatment:Landroid/support/design/bottomappbar/BottomAppBarTopEdgeTreatment;

    invoke-virtual {v0}, Landroid/support/design/bottomappbar/BottomAppBarTopEdgeTreatment;->getFabCradleRoundedCornerRadius()F

    move-result v0

    return v0
.end method

.method public getHideOnScroll()Z
    .registers 2

    .prologue
    .line 254
    iget-boolean v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->hideOnScroll:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .registers 6
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 609
    invoke-super/range {p0 .. p5}, Landroid/support/v7/widget/Toolbar;->onLayout(ZIIII)V

    .line 612
    invoke-direct {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->cancelAnimations()V

    .line 614
    invoke-direct {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->setCutoutState()V

    .line 615
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 795
    instance-of v1, p1, Landroid/support/design/bottomappbar/BottomAppBar$SavedState;

    if-nez v1, :cond_8

    .line 796
    invoke-super {p0, p1}, Landroid/support/v7/widget/Toolbar;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 803
    :goto_7
    return-void

    :cond_8
    move-object v0, p1

    .line 799
    check-cast v0, Landroid/support/design/bottomappbar/BottomAppBar$SavedState;

    .line 800
    .local v0, "savedState":Landroid/support/design/bottomappbar/BottomAppBar$SavedState;
    invoke-virtual {v0}, Landroid/support/design/bottomappbar/BottomAppBar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/support/v7/widget/Toolbar;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 801
    iget v1, v0, Landroid/support/design/bottomappbar/BottomAppBar$SavedState;->fabAlignmentMode:I

    iput v1, p0, Landroid/support/design/bottomappbar/BottomAppBar;->fabAlignmentMode:I

    .line 802
    iget-boolean v1, v0, Landroid/support/design/bottomappbar/BottomAppBar$SavedState;->fabAttached:Z

    iput-boolean v1, p0, Landroid/support/design/bottomappbar/BottomAppBar;->fabAttached:Z

    goto :goto_7
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .prologue
    .line 786
    invoke-super {p0}, Landroid/support/v7/widget/Toolbar;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 787
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Landroid/support/design/bottomappbar/BottomAppBar$SavedState;

    invoke-direct {v0, v1}, Landroid/support/design/bottomappbar/BottomAppBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 788
    .local v0, "savedState":Landroid/support/design/bottomappbar/BottomAppBar$SavedState;
    iget v2, p0, Landroid/support/design/bottomappbar/BottomAppBar;->fabAlignmentMode:I

    iput v2, v0, Landroid/support/design/bottomappbar/BottomAppBar$SavedState;->fabAlignmentMode:I

    .line 789
    iget-boolean v2, p0, Landroid/support/design/bottomappbar/BottomAppBar;->fabAttached:Z

    iput-boolean v2, v0, Landroid/support/design/bottomappbar/BottomAppBar$SavedState;->fabAttached:Z

    .line 790
    return-object v0
.end method

.method public replaceMenu(I)V
    .registers 3
    .param p1, "newMenu"    # I
        .annotation build Landroid/support/annotation/MenuRes;
        .end annotation
    .end param

    .prologue
    .line 272
    invoke-virtual {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    .line 273
    invoke-virtual {p0, p1}, Landroid/support/design/bottomappbar/BottomAppBar;->inflateMenu(I)V

    .line 274
    return-void
.end method

.method public setBackgroundTint(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "backgroundTint"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 188
    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->materialShapeDrawable:Landroid/support/design/shape/MaterialShapeDrawable;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 189
    return-void
.end method

.method public setCradleVerticalOffset(F)V
    .registers 3
    .param p1, "verticalOffset"    # F
        .annotation build Landroid/support/annotation/Dimension;
        .end annotation
    .end param

    .prologue
    .line 242
    invoke-virtual {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->getCradleVerticalOffset()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_12

    .line 243
    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->topEdgeTreatment:Landroid/support/design/bottomappbar/BottomAppBarTopEdgeTreatment;

    invoke-virtual {v0, p1}, Landroid/support/design/bottomappbar/BottomAppBarTopEdgeTreatment;->setCradleVerticalOffset(F)V

    .line 244
    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->materialShapeDrawable:Landroid/support/design/shape/MaterialShapeDrawable;

    invoke-virtual {v0}, Landroid/support/design/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 246
    :cond_12
    return-void
.end method

.method public setFabAlignmentMode(I)V
    .registers 3
    .param p1, "fabAlignmentMode"    # I

    .prologue
    .line 182
    invoke-direct {p0, p1}, Landroid/support/design/bottomappbar/BottomAppBar;->maybeAnimateModeChange(I)V

    .line 183
    iget-boolean v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->fabAttached:Z

    invoke-direct {p0, p1, v0}, Landroid/support/design/bottomappbar/BottomAppBar;->maybeAnimateMenuView(IZ)V

    .line 184
    iput p1, p0, Landroid/support/design/bottomappbar/BottomAppBar;->fabAlignmentMode:I

    .line 185
    return-void
.end method

.method public setFabCradleMargin(F)V
    .registers 3
    .param p1, "cradleMargin"    # F
        .annotation build Landroid/support/annotation/Dimension;
        .end annotation
    .end param

    .prologue
    .line 207
    invoke-virtual {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->getFabCradleMargin()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_12

    .line 208
    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->topEdgeTreatment:Landroid/support/design/bottomappbar/BottomAppBarTopEdgeTreatment;

    invoke-virtual {v0, p1}, Landroid/support/design/bottomappbar/BottomAppBarTopEdgeTreatment;->setFabCradleMargin(F)V

    .line 209
    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->materialShapeDrawable:Landroid/support/design/shape/MaterialShapeDrawable;

    invoke-virtual {v0}, Landroid/support/design/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 211
    :cond_12
    return-void
.end method

.method public setFabCradleRoundedCornerRadius(F)V
    .registers 3
    .param p1, "roundedCornerRadius"    # F
        .annotation build Landroid/support/annotation/Dimension;
        .end annotation
    .end param

    .prologue
    .line 221
    invoke-virtual {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->getFabCradleRoundedCornerRadius()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_12

    .line 222
    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->topEdgeTreatment:Landroid/support/design/bottomappbar/BottomAppBarTopEdgeTreatment;

    invoke-virtual {v0, p1}, Landroid/support/design/bottomappbar/BottomAppBarTopEdgeTreatment;->setFabCradleRoundedCornerRadius(F)V

    .line 223
    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->materialShapeDrawable:Landroid/support/design/shape/MaterialShapeDrawable;

    invoke-virtual {v0}, Landroid/support/design/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 225
    :cond_12
    return-void
.end method

.method setFabDiameter(I)V
    .registers 4
    .param p1, "diameter"    # I
        .annotation build Landroid/support/annotation/Px;
        .end annotation
    .end param

    .prologue
    .line 281
    int-to-float v0, p1

    iget-object v1, p0, Landroid/support/design/bottomappbar/BottomAppBar;->topEdgeTreatment:Landroid/support/design/bottomappbar/BottomAppBarTopEdgeTreatment;

    invoke-virtual {v1}, Landroid/support/design/bottomappbar/BottomAppBarTopEdgeTreatment;->getFabDiameter()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_16

    .line 282
    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->topEdgeTreatment:Landroid/support/design/bottomappbar/BottomAppBarTopEdgeTreatment;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/support/design/bottomappbar/BottomAppBarTopEdgeTreatment;->setFabDiameter(F)V

    .line 283
    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->materialShapeDrawable:Landroid/support/design/shape/MaterialShapeDrawable;

    invoke-virtual {v0}, Landroid/support/design/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 285
    :cond_16
    return-void
.end method

.method public setHideOnScroll(Z)V
    .registers 2
    .param p1, "hide"    # Z

    .prologue
    .line 263
    iput-boolean p1, p0, Landroid/support/design/bottomappbar/BottomAppBar;->hideOnScroll:Z

    .line 264
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 675
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 670
    return-void
.end method
