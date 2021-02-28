.class public Lcn/sharesdk/dingding/utils/DingdingHandlerActivity;
.super Landroid/app/Activity;
.source "DingdingHandlerActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    :try_start_3
    invoke-static {}, Lcn/sharesdk/dingding/utils/c;->a()Lcn/sharesdk/dingding/utils/c;

    move-result-object v0

    .line 31
    invoke-virtual {v0, p0}, Lcn/sharesdk/dingding/utils/c;->a(Lcn/sharesdk/dingding/utils/DingdingHandlerActivity;)Z
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_a} :catch_e

    .line 36
    :goto_a
    invoke-virtual {p0}, Lcn/sharesdk/dingding/utils/DingdingHandlerActivity;->finish()V

    .line 37
    return-void

    .line 32
    :catch_e
    move-exception v0

    .line 33
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_a
.end method

.method public onGetMessageFromDingdingReq(Lcn/sharesdk/dingding/utils/DDMediaMessage;)V
    .registers 2
    .param p1, "msg"    # Lcn/sharesdk/dingding/utils/DDMediaMessage;

    .prologue
    .line 47
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 42
    return-void
.end method

.method public onShowMessageFromDingdingReq(Lcn/sharesdk/dingding/utils/DDMediaMessage;)V
    .registers 2
    .param p1, "msg"    # Lcn/sharesdk/dingding/utils/DDMediaMessage;

    .prologue
    .line 52
    return-void
.end method
