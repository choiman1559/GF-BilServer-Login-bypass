.class public Lcom/alipay/sdk/packet/impl/c;
.super Lcom/alipay/sdk/packet/e;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/alipay/sdk/packet/e;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lorg/json/JSONObject;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "cashier"

    const-string v1, "gentid"

    invoke-static {v0, v1}, Lcom/alipay/sdk/packet/e;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method protected b()Ljava/lang/String;
    .registers 2

    const-string v0, "5.0.0"

    return-object v0
.end method
