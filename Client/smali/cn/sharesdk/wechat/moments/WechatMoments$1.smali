.class Lcn/sharesdk/wechat/moments/WechatMoments$1;
.super Ljava/lang/Object;
.source "WechatMoments.java"

# interfaces
.implements Lcn/sharesdk/framework/authorize/AuthorizeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/wechat/moments/WechatMoments;->doAuthorize([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/wechat/moments/WechatMoments;


# direct methods
.method constructor <init>(Lcn/sharesdk/wechat/moments/WechatMoments;)V
    .registers 2

    .prologue
    .line 139
    iput-object p1, p0, Lcn/sharesdk/wechat/moments/WechatMoments$1;->a:Lcn/sharesdk/wechat/moments/WechatMoments;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 4

    .prologue
    .line 152
    iget-object v0, p0, Lcn/sharesdk/wechat/moments/WechatMoments$1;->a:Lcn/sharesdk/wechat/moments/WechatMoments;

    invoke-static {v0}, Lcn/sharesdk/wechat/moments/WechatMoments;->c(Lcn/sharesdk/wechat/moments/WechatMoments;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 153
    iget-object v0, p0, Lcn/sharesdk/wechat/moments/WechatMoments$1;->a:Lcn/sharesdk/wechat/moments/WechatMoments;

    invoke-static {v0}, Lcn/sharesdk/wechat/moments/WechatMoments;->d(Lcn/sharesdk/wechat/moments/WechatMoments;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/wechat/moments/WechatMoments$1;->a:Lcn/sharesdk/wechat/moments/WechatMoments;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 155
    :cond_14
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "values"    # Landroid/os/Bundle;

    .prologue
    .line 148
    iget-object v0, p0, Lcn/sharesdk/wechat/moments/WechatMoments$1;->a:Lcn/sharesdk/wechat/moments/WechatMoments;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/sharesdk/wechat/moments/WechatMoments;->a(Lcn/sharesdk/wechat/moments/WechatMoments;ILjava/lang/Object;)V

    .line 149
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 142
    iget-object v0, p0, Lcn/sharesdk/wechat/moments/WechatMoments$1;->a:Lcn/sharesdk/wechat/moments/WechatMoments;

    invoke-static {v0}, Lcn/sharesdk/wechat/moments/WechatMoments;->a(Lcn/sharesdk/wechat/moments/WechatMoments;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 143
    iget-object v0, p0, Lcn/sharesdk/wechat/moments/WechatMoments$1;->a:Lcn/sharesdk/wechat/moments/WechatMoments;

    invoke-static {v0}, Lcn/sharesdk/wechat/moments/WechatMoments;->b(Lcn/sharesdk/wechat/moments/WechatMoments;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/wechat/moments/WechatMoments$1;->a:Lcn/sharesdk/wechat/moments/WechatMoments;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 145
    :cond_14
    return-void
.end method
