.class final Lcom/paypal/android/sdk/payments/do;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/paypal/android/sdk/payments/PaymentMethodActivity;


# direct methods
.method constructor <init>(Lcom/paypal/android/sdk/payments/PaymentMethodActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/do;->a:Lcom/paypal/android/sdk/payments/PaymentMethodActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/do;->a:Lcom/paypal/android/sdk/payments/PaymentMethodActivity;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->g(Lcom/paypal/android/sdk/payments/PaymentMethodActivity;)Lcom/paypal/android/sdk/payments/PayPalService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->h()V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/do;->a:Lcom/paypal/android/sdk/payments/PaymentMethodActivity;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->g(Lcom/paypal/android/sdk/payments/PaymentMethodActivity;)Lcom/paypal/android/sdk/payments/PayPalService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/dc;->a()V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/do;->a:Lcom/paypal/android/sdk/payments/PaymentMethodActivity;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->h(Lcom/paypal/android/sdk/payments/PaymentMethodActivity;)V

    return-void
.end method
