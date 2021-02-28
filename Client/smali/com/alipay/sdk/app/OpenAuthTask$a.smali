.class final Lcom/alipay/sdk/app/OpenAuthTask$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/sdk/app/OpenAuthTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final a:I

.field final b:Ljava/lang/String;

.field final c:Landroid/os/Bundle;

.field final synthetic d:Lcom/alipay/sdk/app/OpenAuthTask;


# direct methods
.method private constructor <init>(Lcom/alipay/sdk/app/OpenAuthTask;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    iput-object p1, p0, Lcom/alipay/sdk/app/OpenAuthTask$a;->d:Lcom/alipay/sdk/app/OpenAuthTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/alipay/sdk/app/OpenAuthTask$a;->a:I

    iput-object p3, p0, Lcom/alipay/sdk/app/OpenAuthTask$a;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/sdk/app/OpenAuthTask$a;->c:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/sdk/app/OpenAuthTask;ILjava/lang/String;Landroid/os/Bundle;Lcom/alipay/sdk/app/e;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/sdk/app/OpenAuthTask$a;-><init>(Lcom/alipay/sdk/app/OpenAuthTask;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/alipay/sdk/app/OpenAuthTask$a;->d:Lcom/alipay/sdk/app/OpenAuthTask;

    invoke-static {v0}, Lcom/alipay/sdk/app/OpenAuthTask;->a(Lcom/alipay/sdk/app/OpenAuthTask;)Lcom/alipay/sdk/app/OpenAuthTask$Callback;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/alipay/sdk/app/OpenAuthTask$a;->d:Lcom/alipay/sdk/app/OpenAuthTask;

    invoke-static {v0}, Lcom/alipay/sdk/app/OpenAuthTask;->a(Lcom/alipay/sdk/app/OpenAuthTask;)Lcom/alipay/sdk/app/OpenAuthTask$Callback;

    move-result-object v0

    iget v1, p0, Lcom/alipay/sdk/app/OpenAuthTask$a;->a:I

    iget-object v2, p0, Lcom/alipay/sdk/app/OpenAuthTask$a;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/sdk/app/OpenAuthTask$a;->c:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/sdk/app/OpenAuthTask$Callback;->onResult(ILjava/lang/String;Landroid/os/Bundle;)V

    :cond_17
    return-void
.end method
