.class public Lcn/sharesdk/demo/wxapi/WXEntryActivity;
.super Lcn/sharesdk/wechat/utils/WechatHandlerActivity;
.source "WXEntryActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcn/sharesdk/wechat/utils/WechatHandlerActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetMessageFromWXReq(Lcn/sharesdk/wechat/utils/WXMediaMessage;)V
    .registers 5
    .param p1, "msg"    # Lcn/sharesdk/wechat/utils/WXMediaMessage;

    .prologue
    .line 28
    if-eqz p1, :cond_11

    .line 29
    invoke-virtual {p0}, Lcn/sharesdk/demo/wxapi/WXEntryActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lcn/sharesdk/demo/wxapi/WXEntryActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 30
    .local v0, "iLaunchMyself":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcn/sharesdk/demo/wxapi/WXEntryActivity;->startActivity(Landroid/content/Intent;)V

    .line 32
    .end local v0    # "iLaunchMyself":Landroid/content/Intent;
    :cond_11
    return-void
.end method

.method public onShowMessageFromWXReq(Lcn/sharesdk/wechat/utils/WXMediaMessage;)V
    .registers 5
    .param p1, "msg"    # Lcn/sharesdk/wechat/utils/WXMediaMessage;

    .prologue
    .line 45
    if-eqz p1, :cond_1a

    iget-object v1, p1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    if-eqz v1, :cond_1a

    .line 46
    iget-object v1, p1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    instance-of v1, v1, Lcn/sharesdk/wechat/utils/WXAppExtendObject;

    if-eqz v1, :cond_1a

    .line 47
    iget-object v0, p1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    check-cast v0, Lcn/sharesdk/wechat/utils/WXAppExtendObject;

    .line 48
    .local v0, "obj":Lcn/sharesdk/wechat/utils/WXAppExtendObject;
    iget-object v1, v0, Lcn/sharesdk/wechat/utils/WXAppExtendObject;->extInfo:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 50
    .end local v0    # "obj":Lcn/sharesdk/wechat/utils/WXAppExtendObject;
    :cond_1a
    return-void
.end method
