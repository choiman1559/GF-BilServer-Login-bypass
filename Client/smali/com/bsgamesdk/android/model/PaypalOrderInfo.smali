.class public Lcom/bsgamesdk/android/model/PaypalOrderInfo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bsgamesdk/android/model/PaypalOrderInfo;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/bsgamesdk/android/model/PaypalOrderInfo;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    instance-of v1, p1, Lcom/bsgamesdk/android/model/PaypalOrderInfo;

    if-eqz v1, :cond_3

    check-cast p1, Lcom/bsgamesdk/android/model/PaypalOrderInfo;

    iget-object v1, p0, Lcom/bsgamesdk/android/model/PaypalOrderInfo;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/bsgamesdk/android/model/PaypalOrderInfo;->getPaymentId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/bsgamesdk/android/model/PaypalOrderInfo;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/bsgamesdk/android/model/PaypalOrderInfo;->getBsOrder()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method

.method public getBsOrder()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/model/PaypalOrderInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/model/PaypalOrderInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/model/PaypalOrderInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/bsgamesdk/android/model/PaypalOrderInfo;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bsgamesdk/android/model/PaypalOrderInfo;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public setBsOrder(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bsgamesdk/android/model/PaypalOrderInfo;->b:Ljava/lang/String;

    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bsgamesdk/android/model/PaypalOrderInfo;->c:Ljava/lang/String;

    return-void
.end method

.method public setPaymentId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bsgamesdk/android/model/PaypalOrderInfo;->a:Ljava/lang/String;

    return-void
.end method
