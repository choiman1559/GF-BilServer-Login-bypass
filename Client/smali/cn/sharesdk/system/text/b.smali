.class public Lcn/sharesdk/system/text/b;
.super Lcom/mob/tools/FakeActivity;
.source "ShortMessageActivity.java"


# instance fields
.field private a:Lcn/sharesdk/system/text/ActionListener;

.field private b:Lcn/sharesdk/framework/Platform$ShareParams;

.field private c:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/mob/tools/FakeActivity;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcn/sharesdk/system/text/b;->c:I

    return-void
.end method

.method private a()V
    .registers 9

    .prologue
    .line 68
    invoke-static {}, Lcn/sharesdk/system/text/a;->a()Lcn/sharesdk/system/text/a;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lcn/sharesdk/system/text/b;->b:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v3

    .line 70
    iget-object v1, p0, Lcn/sharesdk/system/text/b;->b:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform$ShareParams;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 71
    iget-object v1, p0, Lcn/sharesdk/system/text/b;->b:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform$ShareParams;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 72
    iget-object v4, p0, Lcn/sharesdk/system/text/b;->b:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v4}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v6

    .line 73
    iget-object v4, p0, Lcn/sharesdk/system/text/b;->b:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v4}, Lcn/sharesdk/framework/Platform$ShareParams;->getShareType()I

    move-result v5

    .line 74
    iget-object v4, p0, Lcn/sharesdk/system/text/b;->b:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v4}, Lcn/sharesdk/framework/Platform$ShareParams;->getFilePath()Ljava/lang/String;

    move-result-object v4

    .line 75
    const/4 v7, 0x6

    if-ne v5, v7, :cond_3b

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3b

    .line 76
    if-nez v1, :cond_35

    const-string v1, ""

    :cond_35
    iget-object v5, p0, Lcn/sharesdk/system/text/b;->a:Lcn/sharesdk/system/text/ActionListener;

    invoke-virtual/range {v0 .. v5}, Lcn/sharesdk/system/text/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/sharesdk/system/text/ActionListener;)V

    .line 80
    :goto_3a
    return-void

    .line 78
    :cond_3b
    if-nez v1, :cond_3f

    const-string v1, ""

    :cond_3f
    iget-object v5, p0, Lcn/sharesdk/system/text/b;->a:Lcn/sharesdk/system/text/ActionListener;

    move-object v4, v6

    invoke-virtual/range {v0 .. v5}, Lcn/sharesdk/system/text/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/sharesdk/system/text/ActionListener;)V

    goto :goto_3a
.end method

.method static synthetic a(Lcn/sharesdk/system/text/b;)V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcn/sharesdk/system/text/b;->a()V

    return-void
.end method

.method static synthetic b(Lcn/sharesdk/system/text/b;)Lcn/sharesdk/system/text/ActionListener;
    .registers 2

    .prologue
    .line 16
    iget-object v0, p0, Lcn/sharesdk/system/text/b;->a:Lcn/sharesdk/system/text/ActionListener;

    return-object v0
.end method


# virtual methods
.method public a(Lcn/sharesdk/framework/Platform$ShareParams;)V
    .registers 2

    .prologue
    .line 23
    iput-object p1, p0, Lcn/sharesdk/system/text/b;->b:Lcn/sharesdk/framework/Platform$ShareParams;

    .line 24
    return-void
.end method

.method public a(Lcn/sharesdk/system/text/ActionListener;)V
    .registers 2

    .prologue
    .line 27
    iput-object p1, p0, Lcn/sharesdk/system/text/b;->a:Lcn/sharesdk/system/text/ActionListener;

    .line 28
    return-void
.end method

.method public onCreate()V
    .registers 3

    .prologue
    .line 31
    const/4 v0, 0x1

    new-instance v1, Lcn/sharesdk/system/text/b$1;

    invoke-direct {v1, p0}, Lcn/sharesdk/system/text/b$1;-><init>(Lcn/sharesdk/system/text/b;)V

    invoke-static {v0, v1}, Lcom/mob/tools/utils/UIHandler;->sendEmptyMessage(ILandroid/os/Handler$Callback;)Z

    .line 43
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 51
    iget v0, p0, Lcn/sharesdk/system/text/b;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/sharesdk/system/text/b;->c:I

    .line 52
    iget v0, p0, Lcn/sharesdk/system/text/b;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1c

    .line 53
    iget-object v0, p0, Lcn/sharesdk/system/text/b;->a:Lcn/sharesdk/system/text/ActionListener;

    if-eqz v0, :cond_19

    .line 54
    iget-object v0, p0, Lcn/sharesdk/system/text/b;->a:Lcn/sharesdk/system/text/ActionListener;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v1}, Lcn/sharesdk/system/text/ActionListener;->onComplete(Ljava/util/HashMap;)V

    .line 56
    :cond_19
    invoke-virtual {p0}, Lcn/sharesdk/system/text/b;->finish()V

    .line 58
    :cond_1c
    return-void
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 46
    invoke-super {p0}, Lcom/mob/tools/FakeActivity;->onStop()V

    .line 47
    return-void
.end method
