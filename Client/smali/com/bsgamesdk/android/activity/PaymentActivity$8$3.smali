.class Lcom/bsgamesdk/android/activity/PaymentActivity$8$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/activity/PaymentActivity$8;->a([Ljava/lang/String;)[Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bsgamesdk/android/activity/PaymentActivity$8;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/activity/PaymentActivity$8;)V
    .registers 2

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$8$3;->a:Lcom/bsgamesdk/android/activity/PaymentActivity$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$8$3;->a:Lcom/bsgamesdk/android/activity/PaymentActivity$8;

    iget-object v0, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$8;->e:Lcom/bsgamesdk/android/activity/PaymentActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bsgamesdk/android/activity/PaymentActivity;->a(Z)V

    return-void
.end method
