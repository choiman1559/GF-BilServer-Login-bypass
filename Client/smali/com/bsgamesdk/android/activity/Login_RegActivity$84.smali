.class Lcom/bsgamesdk/android/activity/Login_RegActivity$84;
.super Lcom/bsgamesdk/android/callbacklistener/SimpleTaskCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/activity/Login_RegActivity;->d(Lcom/bsgamesdk/android/model/CaptchModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Lcom/bsgamesdk/android/api/BSGameSdkAuth;

.field final synthetic b:Lcom/bsgamesdk/android/activity/Login_RegActivity;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/activity/Login_RegActivity;Landroid/content/Context;)V
    .registers 4

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$84;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-direct {p0, p2}, Lcom/bsgamesdk/android/callbacklistener/SimpleTaskCallBackListener;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$84;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    iget-boolean v0, v0, Lcom/bsgamesdk/android/activity/Login_RegActivity;->h:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$84;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->aA(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Lcom/bsgamesdk/android/model/TouristUserParceable;

    move-result-object v0

    invoke-static {v0}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mergeTouristUserinfoCacheWithUser(Lcom/bsgamesdk/android/model/TouristUserParceable;)Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    move-result-object v0

    :goto_15
    iput-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$84;->a:Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    return-void

    :cond_18
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$84;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->az(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Lcom/bsgamesdk/android/model/UserParcelable;

    move-result-object v0

    invoke-static {v0}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mergeMyUserinfoCache(Lcom/bsgamesdk/android/model/UserParcelable;)Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    move-result-object v0

    goto :goto_15
.end method


# virtual methods
.method public onFailed(Landroid/os/Bundle;)V
    .registers 6

    const/4 v3, 0x0

    const/16 v2, 0x15bb

    const-string v0, "e_code"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const v1, 0x30d40

    if-ne v0, v1, :cond_16

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$84;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->a(ZI)V

    :goto_15
    return-void

    :cond_16
    const v1, 0x30d41

    if-ne v0, v1, :cond_22

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$84;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->a(ZI)V

    goto :goto_15

    :cond_22
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$84;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    iget-boolean v0, v0, Lcom/bsgamesdk/android/activity/Login_RegActivity;->h:Z

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$84;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$84;->a:Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    invoke-static {v0, v1, v3}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->a(Lcom/bsgamesdk/android/activity/Login_RegActivity;Lcom/bsgamesdk/android/api/BSGameSdkAuth;Lcom/bsgamesdk/android/model/CaptchModel;)V

    goto :goto_15

    :cond_30
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$84;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$84;->a:Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    invoke-static {v0, v1, v3}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->b(Lcom/bsgamesdk/android/activity/Login_RegActivity;Lcom/bsgamesdk/android/api/BSGameSdkAuth;Lcom/bsgamesdk/android/model/CaptchModel;)V

    goto :goto_15
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .registers 5

    const/4 v2, 0x0

    const-string v0, "auth"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$84;->a:Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$84;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    iget-boolean v0, v0, Lcom/bsgamesdk/android/activity/Login_RegActivity;->h:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$84;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$84;->a:Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    invoke-static {v0, v1, v2}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->a(Lcom/bsgamesdk/android/activity/Login_RegActivity;Lcom/bsgamesdk/android/api/BSGameSdkAuth;Lcom/bsgamesdk/android/model/CaptchModel;)V

    :goto_18
    return-void

    :cond_19
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$84;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$84;->a:Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    invoke-static {v0, v1, v2}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->b(Lcom/bsgamesdk/android/activity/Login_RegActivity;Lcom/bsgamesdk/android/api/BSGameSdkAuth;Lcom/bsgamesdk/android/model/CaptchModel;)V

    goto :goto_18
.end method
