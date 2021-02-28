.class Lcom/onevcat/uniwebview/UniWebViewDialog$10;
.super Ljava/lang/Object;
.source "UniWebViewDialog.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onevcat/uniwebview/UniWebViewDialog;->setKeyboardVisibilityListener(Lcom/onevcat/uniwebview/OnKeyboardVisibilityListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final EstimatedKeyboardDP:I

.field private alreadyOpen:Z

.field private final defaultKeyboardHeightDP:I

.field private final rect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

.field final synthetic val$onKeyboardVisibilityListener:Lcom/onevcat/uniwebview/OnKeyboardVisibilityListener;

.field final synthetic val$parentView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/onevcat/uniwebview/UniWebViewDialog;Landroid/view/View;Lcom/onevcat/uniwebview/OnKeyboardVisibilityListener;)V
    .registers 6
    .param p1, "this$0"    # Lcom/onevcat/uniwebview/UniWebViewDialog;

    .prologue
    .line 818
    iput-object p1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$10;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    iput-object p2, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$10;->val$parentView:Landroid/view/View;

    iput-object p3, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$10;->val$onKeyboardVisibilityListener:Lcom/onevcat/uniwebview/OnKeyboardVisibilityListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 821
    const/16 v0, 0x64

    iput v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$10;->defaultKeyboardHeightDP:I

    .line 822
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_21

    const/16 v0, 0x30

    :goto_15
    add-int/lit8 v0, v0, 0x64

    iput v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$10;->EstimatedKeyboardDP:I

    .line 823
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$10;->rect:Landroid/graphics/Rect;

    return-void

    .line 822
    :cond_21
    const/4 v0, 0x0

    goto :goto_15
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 7

    .prologue
    const/4 v2, 0x1

    .line 827
    iget v3, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$10;->EstimatedKeyboardDP:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$10;->val$parentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v0, v3

    .line 828
    .local v0, "estimatedKeyboardHeight":I
    iget-object v3, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$10;->val$parentView:Landroid/view/View;

    iget-object v4, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$10;->rect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 829
    iget-object v3, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$10;->val$parentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$10;->rect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$10;->rect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    sub-int v1, v3, v4

    .line 830
    .local v1, "heightDiff":I
    if-lt v1, v0, :cond_36

    .line 832
    .local v2, "isShown":Z
    :goto_31
    iget-boolean v3, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$10;->alreadyOpen:Z

    if-ne v2, v3, :cond_38

    .line 837
    :goto_35
    return-void

    .line 830
    .end local v2    # "isShown":Z
    :cond_36
    const/4 v2, 0x0

    goto :goto_31

    .line 835
    .restart local v2    # "isShown":Z
    :cond_38
    iput-boolean v2, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$10;->alreadyOpen:Z

    .line 836
    iget-object v3, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$10;->val$onKeyboardVisibilityListener:Lcom/onevcat/uniwebview/OnKeyboardVisibilityListener;

    invoke-interface {v3, v2}, Lcom/onevcat/uniwebview/OnKeyboardVisibilityListener;->onVisibilityChanged(Z)V

    goto :goto_35
.end method
