.class Lcom/bsgamesdk/android/activity/PaymentActivity$14;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/activity/PaymentActivity;->onAlipay(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/bsgamesdk/android/activity/PaymentActivity;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/activity/PaymentActivity;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$14;->b:Lcom/bsgamesdk/android/activity/PaymentActivity;

    iput-object p2, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$14;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    :try_start_0
    new-instance v1, Lcom/alipay/sdk/app/PayTask;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$14;->b:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/PaymentActivity;->d(Lcom/bsgamesdk/android/activity/PaymentActivity;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v1, v0}, Lcom/alipay/sdk/app/PayTask;-><init>(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$14;->a:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/alipay/sdk/app/PayTask;->payV2(Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_1b

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :cond_1b
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$14;->b:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/PaymentActivity;->x(Lcom/bsgamesdk/android/activity/PaymentActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2e} :catch_2f

    :goto_2e
    return-void

    :catch_2f
    move-exception v0

    move-object v5, v0

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$14;->b:Lcom/bsgamesdk/android/activity/PaymentActivity;

    const-string v1, "\u652f\u4ed8\u5b9d\u5185\u90e8\u5f02\u5e38"

    const/16 v2, 0x2719

    const-string v3, "quickpay_alipay"

    const-string v4, "-9999"

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/bsgamesdk/android/activity/PaymentActivity;->onFailure(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2e
.end method
