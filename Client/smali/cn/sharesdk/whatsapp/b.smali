.class public Lcn/sharesdk/whatsapp/b;
.super Lcn/sharesdk/framework/b;
.source "WhatsAppHelper.java"


# direct methods
.method public constructor <init>(Lcn/sharesdk/framework/Platform;)V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/b;-><init>(Lcn/sharesdk/framework/Platform;)V

    .line 25
    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Lcn/sharesdk/framework/PlatformActionListener;)V
    .registers 7

    .prologue
    .line 63
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 64
    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 65
    const-string v1, "path"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    new-instance v1, Lcn/sharesdk/whatsapp/a;

    invoke-direct {v1}, Lcn/sharesdk/whatsapp/a;-><init>()V

    .line 68
    iget-object v2, p0, Lcn/sharesdk/whatsapp/b;->a:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v1, v2, p3}, Lcn/sharesdk/whatsapp/a;->a(Lcn/sharesdk/framework/Platform;Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 69
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcn/sharesdk/whatsapp/a;->show(Landroid/content/Context;Landroid/content/Intent;)V

    .line 70
    return-void
.end method

.method public a(Ljava/lang/String;Lcn/sharesdk/framework/PlatformActionListener;)V
    .registers 6

    .prologue
    .line 95
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 96
    const-string v1, "type"

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 97
    const-string v1, "phone"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    new-instance v1, Lcn/sharesdk/whatsapp/a;

    invoke-direct {v1}, Lcn/sharesdk/whatsapp/a;-><init>()V

    .line 100
    iget-object v2, p0, Lcn/sharesdk/whatsapp/b;->a:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v1, v2, p2}, Lcn/sharesdk/whatsapp/a;->a(Lcn/sharesdk/framework/Platform;Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 101
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcn/sharesdk/whatsapp/a;->show(Landroid/content/Context;Landroid/content/Intent;)V

    .line 102
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcn/sharesdk/framework/PlatformActionListener;)V
    .registers 7

    .prologue
    .line 79
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 80
    const-string v1, "type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 81
    const-string v1, "text"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    const-string v1, "title"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    new-instance v1, Lcn/sharesdk/whatsapp/a;

    invoke-direct {v1}, Lcn/sharesdk/whatsapp/a;-><init>()V

    .line 85
    iget-object v2, p0, Lcn/sharesdk/whatsapp/b;->a:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v1, v2, p3}, Lcn/sharesdk/whatsapp/a;->a(Lcn/sharesdk/framework/Platform;Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 86
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcn/sharesdk/whatsapp/a;->show(Landroid/content/Context;Landroid/content/Intent;)V

    .line 87
    return-void
.end method

.method public a()Z
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 46
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 48
    :try_start_5
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 49
    const-string v1, "com.whatsapp"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 50
    if-eqz v0, :cond_20

    move v0, v2

    :goto_17
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1a} :catch_22

    move-result-object v0

    .line 55
    :goto_1b
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_20
    move v0, v3

    .line 50
    goto :goto_17

    .line 51
    :catch_22
    move-exception v0

    move-object v1, v0

    .line 52
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 53
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v4

    const-string v5, "Exception"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-virtual {v4, v5, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_1b
.end method

.method public getAuthorizeUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAuthorizeWebviewClient(Lcn/sharesdk/framework/authorize/e;)Lcn/sharesdk/framework/authorize/b;
    .registers 3
    .param p1, "webAct"    # Lcn/sharesdk/framework/authorize/e;

    .prologue
    .line 29
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRedirectUri()Ljava/lang/String;
    .registers 2

    .prologue
    .line 39
    const/4 v0, 0x0

    return-object v0
.end method
