.class public Lcom/bsgamesdk/android/api/q;
.super Lcom/bsgamesdk/android/api/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bsgamesdk/android/api/p",
        "<",
        "Lcom/bsgamesdk/android/model/PaypalOrderInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const-string v0, "bsgamesdk_paypal_order"

    const-string v1, "paypal_verify"

    invoke-direct {p0, v0, v1}, Lcom/bsgamesdk/android/api/p;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/bsgamesdk/android/api/q;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Lcom/bsgamesdk/android/model/PaypalOrderInfo;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;,
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v6, 0x0

    sget-object v0, Lcom/bsgamesdk/android/b;->c:Lcom/bsgamesdk/android/api/k;

    iget-object v1, p0, Lcom/bsgamesdk/android/api/q;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/bsgamesdk/android/model/PaypalOrderInfo;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bsgamesdk/android/model/PaypalOrderInfo;->getBsOrder()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/bsgamesdk/android/model/PaypalOrderInfo;->getPaymentId()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-interface/range {v0 .. v6}, Lcom/bsgamesdk/android/api/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    if-eq v0, v7, :cond_1e

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1e

    move v6, v7

    :cond_1e
    return v6
.end method

.method public synthetic d(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;,
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    check-cast p1, Lcom/bsgamesdk/android/model/PaypalOrderInfo;

    invoke-virtual {p0, p1}, Lcom/bsgamesdk/android/api/q;->a(Lcom/bsgamesdk/android/model/PaypalOrderInfo;)Z

    move-result v0

    return v0
.end method
