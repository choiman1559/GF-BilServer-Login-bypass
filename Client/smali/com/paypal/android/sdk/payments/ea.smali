.class Lcom/paypal/android/sdk/payments/ea;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/paypal/android/sdk/payments/ea;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/paypal/android/sdk/payments/ea;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()Ljava/lang/String;
    .registers 5

    invoke-static {}, Lcom/paypal/android/sdk/da;->a()Lcom/paypal/android/sdk/da;

    move-result-object v0

    invoke-interface {v0}, Lcom/paypal/android/sdk/eq;->c()Lcom/paypal/android/sdk/ee;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/ee;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/paypal/android/sdk/fq;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://www.paypal.com/signup/account?country.x=%s&locale.x=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
