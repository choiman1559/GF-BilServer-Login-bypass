.class final Lcom/paypal/android/sdk/au;
.super Ljava/util/TimerTask;


# instance fields
.field private synthetic a:Lcom/paypal/android/sdk/at;


# direct methods
.method constructor <init>(Lcom/paypal/android/sdk/at;)V
    .registers 2

    iput-object p1, p0, Lcom/paypal/android/sdk/au;->a:Lcom/paypal/android/sdk/at;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/paypal/android/sdk/au;->a:Lcom/paypal/android/sdk/at;

    invoke-static {v0}, Lcom/paypal/android/sdk/at;->a(Lcom/paypal/android/sdk/at;)I

    invoke-static {}, Lcom/paypal/android/sdk/at;->h()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "****** LoadConfigurationTask #"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/paypal/android/sdk/au;->a:Lcom/paypal/android/sdk/at;

    invoke-static {v2}, Lcom/paypal/android/sdk/at;->b(Lcom/paypal/android/sdk/at;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/paypal/android/sdk/bc;

    iget-object v1, p0, Lcom/paypal/android/sdk/au;->a:Lcom/paypal/android/sdk/at;

    invoke-static {v1}, Lcom/paypal/android/sdk/at;->c(Lcom/paypal/android/sdk/at;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/paypal/android/sdk/au;->a:Lcom/paypal/android/sdk/at;

    invoke-static {v2}, Lcom/paypal/android/sdk/at;->d(Lcom/paypal/android/sdk/at;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/paypal/android/sdk/au;->a:Lcom/paypal/android/sdk/at;

    invoke-static {v3}, Lcom/paypal/android/sdk/at;->e(Lcom/paypal/android/sdk/at;)Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/paypal/android/sdk/bc;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-static {}, Lcom/paypal/android/sdk/bh;->a()Lcom/paypal/android/sdk/bh;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/paypal/android/sdk/bh;->a(Lcom/paypal/android/sdk/bg;)V

    return-void
.end method
