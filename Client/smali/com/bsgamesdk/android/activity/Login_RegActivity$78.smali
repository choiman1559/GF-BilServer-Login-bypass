.class Lcom/bsgamesdk/android/activity/Login_RegActivity$78;
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
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Lcom/bsgamesdk/android/activity/Login_RegActivity;


# virtual methods
.method public onFailed(Landroid/os/Bundle;)V
    .registers 5

    const-string v0, "e_code"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "message"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, -0x69

    if-ne v0, v2, :cond_37

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$78;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    iget-boolean v0, v0, Lcom/bsgamesdk/android/activity/Login_RegActivity;->a:Z

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$78;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->f(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/utils/y;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$78;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/bsgamesdk/android/activity/Login_RegActivity;->a:Z

    :cond_24
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x3e9

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$78;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->ap(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_36
    return-void

    :cond_37
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$78;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->f(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/utils/y;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_36
.end method

.method public onFinish()V
    .registers 3

    invoke-super {p0}, Lcom/bsgamesdk/android/callbacklistener/SimpleTaskCallBackListener;->onFinish()V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$78;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->ap(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bsgamesdk/android/activity/Login_RegActivity$78$1;

    invoke-direct {v1, p0}, Lcom/bsgamesdk/android/activity/Login_RegActivity$78$1;-><init>(Lcom/bsgamesdk/android/activity/Login_RegActivity$78;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .registers 4

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$78;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->f(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u5df2\u53d1\u9001\u9a8c\u8bc1\u7801"

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/utils/y;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$78;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->M(Lcom/bsgamesdk/android/activity/Login_RegActivity;)I

    move-result v0

    const/16 v1, 0x67

    if-ne v0, v1, :cond_27

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x3ea

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$78;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->ap(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_27
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$78;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->M(Lcom/bsgamesdk/android/activity/Login_RegActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_44

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$78;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->M(Lcom/bsgamesdk/android/activity/Login_RegActivity;)I

    move-result v0

    const/16 v1, 0x68

    if-eq v0, v1, :cond_44

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$78;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->M(Lcom/bsgamesdk/android/activity/Login_RegActivity;)I

    move-result v0

    const/16 v1, 0x69

    if-ne v0, v1, :cond_56

    :cond_44
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x3ec

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$78;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->ap(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_56
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$78;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$78;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->ae(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/widget/EditText;

    move-result-object v1

    if-ne v0, v1, :cond_6a

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$78;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->aq(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    :cond_69
    :goto_69
    return-void

    :cond_6a
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$78;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$78;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->o(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/widget/EditText;

    move-result-object v1

    if-ne v0, v1, :cond_69

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$78;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->ar(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Lcom/bsgamesdk/android/utils/i$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bsgamesdk/android/utils/i$a;->start()Landroid/os/CountDownTimer;

    goto :goto_69
.end method
