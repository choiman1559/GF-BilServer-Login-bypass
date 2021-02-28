.class Lcom/bsgamesdk/android/helper/b$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/helper/b$2;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bsgamesdk/android/helper/b$2;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/helper/b$2;)V
    .registers 2

    iput-object p1, p0, Lcom/bsgamesdk/android/helper/b$2$1;->a:Lcom/bsgamesdk/android/helper/b$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    :try_start_0
    invoke-static {}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->getInstance()Lcom/bilibili/baseconnect/BaseSDKConnectManager;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/helper/b$2$1;->a:Lcom/bsgamesdk/android/helper/b$2;

    iget-object v1, v1, Lcom/bsgamesdk/android/helper/b$2;->a:Lcom/bsgamesdk/android/helper/b;

    invoke-static {v1}, Lcom/bsgamesdk/android/helper/b;->a(Lcom/bsgamesdk/android/helper/b;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/bsgamesdk/android/helper/b$2$1$1;

    invoke-direct {v2, p0}, Lcom/bsgamesdk/android/helper/b$2$1$1;-><init>(Lcom/bsgamesdk/android/helper/b$2$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->getOaid(Landroid/content/Context;Lcom/bilibili/baseconnect/OaidCallback;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_14} :catch_15

    :goto_14
    return-void

    :catch_15
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    goto :goto_14
.end method
