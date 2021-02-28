.class Lcom/bsgamesdk/android/activity/Login_RegActivity$97;
.super Lcom/bsgamesdk/android/callbacklistener/SimpleTaskCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/activity/Login_RegActivity;->a(Lcom/bsgamesdk/android/model/CaptchModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/bsgamesdk/android/activity/Login_RegActivity;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/activity/Login_RegActivity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$97;->d:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    iput-object p3, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$97;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$97;->b:Ljava/lang/String;

    iput-object p5, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$97;->c:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/bsgamesdk/android/callbacklistener/SimpleTaskCallBackListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onFailed(Landroid/os/Bundle;)V
    .registers 16

    const/16 v3, 0x15b5

    const/4 v13, 0x1

    const-string v0, "e_code"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    const-string v0, "message"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :try_start_10
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$97;->d:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    iget-object v0, v0, Lcom/bsgamesdk/android/activity/Login_RegActivity;->f:Ljava/util/Map;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$97;->b:Ljava/lang/String;

    const-string v2, "need_captch"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_1f} :catch_d7

    :goto_1f
    const v0, 0x30d40

    if-ne v10, v0, :cond_2b

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$97;->d:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->a(ZI)V

    :goto_2a
    return-void

    :cond_2b
    const v0, 0x30d41

    if-ne v10, v0, :cond_36

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$97;->d:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-virtual {v0, v13, v3}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->a(ZI)V

    goto :goto_2a

    :cond_36
    const/16 v0, -0x1f4

    if-eq v10, v0, :cond_4e

    const v0, 0x7a15d

    if-eq v10, v0, :cond_4e

    const v0, 0x7a15f

    if-eq v10, v0, :cond_4e

    const v0, 0x7a160

    if-eq v10, v0, :cond_4e

    const v0, 0x7a162

    if-ne v10, v0, :cond_53

    :cond_4e
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$97;->d:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->c(Lcom/bsgamesdk/android/activity/Login_RegActivity;)V

    :cond_53
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$97;->d:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->f(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v11}, Lcom/bsgamesdk/android/utils/y;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v12, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$97;->d:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    new-instance v0, Lcom/bsgamesdk/android/api/h;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$97;->d:Lcom/bsgamesdk/android/activity/Login_RegActivity;

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

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$97;->d:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->at(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Lcom/bsgamesdk/android/api/h;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$97;->b:Ljava/lang/String;

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

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$97;->b:Ljava/lang/String;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "message"

    invoke-interface {v6, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "actionname"

    const-string v1, "login"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "postion"

    const-string v1, "doThridLoginBind"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->getInstance()Lcom/bilibili/baseconnect/BaseSDKConnectManager;

    move-result-object v0

    const-string v2, "Login_RegActivity"

    const-string v3, "login"

    const-string v4, ""

    const-string v5, "1"

    move v1, v13

    invoke-virtual/range {v0 .. v6}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->reportCustomEvent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_2a

    :catch_d7
    move-exception v0

    goto/16 :goto_1f
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .registers 6

    const/4 v1, 0x0

    const-string v0, "need_captch"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    :try_start_6
    const-string v0, "auth"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_e} :catch_11

    :goto_e
    if-nez v0, :cond_14

    :goto_10
    return-void

    :catch_11
    move-exception v0

    move-object v0, v1

    goto :goto_e

    :cond_14
    iget v1, v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->h5_paid_download:I

    iget v2, v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->h5_paid_download_sameSign:I

    invoke-static {v1, v2}, Lcom/bsgamesdk/android/utils/i;->a(II)Z

    move-result v1

    if-eqz v1, :cond_24

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$97;->d:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->au(Lcom/bsgamesdk/android/activity/Login_RegActivity;)V

    goto :goto_10

    :cond_24
    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$97;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->open_id:Ljava/lang/String;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$97;->d:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v1, v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->a(Lcom/bsgamesdk/android/activity/Login_RegActivity;Lcom/bsgamesdk/android/api/BSGameSdkAuth;)Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    sget-object v1, Lcom/bsgamesdk/android/b;->e:Lcom/bsgamesdk/android/helper/d;

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$97;->d:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->az(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Lcom/bsgamesdk/android/model/UserParcelable;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/bsgamesdk/android/helper/d;->b(Lcom/bsgamesdk/android/model/UserParcelable;Lcom/bsgamesdk/android/api/BSGameSdkAuth;)V

    sget-object v1, Lcom/bsgamesdk/android/b;->e:Lcom/bsgamesdk/android/helper/d;

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$97;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$97;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v3}, Lcom/bsgamesdk/android/helper/d;->a(Lcom/bsgamesdk/android/api/BSGameSdkAuth;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$97;->d:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->aF(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Lcom/bsgamesdk/android/model/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bsgamesdk/android/model/o;->c()Lcom/bsgamesdk/android/model/UNamePwdMap;

    move-result-object v0

    iget-object v1, v0, Lcom/bsgamesdk/android/model/UNamePwdMap;->mUNamepwdMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$97;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$97;->c:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$97;->d:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->aF(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Lcom/bsgamesdk/android/model/o;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bsgamesdk/android/model/o;->a(Lcom/bsgamesdk/android/model/UNamePwdMap;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$97;->d:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    new-instance v1, Lcom/bsgamesdk/android/activity/Login_RegActivity$97$1;

    invoke-direct {v1, p0}, Lcom/bsgamesdk/android/activity/Login_RegActivity$97$1;-><init>(Lcom/bsgamesdk/android/activity/Login_RegActivity$97;)V

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->a(Lcom/bsgamesdk/android/activity/Login_RegActivity;Lcom/bsgamesdk/android/utils/i$f;)V

    goto :goto_10
.end method
