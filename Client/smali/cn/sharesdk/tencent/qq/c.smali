.class public Lcn/sharesdk/tencent/qq/c;
.super Lcn/sharesdk/framework/authorize/d;
.source "QQSSOProcessor.java"


# instance fields
.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcn/sharesdk/framework/authorize/c;)V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/authorize/d;-><init>(Lcn/sharesdk/framework/authorize/c;)V

    .line 20
    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 32
    const-string v1, "com.tencent.mobileqq"

    .line 35
    :try_start_3
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/c;->a:Lcn/sharesdk/framework/authorize/c;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/c;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_11} :catch_28

    move-result-object v0

    .line 50
    :goto_12
    if-nez v0, :cond_57

    .line 51
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/c;->a:Lcn/sharesdk/framework/authorize/c;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/c;->finish()V

    .line 52
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    if-eqz v0, :cond_27

    .line 53
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    new-instance v1, Lcn/sharesdk/tencent/qq/TencentSSOClientNotInstalledException;

    invoke-direct {v1}, Lcn/sharesdk/tencent/qq/TencentSSOClientNotInstalledException;-><init>()V

    invoke-interface {v0, v1}, Lcn/sharesdk/framework/authorize/SSOListener;->onFailed(Ljava/lang/Throwable;)V

    .line 87
    :cond_27
    :goto_27
    return-void

    .line 36
    :catch_28
    move-exception v0

    .line 37
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 39
    :try_start_30
    const-string v1, "com.tencent.tim"

    .line 40
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/c;->a:Lcn/sharesdk/framework/authorize/c;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/c;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_40} :catch_42

    move-result-object v0

    goto :goto_12

    .line 41
    :catch_42
    move-exception v0

    .line 42
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/c;->a:Lcn/sharesdk/framework/authorize/c;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/c;->finish()V

    .line 43
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    if-eqz v0, :cond_27

    .line 44
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    new-instance v1, Lcn/sharesdk/tencent/qq/TencentSSOClientNotInstalledException;

    invoke-direct {v1}, Lcn/sharesdk/tencent/qq/TencentSSOClientNotInstalledException;-><init>()V

    invoke-interface {v0, v1}, Lcn/sharesdk/framework/authorize/SSOListener;->onFailed(Ljava/lang/Throwable;)V

    goto :goto_27

    .line 58
    :cond_57
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 59
    const-string v2, "com.tencent.open.agent.AgentActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    iget-object v1, p0, Lcn/sharesdk/tencent/qq/c;->a:Lcn/sharesdk/framework/authorize/c;

    invoke-virtual {v1}, Lcn/sharesdk/framework/authorize/c;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 61
    if-nez v1, :cond_85

    .line 62
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/c;->a:Lcn/sharesdk/framework/authorize/c;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/c;->finish()V

    .line 63
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    if-eqz v0, :cond_27

    .line 64
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    new-instance v1, Lcn/sharesdk/tencent/qq/TencentSSOClientNotInstalledException;

    invoke-direct {v1}, Lcn/sharesdk/tencent/qq/TencentSSOClientNotInstalledException;-><init>()V

    invoke-interface {v0, v1}, Lcn/sharesdk/framework/authorize/SSOListener;->onFailed(Ljava/lang/Throwable;)V

    goto :goto_27

    .line 69
    :cond_85
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 70
    const-string v2, "scope"

    iget-object v3, p0, Lcn/sharesdk/tencent/qq/c;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v2, "client_id"

    iget-object v3, p0, Lcn/sharesdk/tencent/qq/c;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v2, "pf"

    const-string v3, "openmobile_android"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v2, "need_pay"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v2, "key_params"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 75
    const-string v1, "key_request_code"

    iget v2, p0, Lcn/sharesdk/tencent/qq/c;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 76
    const-string v1, "key_action"

    const-string v2, "action_login"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    :try_start_b9
    iget-object v1, p0, Lcn/sharesdk/tencent/qq/c;->a:Lcn/sharesdk/framework/authorize/c;

    iget v2, p0, Lcn/sharesdk/tencent/qq/c;->b:I

    invoke-virtual {v1, v0, v2}, Lcn/sharesdk/framework/authorize/c;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_c0
    .catch Ljava/lang/Throwable; {:try_start_b9 .. :try_end_c0} :catch_c2

    goto/16 :goto_27

    .line 80
    :catch_c2
    move-exception v0

    .line 81
    iget-object v1, p0, Lcn/sharesdk/tencent/qq/c;->a:Lcn/sharesdk/framework/authorize/c;

    invoke-virtual {v1}, Lcn/sharesdk/framework/authorize/c;->finish()V

    .line 82
    iget-object v1, p0, Lcn/sharesdk/tencent/qq/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    if-eqz v1, :cond_27

    .line 83
    iget-object v1, p0, Lcn/sharesdk/tencent/qq/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    invoke-interface {v1, v0}, Lcn/sharesdk/framework/authorize/SSOListener;->onFailed(Ljava/lang/Throwable;)V

    goto/16 :goto_27
.end method

.method public a(IILandroid/content/Intent;)V
    .registers 8

    .prologue
    .line 90
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/c;->a:Lcn/sharesdk/framework/authorize/c;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/c;->finish()V

    .line 91
    if-nez p2, :cond_11

    .line 92
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    if-eqz v0, :cond_10

    .line 93
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    invoke-interface {v0}, Lcn/sharesdk/framework/authorize/SSOListener;->onCancel()V

    .line 150
    :cond_10
    :goto_10
    return-void

    .line 98
    :cond_11
    if-nez p3, :cond_24

    .line 99
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    if-eqz v0, :cond_10

    .line 100
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "response is empty"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcn/sharesdk/framework/authorize/SSOListener;->onFailed(Ljava/lang/Throwable;)V

    goto :goto_10

    .line 105
    :cond_24
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 106
    if-nez v0, :cond_3b

    .line 107
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    if-eqz v0, :cond_10

    .line 108
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "response is empty"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcn/sharesdk/framework/authorize/SSOListener;->onFailed(Ljava/lang/Throwable;)V

    goto :goto_10

    .line 113
    :cond_3b
    const-string v1, "key_response"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_54

    .line 114
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    if-eqz v0, :cond_10

    .line 115
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "response is empty"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcn/sharesdk/framework/authorize/SSOListener;->onFailed(Ljava/lang/Throwable;)V

    goto :goto_10

    .line 120
    :cond_54
    const-string v1, "key_response"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    if-eqz v0, :cond_62

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_73

    .line 122
    :cond_62
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    if-eqz v0, :cond_10

    .line 123
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "response is empty"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcn/sharesdk/framework/authorize/SSOListener;->onFailed(Ljava/lang/Throwable;)V

    goto :goto_10

    .line 129
    :cond_73
    :try_start_73
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 130
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 131
    const-string v2, "ret"

    const-string v3, "ret"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 132
    const-string v2, "pay_token"

    const-string v3, "pay_token"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v2, "pf"

    const-string v3, "pf"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v2, "open_id"

    const-string v3, "openid"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v2, "expires_in"

    const-string v3, "expires_in"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v2, "pfkey"

    const-string v3, "pfkey"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v2, "msg"

    const-string v3, "msg"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v2, "access_token"

    const-string v3, "access_token"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v1, p0, Lcn/sharesdk/tencent/qq/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    if-eqz v1, :cond_10

    .line 141
    iget-object v1, p0, Lcn/sharesdk/tencent/qq/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    invoke-interface {v1, v0}, Lcn/sharesdk/framework/authorize/SSOListener;->onComplete(Landroid/os/Bundle;)V

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/sharesdk/tencent/qq/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;
    :try_end_e1
    .catch Ljava/lang/Throwable; {:try_start_73 .. :try_end_e1} :catch_e3

    goto/16 :goto_10

    .line 144
    :catch_e3
    move-exception v0

    .line 145
    iget-object v1, p0, Lcn/sharesdk/tencent/qq/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    if-eqz v1, :cond_10

    .line 146
    iget-object v1, p0, Lcn/sharesdk/tencent/qq/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    invoke-interface {v1, v0}, Lcn/sharesdk/framework/authorize/SSOListener;->onFailed(Ljava/lang/Throwable;)V

    goto/16 :goto_10
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 23
    iput-object p1, p0, Lcn/sharesdk/tencent/qq/c;->d:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcn/sharesdk/tencent/qq/c;->e:Ljava/lang/String;

    .line 25
    return-void
.end method
