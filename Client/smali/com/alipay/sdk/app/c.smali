.class Lcom/alipay/sdk/app/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Landroid/webkit/SslErrorHandler;

.field final synthetic c:Lcom/alipay/sdk/app/b;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/app/b;Landroid/app/Activity;Landroid/webkit/SslErrorHandler;)V
    .registers 4

    iput-object p1, p0, Lcom/alipay/sdk/app/c;->c:Lcom/alipay/sdk/app/b;

    iput-object p2, p0, Lcom/alipay/sdk/app/c;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/alipay/sdk/app/c;->b:Landroid/webkit/SslErrorHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/alipay/sdk/app/c;->a:Landroid/app/Activity;

    const-string v1, "\u5b89\u5168\u8b66\u544a"

    const-string v2, "\u5b89\u5168\u8fde\u63a5\u8bc1\u4e66\u6821\u9a8c\u65e0\u6548\uff0c\u5c06\u65e0\u6cd5\u4fdd\u8bc1\u8bbf\u95ee\u6570\u636e\u7684\u5b89\u5168\u6027\uff0c\u8bf7\u5b89\u88c5\u652f\u4ed8\u5b9d\u540e\u91cd\u8bd5\u3002"

    const-string v3, "\u786e\u5b9a"

    new-instance v4, Lcom/alipay/sdk/app/d;

    invoke-direct {v4, p0}, Lcom/alipay/sdk/app/d;-><init>(Lcom/alipay/sdk/app/c;)V

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Lcom/alipay/sdk/widget/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    return-void
.end method
