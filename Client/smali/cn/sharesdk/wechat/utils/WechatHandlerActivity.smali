.class public Lcn/sharesdk/wechat/utils/WechatHandlerActivity;
.super Landroid/app/Activity;
.source "WechatHandlerActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 29
    const v0, 0x103000f

    invoke-virtual {p0, v0}, Lcn/sharesdk/wechat/utils/WechatHandlerActivity;->setTheme(I)V

    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    :try_start_9
    invoke-static {}, Lcn/sharesdk/wechat/utils/j;->a()Lcn/sharesdk/wechat/utils/j;

    move-result-object v0

    .line 33
    invoke-virtual {v0, p0}, Lcn/sharesdk/wechat/utils/j;->a(Lcn/sharesdk/wechat/utils/WechatHandlerActivity;)Z
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_10} :catch_14

    .line 37
    :goto_10
    invoke-virtual {p0}, Lcn/sharesdk/wechat/utils/WechatHandlerActivity;->finish()V

    .line 38
    return-void

    .line 34
    :catch_14
    move-exception v0

    .line 35
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_10
.end method

.method public onGetMessageFromWXReq(Lcn/sharesdk/wechat/utils/WXMediaMessage;)V
    .registers 2
    .param p1, "msg"    # Lcn/sharesdk/wechat/utils/WXMediaMessage;

    .prologue
    .line 56
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 43
    invoke-virtual {p0, p1}, Lcn/sharesdk/wechat/utils/WechatHandlerActivity;->setIntent(Landroid/content/Intent;)V

    .line 45
    :try_start_6
    invoke-static {}, Lcn/sharesdk/wechat/utils/j;->a()Lcn/sharesdk/wechat/utils/j;

    move-result-object v0

    .line 46
    invoke-virtual {v0, p0}, Lcn/sharesdk/wechat/utils/j;->a(Lcn/sharesdk/wechat/utils/WechatHandlerActivity;)Z
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_d} :catch_11

    .line 50
    :goto_d
    invoke-virtual {p0}, Lcn/sharesdk/wechat/utils/WechatHandlerActivity;->finish()V

    .line 51
    return-void

    .line 47
    :catch_11
    move-exception v0

    .line 48
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public onShowMessageFromWXReq(Lcn/sharesdk/wechat/utils/WXMediaMessage;)V
    .registers 2
    .param p1, "msg"    # Lcn/sharesdk/wechat/utils/WXMediaMessage;

    .prologue
    .line 61
    return-void
.end method
