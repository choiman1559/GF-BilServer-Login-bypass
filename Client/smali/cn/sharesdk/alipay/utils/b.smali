.class public Lcn/sharesdk/alipay/utils/b;
.super Ljava/lang/Object;
.source "AlipayResp.java"


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "alipay_baseresp_errcode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/sharesdk/alipay/utils/b;->a:I

    .line 19
    const-string v0, "alipay_baseresp_errstr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/alipay/utils/b;->b:Ljava/lang/String;

    .line 20
    const-string v0, "alipay_basereq_transaction"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/alipay/utils/b;->c:Ljava/lang/String;

    .line 21
    return-void
.end method
