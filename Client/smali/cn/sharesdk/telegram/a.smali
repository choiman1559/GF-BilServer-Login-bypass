.class public Lcn/sharesdk/telegram/a;
.super Lcom/mob/tools/FakeActivity;
.source "TelegramActivity.java"


# instance fields
.field private a:Lcn/sharesdk/framework/Platform$ShareParams;

.field private b:Lcn/sharesdk/framework/Platform;

.field private c:Lcn/sharesdk/telegram/ActionListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/mob/tools/FakeActivity;-><init>()V

    return-void
.end method

.method private a()V
    .registers 3

    .prologue
    .line 58
    invoke-static {}, Lcn/sharesdk/telegram/b;->a()Lcn/sharesdk/telegram/b;

    move-result-object v0

    .line 59
    new-instance v1, Lcn/sharesdk/telegram/a$2;

    invoke-direct {v1, p0, v0}, Lcn/sharesdk/telegram/a$2;-><init>(Lcn/sharesdk/telegram/a;Lcn/sharesdk/telegram/b;)V

    .line 68
    invoke-virtual {v1}, Lcn/sharesdk/telegram/a$2;->start()V

    .line 69
    return-void
.end method

.method static synthetic a(Lcn/sharesdk/telegram/a;)V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcn/sharesdk/telegram/a;->a()V

    return-void
.end method

.method static synthetic b(Lcn/sharesdk/telegram/a;)Lcn/sharesdk/telegram/ActionListener;
    .registers 2

    .prologue
    .line 15
    iget-object v0, p0, Lcn/sharesdk/telegram/a;->c:Lcn/sharesdk/telegram/ActionListener;

    return-object v0
.end method

.method static synthetic c(Lcn/sharesdk/telegram/a;)Lcn/sharesdk/framework/Platform$ShareParams;
    .registers 2

    .prologue
    .line 15
    iget-object v0, p0, Lcn/sharesdk/telegram/a;->a:Lcn/sharesdk/framework/Platform$ShareParams;

    return-object v0
.end method

.method static synthetic d(Lcn/sharesdk/telegram/a;)Lcn/sharesdk/framework/Platform;
    .registers 2

    .prologue
    .line 15
    iget-object v0, p0, Lcn/sharesdk/telegram/a;->b:Lcn/sharesdk/framework/Platform;

    return-object v0
.end method


# virtual methods
.method public a(Lcn/sharesdk/framework/Platform$ShareParams;)V
    .registers 2

    .prologue
    .line 38
    iput-object p1, p0, Lcn/sharesdk/telegram/a;->a:Lcn/sharesdk/framework/Platform$ShareParams;

    .line 39
    return-void
.end method

.method public a(Lcn/sharesdk/framework/Platform;)V
    .registers 2

    .prologue
    .line 42
    iput-object p1, p0, Lcn/sharesdk/telegram/a;->b:Lcn/sharesdk/framework/Platform;

    .line 43
    return-void
.end method

.method public a(Lcn/sharesdk/telegram/ActionListener;)V
    .registers 2

    .prologue
    .line 46
    iput-object p1, p0, Lcn/sharesdk/telegram/a;->c:Lcn/sharesdk/telegram/ActionListener;

    .line 47
    return-void
.end method

.method public onCreate()V
    .registers 5

    .prologue
    .line 22
    const/4 v0, 0x1

    const-wide/16 v2, 0x2bc

    new-instance v1, Lcn/sharesdk/telegram/a$1;

    invoke-direct {v1, p0}, Lcn/sharesdk/telegram/a$1;-><init>(Lcn/sharesdk/telegram/a;)V

    invoke-static {v0, v2, v3, v1}, Lcom/mob/tools/utils/UIHandler;->sendEmptyMessageDelayed(IJLandroid/os/Handler$Callback;)Z

    .line 35
    return-void
.end method

.method public onRestart()V
    .registers 3

    .prologue
    .line 51
    iget-object v0, p0, Lcn/sharesdk/telegram/a;->c:Lcn/sharesdk/telegram/ActionListener;

    if-eqz v0, :cond_e

    .line 52
    iget-object v0, p0, Lcn/sharesdk/telegram/a;->c:Lcn/sharesdk/telegram/ActionListener;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v1}, Lcn/sharesdk/telegram/ActionListener;->onComplete(Ljava/util/HashMap;)V

    .line 54
    :cond_e
    invoke-virtual {p0}, Lcn/sharesdk/telegram/a;->finish()V

    .line 55
    return-void
.end method
