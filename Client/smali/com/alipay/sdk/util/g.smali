.class Lcom/alipay/sdk/util/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/sdk/app/AlipayResultActivity$a;


# instance fields
.field final synthetic a:Ljava/util/concurrent/CountDownLatch;

.field final synthetic b:Lcom/alipay/sdk/util/e;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/util/e;Ljava/util/concurrent/CountDownLatch;)V
    .registers 3

    iput-object p1, p0, Lcom/alipay/sdk/util/g;->b:Lcom/alipay/sdk/util/e;

    iput-object p2, p0, Lcom/alipay/sdk/util/g;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/alipay/sdk/util/g;->b:Lcom/alipay/sdk/util/e;

    invoke-static {p1, p2, p3}, Lcom/alipay/sdk/app/j;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/sdk/util/e;->a(Lcom/alipay/sdk/util/e;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/sdk/util/g;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
