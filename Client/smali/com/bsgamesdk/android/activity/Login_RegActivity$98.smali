.class Lcom/bsgamesdk/android/activity/Login_RegActivity$98;
.super Lcom/bsgamesdk/android/callbacklistener/SimpleTaskCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/activity/Login_RegActivity;->Q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/bsgamesdk/android/activity/Login_RegActivity;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/activity/Login_RegActivity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$98;->c:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    iput-object p3, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$98;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$98;->b:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/bsgamesdk/android/callbacklistener/SimpleTaskCallBackListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onFailed(Landroid/os/Bundle;)V
    .registers 16

    const/4 v13, 0x1

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$98;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$98;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$98;->c:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$98;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$98;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->goWebActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1a
    return-void

    :cond_1b
    const-string v0, "e_code"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    const-string v0, "message"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$98;->c:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->f(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v11}, Lcom/bsgamesdk/android/utils/y;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v12, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$98;->c:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    new-instance v0, Lcom/bsgamesdk/android/api/h;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$98;->c:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->f(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/bsgamesdk/android/model/c;->g:Ljava/lang/String;

    sget-object v3, Lcom/bsgamesdk/android/model/c;->f:Ljava/lang/String;

    sget-object v4, Lcom/bsgamesdk/android/model/c;->a:Ljava/lang/String;

    const-string v5, ""

    const-string v6, "1"

    sget-object v7, Lcom/bsgamesdk/android/model/c;->i:Ljava/lang/String;

    sget-object v8, Lcom/bsgamesdk/android/model/c;->c:Ljava/lang/String;

    const-string v9, "3"

    invoke-direct/range {v0 .. v9}, Lcom/bsgamesdk/android/api/h;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v12, v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->a(Lcom/bsgamesdk/android/activity/Login_RegActivity;Lcom/bsgamesdk/android/api/h;)Lcom/bsgamesdk/android/api/h;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$98;->c:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->at(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Lcom/bsgamesdk/android/api/h;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$98;->c:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->A(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v13, v1, v10, v11}, Lcom/bsgamesdk/android/api/h;->a(ILjava/lang/String;ILjava/lang/String;)V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "code"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "result"

    const-string v1, "1"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "account"

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$98;->c:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->A(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "message"

    invoke-interface {v6, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "actionname"

    const-string v1, "login"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "postion"

    const-string v1, "doThridConfig"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->getInstance()Lcom/bilibili/baseconnect/BaseSDKConnectManager;

    move-result-object v0

    const-string v2, "Login_RegActivity"

    const-string v3, "login"

    const-string v4, ""

    const-string v5, "1"

    move v1, v13

    invoke-virtual/range {v0 .. v6}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->reportCustomEvent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_1a
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .registers 6

    const/4 v1, 0x0

    :try_start_1
    const-string v0, "auth"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_9} :catch_25

    :goto_9
    if-nez v0, :cond_59

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$98;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4d

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$98;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4d

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$98;->c:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$98;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$98;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->goWebActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_24
    return-void

    :catch_25
    move-exception v0

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$98;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_40

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$98;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_40

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$98;->c:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$98;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$98;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->goWebActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24

    :cond_40
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$98;->c:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->f(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "\u82f9\u679c\u767b\u5f55\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    invoke-static {v0, v2}, Lcom/bsgamesdk/android/utils/y;->a(Landroid/content/Context;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_9

    :cond_4d
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$98;->c:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->f(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u82f9\u679c\u767b\u5f55\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/utils/y;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_24

    :cond_59
    iget-object v1, v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->redirect_url:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_69

    iget-object v1, v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->apple_web_client_id:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8f

    :cond_69
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$98;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_83

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$98;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_83

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$98;->c:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$98;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$98;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->goWebActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24

    :cond_83
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$98;->c:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->f(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u82f9\u679c\u767b\u5f55\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/utils/y;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_24

    :cond_8f
    invoke-static {}, Lcom/bsgamesdk/android/api/b;->a()Lcom/bsgamesdk/android/api/b;

    move-result-object v1

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$98;->c:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->f(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->apple_web_client_id:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/bsgamesdk/android/api/b;->c(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/bsgamesdk/android/api/b;->a()Lcom/bsgamesdk/android/api/b;

    move-result-object v1

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$98;->c:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->f(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->redirect_url:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/bsgamesdk/android/api/b;->d(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$98;->c:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    iget-object v2, v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->apple_web_client_id:Ljava/lang/String;

    iget-object v0, v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->redirect_url:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->goWebActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_24
.end method
