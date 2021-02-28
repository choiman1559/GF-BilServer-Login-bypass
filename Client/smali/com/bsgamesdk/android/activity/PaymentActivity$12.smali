.class Lcom/bsgamesdk/android/activity/PaymentActivity$12;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/activity/PaymentActivity;->f()V
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

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$12;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    invoke-static {}, Lcom/bsgamesdk/android/utils/k;->a()V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$12;->a:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-virtual {v0}, Lcom/bsgamesdk/android/activity/PaymentActivity;->a()V

    return-void
.end method
