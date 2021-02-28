.class Lcom/bsgamesdk/android/activity/Login_RegActivity$32;
.super Lcom/bsgamesdk/android/utils/i$f;


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
.method constructor <init>(Lcom/bsgamesdk/android/activity/Login_RegActivity;Lcom/bsgamesdk/android/utils/i$f;)V
    .registers 3

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$32;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    iput-object p2, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$32;->a:Lcom/bsgamesdk/android/utils/i$f;

    invoke-direct {p0}, Lcom/bsgamesdk/android/utils/i$f;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .registers 7

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$32;->a:Lcom/bsgamesdk/android/utils/i$f;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$32;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    iget-object v0, v0, Lcom/bsgamesdk/android/activity/Login_RegActivity;->c:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$32;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    iget-object v0, v0, Lcom/bsgamesdk/android/activity/Login_RegActivity;->c:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$32;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    iput-object v4, v0, Lcom/bsgamesdk/android/activity/Login_RegActivity;->c:Landroid/os/CountDownTimer;

    :cond_16
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$32;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->f(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u6570\u636e\u53d1\u9001\u4e2d\uff0c\u8bf7\u7a0d\u5019..."

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v4, v1, v2, v3}, Lcom/bsgamesdk/android/utils/k;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$32;->a:Lcom/bsgamesdk/android/utils/i$f;

    invoke-virtual {v0, p1}, Lcom/bsgamesdk/android/utils/i$f;->onClick(Landroid/view/View;)V

    :cond_28
    return-void
.end method
