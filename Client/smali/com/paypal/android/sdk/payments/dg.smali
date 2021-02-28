.class final Lcom/paypal/android/sdk/payments/dg;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/paypal/android/sdk/ds;


# direct methods
.method protected constructor <init>(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;Ljava/lang/String;Lcom/paypal/android/sdk/ds;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/paypal/android/sdk/payments/dg;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/paypal/android/sdk/payments/dg;->b:Lcom/paypal/android/sdk/ds;

    return-void
.end method
