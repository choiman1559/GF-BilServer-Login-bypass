.class Lcn/sharesdk/sina/weibo/f$1;
.super Ljava/lang/Object;
.source "Weibo.java"

# interfaces
.implements Lcn/sharesdk/framework/authorize/SSOListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/sina/weibo/f;->a(Lcn/sharesdk/framework/authorize/AuthorizeListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/framework/authorize/AuthorizeListener;

.field final synthetic b:Lcn/sharesdk/sina/weibo/f;


# direct methods
.method constructor <init>(Lcn/sharesdk/sina/weibo/f;Lcn/sharesdk/framework/authorize/AuthorizeListener;)V
    .registers 3

    .prologue
    .line 113
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/f$1;->b:Lcn/sharesdk/sina/weibo/f;

    iput-object p2, p0, Lcn/sharesdk/sina/weibo/f$1;->a:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/f$1;->a:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-interface {v0}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onCancel()V

    .line 132
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "values"    # Landroid/os/Bundle;

    .prologue
    .line 121
    :try_start_0
    const-string v0, "expires_in"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-static {v0}, Lcom/mob/tools/utils/ResHelper;->parseLong(Ljava/lang/String;)J
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_f

    .line 127
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/f$1;->a:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-interface {v0, p1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onComplete(Landroid/os/Bundle;)V

    .line 128
    :goto_e
    return-void

    .line 123
    :catch_f
    move-exception v0

    .line 124
    invoke-virtual {p0, v0}, Lcn/sharesdk/sina/weibo/f$1;->onFailed(Ljava/lang/Throwable;)V

    goto :goto_e
.end method

.method public onFailed(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 115
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 116
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/f$1;->b:Lcn/sharesdk/sina/weibo/f;

    iget-object v1, p0, Lcn/sharesdk/sina/weibo/f$1;->a:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-static {v0, v1}, Lcn/sharesdk/sina/weibo/f;->a(Lcn/sharesdk/sina/weibo/f;Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    .line 117
    return-void
.end method
