.class Lcom/onevcat/uniwebview/AndroidBug5497Workaround;
.super Ljava/lang/Object;
.source "AndroidBug5497Workaround.java"


# instance fields
.field private frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

.field private lastOrientation:I

.field private mActivity:Landroid/app/Activity;

.field private mChildOfContent:Landroid/view/View;

.field private mContent:Landroid/widget/FrameLayout;

.field private mTargetHeight:F

.field private usableHeightPrevious:I


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/app/Activity;)V
    .registers 5
    .param p1, "frameLayout"    # Landroid/widget/FrameLayout;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p2, p0, Lcom/onevcat/uniwebview/AndroidBug5497Workaround;->mActivity:Landroid/app/Activity;

    .line 29
    iput-object p1, p0, Lcom/onevcat/uniwebview/AndroidBug5497Workaround;->mContent:Landroid/widget/FrameLayout;

    .line 30
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/onevcat/uniwebview/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    .line 31
    iget-object v0, p0, Lcom/onevcat/uniwebview/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/onevcat/uniwebview/AndroidBug5497Workaround$1;

    invoke-direct {v1, p0}, Lcom/onevcat/uniwebview/AndroidBug5497Workaround$1;-><init>(Lcom/onevcat/uniwebview/AndroidBug5497Workaround;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 36
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput-object v0, p0, Lcom/onevcat/uniwebview/AndroidBug5497Workaround;->frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/onevcat/uniwebview/AndroidBug5497Workaround;)V
    .registers 1
    .param p0, "x0"    # Lcom/onevcat/uniwebview/AndroidBug5497Workaround;

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/onevcat/uniwebview/AndroidBug5497Workaround;->possiblyResizeChildOfContent()V

    return-void
.end method

.method static assistFrameLayout(Landroid/widget/FrameLayout;Landroid/app/Activity;)Lcom/onevcat/uniwebview/AndroidBug5497Workaround;
    .registers 3
    .param p0, "frameLayout"    # Landroid/widget/FrameLayout;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 15
    new-instance v0, Lcom/onevcat/uniwebview/AndroidBug5497Workaround;

    invoke-direct {v0, p0, p1}, Lcom/onevcat/uniwebview/AndroidBug5497Workaround;-><init>(Landroid/widget/FrameLayout;Landroid/app/Activity;)V

    return-object v0
.end method

.method private computeUsableHeight()I
    .registers 4

    .prologue
    .line 56
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 57
    .local v0, "r":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/onevcat/uniwebview/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 58
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    return v1
.end method

.method private contentMaxY()F
    .registers 3

    .prologue
    .line 62
    iget v0, p0, Lcom/onevcat/uniwebview/AndroidBug5497Workaround;->mTargetHeight:F

    iget-object v1, p0, Lcom/onevcat/uniwebview/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method private keyboardHeight()F
    .registers 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/onevcat/uniwebview/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-direct {p0}, Lcom/onevcat/uniwebview/AndroidBug5497Workaround;->computeUsableHeight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    return v0
.end method

.method private overlapHeight()F
    .registers 4

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/onevcat/uniwebview/AndroidBug5497Workaround;->contentMaxY()F

    move-result v1

    invoke-direct {p0}, Lcom/onevcat/uniwebview/AndroidBug5497Workaround;->keyboardHeight()F

    move-result v2

    add-float/2addr v1, v2

    invoke-direct {p0}, Lcom/onevcat/uniwebview/AndroidBug5497Workaround;->screenHeight()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method private possiblyResizeChildOfContent()V
    .registers 6

    .prologue
    .line 41
    iget-object v2, p0, Lcom/onevcat/uniwebview/AndroidBug5497Workaround;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v0, v2, Landroid/content/res/Configuration;->orientation:I

    .line 42
    .local v0, "currentOrientation":I
    invoke-direct {p0}, Lcom/onevcat/uniwebview/AndroidBug5497Workaround;->computeUsableHeight()I

    move-result v1

    .line 44
    .local v1, "usableHeightNow":I
    iget v2, p0, Lcom/onevcat/uniwebview/AndroidBug5497Workaround;->lastOrientation:I

    if-eq v0, v2, :cond_19

    .line 45
    iput v0, p0, Lcom/onevcat/uniwebview/AndroidBug5497Workaround;->lastOrientation:I

    .line 46
    iput v1, p0, Lcom/onevcat/uniwebview/AndroidBug5497Workaround;->usableHeightPrevious:I

    .line 53
    :cond_18
    :goto_18
    return-void

    .line 47
    :cond_19
    iget v2, p0, Lcom/onevcat/uniwebview/AndroidBug5497Workaround;->usableHeightPrevious:I

    if-eq v1, v2, :cond_18

    .line 48
    iget-object v2, p0, Lcom/onevcat/uniwebview/AndroidBug5497Workaround;->frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/onevcat/uniwebview/AndroidBug5497Workaround;->mTargetHeight:F

    invoke-direct {p0}, Lcom/onevcat/uniwebview/AndroidBug5497Workaround;->overlapHeight()F

    move-result v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 49
    iget-object v2, p0, Lcom/onevcat/uniwebview/AndroidBug5497Workaround;->mContent:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 51
    iput v1, p0, Lcom/onevcat/uniwebview/AndroidBug5497Workaround;->usableHeightPrevious:I

    goto :goto_18
.end method

.method private screenHeight()F
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/onevcat/uniwebview/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method


# virtual methods
.method setTargetHeight(F)V
    .registers 2
    .param p1, "targetHeight"    # F

    .prologue
    .line 78
    iput p1, p0, Lcom/onevcat/uniwebview/AndroidBug5497Workaround;->mTargetHeight:F

    .line 79
    return-void
.end method
