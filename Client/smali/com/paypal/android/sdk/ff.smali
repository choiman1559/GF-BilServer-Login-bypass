.class public Lcom/paypal/android/sdk/ff;
.super Lcom/paypal/android/sdk/br;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/paypal/android/sdk/ff;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/paypal/android/sdk/ct;Lcom/paypal/android/sdk/b;Lcom/paypal/android/sdk/bs;)V
    .registers 6

    new-instance v0, Lcom/paypal/android/sdk/cy;

    sget-object v1, Lcom/paypal/android/sdk/db;->a:Lcom/paypal/android/sdk/db;

    invoke-direct {v0, v1}, Lcom/paypal/android/sdk/cy;-><init>(Lcom/paypal/android/sdk/db;)V

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/paypal/android/sdk/br;-><init>(Lcom/paypal/android/sdk/cq;Lcom/paypal/android/sdk/ct;Lcom/paypal/android/sdk/b;Lcom/paypal/android/sdk/bs;)V

    return-void
.end method
