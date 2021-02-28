.class Lcn/sharesdk/evernote/f$1;
.super Ljava/lang/Thread;
.source "EvernoteWebViewClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/evernote/f;->onComplete(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcn/sharesdk/evernote/f;


# direct methods
.method constructor <init>(Lcn/sharesdk/evernote/f;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 44
    iput-object p1, p0, Lcn/sharesdk/evernote/f$1;->b:Lcn/sharesdk/evernote/f;

    iput-object p2, p0, Lcn/sharesdk/evernote/f$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 47
    :try_start_0
    iget-object v0, p0, Lcn/sharesdk/evernote/f$1;->b:Lcn/sharesdk/evernote/f;

    invoke-static {v0}, Lcn/sharesdk/evernote/f;->a(Lcn/sharesdk/evernote/f;)Lcn/sharesdk/framework/Platform;

    move-result-object v0

    invoke-static {v0}, Lcn/sharesdk/evernote/d;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/evernote/d;

    move-result-object v0

    .line 48
    iget-object v1, p0, Lcn/sharesdk/evernote/f$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/evernote/d;->b(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 49
    iget-object v0, p0, Lcn/sharesdk/evernote/f$1;->b:Lcn/sharesdk/evernote/f;

    invoke-static {v0}, Lcn/sharesdk/evernote/f;->b(Lcn/sharesdk/evernote/f;)Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object v0

    if-eqz v0, :cond_89

    .line 50
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 51
    const-string v3, "token"

    const-string v0, "oauth_token"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v3, "secret"

    const-string v0, "oauth_token_secret"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_37} :catch_91

    .line 55
    :try_start_37
    const-string v0, "edam_userId"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/mob/tools/utils/ResHelper;->parseInt(Ljava/lang/String;)I
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_42} :catch_8a

    move-result v0

    .line 59
    :goto_43
    :try_start_43
    const-string v3, "userId"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 60
    const-string v3, "noteStoreUrl"

    const-string v0, "edam_noteStoreUrl"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v3, "webApiUrlPrefix"

    const-string v0, "edam_webApiUrlPrefix"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v3, "shard"

    const-string v0, "edam_shard"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6f
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_6f} :catch_91

    .line 65
    :try_start_6f
    const-string v0, "edam_expires"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/mob/tools/utils/ResHelper;->parseLong(Ljava/lang/String;)J
    :try_end_7a
    .catch Ljava/lang/Throwable; {:try_start_6f .. :try_end_7a} :catch_8d

    move-result-wide v0

    .line 69
    :goto_7b
    :try_start_7b
    const-string v3, "expires"

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 70
    iget-object v0, p0, Lcn/sharesdk/evernote/f$1;->b:Lcn/sharesdk/evernote/f;

    invoke-static {v0}, Lcn/sharesdk/evernote/f;->c(Lcn/sharesdk/evernote/f;)Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object v0

    invoke-interface {v0, v2}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onComplete(Landroid/os/Bundle;)V
    :try_end_89
    .catch Ljava/lang/Throwable; {:try_start_7b .. :try_end_89} :catch_91

    .line 77
    :cond_89
    :goto_89
    return-void

    .line 56
    :catch_8a
    move-exception v0

    .line 57
    const/4 v0, -0x1

    goto :goto_43

    .line 66
    :catch_8d
    move-exception v0

    .line 67
    const-wide/16 v0, -0x1

    goto :goto_7b

    .line 72
    :catch_91
    move-exception v0

    .line 73
    iget-object v1, p0, Lcn/sharesdk/evernote/f$1;->b:Lcn/sharesdk/evernote/f;

    invoke-static {v1}, Lcn/sharesdk/evernote/f;->d(Lcn/sharesdk/evernote/f;)Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object v1

    if-eqz v1, :cond_89

    .line 74
    iget-object v1, p0, Lcn/sharesdk/evernote/f$1;->b:Lcn/sharesdk/evernote/f;

    invoke-static {v1}, Lcn/sharesdk/evernote/f;->e(Lcn/sharesdk/evernote/f;)Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    goto :goto_89
.end method
