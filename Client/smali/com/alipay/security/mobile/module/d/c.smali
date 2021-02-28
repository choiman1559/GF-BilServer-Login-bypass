.class final Lcom/alipay/security/mobile/module/d/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/security/mobile/module/d/b;


# direct methods
.method constructor <init>(Lcom/alipay/security/mobile/module/d/b;)V
    .registers 2

    iput-object p1, p0, Lcom/alipay/security/mobile/module/d/c;->a:Lcom/alipay/security/mobile/module/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/alipay/security/mobile/module/d/c;->a:Lcom/alipay/security/mobile/module/d/b;

    invoke-static {v0}, Lcom/alipay/security/mobile/module/d/b;->a(Lcom/alipay/security/mobile/module/d/b;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    invoke-static {v0}, Lcom/alipay/security/mobile/module/d/d;->a(Ljava/lang/Throwable;)V

    goto :goto_5
.end method
