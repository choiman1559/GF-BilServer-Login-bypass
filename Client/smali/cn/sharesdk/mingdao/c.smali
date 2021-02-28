.class public Lcn/sharesdk/mingdao/c;
.super Lcn/sharesdk/framework/authorize/d;
.source "MingdaoSSOProcessor.java"


# instance fields
.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcn/sharesdk/framework/authorize/c;)V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/authorize/d;-><init>(Lcn/sharesdk/framework/authorize/c;)V

    .line 22
    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    .prologue
    .line 35
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 36
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.mingdao"

    const-string v3, "com.mingdao.sso.FirstActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 37
    const-string v1, "redirect_uri"

    iget-object v2, p0, Lcn/sharesdk/mingdao/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    const-string v1, "app_key"

    iget-object v2, p0, Lcn/sharesdk/mingdao/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    const-string v1, "app_secret"

    iget-object v2, p0, Lcn/sharesdk/mingdao/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    iget-object v1, p0, Lcn/sharesdk/mingdao/c;->a:Lcn/sharesdk/framework/authorize/c;

    iget v2, p0, Lcn/sharesdk/mingdao/c;->b:I

    invoke-virtual {v1, v0, v2}, Lcn/sharesdk/framework/authorize/c;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2d} :catch_2e

    .line 46
    :cond_2d
    :goto_2d
    return-void

    .line 41
    :catch_2e
    move-exception v0

    .line 42
    iget-object v1, p0, Lcn/sharesdk/mingdao/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    if-eqz v1, :cond_2d

    .line 43
    iget-object v1, p0, Lcn/sharesdk/mingdao/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    invoke-interface {v1, v0}, Lcn/sharesdk/framework/authorize/SSOListener;->onFailed(Ljava/lang/Throwable;)V

    goto :goto_2d
.end method

.method public a(IILandroid/content/Intent;)V
    .registers 8

    .prologue
    .line 49
    iget v0, p0, Lcn/sharesdk/mingdao/c;->b:I

    if-ne p1, v0, :cond_14

    .line 50
    iget-object v0, p0, Lcn/sharesdk/mingdao/c;->a:Lcn/sharesdk/framework/authorize/c;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/c;->finish()V

    .line 51
    if-nez p2, :cond_15

    .line 52
    iget-object v0, p0, Lcn/sharesdk/mingdao/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    if-eqz v0, :cond_14

    .line 53
    iget-object v0, p0, Lcn/sharesdk/mingdao/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    invoke-interface {v0}, Lcn/sharesdk/framework/authorize/SSOListener;->onCancel()V

    .line 101
    :cond_14
    :goto_14
    return-void

    .line 58
    :cond_15
    if-nez p3, :cond_28

    .line 59
    iget-object v0, p0, Lcn/sharesdk/mingdao/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    if-eqz v0, :cond_14

    .line 60
    iget-object v0, p0, Lcn/sharesdk/mingdao/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "response is empty"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcn/sharesdk/framework/authorize/SSOListener;->onFailed(Ljava/lang/Throwable;)V

    goto :goto_14

    .line 67
    :cond_28
    const-string v0, "result"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    if-nez v0, :cond_41

    .line 69
    iget-object v0, p0, Lcn/sharesdk/mingdao/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    if-eqz v0, :cond_14

    .line 70
    iget-object v0, p0, Lcn/sharesdk/mingdao/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "response is empty"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcn/sharesdk/framework/authorize/SSOListener;->onFailed(Ljava/lang/Throwable;)V

    goto :goto_14

    .line 75
    :cond_41
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 76
    if-nez v1, :cond_5b

    .line 77
    iget-object v1, p0, Lcn/sharesdk/mingdao/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    if-eqz v1, :cond_14

    .line 78
    iget-object v1, p0, Lcn/sharesdk/mingdao/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcn/sharesdk/framework/authorize/SSOListener;->onFailed(Ljava/lang/Throwable;)V

    goto :goto_14

    .line 83
    :cond_5b
    const-string v2, "error_code"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_72

    .line 84
    iget-object v1, p0, Lcn/sharesdk/mingdao/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    if-eqz v1, :cond_14

    .line 85
    iget-object v1, p0, Lcn/sharesdk/mingdao/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcn/sharesdk/framework/authorize/SSOListener;->onFailed(Ljava/lang/Throwable;)V

    goto :goto_14

    .line 90
    :cond_72
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 91
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7f
    :goto_7f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 92
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 93
    if-eqz v3, :cond_7f

    .line 94
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7f

    .line 97
    :cond_9f
    iget-object v0, p0, Lcn/sharesdk/mingdao/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    if-eqz v0, :cond_14

    .line 98
    iget-object v0, p0, Lcn/sharesdk/mingdao/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    invoke-interface {v0, v2}, Lcn/sharesdk/framework/authorize/SSOListener;->onComplete(Landroid/os/Bundle;)V

    goto/16 :goto_14
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 25
    iput-object p1, p0, Lcn/sharesdk/mingdao/c;->d:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 29
    iput-object p1, p0, Lcn/sharesdk/mingdao/c;->e:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcn/sharesdk/mingdao/c;->f:Ljava/lang/String;

    .line 31
    return-void
.end method
