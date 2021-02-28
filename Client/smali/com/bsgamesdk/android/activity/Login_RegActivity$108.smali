.class Lcom/bsgamesdk/android/activity/Login_RegActivity$108;
.super Lcom/bsgamesdk/android/callbacklistener/SimpleTaskCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/activity/Login_RegActivity;->d(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bsgamesdk/android/activity/Login_RegActivity;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/activity/Login_RegActivity;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$108;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-direct {p0, p2}, Lcom/bsgamesdk/android/callbacklistener/SimpleTaskCallBackListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onFailed(Landroid/os/Bundle;)V
    .registers 15

    invoke-super {p0, p1}, Lcom/bsgamesdk/android/callbacklistener/SimpleTaskCallBackListener;->onFailed(Landroid/os/Bundle;)V

    const-string v0, "e_code"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    const-string v0, "message"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const v0, 0x7a160

    if-eq v10, v0, :cond_1e

    const v0, 0x7a15e

    if-eq v10, v0, :cond_1e

    const v0, 0x7a15f

    if-ne v10, v0, :cond_29

    :cond_1e
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$108;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->e(Lcom/bsgamesdk/android/activity/Login_RegActivity;I)I

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$108;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->c(Lcom/bsgamesdk/android/activity/Login_RegActivity;)V

    :cond_29
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$108;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->f(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v11}, Lcom/bsgamesdk/android/utils/y;->b(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v12, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$108;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    new-instance v0, Lcom/bsgamesdk/android/api/h;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$108;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

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

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$108;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->at(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Lcom/bsgamesdk/android/api/h;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$108;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->A(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v10, v11}, Lcom/bsgamesdk/android/api/h;->b(ILjava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .registers 14

    const/4 v11, 0x0

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$108;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->aJ(Lcom/bsgamesdk/android/activity/Login_RegActivity;)V

    :try_start_6
    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$108;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    const-string v0, "auth"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    iput-object v0, v1, Lcom/bsgamesdk/android/activity/Login_RegActivity;->e:Lcom/bsgamesdk/android/api/BSGameSdkAuth;
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_12} :catch_f1

    :goto_12
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$108;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    iget-object v0, v0, Lcom/bsgamesdk/android/activity/Login_RegActivity;->e:Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    if-nez v0, :cond_19

    :goto_18
    return-void

    :cond_19
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$108;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    iget-object v0, v0, Lcom/bsgamesdk/android/activity/Login_RegActivity;->e:Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    iget v0, v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->h5_paid_download:I

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$108;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    iget-object v1, v1, Lcom/bsgamesdk/android/activity/Login_RegActivity;->e:Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    iget v1, v1, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->h5_paid_download_sameSign:I

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/utils/i;->a(II)Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$108;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->au(Lcom/bsgamesdk/android/activity/Login_RegActivity;)V

    goto :goto_18

    :cond_31
    new-instance v0, Lcom/bsgamesdk/android/model/UserParcelable;

    invoke-direct {v0}, Lcom/bsgamesdk/android/model/UserParcelable;-><init>()V

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$108;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    iget-object v1, v1, Lcom/bsgamesdk/android/activity/Login_RegActivity;->e:Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    iget-object v1, v1, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mMid:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/bsgamesdk/android/model/UserParcelable;->uid_long:J

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$108;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->A(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bsgamesdk/android/model/UserParcelable;->username:Ljava/lang/String;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$108;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    iget-object v1, v1, Lcom/bsgamesdk/android/activity/Login_RegActivity;->e:Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    iget-object v1, v1, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mAccessKey:Ljava/lang/String;

    iput-object v1, v0, Lcom/bsgamesdk/android/model/UserParcelable;->access_token:Ljava/lang/String;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$108;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->av(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Lcom/bsgamesdk/android/model/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bsgamesdk/android/model/m;->a(Lcom/bsgamesdk/android/model/UserParcelable;)V

    iget-object v10, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$108;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    new-instance v0, Lcom/bsgamesdk/android/api/h;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$108;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->f(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/bsgamesdk/android/model/c;->g:Ljava/lang/String;

    sget-object v3, Lcom/bsgamesdk/android/model/c;->f:Ljava/lang/String;

    sget-object v4, Lcom/bsgamesdk/android/model/c;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$108;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    iget-object v5, v5, Lcom/bsgamesdk/android/activity/Login_RegActivity;->e:Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    iget-object v5, v5, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mMid:Ljava/lang/String;

    const-string v6, "1"

    sget-object v7, Lcom/bsgamesdk/android/model/c;->i:Ljava/lang/String;

    sget-object v8, Lcom/bsgamesdk/android/model/c;->c:Ljava/lang/String;

    const-string v9, "3"

    invoke-direct/range {v0 .. v9}, Lcom/bsgamesdk/android/api/h;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v10, v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->a(Lcom/bsgamesdk/android/activity/Login_RegActivity;Lcom/bsgamesdk/android/api/h;)Lcom/bsgamesdk/android/api/h;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$108;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->at(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Lcom/bsgamesdk/android/api/h;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$108;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->A(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v11, v1, v11, v2}, Lcom/bsgamesdk/android/api/h;->b(ILjava/lang/String;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$108;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->aw(Lcom/bsgamesdk/android/activity/Login_RegActivity;)I

    move-result v0

    const/16 v1, 0x11

    if-ne v0, v1, :cond_ac

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$108;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->e(Lcom/bsgamesdk/android/activity/Login_RegActivity;I)I

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$108;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    new-instance v1, Lcom/bsgamesdk/android/activity/Login_RegActivity$108$1;

    invoke-direct {v1, p0}, Lcom/bsgamesdk/android/activity/Login_RegActivity$108$1;-><init>(Lcom/bsgamesdk/android/activity/Login_RegActivity$108;)V

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->a(Lcom/bsgamesdk/android/activity/Login_RegActivity;Lcom/bsgamesdk/android/utils/i$f;)V

    goto/16 :goto_18

    :cond_ac
    invoke-static {}, Lcom/bsgamesdk/android/api/b;->a()Lcom/bsgamesdk/android/api/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bsgamesdk/android/api/b;->m()Z

    move-result v0

    if-eqz v0, :cond_bd

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$108;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-virtual {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->showAuthSubmit()V

    goto/16 :goto_18

    :cond_bd
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$108;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->z(Lcom/bsgamesdk/android/activity/Login_RegActivity;)I

    move-result v0

    if-nez v0, :cond_ea

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$108;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->B(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$108;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->A(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$108;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->D(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$108;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->C(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$108;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->c(Lcom/bsgamesdk/android/activity/Login_RegActivity;)V

    goto/16 :goto_18

    :cond_ea
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$108;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->E(Lcom/bsgamesdk/android/activity/Login_RegActivity;)V

    goto/16 :goto_18

    :catch_f1
    move-exception v0

    goto/16 :goto_12
.end method
