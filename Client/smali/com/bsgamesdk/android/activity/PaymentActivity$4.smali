.class Lcom/bsgamesdk/android/activity/PaymentActivity$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/activity/PaymentActivity;->onResume()V
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

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$4;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$4;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/PaymentActivity;->e(Lcom/bsgamesdk/android/activity/PaymentActivity;)Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$4;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/activity/PaymentActivity;->a(Lcom/bsgamesdk/android/activity/PaymentActivity;Z)Z

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$4;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/activity/PaymentActivity;->b(Lcom/bsgamesdk/android/activity/PaymentActivity;Z)Z

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$4;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/PaymentActivity;->f(Lcom/bsgamesdk/android/activity/PaymentActivity;)V

    :cond_18
    return-void
.end method
