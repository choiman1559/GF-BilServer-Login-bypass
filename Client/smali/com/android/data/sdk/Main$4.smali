.class Lcom/android/data/sdk/Main$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/data/sdk/Main;->startHeartBeat(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/android/data/sdk/Main;


# direct methods
.method constructor <init>(Lcom/android/data/sdk/Main;Landroid/app/Activity;)V
    .registers 3

    iput-object p1, p0, Lcom/android/data/sdk/Main$4;->b:Lcom/android/data/sdk/Main;

    iput-object p2, p0, Lcom/android/data/sdk/Main$4;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/android/data/sdk/Main$4;->b:Lcom/android/data/sdk/Main;

    invoke-static {v0}, Lcom/android/data/sdk/Main;->a(Lcom/android/data/sdk/Main;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/android/data/sdk/Main$4;->b:Lcom/android/data/sdk/Main;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/data/sdk/Main;->a(Lcom/android/data/sdk/Main;Z)Z

    new-instance v0, Lcom/android/data/sdk/api/a;

    iget-object v2, p0, Lcom/android/data/sdk/Main$4;->b:Lcom/android/data/sdk/Main;

    invoke-static {}, Lcom/android/data/sdk/Main;->b()Lcom/android/data/sdk/PreDefined;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/data/sdk/api/a;-><init>(Lcom/android/data/sdk/PreDefined;)V

    iget-object v2, p0, Lcom/android/data/sdk/Main$4;->a:Landroid/app/Activity;

    new-instance v3, Lcom/android/data/sdk/Main$4$1;

    invoke-direct {v3, p0}, Lcom/android/data/sdk/Main$4$1;-><init>(Lcom/android/data/sdk/Main$4;)V

    invoke-virtual {v0, v2, v3}, Lcom/android/data/sdk/api/a;->a(Landroid/content/Context;Lcom/android/data/sdk/api/d;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_22} :catch_24
    .catchall {:try_start_7 .. :try_end_22} :catchall_29

    :goto_22
    :try_start_22
    monitor-exit v1

    return-void

    :catch_24
    move-exception v0

    invoke-static {v0}, Lcom/android/data/sdk/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_22

    :catchall_29
    move-exception v0

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_22 .. :try_end_2b} :catchall_29

    throw v0
.end method
