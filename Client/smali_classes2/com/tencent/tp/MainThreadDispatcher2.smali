.class public Lcom/tencent/tp/MainThreadDispatcher2;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tp/MainThreadDispatcher2$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static SendCmd(Ljava/lang/String;)V
    .registers 3

    const-string v0, "npw:"

    invoke-static {v0}, Lcom/tencent/tp/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tp/MainThreadDispatcher2;->doOnCmd(Ljava/lang/String;)V

    :goto_14
    return-void

    :cond_15
    const-string v0, "pkyvoz_vyw_zivwgzy_jqzm_pnw:"

    invoke-static {v0}, Lcom/tencent/tp/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-static {p0}, Lcom/tencent/tp/MainThreadDispatcher2;->doOnCmd(Ljava/lang/String;)V

    goto :goto_14

    :cond_25
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {p0}, Lcom/tencent/tp/MainThreadDispatcher2;->onCmdRunnable(Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_14
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/tencent/tp/MainThreadDispatcher2;->doOnCmd(Ljava/lang/String;)V

    return-void
.end method

.method private static doOnCmd(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/tencent/tp/TssJavaMethod;->sendCmd(Ljava/lang/String;)V

    return-void
.end method

.method private static onCmdRunnable(Ljava/lang/String;)Ljava/lang/Runnable;
    .registers 2

    new-instance v0, Lcom/tencent/tp/MainThreadDispatcher2$a;

    invoke-direct {v0, p0}, Lcom/tencent/tp/MainThreadDispatcher2$a;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
