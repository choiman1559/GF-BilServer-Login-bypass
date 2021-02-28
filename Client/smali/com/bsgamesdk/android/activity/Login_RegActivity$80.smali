.class Lcom/bsgamesdk/android/activity/Login_RegActivity$80;
.super Lcom/bsgamesdk/android/callbacklistener/SimpleTaskCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bsgamesdk/android/activity/Login_RegActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bsgamesdk/android/activity/Login_RegActivity;


# virtual methods
.method public onFailed(Landroid/os/Bundle;)V
    .registers 16

    const/4 v13, 0x1

    invoke-super {p0, p1}, Lcom/bsgamesdk/android/callbacklistener/SimpleTaskCallBackListener;->onFailed(Landroid/os/Bundle;)V

    const-string v0, "e_code"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    const-string v0, "message"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const v0, 0x7a160

    if-eq v10, v0, :cond_1f

    const v0, 0x7a15e

    if-eq v10, v0, :cond_1f

    const v0, 0x7a15f

    if-ne v10, v0, :cond_2a

    :cond_1f
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$80;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->e(Lcom/bsgamesdk/android/activity/Login_RegActivity;I)I

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$80;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->c(Lcom/bsgamesdk/android/activity/Login_RegActivity;)V

    :cond_2a
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$80;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->f(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v11}, Lcom/bsgamesdk/android/utils/y;->b(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v12, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$80;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    new-instance v0, Lcom/bsgamesdk/android/api/h;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$80;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

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

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$80;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->at(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Lcom/bsgamesdk/android/api/h;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$80;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->A(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v13, v1, v10, v11}, Lcom/bsgamesdk/android/api/h;->b(ILjava/lang/String;ILjava/lang/String;)V

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

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$80;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->A(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "message"

    invoke-interface {v6, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "actionname"

    const-string v1, "reg"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "postion"

    const-string v1, "doRegTel"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->getInstance()Lcom/bilibili/baseconnect/BaseSDKConnectManager;

    move-result-object v0

    const-string v2, "Login_RegActivity"

    const-string v3, "reg"

    const-string v4, ""

    const-string v5, "1"

    move v1, v13

    invoke-virtual/range {v0 .. v6}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->reportCustomEvent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .registers 14

    const/4 v11, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$80;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    const-string v0, "auth"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    iput-object v0, v1, Lcom/bsgamesdk/android/activity/Login_RegActivity;->e:Lcom/bsgamesdk/android/api/BSGameSdkAuth;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_d} :catch_ec

    :goto_d
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$80;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    iget-object v0, v0, Lcom/bsgamesdk/android/activity/Login_RegActivity;->e:Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    if-nez v0, :cond_14

    :goto_13
    return-void

    :cond_14
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$80;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    iget-object v0, v0, Lcom/bsgamesdk/android/activity/Login_RegActivity;->e:Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    iget v0, v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->h5_paid_download:I

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$80;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    iget-object v1, v1, Lcom/bsgamesdk/android/activity/Login_RegActivity;->e:Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    iget v1, v1, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->h5_paid_download_sameSign:I

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/utils/i;->a(II)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$80;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->au(Lcom/bsgamesdk/android/activity/Login_RegActivity;)V

    goto :goto_13

    :cond_2c
    new-instance v0, Lcom/bsgamesdk/android/model/UserParcelable;

    invoke-direct {v0}, Lcom/bsgamesdk/android/model/UserParcelable;-><init>()V

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$80;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    iget-object v1, v1, Lcom/bsgamesdk/android/activity/Login_RegActivity;->e:Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    iget-object v1, v1, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mMid:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/bsgamesdk/android/model/UserParcelable;->uid_long:J

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$80;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->A(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bsgamesdk/android/model/UserParcelable;->username:Ljava/lang/String;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$80;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    iget-object v1, v1, Lcom/bsgamesdk/android/activity/Login_RegActivity;->e:Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    iget-object v1, v1, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mAccessKey:Ljava/lang/String;

    iput-object v1, v0, Lcom/bsgamesdk/android/model/UserParcelable;->access_token:Ljava/lang/String;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$80;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->av(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Lcom/bsgamesdk/android/model/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bsgamesdk/android/model/m;->a(Lcom/bsgamesdk/android/model/UserParcelable;)V

    iget-object v10, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$80;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    new-instance v0, Lcom/bsgamesdk/android/api/h;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$80;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->f(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/bsgamesdk/android/model/c;->g:Ljava/lang/String;

    sget-object v3, Lcom/bsgamesdk/android/model/c;->f:Ljava/lang/String;

    sget-object v4, Lcom/bsgamesdk/android/model/c;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$80;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    iget-object v5, v5, Lcom/bsgamesdk/android/activity/Login_RegActivity;->e:Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    iget-object v5, v5, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mMid:Ljava/lang/String;

    const-string v6, "1"

    sget-object v7, Lcom/bsgamesdk/android/model/c;->i:Ljava/lang/String;

    sget-object v8, Lcom/bsgamesdk/android/model/c;->c:Ljava/lang/String;

    const-string v9, "3"

    invoke-direct/range {v0 .. v9}, Lcom/bsgamesdk/android/api/h;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v10, v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->a(Lcom/bsgamesdk/android/activity/Login_RegActivity;Lcom/bsgamesdk/android/api/h;)Lcom/bsgamesdk/android/api/h;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$80;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->at(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Lcom/bsgamesdk/android/api/h;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$80;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->A(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v11, v1, v11, v2}, Lcom/bsgamesdk/android/api/h;->b(ILjava/lang/String;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$80;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->aw(Lcom/bsgamesdk/android/activity/Login_RegActivity;)I

    move-result v0

    const/16 v1, 0x11

    if-ne v0, v1, :cond_a7

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$80;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->e(Lcom/bsgamesdk/android/activity/Login_RegActivity;I)I

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$80;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    new-instance v1, Lcom/bsgamesdk/android/activity/Login_RegActivity$80$1;

    invoke-direct {v1, p0}, Lcom/bsgamesdk/android/activity/Login_RegActivity$80$1;-><init>(Lcom/bsgamesdk/android/activity/Login_RegActivity$80;)V

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->a(Lcom/bsgamesdk/android/activity/Login_RegActivity;Lcom/bsgamesdk/android/utils/i$f;)V

    goto/16 :goto_13

    :cond_a7
    invoke-static {}, Lcom/bsgamesdk/android/api/b;->a()Lcom/bsgamesdk/android/api/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bsgamesdk/android/api/b;->m()Z

    move-result v0

    if-eqz v0, :cond_b8

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$80;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-virtual {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->showAuthSubmit()V

    goto/16 :goto_13

    :cond_b8
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$80;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->z(Lcom/bsgamesdk/android/activity/Login_RegActivity;)I

    move-result v0

    if-nez v0, :cond_e5

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$80;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->B(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$80;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->A(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$80;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->D(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$80;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->C(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$80;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->c(Lcom/bsgamesdk/android/activity/Login_RegActivity;)V

    goto/16 :goto_13

    :cond_e5
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$80;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->E(Lcom/bsgamesdk/android/activity/Login_RegActivity;)V

    goto/16 :goto_13

    :catch_ec
    move-exception v0

    goto/16 :goto_d
.end method
