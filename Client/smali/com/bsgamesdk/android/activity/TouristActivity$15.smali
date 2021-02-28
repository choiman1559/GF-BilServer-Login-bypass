.class Lcom/bsgamesdk/android/activity/TouristActivity$15;
.super Lcom/bsgamesdk/android/callbacklistener/SimpleTaskCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bsgamesdk/android/activity/TouristActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bsgamesdk/android/activity/TouristActivity;


# virtual methods
.method public onFailed(Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "message"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/TouristActivity$15;->a:Lcom/bsgamesdk/android/activity/TouristActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/TouristActivity;->d(Lcom/bsgamesdk/android/activity/TouristActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/bsgamesdk/android/utils/y;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .registers 4

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity$15;->a:Lcom/bsgamesdk/android/activity/TouristActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/TouristActivity;->b(Lcom/bsgamesdk/android/activity/TouristActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity$15;->a:Lcom/bsgamesdk/android/activity/TouristActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/TouristActivity;->c(Lcom/bsgamesdk/android/activity/TouristActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity$15;->a:Lcom/bsgamesdk/android/activity/TouristActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/TouristActivity;->v(Lcom/bsgamesdk/android/activity/TouristActivity;)V

    return-void
.end method
