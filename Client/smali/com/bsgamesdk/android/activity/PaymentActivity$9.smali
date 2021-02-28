.class Lcom/bsgamesdk/android/activity/PaymentActivity$9;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/activity/PaymentActivity;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bsgamesdk/android/activity/PaymentActivity;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/activity/PaymentActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$9;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public startPaySdk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "alipay"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$9;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-virtual {v0, p3}, Lcom/bsgamesdk/android/activity/PaymentActivity;->onAlipay(Ljava/lang/String;)Z

    :cond_d
    return-void
.end method
