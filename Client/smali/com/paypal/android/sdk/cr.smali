.class public abstract Lcom/paypal/android/sdk/cr;
.super Lcom/paypal/android/sdk/cs;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/paypal/android/sdk/cr;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/paypal/android/sdk/cq;Lcom/paypal/android/sdk/ct;Lcom/paypal/android/sdk/b;Ljava/lang/String;)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/paypal/android/sdk/cr;-><init>(Lcom/paypal/android/sdk/cq;Lcom/paypal/android/sdk/ct;Lcom/paypal/android/sdk/b;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/paypal/android/sdk/cq;Lcom/paypal/android/sdk/ct;Lcom/paypal/android/sdk/b;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0, p1, p2, p3, p5}, Lcom/paypal/android/sdk/cs;-><init>(Lcom/paypal/android/sdk/cq;Lcom/paypal/android/sdk/ct;Lcom/paypal/android/sdk/b;Ljava/lang/String;)V

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "Authorization"

    invoke-virtual {p0, v0, p4}, Lcom/paypal/android/sdk/cr;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    return-void
.end method
