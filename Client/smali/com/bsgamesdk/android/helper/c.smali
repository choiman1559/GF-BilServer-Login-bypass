.class public Lcom/bsgamesdk/android/helper/c;
.super Ljava/lang/Object;


# static fields
.field public static a:Lcom/bsgamesdk/android/api/q;

.field private static b:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

.field private static c:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/bsgamesdk/android/helper/c;->c:[Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bsgamesdk/android/activity/PrePayActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "intent"

    const-string v2, "prePay"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/bsgamesdk/android/activity/PaymentActivity;IILandroid/content/Intent;Ljava/lang/String;)V
    .registers 12

    const/4 v2, 0x4

    const/16 v0, 0x3012

    if-ne p2, v0, :cond_43

    const/4 v0, -0x1

    if-ne p3, v0, :cond_44

    const-string v0, "com.paypal.android.sdk.paymentConfirmation"

    invoke-virtual {p4, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/sdk/payments/PaymentConfirmation;

    if-eqz v0, :cond_43

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PaymentConfirmation;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "response"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v0, Lcom/bsgamesdk/android/model/PaypalOrderInfo;

    sget-object v1, Lcom/bsgamesdk/android/helper/c;->c:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-direct {v0, v1, v3}, Lcom/bsgamesdk/android/model/PaypalOrderInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/bsgamesdk/android/model/PaypalOrderInfo;->setHost(Ljava/lang/String;)V

    sget-object v1, Lcom/bsgamesdk/android/helper/c;->a:Lcom/bsgamesdk/android/api/q;

    invoke-virtual {v1, v0}, Lcom/bsgamesdk/android/api/q;->a(Ljava/lang/Object;)V

    sget-object v0, Lcom/bsgamesdk/android/b;->d:Lcom/bsgamesdk/android/helper/a;

    sget-object v1, Lcom/bsgamesdk/android/helper/c;->c:[Ljava/lang/String;

    aget-object v2, v1, v2

    new-instance v5, Lcom/bsgamesdk/android/helper/c$1;

    invoke-direct {v5, p1, v3}, Lcom/bsgamesdk/android/helper/c$1;-><init>(Lcom/bsgamesdk/android/activity/PaymentActivity;Ljava/lang/String;)V

    move-object v1, p0

    move-object v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/bsgamesdk/android/helper/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/callbacklistener/TaskCallBackListener;)V

    :cond_43
    :goto_43
    return-void

    :cond_44
    if-nez p3, :cond_6a

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_5b

    const-string v1, "paypal\u652f\u4ed8\u5931\u8d25"

    const/16 v2, 0x1773

    const-string v3, "quick_paypal"

    const-string v4, "0"

    const-string v5, ""

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/bsgamesdk/android/activity/PaymentActivity;->onFailure(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_43

    :cond_5b
    const-string v1, "paypal\u652f\u4ed8\u53d6\u6d88"

    const/16 v2, 0x1772

    const-string v3, "quick_paypal"

    const-string v4, "0"

    const-string v5, ""

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/bsgamesdk/android/activity/PaymentActivity;->onFailure(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_43

    :cond_6a
    const/4 v0, 0x2

    if-ne p3, v0, :cond_43

    const-string v1, "paypal\u652f\u4ed8\u5931\u8d25"

    const/16 v2, 0x1774

    const-string v3, "quick_paypal"

    const-string v4, "2"

    const-string v5, ""

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/bsgamesdk/android/activity/PaymentActivity;->onFailure(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_43
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3b

    sget-object v1, Lcom/bsgamesdk/android/helper/c;->c:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3b

    const-string v1, "live"

    new-instance v2, Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    invoke-direct {v2}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;-><init>()V

    invoke-virtual {v2, v1}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->environment(Ljava/lang/String;)Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->acceptCreditCards(Z)Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->clientId(Ljava/lang/String;)Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    move-result-object v1

    sput-object v1, Lcom/bsgamesdk/android/helper/c;->b:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    sget-object v1, Lcom/bsgamesdk/android/helper/c;->c:[Ljava/lang/String;

    aput-object p1, v1, v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.paypal.android.sdk.paypalConfiguration"

    sget-object v3, Lcom/bsgamesdk/android/helper/c;->b:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_3b
    sget-object v1, Lcom/bsgamesdk/android/helper/c;->b:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    if-eqz v1, :cond_40

    const/4 v0, 0x1

    :cond_40
    return v0
.end method

.method public static a([Ljava/lang/String;Lcom/bsgamesdk/android/activity/PaymentActivity;)Z
    .registers 13

    const/4 v10, 0x2

    const/4 v9, 0x4

    const/4 v8, 0x1

    const/4 v7, 0x3

    sget-object v0, Lcom/bsgamesdk/android/helper/c;->c:[Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v8

    sget-object v0, Lcom/bsgamesdk/android/helper/c;->c:[Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v10

    sget-object v0, Lcom/bsgamesdk/android/helper/c;->c:[Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v7

    sget-object v0, Lcom/bsgamesdk/android/helper/c;->c:[Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v9

    const-string v1, ""

    array-length v3, p0

    const/4 v0, 0x0

    move v2, v0

    move-object v0, v1

    :goto_22
    if-ge v2, v3, :cond_a3

    aget-object v1, p0, v2

    const-string v4, "amount="

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3e

    sget-object v4, Lcom/bsgamesdk/android/helper/c;->c:[Ljava/lang/String;

    const-string v5, "amount="

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v8

    :cond_3a
    :goto_3a
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_22

    :cond_3e
    const-string v4, "cry="

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_53

    sget-object v4, Lcom/bsgamesdk/android/helper/c;->c:[Ljava/lang/String;

    const-string v5, "cry="

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v10

    goto :goto_3a

    :cond_53
    const-string v4, "subject="

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7d

    sget-object v4, Lcom/bsgamesdk/android/helper/c;->c:[Ljava/lang/String;

    const-string v5, "subject="

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v7

    :try_start_67
    sget-object v1, Lcom/bsgamesdk/android/helper/c;->c:[Ljava/lang/String;

    const/4 v4, 0x3

    sget-object v5, Lcom/bsgamesdk/android/helper/c;->c:[Ljava/lang/String;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4
    :try_end_77
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_67 .. :try_end_77} :catch_78

    goto :goto_3a

    :catch_78
    move-exception v1

    invoke-static {v1}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_3a

    :cond_7d
    const-string v4, "clientId="

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8e

    const-string v0, "clientId="

    const-string v4, ""

    invoke-virtual {v1, v0, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3a

    :cond_8e
    const-string v4, "rechargeOrderNo="

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3a

    sget-object v4, Lcom/bsgamesdk/android/helper/c;->c:[Ljava/lang/String;

    const-string v5, "rechargeOrderNo="

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v9

    goto :goto_3a

    :cond_a3
    invoke-static {p1, v0}, Lcom/bsgamesdk/android/helper/c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b8

    const-string v1, "paypal\u652f\u4ed8\u5931\u8d25"

    const/16 v2, 0x1775

    const-string v3, "quick_paypal"

    const-string v4, "-9999"

    const-string v5, ""

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/bsgamesdk/android/activity/PaymentActivity;->onFailure(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    :goto_b7
    return v8

    :cond_b8
    new-instance v0, Lcom/paypal/android/sdk/payments/PayPalPayment;

    new-instance v1, Ljava/math/BigDecimal;

    sget-object v2, Lcom/bsgamesdk/android/helper/c;->c:[Ljava/lang/String;

    aget-object v2, v2, v8

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/bsgamesdk/android/helper/c;->c:[Ljava/lang/String;

    aget-object v2, v2, v10

    sget-object v3, Lcom/bsgamesdk/android/helper/c;->c:[Ljava/lang/String;

    aget-object v3, v3, v7

    const-string v4, "sale"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/paypal/android/sdk/payments/PayPalPayment;-><init>(Ljava/math/BigDecimal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/bsgamesdk/android/helper/c;->c:[Ljava/lang/String;

    aget-object v1, v1, v9

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e1

    sget-object v1, Lcom/bsgamesdk/android/helper/c;->c:[Ljava/lang/String;

    aget-object v1, v1, v9

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/payments/PayPalPayment;->custom(Ljava/lang/String;)Lcom/paypal/android/sdk/payments/PayPalPayment;

    :cond_e1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/paypal/android/sdk/payments/PaymentActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.paypal.android.sdk.paypalConfiguration"

    sget-object v3, Lcom/bsgamesdk/android/helper/c;->b:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "com.paypal.android.sdk.payment"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 v0, 0x3012

    invoke-virtual {p1, v1, v0}, Lcom/bsgamesdk/android/activity/PaymentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_b7
.end method

.method static synthetic a()[Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/bsgamesdk/android/helper/c;->c:[Ljava/lang/String;

    return-object v0
.end method

.method public static b(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bsgamesdk/android/activity/TouristActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "intent"

    const-string v2, "touristpay"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .registers 2

    new-instance v0, Lcom/bsgamesdk/android/api/q;

    invoke-direct {v0, p0}, Lcom/bsgamesdk/android/api/q;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/bsgamesdk/android/helper/c;->a:Lcom/bsgamesdk/android/api/q;

    sget-object v0, Lcom/bsgamesdk/android/helper/c;->a:Lcom/bsgamesdk/android/api/q;

    invoke-virtual {v0}, Lcom/bsgamesdk/android/api/q;->a()V

    return-void
.end method

.method public static c(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bsgamesdk/android/activity/TouristActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "intent"

    const-string v2, "authpay"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
