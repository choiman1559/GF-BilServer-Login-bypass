.class public Lcn/sharesdk/sina/weibo/sdk/LoadingBar;
.super Landroid/widget/TextView;
.source "LoadingBar.java"


# instance fields
.field private a:I

.field private b:I

.field private c:Landroid/graphics/Paint;

.field private d:Landroid/os/Handler;

.field private e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 20
    new-instance v0, Lcn/sharesdk/sina/weibo/sdk/LoadingBar$1;

    invoke-direct {v0, p0}, Lcn/sharesdk/sina/weibo/sdk/LoadingBar$1;-><init>(Lcn/sharesdk/sina/weibo/sdk/LoadingBar;)V

    iput-object v0, p0, Lcn/sharesdk/sina/weibo/sdk/LoadingBar;->e:Ljava/lang/Runnable;

    .line 26
    invoke-direct {p0, p1}, Lcn/sharesdk/sina/weibo/sdk/LoadingBar;->a(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    invoke-direct {p0, p1}, Lcn/sharesdk/sina/weibo/sdk/LoadingBar;->a(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    invoke-direct {p0, p1}, Lcn/sharesdk/sina/weibo/sdk/LoadingBar;->a(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method static synthetic a(Lcn/sharesdk/sina/weibo/sdk/LoadingBar;)I
    .registers 2

    .prologue
    .line 11
    iget v0, p0, Lcn/sharesdk/sina/weibo/sdk/LoadingBar;->a:I

    return v0
.end method

.method static synthetic a(Lcn/sharesdk/sina/weibo/sdk/LoadingBar;I)I
    .registers 2

    .prologue
    .line 11
    iput p1, p0, Lcn/sharesdk/sina/weibo/sdk/LoadingBar;->a:I

    return p1
.end method

.method private a(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/sina/weibo/sdk/LoadingBar;->d:Landroid/os/Handler;

    .line 41
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/sina/weibo/sdk/LoadingBar;->c:Landroid/graphics/Paint;

    .line 42
    invoke-virtual {p0}, Lcn/sharesdk/sina/weibo/sdk/LoadingBar;->a()V

    .line 43
    return-void
.end method

.method private b()Landroid/graphics/Rect;
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 57
    invoke-virtual {p0}, Lcn/sharesdk/sina/weibo/sdk/LoadingBar;->getLeft()I

    move-result v0

    .line 58
    invoke-virtual {p0}, Lcn/sharesdk/sina/weibo/sdk/LoadingBar;->getTop()I

    move-result v1

    .line 59
    invoke-virtual {p0}, Lcn/sharesdk/sina/weibo/sdk/LoadingBar;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Lcn/sharesdk/sina/weibo/sdk/LoadingBar;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcn/sharesdk/sina/weibo/sdk/LoadingBar;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcn/sharesdk/sina/weibo/sdk/LoadingBar;->a:I

    mul-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x64

    add-int/2addr v2, v3

    .line 60
    invoke-virtual {p0}, Lcn/sharesdk/sina/weibo/sdk/LoadingBar;->getBottom()I

    move-result v3

    .line 61
    new-instance v4, Landroid/graphics/Rect;

    sub-int v0, v2, v0

    sub-int v1, v3, v1

    invoke-direct {v4, v5, v5, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v4
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 46
    const v0, -0xb26f02

    iput v0, p0, Lcn/sharesdk/sina/weibo/sdk/LoadingBar;->b:I

    .line 47
    return-void
.end method

.method public a(I)V
    .registers 6

    .prologue
    .line 65
    const/4 v0, 0x7

    if-ge p1, v0, :cond_10

    .line 66
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/sdk/LoadingBar;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcn/sharesdk/sina/weibo/sdk/LoadingBar;->e:Ljava/lang/Runnable;

    const-wide/16 v2, 0x46

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 71
    :goto_c
    invoke-virtual {p0}, Lcn/sharesdk/sina/weibo/sdk/LoadingBar;->invalidate()V

    .line 72
    return-void

    .line 68
    :cond_10
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/sdk/LoadingBar;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcn/sharesdk/sina/weibo/sdk/LoadingBar;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 69
    iput p1, p0, Lcn/sharesdk/sina/weibo/sdk/LoadingBar;->a:I

    goto :goto_c
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 51
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/sdk/LoadingBar;->c:Landroid/graphics/Paint;

    iget v1, p0, Lcn/sharesdk/sina/weibo/sdk/LoadingBar;->b:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 52
    invoke-direct {p0}, Lcn/sharesdk/sina/weibo/sdk/LoadingBar;->b()Landroid/graphics/Rect;

    move-result-object v0

    .line 53
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/sdk/LoadingBar;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 54
    return-void
.end method
