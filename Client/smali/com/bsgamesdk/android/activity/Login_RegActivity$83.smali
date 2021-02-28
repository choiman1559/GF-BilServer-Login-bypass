.class Lcom/bsgamesdk/android/activity/Login_RegActivity$83;
.super Lcom/bsgamesdk/android/callbacklistener/SimpleTaskCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/activity/Login_RegActivity;->e(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/bsgamesdk/android/activity/Login_RegActivity;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/activity/Login_RegActivity;Landroid/content/Context;I)V
    .registers 4

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$83;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    iput p3, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$83;->a:I

    invoke-direct {p0, p2}, Lcom/bsgamesdk/android/callbacklistener/SimpleTaskCallBackListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onSuccess(Landroid/os/Bundle;)V
    .registers 6

    const-string v0, "auth"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    if-eqz v0, :cond_38

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$83;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->e(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    move-result-object v1

    iget-boolean v0, v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mActivate:Z

    iput-boolean v0, v1, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mActivate:Z

    iget v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$83;->a:I

    const/16 v1, 0x7d1

    if-ne v0, v1, :cond_39

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$83;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$83;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->e(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    invoke-static {v0, v1, v2, v3}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->a(Lcom/bsgamesdk/android/activity/Login_RegActivity;Lcom/bsgamesdk/android/api/BSGameSdkAuth;ZI)V

    sget-object v0, Lcom/bsgamesdk/android/b;->e:Lcom/bsgamesdk/android/helper/d;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$83;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->az(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Lcom/bsgamesdk/android/model/UserParcelable;

    move-result-object v1

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$83;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->e(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/bsgamesdk/android/helper/d;->c(Lcom/bsgamesdk/android/model/UserParcelable;Lcom/bsgamesdk/android/api/BSGameSdkAuth;)V

    :cond_38
    :goto_38
    return-void

    :cond_39
    iget v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$83;->a:I

    const/16 v1, 0x7d2

    if-ne v0, v1, :cond_4b

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$83;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$83;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->e(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->b(Lcom/bsgamesdk/android/activity/Login_RegActivity;Lcom/bsgamesdk/android/api/BSGameSdkAuth;)V

    goto :goto_38

    :cond_4b
    iget v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$83;->a:I

    const/16 v1, 0x7d3

    if-ne v0, v1, :cond_38

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$83;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$83;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->aA(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Lcom/bsgamesdk/android/model/TouristUserParceable;

    move-result-object v1

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$83;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->e(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->a(Lcom/bsgamesdk/android/activity/Login_RegActivity;Lcom/bsgamesdk/android/model/TouristUserParceable;Lcom/bsgamesdk/android/api/BSGameSdkAuth;)V

    goto :goto_38
.end method
