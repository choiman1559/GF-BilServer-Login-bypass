.class Lcom/bsgamesdk/android/activity/PaymentActivity$13;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/activity/PaymentActivity;->onFailure(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
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

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$13;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$13;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/PaymentActivity;->K(Lcom/bsgamesdk/android/activity/PaymentActivity;)I

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$13;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$13;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/PaymentActivity;->C(Lcom/bsgamesdk/android/activity/PaymentActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/activity/PaymentActivity;->b(Lcom/bsgamesdk/android/activity/PaymentActivity;I)V

    return-void
.end method
