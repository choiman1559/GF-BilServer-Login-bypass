.class final Lcom/paypal/android/sdk/payments/ci;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/paypal/android/sdk/payments/PayPalService;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/paypal/android/sdk/payments/PayPalService;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/ci;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    div-int/lit8 v0, v0, 0x3c

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/ci;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Lcom/paypal/android/sdk/dc;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ci;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/dc;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/paypal/android/sdk/bs;)V
    .registers 3

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ci;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0, p1}, Lcom/paypal/android/sdk/payments/PayPalService;->doTrackingRequest(Lcom/paypal/android/sdk/bs;)V

    return-void
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ci;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lcom/paypal/android/sdk/bp;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ci;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->b()Lcom/paypal/android/sdk/bp;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ci;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ci;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ci;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->v()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
