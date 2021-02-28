.class Lcom/bsgamesdk/android/activity/Login_RegActivity$107;
.super Lcom/bsgamesdk/android/callbacklistener/SimpleTaskCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/activity/Login_RegActivity;->a(Landroid/widget/TextView;Ljava/lang/String;Lcom/bsgamesdk/android/model/CaptchModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Lcom/bsgamesdk/android/model/CaptchModel;

.field final synthetic c:Lcom/bsgamesdk/android/activity/Login_RegActivity;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/activity/Login_RegActivity;Landroid/content/Context;Landroid/widget/TextView;Lcom/bsgamesdk/android/model/CaptchModel;)V
    .registers 5

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$107;->c:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    iput-object p3, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$107;->a:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$107;->b:Lcom/bsgamesdk/android/model/CaptchModel;

    invoke-direct {p0, p2}, Lcom/bsgamesdk/android/callbacklistener/SimpleTaskCallBackListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onFailed(Landroid/os/Bundle;)V
    .registers 16

    const/4 v13, 0x1

    const-string v0, "e_code"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    const-string v0, "message"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$107;->b:Lcom/bsgamesdk/android/model/CaptchModel;

    if-eqz v0, :cond_63

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$107;->c:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->f(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/utils/y;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$107;->c:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-virtual {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->onBackPressed()V

    :goto_32
    :try_start_32
    iget-object v12, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$107;->c:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    new-instance v0, Lcom/bsgamesdk/android/api/h;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$107;->c:Lcom/bsgamesdk/android/activity/Login_RegActivity;

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

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$107;->c:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->at(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Lcom/bsgamesdk/android/api/h;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$107;->c:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->A(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v10, v11}, Lcom/bsgamesdk/android/api/h;->a(ILjava/lang/String;ILjava/lang/String;)V
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_62} :catch_8c

    :goto_62
    return-void

    :cond_63
    const/16 v0, -0x69

    if-ne v10, v0, :cond_6f

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$107;->c:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    const/16 v1, 0x15b6

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->k(Lcom/bsgamesdk/android/activity/Login_RegActivity;I)V

    goto :goto_32

    :cond_6f
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$107;->c:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->f(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/utils/y;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_32

    :catch_8c
    move-exception v0

    invoke-static {v0, v13}, Lcom/bsgamesdk/android/utils/LogUtils;->printThrowableStackTrace(Ljava/lang/Throwable;Z)V

    goto :goto_62
.end method

.method public onFinish()V
    .registers 3

    invoke-super {p0}, Lcom/bsgamesdk/android/callbacklistener/SimpleTaskCallBackListener;->onFinish()V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$107;->c:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->ap(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$107;->c:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->ap(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bsgamesdk/android/activity/Login_RegActivity$107$1;

    invoke-direct {v1, p0}, Lcom/bsgamesdk/android/activity/Login_RegActivity$107$1;-><init>(Lcom/bsgamesdk/android/activity/Login_RegActivity$107;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_19
    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "captcha_key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$107;->c:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    iput-object v0, v1, Lcom/bsgamesdk/android/activity/Login_RegActivity;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$107;->c:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->f(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u5df2\u53d1\u9001\u9a8c\u8bc1\u7801"

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/utils/y;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$107;->c:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->M(Lcom/bsgamesdk/android/activity/Login_RegActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_32

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$107;->c:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->M(Lcom/bsgamesdk/android/activity/Login_RegActivity;)I

    move-result v0

    const/16 v1, 0x68

    if-eq v0, v1, :cond_32

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$107;->c:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->M(Lcom/bsgamesdk/android/activity/Login_RegActivity;)I

    move-result v0

    const/16 v1, 0x69

    if-ne v0, v1, :cond_44

    :cond_32
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x3ec

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$107;->c:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->ap(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_44
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$107;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$107;->c:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->ae(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/widget/EditText;

    move-result-object v1

    if-ne v0, v1, :cond_58

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$107;->c:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->aq(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    :cond_57
    :goto_57
    return-void

    :cond_58
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$107;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$107;->c:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->o(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/widget/EditText;

    move-result-object v1

    if-ne v0, v1, :cond_57

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$107;->c:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->ar(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Lcom/bsgamesdk/android/utils/i$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bsgamesdk/android/utils/i$a;->start()Landroid/os/CountDownTimer;

    goto :goto_57
.end method
