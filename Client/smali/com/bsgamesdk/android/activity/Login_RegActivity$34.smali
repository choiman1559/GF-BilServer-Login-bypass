.class Lcom/bsgamesdk/android/activity/Login_RegActivity$34;
.super Landroid/os/CountDownTimer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/activity/Login_RegActivity;->a(Lcom/bsgamesdk/android/utils/i$f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bsgamesdk/android/utils/i$f;

.field final synthetic b:Lcom/bsgamesdk/android/activity/Login_RegActivity;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/activity/Login_RegActivity;JJLcom/bsgamesdk/android/utils/i$f;)V
    .registers 7

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$34;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    iput-object p6, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$34;->a:Lcom/bsgamesdk/android/utils/i$f;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$34;->a:Lcom/bsgamesdk/android/utils/i$f;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$34;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->f(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u6570\u636e\u53d1\u9001\u4e2d\uff0c\u8bf7\u7a0d\u5019..."

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v4, v1, v2, v3}, Lcom/bsgamesdk/android/utils/k;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$34;->a:Lcom/bsgamesdk/android/utils/i$f;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$34;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->O(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bsgamesdk/android/utils/i$f;->onClick(Landroid/view/View;)V

    :cond_1d
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$34;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    iget-object v0, v0, Lcom/bsgamesdk/android/activity/Login_RegActivity;->c:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$34;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    iget-object v0, v0, Lcom/bsgamesdk/android/activity/Login_RegActivity;->c:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$34;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    iput-object v4, v0, Lcom/bsgamesdk/android/activity/Login_RegActivity;->c:Landroid/os/CountDownTimer;

    :cond_2e
    return-void
.end method

.method public onTick(J)V
    .registers 8

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$34;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->N(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/widget/TextView;

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

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
