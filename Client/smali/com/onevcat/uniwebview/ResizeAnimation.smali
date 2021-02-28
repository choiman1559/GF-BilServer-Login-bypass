.class public Lcom/onevcat/uniwebview/ResizeAnimation;
.super Landroid/view/animation/Animation;
.source "ResizeAnimation.java"


# instance fields
.field private deltaHeight:I

.field private deltaWidth:I

.field private fillEnabled:Z

.field private originalHeight:I

.field private originalWidth:I

.field private startHeight:I

.field private startWidth:I

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;IIII)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "startW"    # I
    .param p3, "endW"    # I
    .param p4, "startH"    # I
    .param p5, "endH"    # I

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/onevcat/uniwebview/ResizeAnimation;->fillEnabled:Z

    .line 31
    iput-object p1, p0, Lcom/onevcat/uniwebview/ResizeAnimation;->view:Landroid/view/View;

    .line 32
    iput p2, p0, Lcom/onevcat/uniwebview/ResizeAnimation;->startWidth:I

    .line 33
    sub-int v0, p3, p2

    iput v0, p0, Lcom/onevcat/uniwebview/ResizeAnimation;->deltaWidth:I

    .line 35
    iput p4, p0, Lcom/onevcat/uniwebview/ResizeAnimation;->startHeight:I

    .line 36
    sub-int v0, p5, p4

    iput v0, p0, Lcom/onevcat/uniwebview/ResizeAnimation;->deltaHeight:I

    .line 38
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/onevcat/uniwebview/ResizeAnimation;->originalHeight:I

    .line 39
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/onevcat/uniwebview/ResizeAnimation;->originalWidth:I

    .line 40
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 7
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 53
    float-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_25

    iget-boolean v0, p0, Lcom/onevcat/uniwebview/ResizeAnimation;->fillEnabled:Z

    if-nez v0, :cond_25

    .line 55
    iget-object v0, p0, Lcom/onevcat/uniwebview/ResizeAnimation;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/onevcat/uniwebview/ResizeAnimation;->originalHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 56
    iget-object v0, p0, Lcom/onevcat/uniwebview/ResizeAnimation;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/onevcat/uniwebview/ResizeAnimation;->originalWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 66
    :cond_1f
    :goto_1f
    iget-object v0, p0, Lcom/onevcat/uniwebview/ResizeAnimation;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 67
    return-void

    .line 60
    :cond_25
    iget v0, p0, Lcom/onevcat/uniwebview/ResizeAnimation;->deltaHeight:I

    if-eqz v0, :cond_3a

    .line 61
    iget-object v0, p0, Lcom/onevcat/uniwebview/ResizeAnimation;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/onevcat/uniwebview/ResizeAnimation;->startHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/onevcat/uniwebview/ResizeAnimation;->deltaHeight:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 62
    :cond_3a
    iget v0, p0, Lcom/onevcat/uniwebview/ResizeAnimation;->deltaWidth:I

    if-eqz v0, :cond_1f

    .line 63
    iget-object v0, p0, Lcom/onevcat/uniwebview/ResizeAnimation;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/onevcat/uniwebview/ResizeAnimation;->startWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/onevcat/uniwebview/ResizeAnimation;->deltaWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1f
.end method

.method public setFillEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/onevcat/uniwebview/ResizeAnimation;->fillEnabled:Z

    .line 46
    invoke-super {p0, p1}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 47
    return-void
.end method
