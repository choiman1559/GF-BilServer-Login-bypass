.class final Lcom/paypal/android/sdk/bi;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/paypal/android/sdk/bh;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/paypal/android/sdk/bh;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/paypal/android/sdk/bh;-><init>(B)V

    sput-object v0, Lcom/paypal/android/sdk/bi;->a:Lcom/paypal/android/sdk/bh;

    return-void
.end method

.method static synthetic a()Lcom/paypal/android/sdk/bh;
    .registers 1

    sget-object v0, Lcom/paypal/android/sdk/bi;->a:Lcom/paypal/android/sdk/bh;

    return-object v0
.end method
