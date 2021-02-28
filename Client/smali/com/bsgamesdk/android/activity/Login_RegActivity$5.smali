.class Lcom/bsgamesdk/android/activity/Login_RegActivity$5;
.super Lcom/bsgamesdk/android/utils/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/activity/Login_RegActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bsgamesdk/android/activity/Login_RegActivity;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/activity/Login_RegActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$5;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-direct {p0}, Lcom/bsgamesdk/android/utils/i$a;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 3

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$5;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->k(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$5;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->k(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$5;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->k(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/widget/Button;

    move-result-object v0

    const-string v1, "\u83b7\u53d6"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_1d
    return-void
.end method

.method public onTick(J)V
    .registers 8

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$5;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->k(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$5;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->k(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$5;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->k(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    :cond_32
    return-void
.end method
