.class Lcn/sharesdk/system/text/login/gui/d$2;
.super Ljava/lang/Thread;
.source "InputPhoneNumPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/system/text/login/gui/d;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/system/text/login/gui/d;


# direct methods
.method constructor <init>(Lcn/sharesdk/system/text/login/gui/d;)V
    .registers 2

    .prologue
    .line 101
    iput-object p1, p0, Lcn/sharesdk/system/text/login/gui/d$2;->a:Lcn/sharesdk/system/text/login/gui/d;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 104
    :try_start_0
    new-instance v0, Landroid/app/Instrumentation;

    invoke-direct {v0}, Landroid/app/Instrumentation;-><init>()V

    .line 105
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_a

    .line 114
    :goto_9
    return-void

    .line 106
    :catch_a
    move-exception v0

    .line 107
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 108
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/d$2;->a:Lcn/sharesdk/system/text/login/gui/d;

    invoke-static {v0}, Lcn/sharesdk/system/text/login/gui/d;->a(Lcn/sharesdk/system/text/login/gui/d;)Lcn/sharesdk/system/text/login/LoginActionListener;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 109
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/d$2;->a:Lcn/sharesdk/system/text/login/gui/d;

    invoke-static {v0}, Lcn/sharesdk/system/text/login/gui/d;->a(Lcn/sharesdk/system/text/login/gui/d;)Lcn/sharesdk/system/text/login/LoginActionListener;

    move-result-object v0

    invoke-interface {v0}, Lcn/sharesdk/system/text/login/LoginActionListener;->onCancel()V

    .line 112
    :cond_23
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/d$2;->a:Lcn/sharesdk/system/text/login/gui/d;

    invoke-virtual {v0}, Lcn/sharesdk/system/text/login/gui/d;->finish()V

    goto :goto_9
.end method
