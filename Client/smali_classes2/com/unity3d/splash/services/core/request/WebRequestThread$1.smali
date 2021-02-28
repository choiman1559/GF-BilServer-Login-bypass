.class final Lcom/unity3d/splash/services/core/request/WebRequestThread$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/splash/services/core/request/WebRequestThread;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/unity3d/splash/services/core/request/WebRequestThread;->access$002(Z)Z

    invoke-static {}, Lcom/unity3d/splash/services/core/request/WebRequestThread;->access$100()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_9
    invoke-static {}, Lcom/unity3d/splash/services/core/request/WebRequestThread;->access$100()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_12

    throw v0
.end method
