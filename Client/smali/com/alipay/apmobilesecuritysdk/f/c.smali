.class final Lcom/alipay/apmobilesecuritysdk/f/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/apmobilesecuritysdk/f/b;


# direct methods
.method constructor <init>(Lcom/alipay/apmobilesecuritysdk/f/b;)V
    .registers 2

    iput-object p1, p0, Lcom/alipay/apmobilesecuritysdk/f/c;->a:Lcom/alipay/apmobilesecuritysdk/f/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :cond_4
    :goto_4
    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/f/c;->a:Lcom/alipay/apmobilesecuritysdk/f/b;

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/f/b;->a(Lcom/alipay/apmobilesecuritysdk/f/b;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/f/c;->a:Lcom/alipay/apmobilesecuritysdk/f/b;

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/f/b;->a(Lcom/alipay/apmobilesecuritysdk/f/b;)Ljava/util/LinkedList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/f/c;->a:Lcom/alipay/apmobilesecuritysdk/f/b;

    invoke-static {v1}, Lcom/alipay/apmobilesecuritysdk/f/b;->a(Lcom/alipay/apmobilesecuritysdk/f/b;)Ljava/util/LinkedList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2c} :catch_2d
    .catchall {:try_start_1 .. :try_end_2c} :catchall_3a

    goto :goto_4

    :catch_2d
    move-exception v0

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/f/c;->a:Lcom/alipay/apmobilesecuritysdk/f/b;

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/f/b;->b(Lcom/alipay/apmobilesecuritysdk/f/b;)Ljava/lang/Thread;

    :goto_33
    return-void

    :cond_34
    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/f/c;->a:Lcom/alipay/apmobilesecuritysdk/f/b;

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/f/b;->b(Lcom/alipay/apmobilesecuritysdk/f/b;)Ljava/lang/Thread;

    goto :goto_33

    :catchall_3a
    move-exception v0

    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/f/c;->a:Lcom/alipay/apmobilesecuritysdk/f/b;

    invoke-static {v1}, Lcom/alipay/apmobilesecuritysdk/f/b;->b(Lcom/alipay/apmobilesecuritysdk/f/b;)Ljava/lang/Thread;

    throw v0
.end method
