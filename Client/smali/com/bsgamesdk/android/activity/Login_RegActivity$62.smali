.class Lcom/bsgamesdk/android/activity/Login_RegActivity$62;
.super Lcom/bsgamesdk/android/utils/i$f;


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
.method public click(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$62;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$62;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->ah(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/widget/ImageView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->doGetCaptcha(Landroid/widget/ImageView;Ljava/lang/String;)V

    return-void
.end method
