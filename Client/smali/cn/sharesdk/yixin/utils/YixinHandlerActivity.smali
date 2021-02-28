.class public Lcn/sharesdk/yixin/utils/YixinHandlerActivity;
.super Landroid/app/Activity;
.source "YixinHandlerActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 27
    const v0, 0x103000f

    invoke-virtual {p0, v0}, Lcn/sharesdk/yixin/utils/YixinHandlerActivity;->setTheme(I)V

    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    :try_start_9
    invoke-static {}, Lcn/sharesdk/yixin/utils/e;->a()Lcn/sharesdk/yixin/utils/e;

    move-result-object v0

    .line 32
    invoke-virtual {v0, p0}, Lcn/sharesdk/yixin/utils/e;->a(Lcn/sharesdk/yixin/utils/YixinHandlerActivity;)Z
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_10} :catch_14

    .line 37
    :goto_10
    invoke-virtual {p0}, Lcn/sharesdk/yixin/utils/YixinHandlerActivity;->finish()V

    .line 38
    return-void

    .line 33
    :catch_14
    move-exception v0

    .line 34
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_10
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 43
    invoke-virtual {p0, p1}, Lcn/sharesdk/yixin/utils/YixinHandlerActivity;->setIntent(Landroid/content/Intent;)V

    .line 44
    invoke-static {}, Lcn/sharesdk/yixin/utils/e;->a()Lcn/sharesdk/yixin/utils/e;

    move-result-object v0

    .line 45
    invoke-virtual {v0, p0}, Lcn/sharesdk/yixin/utils/e;->a(Lcn/sharesdk/yixin/utils/YixinHandlerActivity;)Z

    .line 46
    invoke-virtual {p0}, Lcn/sharesdk/yixin/utils/YixinHandlerActivity;->finish()V

    .line 47
    return-void
.end method

.method public onReceiveMessageFromYX(Lcn/sharesdk/yixin/utils/YXMessage;)V
    .registers 2
    .param p1, "msg"    # Lcn/sharesdk/yixin/utils/YXMessage;

    .prologue
    .line 52
    return-void
.end method
