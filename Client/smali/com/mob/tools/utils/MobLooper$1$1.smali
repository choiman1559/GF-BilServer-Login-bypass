.class Lcom/mob/tools/utils/MobLooper$1$1;
.super Ljava/lang/Thread;
.source "MobLooper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/utils/MobLooper$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mob/tools/utils/MobLooper$1;


# direct methods
.method constructor <init>(Lcom/mob/tools/utils/MobLooper$1;)V
    .registers 2
    .param p1, "this$1"    # Lcom/mob/tools/utils/MobLooper$1;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/mob/tools/utils/MobLooper$1$1;->this$1:Lcom/mob/tools/utils/MobLooper$1;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 36
    iget-object v0, p0, Lcom/mob/tools/utils/MobLooper$1$1;->this$1:Lcom/mob/tools/utils/MobLooper$1;

    iget-object v1, v0, Lcom/mob/tools/utils/MobLooper$1;->val$lock:Ljava/lang/Object;

    monitor-enter v1

    .line 37
    :try_start_5
    iget-object v0, p0, Lcom/mob/tools/utils/MobLooper$1$1;->this$1:Lcom/mob/tools/utils/MobLooper$1;

    iget-object v0, v0, Lcom/mob/tools/utils/MobLooper$1;->val$task:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 38
    monitor-exit v1

    .line 39
    return-void

    .line 38
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_e

    throw v0
.end method
