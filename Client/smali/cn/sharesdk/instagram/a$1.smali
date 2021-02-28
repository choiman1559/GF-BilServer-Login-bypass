.class Lcn/sharesdk/instagram/a$1;
.super Ljava/lang/Thread;
.source "InstagramAuthorizeWebviewClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/instagram/a;->onComplete(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcn/sharesdk/instagram/a;


# direct methods
.method constructor <init>(Lcn/sharesdk/instagram/a;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 65
    iput-object p1, p0, Lcn/sharesdk/instagram/a$1;->b:Lcn/sharesdk/instagram/a;

    iput-object p2, p0, Lcn/sharesdk/instagram/a$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 67
    iget-object v0, p0, Lcn/sharesdk/instagram/a$1;->b:Lcn/sharesdk/instagram/a;

    invoke-static {v0}, Lcn/sharesdk/instagram/a;->a(Lcn/sharesdk/instagram/a;)Lcn/sharesdk/framework/authorize/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/e;->a()Lcn/sharesdk/framework/authorize/AuthorizeHelper;

    move-result-object v0

    invoke-interface {v0}, Lcn/sharesdk/framework/authorize/AuthorizeHelper;->getPlatform()Lcn/sharesdk/framework/Platform;

    move-result-object v0

    .line 68
    invoke-static {v0}, Lcn/sharesdk/instagram/b;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/instagram/b;

    move-result-object v0

    .line 71
    :try_start_12
    iget-object v1, p0, Lcn/sharesdk/instagram/a$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/instagram/b;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_17} :catch_2b

    move-result-object v0

    .line 77
    :goto_18
    if-nez v0, :cond_37

    .line 78
    iget-object v0, p0, Lcn/sharesdk/instagram/a$1;->b:Lcn/sharesdk/instagram/a;

    invoke-static {v0}, Lcn/sharesdk/instagram/a;->c(Lcn/sharesdk/instagram/a;)Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "Authorize token is empty"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    .line 98
    :goto_2a
    return-void

    .line 72
    :catch_2b
    move-exception v0

    .line 73
    iget-object v1, p0, Lcn/sharesdk/instagram/a$1;->b:Lcn/sharesdk/instagram/a;

    invoke-static {v1}, Lcn/sharesdk/instagram/a;->b(Lcn/sharesdk/instagram/a;)Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    .line 74
    const/4 v0, 0x0

    goto :goto_18

    .line 83
    :cond_37
    :try_start_37
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 84
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 85
    const-string v2, "access_token"

    const-string v3, "access_token"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v2, "user"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 88
    const-string v2, "username"

    const-string v3, "username"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v2, "bio"

    const-string v3, "bio"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v2, "website"

    const-string v3, "website"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v2, "profile_picture"

    const-string v3, "profile_picture"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v2, "full_name"

    const-string v3, "full_name"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v2, "id"

    const-string v3, "id"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcn/sharesdk/instagram/a$1;->b:Lcn/sharesdk/instagram/a;

    invoke-static {v0}, Lcn/sharesdk/instagram/a;->d(Lcn/sharesdk/instagram/a;)Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onComplete(Landroid/os/Bundle;)V
    :try_end_bf
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_bf} :catch_c1

    goto/16 :goto_2a

    .line 95
    :catch_c1
    move-exception v0

    .line 96
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto/16 :goto_2a
.end method
