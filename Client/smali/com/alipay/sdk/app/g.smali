.class Lcom/alipay/sdk/app/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Lcom/alipay/sdk/app/H5PayCallback;

.field final synthetic d:Lcom/alipay/sdk/app/PayTask;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/app/PayTask;Ljava/lang/String;ZLcom/alipay/sdk/app/H5PayCallback;)V
    .registers 5

    iput-object p1, p0, Lcom/alipay/sdk/app/g;->d:Lcom/alipay/sdk/app/PayTask;

    iput-object p2, p0, Lcom/alipay/sdk/app/g;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/alipay/sdk/app/g;->b:Z

    iput-object p4, p0, Lcom/alipay/sdk/app/g;->c:Lcom/alipay/sdk/app/H5PayCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    new-instance v0, Lcom/alipay/sdk/sys/a;

    iget-object v1, p0, Lcom/alipay/sdk/app/g;->d:Lcom/alipay/sdk/app/PayTask;

    invoke-static {v1}, Lcom/alipay/sdk/app/PayTask;->a(Lcom/alipay/sdk/app/PayTask;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/sdk/app/g;->a:Ljava/lang/String;

    const-string v3, "payInterceptorWithUrl"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/sdk/sys/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/sdk/app/g;->d:Lcom/alipay/sdk/app/PayTask;

    iget-object v2, p0, Lcom/alipay/sdk/app/g;->a:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/alipay/sdk/app/g;->b:Z

    invoke-virtual {v1, v0, v2, v3}, Lcom/alipay/sdk/app/PayTask;->h5Pay(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Z)Lcom/alipay/sdk/util/H5PayResultModel;

    move-result-object v0

    const-string v1, "mspl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inc finished: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alipay/sdk/util/H5PayResultModel;->getResultCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/sdk/util/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/sdk/app/g;->c:Lcom/alipay/sdk/app/H5PayCallback;

    invoke-interface {v1, v0}, Lcom/alipay/sdk/app/H5PayCallback;->onPayResult(Lcom/alipay/sdk/util/H5PayResultModel;)V

    return-void
.end method
