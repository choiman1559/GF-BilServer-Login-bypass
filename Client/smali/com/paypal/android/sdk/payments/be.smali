.class final Lcom/paypal/android/sdk/payments/be;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/paypal/android/sdk/payments/LoginActivity;


# direct methods
.method constructor <init>(Lcom/paypal/android/sdk/payments/LoginActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/be;->a:Lcom/paypal/android/sdk/payments/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/be;->a:Lcom/paypal/android/sdk/payments/LoginActivity;

    invoke-static {v0, p1}, Lcom/paypal/android/sdk/payments/LoginActivity;->f(Lcom/paypal/android/sdk/payments/LoginActivity;Landroid/view/View;)V

    return-void
.end method