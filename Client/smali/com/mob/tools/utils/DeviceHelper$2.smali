.class Lcom/mob/tools/utils/DeviceHelper$2;
.super Ljava/lang/Object;
.source "DeviceHelper.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/utils/DeviceHelper;->currentActivityThread()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mob/tools/utils/DeviceHelper;

.field final synthetic val$lock:Ljava/lang/Object;

.field final synthetic val$mainThreadAct:Lcom/mob/tools/utils/ReflectHelper$ReflectRunnable;

.field final synthetic val$output:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/mob/tools/utils/DeviceHelper;Ljava/lang/Object;[Ljava/lang/Object;Lcom/mob/tools/utils/ReflectHelper$ReflectRunnable;)V
    .registers 5
    .param p1, "this$0"    # Lcom/mob/tools/utils/DeviceHelper;

    .prologue
    .line 1966
    iput-object p1, p0, Lcom/mob/tools/utils/DeviceHelper$2;->this$0:Lcom/mob/tools/utils/DeviceHelper;

    iput-object p2, p0, Lcom/mob/tools/utils/DeviceHelper$2;->val$lock:Ljava/lang/Object;

    iput-object p3, p0, Lcom/mob/tools/utils/DeviceHelper$2;->val$output:[Ljava/lang/Object;

    iput-object p4, p0, Lcom/mob/tools/utils/DeviceHelper$2;->val$mainThreadAct:Lcom/mob/tools/utils/ReflectHelper$ReflectRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    .line 1968
    iget-object v2, p0, Lcom/mob/tools/utils/DeviceHelper$2;->val$lock:Ljava/lang/Object;

    monitor-enter v2

    .line 1970
    :try_start_4
    iget-object v1, p0, Lcom/mob/tools/utils/DeviceHelper$2;->val$output:[Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/mob/tools/utils/DeviceHelper$2;->val$mainThreadAct:Lcom/mob/tools/utils/ReflectHelper$ReflectRunnable;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/mob/tools/utils/ReflectHelper$ReflectRunnable;->run(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v1, v3

    .line 1971
    iget-object v1, p0, Lcom/mob/tools/utils/DeviceHelper$2;->val$lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_15} :catch_17
    .catchall {:try_start_4 .. :try_end_15} :catchall_20

    .line 1975
    :goto_15
    :try_start_15
    monitor-exit v2

    .line 1976
    return v6

    .line 1972
    :catch_17
    move-exception v0

    .line 1973
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_15

    .line 1975
    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_20
    move-exception v1

    monitor-exit v2
    :try_end_22
    .catchall {:try_start_15 .. :try_end_22} :catchall_20

    throw v1
.end method
