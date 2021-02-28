.class public Lcom/alipay/sdk/util/H5PayResultModel;
.super Ljava/lang/Object;


# instance fields
.field private resultCode:Ljava/lang/String;

.field private returnUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResultCode()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/alipay/sdk/util/H5PayResultModel;->resultCode:Ljava/lang/String;

    return-object v0
.end method

.method public getReturnUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/alipay/sdk/util/H5PayResultModel;->returnUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setResultCode(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/alipay/sdk/util/H5PayResultModel;->resultCode:Ljava/lang/String;

    return-void
.end method

.method public setReturnUrl(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/alipay/sdk/util/H5PayResultModel;->returnUrl:Ljava/lang/String;

    return-void
.end method
