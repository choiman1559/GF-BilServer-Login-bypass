.class final Lcom/paypal/android/sdk/payments/bx;
.super Lcom/paypal/android/sdk/payments/z;


# instance fields
.field private c:Z


# direct methods
.method constructor <init>(Landroid/content/Intent;Lcom/paypal/android/sdk/payments/PayPalConfiguration;Z)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/paypal/android/sdk/payments/z;-><init>(Landroid/content/Intent;Lcom/paypal/android/sdk/payments/PayPalConfiguration;)V

    iput-boolean p3, p0, Lcom/paypal/android/sdk/payments/bx;->c:Z

    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .registers 2

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_5} :catch_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :catch_7
    move-exception v0

    const/4 v0, 0x0

    goto :goto_6
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .registers 2

    const-class v0, Lcom/paypal/android/sdk/payments/PayPalFuturePaymentActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final c()Z
    .registers 9

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/z;->b:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/paypal/android/sdk/d;->b(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v0, "merchantName"

    invoke-virtual {p0, v5, v0}, Lcom/paypal/android/sdk/payments/bx;->a(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/z;->b:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->m()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_a1

    const-class v0, Lcom/paypal/android/sdk/payments/PayPalFuturePaymentActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/z;->b:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->m()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "merchantPrivacyPolicyUrl"

    invoke-static {v0, v1, v4}, Lcom/paypal/android/sdk/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/z;->b:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->m()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/bx;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a1

    move v1, v2

    :goto_42
    const-string v0, "merchantPrivacyPolicyUrl"

    invoke-virtual {p0, v1, v0}, Lcom/paypal/android/sdk/payments/bx;->a(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/z;->b:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->n()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_a3

    const-class v0, Lcom/paypal/android/sdk/payments/PayPalFuturePaymentActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/paypal/android/sdk/payments/z;->b:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    invoke-virtual {v4}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->n()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "merchantUserAgreementUrl"

    invoke-static {v0, v4, v6}, Lcom/paypal/android/sdk/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a3

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/z;->b:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->n()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/bx;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a3

    move v4, v2

    :goto_78
    const-string v0, "merchantUserAgreementUrl"

    invoke-virtual {p0, v4, v0}, Lcom/paypal/android/sdk/payments/bx;->a(ZLjava/lang/String;)V

    iget-boolean v0, p0, Lcom/paypal/android/sdk/payments/bx;->c:Z

    if-nez v0, :cond_a5

    move v0, v2

    :goto_82
    iget-boolean v6, p0, Lcom/paypal/android/sdk/payments/bx;->c:Z

    if-eqz v6, :cond_93

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/z;->a:Landroid/content/Intent;

    const-string v6, "com.paypal.android.sdk.requested_scopes"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/sdk/payments/PayPalOAuthScopes;

    if-nez v0, :cond_a7

    move v0, v3

    :cond_93
    :goto_93
    const-string v6, "paypalScopes"

    invoke-virtual {p0, v0, v6}, Lcom/paypal/android/sdk/payments/bx;->a(ZLjava/lang/String;)V

    if-eqz v5, :cond_e1

    if-eqz v1, :cond_e1

    if-eqz v4, :cond_e1

    if-eqz v0, :cond_e1

    :goto_a0
    return v2

    :cond_a1
    move v1, v3

    goto :goto_42

    :cond_a3
    move v4, v3

    goto :goto_78

    :cond_a5
    move v0, v3

    goto :goto_82

    :cond_a7
    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalOAuthScopes;->a()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_b7

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalOAuthScopes;->a()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-gtz v6, :cond_b9

    :cond_b7
    move v0, v3

    goto :goto_93

    :cond_b9
    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalOAuthScopes;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_c1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_df

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v7, Lcom/paypal/android/sdk/ak;->i:Ljava/util/Collection;

    invoke-interface {v7, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c1

    sget-object v7, Lcom/paypal/android/sdk/df;->i:Ljava/util/Collection;

    invoke-interface {v7, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c1

    move v0, v3

    goto :goto_93

    :cond_df
    move v0, v2

    goto :goto_93

    :cond_e1
    move v2, v3

    goto :goto_a0
.end method
