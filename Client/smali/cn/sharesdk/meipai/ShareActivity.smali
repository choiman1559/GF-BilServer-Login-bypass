.class public Lcn/sharesdk/meipai/ShareActivity;
.super Lcom/mob/tools/FakeActivity;
.source "ShareActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/sharesdk/meipai/ShareActivity$ErrorCode;
    }
.end annotation


# instance fields
.field private a:Lcn/sharesdk/framework/PlatformActionListener;

.field private b:Lcn/sharesdk/framework/Platform;

.field private c:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/mob/tools/FakeActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/meipai/ShareActivity;)Lcn/sharesdk/framework/Platform;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcn/sharesdk/meipai/ShareActivity;->b:Lcn/sharesdk/framework/Platform;

    return-object v0
.end method

.method private a(Landroid/content/Intent;Lcn/sharesdk/meipai/IMeipaiApiEventHandler;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 71
    .line 72
    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 73
    const-string v2, "mp_command_type"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 74
    const-string v2, "mp_transaction"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 75
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 91
    :cond_1a
    :goto_1a
    return v0

    .line 79
    :cond_1b
    iget-object v1, p0, Lcn/sharesdk/meipai/ShareActivity;->b:Lcn/sharesdk/framework/Platform;

    invoke-static {v1}, Lcn/sharesdk/meipai/c;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/meipai/c;

    move-result-object v1

    .line 81
    invoke-virtual {v1}, Lcn/sharesdk/meipai/c;->a()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 84
    new-instance v0, Lcn/sharesdk/meipai/entity/c;

    invoke-direct {v0}, Lcn/sharesdk/meipai/entity/c;-><init>()V

    .line 85
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/sharesdk/meipai/entity/c;->a(Landroid/os/Bundle;)V

    .line 86
    if-eqz p2, :cond_38

    .line 87
    invoke-interface {p2, v0}, Lcn/sharesdk/meipai/IMeipaiApiEventHandler;->onResponse(Lcn/sharesdk/meipai/entity/b;)V

    .line 89
    :cond_38
    const/4 v0, 0x1

    goto :goto_1a
.end method

.method static synthetic b(Lcn/sharesdk/meipai/ShareActivity;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcn/sharesdk/meipai/ShareActivity;->a:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method


# virtual methods
.method public a(Lcn/sharesdk/framework/PlatformActionListener;Lcn/sharesdk/framework/Platform;Landroid/content/Intent;)V
    .registers 4

    .prologue
    .line 65
    iput-object p1, p0, Lcn/sharesdk/meipai/ShareActivity;->a:Lcn/sharesdk/framework/PlatformActionListener;

    .line 66
    iput-object p2, p0, Lcn/sharesdk/meipai/ShareActivity;->b:Lcn/sharesdk/framework/Platform;

    .line 67
    iput-object p3, p0, Lcn/sharesdk/meipai/ShareActivity;->c:Landroid/content/Intent;

    .line 68
    return-void
.end method

.method public onCreate()V
    .registers 3

    .prologue
    .line 30
    invoke-super {p0}, Lcom/mob/tools/FakeActivity;->onCreate()V

    .line 31
    iget-object v0, p0, Lcn/sharesdk/meipai/ShareActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Lcn/sharesdk/meipai/ShareActivity$1;

    invoke-direct {v1, p0}, Lcn/sharesdk/meipai/ShareActivity$1;-><init>(Lcn/sharesdk/meipai/ShareActivity;)V

    invoke-direct {p0, v0, v1}, Lcn/sharesdk/meipai/ShareActivity;->a(Landroid/content/Intent;Lcn/sharesdk/meipai/IMeipaiApiEventHandler;)Z

    .line 60
    iget-object v0, p0, Lcn/sharesdk/meipai/ShareActivity;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcn/sharesdk/meipai/ShareActivity;->c:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 61
    invoke-virtual {p0}, Lcn/sharesdk/meipai/ShareActivity;->finish()V

    .line 62
    return-void
.end method
