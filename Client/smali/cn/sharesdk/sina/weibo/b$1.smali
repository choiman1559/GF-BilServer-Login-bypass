.class Lcn/sharesdk/sina/weibo/b$1;
.super Ljava/lang/Thread;
.source "SinaWeiboAuthorizeWebviewClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/sina/weibo/b;->a(Lcn/sharesdk/framework/Platform;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/framework/Platform;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcn/sharesdk/sina/weibo/b;


# direct methods
.method constructor <init>(Lcn/sharesdk/sina/weibo/b;Lcn/sharesdk/framework/Platform;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 117
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/b$1;->c:Lcn/sharesdk/sina/weibo/b;

    iput-object p2, p0, Lcn/sharesdk/sina/weibo/b$1;->a:Lcn/sharesdk/framework/Platform;

    iput-object p3, p0, Lcn/sharesdk/sina/weibo/b$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 120
    :try_start_0
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/b$1;->a:Lcn/sharesdk/framework/Platform;

    invoke-static {v0}, Lcn/sharesdk/sina/weibo/f;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/sina/weibo/f;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_7f

    move-result-object v0

    .line 123
    :try_start_6
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/b$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/sina/weibo/f;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_b} :catch_1f

    move-result-object v0

    .line 129
    :goto_c
    if-nez v0, :cond_2b

    .line 130
    :try_start_e
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/b$1;->c:Lcn/sharesdk/sina/weibo/b;

    invoke-static {v0}, Lcn/sharesdk/sina/weibo/b;->b(Lcn/sharesdk/sina/weibo/b;)Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "Authorize token is empty"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    .line 144
    :goto_1e
    return-void

    .line 124
    :catch_1f
    move-exception v0

    .line 125
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/b$1;->c:Lcn/sharesdk/sina/weibo/b;

    invoke-static {v1}, Lcn/sharesdk/sina/weibo/b;->a(Lcn/sharesdk/sina/weibo/b;)Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    .line 126
    const/4 v0, 0x0

    goto :goto_c

    .line 134
    :cond_2b
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 135
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 136
    const-string v2, "uid"

    const-string v3, "uid"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v2, "remind_in"

    const-string v3, "remind_in"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v2, "expires_in"

    const-string v3, "expires_in"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v2, "access_token"

    const-string v3, "access_token"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/b$1;->c:Lcn/sharesdk/sina/weibo/b;

    invoke-static {v0}, Lcn/sharesdk/sina/weibo/b;->c(Lcn/sharesdk/sina/weibo/b;)Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onComplete(Landroid/os/Bundle;)V
    :try_end_7e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_7e} :catch_7f

    goto :goto_1e

    .line 141
    :catch_7f
    move-exception v0

    .line 142
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_1e
.end method
