.class public final Lcom/paypal/android/sdk/payments/PaymentActivity;
.super Landroid/app/Activity;


# static fields
.field public static final EXTRA_PAYMENT:Ljava/lang/String; = "com.paypal.android.sdk.payment"

.field public static final EXTRA_RESULT_CONFIRMATION:Ljava/lang/String; = "com.paypal.android.sdk.paymentConfirmation"

.field public static final RESULT_EXTRAS_INVALID:I = 0x2

.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/util/Timer;

.field private c:Ljava/util/Date;

.field private d:Lcom/paypal/android/sdk/payments/PayPalService;

.field private final e:Landroid/content/ServiceConnection;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/paypal/android/sdk/payments/PaymentActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/paypal/android/sdk/payments/PaymentActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/paypal/android/sdk/payments/ck;

    invoke-direct {v0, p0}, Lcom/paypal/android/sdk/payments/ck;-><init>(Lcom/paypal/android/sdk/payments/PaymentActivity;)V

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentActivity;->e:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic a(Lcom/paypal/android/sdk/payments/PaymentActivity;Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/PayPalService;
    .registers 2

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/PaymentActivity;->d:Lcom/paypal/android/sdk/payments/PayPalService;

    return-object p1
.end method

.method static synthetic a(Lcom/paypal/android/sdk/payments/PaymentActivity;)Lcom/paypal/android/sdk/payments/ce;
    .registers 2

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/PaymentActivity;->c()Lcom/paypal/android/sdk/payments/ce;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/paypal/android/sdk/payments/PaymentActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/paypal/android/sdk/payments/PaymentActivity;Ljava/util/Timer;)Ljava/util/Timer;
    .registers 2

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/PaymentActivity;->b:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic b(Lcom/paypal/android/sdk/payments/PaymentActivity;)Lcom/paypal/android/sdk/payments/PayPalService;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentActivity;->d:Lcom/paypal/android/sdk/payments/PayPalService;

    return-object v0
.end method

.method private b()V
    .registers 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PaymentActivity;->d:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/PayPalService;->d()Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->a(Landroid/app/Activity;ILcom/paypal/android/sdk/payments/PayPalConfiguration;)V

    return-void
.end method

.method private c()Lcom/paypal/android/sdk/payments/ce;
    .registers 2

    new-instance v0, Lcom/paypal/android/sdk/payments/cm;

    invoke-direct {v0, p0}, Lcom/paypal/android/sdk/payments/cm;-><init>(Lcom/paypal/android/sdk/payments/PaymentActivity;)V

    return-object v0
.end method

.method static synthetic c(Lcom/paypal/android/sdk/payments/PaymentActivity;)V
    .registers 5

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentActivity;->d:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->d()Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    move-result-object v0

    if-nez v0, :cond_17

    sget-object v0, Lcom/paypal/android/sdk/payments/PaymentActivity;->a:Ljava/lang/String;

    const-string v1, "Service state invalid.  Did you start the PayPalService?"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v3}, Lcom/paypal/android/sdk/payments/PaymentActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PaymentActivity;->finish()V

    :goto_16
    return-void

    :cond_17
    new-instance v0, Lcom/paypal/android/sdk/payments/co;

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PaymentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/PaymentActivity;->d:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v2}, Lcom/paypal/android/sdk/payments/PayPalService;->d()Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/paypal/android/sdk/payments/co;-><init>(Landroid/content/Intent;Lcom/paypal/android/sdk/payments/PayPalConfiguration;)V

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/co;->b()Z

    move-result v1

    if-nez v1, :cond_3a

    sget-object v0, Lcom/paypal/android/sdk/payments/PaymentActivity;->a:Ljava/lang/String;

    const-string v1, "Service extras invalid.  Please see the docs."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v3}, Lcom/paypal/android/sdk/payments/PaymentActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PaymentActivity;->finish()V

    goto :goto_16

    :cond_3a
    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/co;->c()Z

    move-result v0

    if-nez v0, :cond_4e

    sget-object v0, Lcom/paypal/android/sdk/payments/PaymentActivity;->a:Ljava/lang/String;

    const-string v1, "Extras invalid.  Please see the docs."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v3}, Lcom/paypal/android/sdk/payments/PaymentActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PaymentActivity;->finish()V

    goto :goto_16

    :cond_4e
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentActivity;->d:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->l()V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentActivity;->d:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/dc;->a()V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentActivity;->d:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->i()Z

    move-result v0

    if-eqz v0, :cond_68

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/PaymentActivity;->b()V

    goto :goto_16

    :cond_68
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xd

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentActivity;->c:Ljava/util/Date;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentActivity;->d:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/PaymentActivity;->c()Lcom/paypal/android/sdk/payments/ce;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/payments/ce;Z)V

    goto :goto_16
.end method

.method static synthetic d(Lcom/paypal/android/sdk/payments/PaymentActivity;)Ljava/util/Date;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentActivity;->c:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic e(Lcom/paypal/android/sdk/payments/PaymentActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/PaymentActivity;->b()V

    return-void
.end method

.method static synthetic f(Lcom/paypal/android/sdk/payments/PaymentActivity;)Ljava/util/Timer;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentActivity;->b:Ljava/util/Timer;

    return-object v0
.end method


# virtual methods
.method public final finish()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/paypal/android/sdk/payments/PaymentActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".finish"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method protected final onActivityResult(IILandroid/content/Intent;)V
    .registers 7

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/paypal/android/sdk/payments/PaymentActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".onActivityResult"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    if-ne p1, v0, :cond_33

    packed-switch p2, :pswitch_data_62

    const-string v0, "paypal.sdk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unexpected request code "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " call it a cancel"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    :goto_33
    :pswitch_33
    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PaymentActivity;->finish()V

    return-void

    :pswitch_37
    if-eqz p3, :cond_5a

    const-string v0, "com.paypal.android.sdk.paymentConfirmation"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/sdk/payments/PaymentConfirmation;

    if-eqz v0, :cond_52

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.paypal.android.sdk.paymentConfirmation"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/paypal/android/sdk/payments/PaymentActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_33

    :cond_52
    sget-object v0, Lcom/paypal/android/sdk/payments/PaymentActivity;->a:Ljava/lang/String;

    const-string v1, "result was OK, have data, but no payment state in bundle, oops"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    :cond_5a
    sget-object v0, Lcom/paypal/android/sdk/payments/PaymentActivity;->a:Ljava/lang/String;

    const-string v1, "result was OK, no intent data, oops"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    :pswitch_data_62
    .packed-switch -0x1
        :pswitch_37
        :pswitch_33
    .end packed-switch
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .registers 7

    const/4 v4, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/paypal/android/sdk/payments/PaymentActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".onCreate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/paypal/android/sdk/go;

    invoke-direct {v0, p0}, Lcom/paypal/android/sdk/go;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/paypal/android/sdk/go;->a()V

    new-instance v0, Lcom/paypal/android/sdk/gn;

    invoke-direct {v0, p0}, Lcom/paypal/android/sdk/gn;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/paypal/android/sdk/gn;->a()V

    new-instance v0, Lcom/paypal/android/sdk/gm;

    invoke-direct {v0, p0}, Lcom/paypal/android/sdk/gm;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-class v3, Lcom/paypal/android/sdk/payments/PaymentActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-class v2, Lcom/paypal/android/sdk/payments/LoginActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-class v3, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-class v3, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/gm;->a(Ljava/util/Collection;)V

    invoke-static {p0}, Lcom/paypal/android/sdk/payments/d;->b(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PaymentActivity;->e:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v1, v4}, Lcom/paypal/android/sdk/payments/PaymentActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/paypal/android/sdk/payments/PaymentActivity;->f:Z

    const v0, 0x103006e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    new-instance v0, Lcom/paypal/android/sdk/gj;

    invoke-direct {v0, p0}, Lcom/paypal/android/sdk/gj;-><init>(Landroid/content/Context;)V

    iget-object v1, v0, Lcom/paypal/android/sdk/gj;->a:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Lcom/paypal/android/sdk/payments/PaymentActivity;->setContentView(Landroid/view/View;)V

    iget-object v0, v0, Lcom/paypal/android/sdk/gj;->b:Landroid/widget/TextView;

    sget-object v1, Lcom/paypal/android/sdk/fs;->y:Lcom/paypal/android/sdk/fs;

    invoke-static {v1}, Lcom/paypal/android/sdk/fq;->a(Lcom/paypal/android/sdk/fs;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    sget-object v1, Lcom/paypal/android/sdk/fs;->y:Lcom/paypal/android/sdk/fs;

    invoke-static {p0, v0, v1}, Lcom/paypal/android/sdk/payments/d;->a(Landroid/app/Activity;Landroid/widget/TextView;Lcom/paypal/android/sdk/fs;)V

    return-void
.end method

.method protected final onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 4

    packed-switch p1, :pswitch_data_1c

    sget-object v0, Lcom/paypal/android/sdk/fs;->bc:Lcom/paypal/android/sdk/fs;

    invoke-static {p0, v0, p2, p1}, Lcom/paypal/android/sdk/payments/d;->a(Landroid/app/Activity;Lcom/paypal/android/sdk/fs;Landroid/os/Bundle;I)Landroid/app/Dialog;

    move-result-object v0

    :goto_9
    return-object v0

    :pswitch_a
    new-instance v0, Lcom/paypal/android/sdk/payments/cj;

    invoke-direct {v0, p0}, Lcom/paypal/android/sdk/payments/cj;-><init>(Lcom/paypal/android/sdk/payments/PaymentActivity;)V

    invoke-static {p0, v0}, Lcom/paypal/android/sdk/payments/d;->a(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_9

    :pswitch_14
    sget-object v0, Lcom/paypal/android/sdk/fs;->be:Lcom/paypal/android/sdk/fs;

    invoke-static {p0, v0, p2, p1}, Lcom/paypal/android/sdk/payments/d;->a(Landroid/app/Activity;Lcom/paypal/android/sdk/fs;Landroid/os/Bundle;I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_9

    nop

    :pswitch_data_1c
    .packed-switch 0x2
        :pswitch_a
        :pswitch_14
    .end packed-switch
.end method

.method protected final onDestroy()V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/paypal/android/sdk/payments/PaymentActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".onDestroy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentActivity;->d:Lcom/paypal/android/sdk/payments/PayPalService;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentActivity;->d:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->o()V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentActivity;->d:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->u()V

    :cond_1e
    iget-boolean v0, p0, Lcom/paypal/android/sdk/payments/PaymentActivity;->f:Z

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentActivity;->e:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/paypal/android/sdk/payments/PaymentActivity;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/paypal/android/sdk/payments/PaymentActivity;->f:Z

    :cond_2a
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method
