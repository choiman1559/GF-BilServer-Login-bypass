.class final Lcom/paypal/android/sdk/payments/as;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/paypal/android/sdk/payments/LoginActivity;


# direct methods
.method constructor <init>(Lcom/paypal/android/sdk/payments/LoginActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/as;->a:Lcom/paypal/android/sdk/payments/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/as;->a:Lcom/paypal/android/sdk/payments/LoginActivity;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/LoginActivity;->g(Lcom/paypal/android/sdk/payments/LoginActivity;)V

    return-void
.end method