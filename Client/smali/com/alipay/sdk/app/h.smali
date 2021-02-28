.class Lcom/alipay/sdk/app/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/sdk/util/e$a;


# instance fields
.field final synthetic a:Lcom/alipay/sdk/app/PayTask;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/app/PayTask;)V
    .registers 2

    iput-object p1, p0, Lcom/alipay/sdk/app/h;->a:Lcom/alipay/sdk/app/PayTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    return-void
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/alipay/sdk/app/h;->a:Lcom/alipay/sdk/app/PayTask;

    invoke-virtual {v0}, Lcom/alipay/sdk/app/PayTask;->dismissLoading()V

    return-void
.end method
