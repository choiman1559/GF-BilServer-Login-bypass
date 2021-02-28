.class final Lcom/bsgamesdk/android/helper/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bsgamesdk/android/callbacklistener/TaskCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/helper/c;->a(Ljava/lang/String;Lcom/bsgamesdk/android/activity/PaymentActivity;IILandroid/content/Intent;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bsgamesdk/android/activity/PaymentActivity;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/activity/PaymentActivity;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/bsgamesdk/android/helper/c$1;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    iput-object p2, p0, Lcom/bsgamesdk/android/helper/c$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Landroid/os/Bundle;)V
    .registers 8

    const-string v0, "e_code"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v5, ""

    :try_start_9
    const-string v0, "message"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_e} :catch_1b

    move-result-object v5

    :goto_f
    iget-object v0, p0, Lcom/bsgamesdk/android/helper/c$1;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    const-string v1, "paypal\u652f\u4ed8\u5931\u8d25"

    const-string v3, "quick_paypal"

    const-string v4, "-9999"

    invoke-virtual/range {v0 .. v5}, Lcom/bsgamesdk/android/activity/PaymentActivity;->onFailure(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    :catch_1b
    move-exception v0

    goto :goto_f
.end method

.method public onFinish()V
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/helper/c$1;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-virtual {v0}, Lcom/bsgamesdk/android/activity/PaymentActivity;->dismissLoadingView()V

    return-void
.end method

.method public onStart()V
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/helper/c$1;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-virtual {v0}, Lcom/bsgamesdk/android/activity/PaymentActivity;->showLoadingView()V

    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .registers 9

    const/4 v3, 0x4

    const-string v0, "result"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const/4 v0, 0x2

    if-ne v5, v0, :cond_18

    iget-object v0, p0, Lcom/bsgamesdk/android/helper/c$1;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    iget-object v1, p0, Lcom/bsgamesdk/android/helper/c$1;->b:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/helper/c;->a()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/bsgamesdk/android/activity/PaymentActivity;->onSuccessWithThirdTradeNo(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_17
    :goto_17
    return-void

    :cond_18
    const/4 v0, 0x1

    if-ne v5, v0, :cond_3c

    iget-object v0, p0, Lcom/bsgamesdk/android/helper/c$1;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    const-string v1, "paypal\u652f\u4ed8\u5931\u8d25"

    const/16 v2, 0x1777

    iget-object v3, p0, Lcom/bsgamesdk/android/helper/c$1;->b:Ljava/lang/String;

    const-string v4, ""

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/bsgamesdk/android/activity/PaymentActivity;->onFailureWithThirdTradeNo(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_17

    :cond_3c
    const/4 v0, 0x3

    if-ne v5, v0, :cond_60

    iget-object v0, p0, Lcom/bsgamesdk/android/helper/c$1;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    const-string v1, "paypal\u652f\u4ed8\u5931\u8d25"

    const/16 v2, 0x1778

    iget-object v3, p0, Lcom/bsgamesdk/android/helper/c$1;->b:Ljava/lang/String;

    const-string v4, ""

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/bsgamesdk/android/activity/PaymentActivity;->onFailureWithThirdTradeNo(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_17

    :cond_60
    if-ne v5, v3, :cond_17

    iget-object v0, p0, Lcom/bsgamesdk/android/helper/c$1;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    const-string v1, "paypal\u652f\u4ed8\u5931\u8d25"

    const/16 v2, 0x1779

    iget-object v3, p0, Lcom/bsgamesdk/android/helper/c$1;->b:Ljava/lang/String;

    const-string v4, ""

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/bsgamesdk/android/activity/PaymentActivity;->onFailureWithThirdTradeNo(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_17
.end method
