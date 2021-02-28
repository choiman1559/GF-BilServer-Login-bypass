.class public Lcom/sanbao/micasdk/TDAdTrackingAdapter;
.super Ljava/lang/Object;
.source "TDAdTrackingAdapter.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onCreateRole(Ljava/lang/String;)V
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 25
    sget-object v0, Lcom/sanbao/micasdk/SDKTools;->LOG_TAG:Ljava/lang/String;

    const-string v1, "java call onCreateRole"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-static {p0}, Lcom/tendcloud/appcpa/TalkingDataAppCpa;->onCreateRole(Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public static onLogin(Ljava/lang/String;)V
    .registers 3
    .param p0, "uid"    # Ljava/lang/String;

    .prologue
    .line 19
    sget-object v0, Lcom/sanbao/micasdk/SDKTools;->LOG_TAG:Ljava/lang/String;

    const-string v1, "java call onLogin"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    invoke-static {p0}, Lcom/tendcloud/appcpa/TalkingDataAppCpa;->onLogin(Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static onPay(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9
    .param p0, "uid"    # Ljava/lang/String;
    .param p1, "orderId"    # Ljava/lang/String;
    .param p2, "amount"    # I
    .param p3, "currencyType"    # Ljava/lang/String;
    .param p4, "payType"    # Ljava/lang/String;
    .param p5, "itemId"    # Ljava/lang/String;
    .param p6, "itemCount"    # I

    .prologue
    .line 31
    sget-object v0, Lcom/sanbao/micasdk/SDKTools;->LOG_TAG:Ljava/lang/String;

    const-string v1, "java call onPay"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-static/range {p0 .. p6}, Lcom/tendcloud/appcpa/TalkingDataAppCpa;->onPay(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 33
    return-void
.end method

.method public static onRegister(Ljava/lang/String;)V
    .registers 3
    .param p0, "uid"    # Ljava/lang/String;

    .prologue
    .line 13
    sget-object v0, Lcom/sanbao/micasdk/SDKTools;->LOG_TAG:Ljava/lang/String;

    const-string v1, "java call onRegister"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    invoke-static {p0}, Lcom/tendcloud/appcpa/TalkingDataAppCpa;->onRegister(Ljava/lang/String;)V

    .line 15
    return-void
.end method
