.class public Lcn/sharesdk/system/email/a;
.super Lcom/mob/tools/FakeActivity;
.source "EmailActivity.java"


# instance fields
.field private a:Lcn/sharesdk/system/email/ActionListener;

.field private b:Lcn/sharesdk/framework/Platform$ShareParams;

.field private c:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/mob/tools/FakeActivity;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcn/sharesdk/system/email/a;->c:I

    return-void
.end method

.method private a()V
    .registers 9

    .prologue
    .line 62
    invoke-static {}, Lcn/sharesdk/system/email/b;->a()Lcn/sharesdk/system/email/b;

    move-result-object v0

    .line 63
    iget-object v1, p0, Lcn/sharesdk/system/email/a;->b:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    .line 64
    iget-object v1, p0, Lcn/sharesdk/system/email/a;->b:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform$ShareParams;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 65
    iget-object v2, p0, Lcn/sharesdk/system/email/a;->b:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v2}, Lcn/sharesdk/framework/Platform$ShareParams;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 66
    iget-object v4, p0, Lcn/sharesdk/system/email/a;->b:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v4}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v6

    .line 67
    iget-object v4, p0, Lcn/sharesdk/system/email/a;->b:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v4}, Lcn/sharesdk/framework/Platform$ShareParams;->getShareType()I

    move-result v5

    .line 68
    iget-object v4, p0, Lcn/sharesdk/system/email/a;->b:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v4}, Lcn/sharesdk/framework/Platform$ShareParams;->getFilePath()Ljava/lang/String;

    move-result-object v4

    .line 69
    const/4 v7, 0x6

    if-ne v5, v7, :cond_3f

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3f

    .line 70
    if-nez v1, :cond_39

    const-string v1, ""

    :cond_39
    iget-object v5, p0, Lcn/sharesdk/system/email/a;->a:Lcn/sharesdk/system/email/ActionListener;

    invoke-virtual/range {v0 .. v5}, Lcn/sharesdk/system/email/b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/text/Spanned;Ljava/lang/String;Lcn/sharesdk/system/email/ActionListener;)V

    .line 74
    :goto_3e
    return-void

    .line 72
    :cond_3f
    if-nez v1, :cond_43

    const-string v1, ""

    :cond_43
    iget-object v5, p0, Lcn/sharesdk/system/email/a;->a:Lcn/sharesdk/system/email/ActionListener;

    move-object v4, v6

    invoke-virtual/range {v0 .. v5}, Lcn/sharesdk/system/email/b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/text/Spanned;Ljava/lang/String;Lcn/sharesdk/system/email/ActionListener;)V

    goto :goto_3e
.end method

.method static synthetic a(Lcn/sharesdk/system/email/a;)V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcn/sharesdk/system/email/a;->a()V

    return-void
.end method

.method static synthetic b(Lcn/sharesdk/system/email/a;)Lcn/sharesdk/system/email/ActionListener;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcn/sharesdk/system/email/a;->a:Lcn/sharesdk/system/email/ActionListener;

    return-object v0
.end method


# virtual methods
.method public a(Lcn/sharesdk/framework/Platform$ShareParams;)V
    .registers 2

    .prologue
    .line 29
    iput-object p1, p0, Lcn/sharesdk/system/email/a;->b:Lcn/sharesdk/framework/Platform$ShareParams;

    .line 30
    return-void
.end method

.method public a(Lcn/sharesdk/system/email/ActionListener;)V
    .registers 2

    .prologue
    .line 33
    iput-object p1, p0, Lcn/sharesdk/system/email/a;->a:Lcn/sharesdk/system/email/ActionListener;

    .line 34
    return-void
.end method

.method public onCreate()V
    .registers 3

    .prologue
    .line 37
    const/4 v0, 0x1

    new-instance v1, Lcn/sharesdk/system/email/a$1;

    invoke-direct {v1, p0}, Lcn/sharesdk/system/email/a$1;-><init>(Lcn/sharesdk/system/email/a;)V

    invoke-static {v0, v1}, Lcom/mob/tools/utils/UIHandler;->sendEmptyMessage(ILandroid/os/Handler$Callback;)Z

    .line 49
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 52
    iget v0, p0, Lcn/sharesdk/system/email/a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/sharesdk/system/email/a;->c:I

    .line 53
    iget v0, p0, Lcn/sharesdk/system/email/a;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1c

    .line 54
    iget-object v0, p0, Lcn/sharesdk/system/email/a;->a:Lcn/sharesdk/system/email/ActionListener;

    if-eqz v0, :cond_19

    .line 55
    iget-object v0, p0, Lcn/sharesdk/system/email/a;->a:Lcn/sharesdk/system/email/ActionListener;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v1}, Lcn/sharesdk/system/email/ActionListener;->onComplete(Ljava/util/HashMap;)V

    .line 57
    :cond_19
    invoke-virtual {p0}, Lcn/sharesdk/system/email/a;->finish()V

    .line 59
    :cond_1c
    return-void
.end method
