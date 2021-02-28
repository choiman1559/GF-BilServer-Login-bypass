.class Lcom/bsgamesdk/android/activity/Login_RegActivity$102;
.super Lcom/bsgamesdk/android/callbacklistener/SimpleTaskCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/activity/Login_RegActivity;->b(Ljava/lang/String;Lcom/bsgamesdk/android/model/CaptchModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bsgamesdk/android/model/CaptchModel;

.field final synthetic b:Lcom/bsgamesdk/android/activity/Login_RegActivity;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/activity/Login_RegActivity;Landroid/content/Context;Lcom/bsgamesdk/android/model/CaptchModel;)V
    .registers 4

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$102;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    iput-object p3, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$102;->a:Lcom/bsgamesdk/android/model/CaptchModel;

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

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$102;->a:Lcom/bsgamesdk/android/model/CaptchModel;

    if-eqz v0, :cond_73

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$102;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

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

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$102;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->G(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$102;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-virtual {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->onBackPressed()V

    :cond_3e
    :goto_3e
    :try_start_3e
    iget-object v12, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$102;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    new-instance v0, Lcom/bsgamesdk/android/api/h;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$102;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

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

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$102;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->at(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Lcom/bsgamesdk/android/api/h;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$102;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->A(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/bsgamesdk/android/api/h;->q:Ljava/lang/String;

    move v3, v10

    move-object v4, v11

    invoke-virtual/range {v0 .. v5}, Lcom/bsgamesdk/android/api/h;->a(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_72
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_72} :catch_9c

    :goto_72
    return-void

    :cond_73
    const/16 v0, -0x69

    if-ne v10, v0, :cond_7f

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$102;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    const/16 v1, 0x15b4

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->k(Lcom/bsgamesdk/android/activity/Login_RegActivity;I)V

    goto :goto_3e

    :cond_7f
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$102;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

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

    goto :goto_3e

    :catch_9c
    move-exception v0

    invoke-static {v0, v13}, Lcom/bsgamesdk/android/utils/LogUtils;->printThrowableStackTrace(Ljava/lang/Throwable;Z)V

    goto :goto_72
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .registers 7

    const/4 v4, 0x0

    const-string v0, "auth"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$102;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v1, v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->a(Lcom/bsgamesdk/android/activity/Login_RegActivity;Lcom/bsgamesdk/android/api/BSGameSdkAuth;)Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    const/4 v1, 0x1

    iget v2, v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->tour_limit_status:I

    if-ne v1, v2, :cond_32

    iget-object v1, v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->tour_limit_message:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_32

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/16 v2, 0xd

    iput v2, v1, Landroid/os/Message;->what:I

    iget-object v0, v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->tour_limit_message:Ljava/lang/String;

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$102;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->ap(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_31
    :goto_31
    return-void

    :cond_32
    iget-boolean v1, v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mActivate:Z

    if-nez v1, :cond_4f

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$102;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->f(Lcom/bsgamesdk/android/activity/Login_RegActivity;I)I

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$102;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->ap(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_31

    :cond_4f
    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$102;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    new-instance v1, Lcom/bsgamesdk/android/api/h;

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$102;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->f(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/content/Context;

    move-result-object v2

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/bsgamesdk/android/api/h;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->a(Lcom/bsgamesdk/android/activity/Login_RegActivity;Lcom/bsgamesdk/android/api/h;)Lcom/bsgamesdk/android/api/h;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$102;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->at(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Lcom/bsgamesdk/android/api/h;

    move-result-object v0

    const-string v1, ""

    const-string v2, ""

    invoke-virtual {v0, v4, v1, v4, v2}, Lcom/bsgamesdk/android/api/h;->b(ILjava/lang/String;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$102;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$102;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->e(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->b(Lcom/bsgamesdk/android/activity/Login_RegActivity;Lcom/bsgamesdk/android/api/BSGameSdkAuth;)V

    goto :goto_31
.end method
