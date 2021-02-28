.class Lcom/mob/tools/utils/MobLooper$1;
.super Landroid/content/BroadcastReceiver;
.source "MobLooper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/utils/MobLooper;->start(Ljava/lang/Runnable;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mob/tools/utils/MobLooper;

.field final synthetic val$am:Landroid/app/AlarmManager;

.field final synthetic val$interval:J

.field final synthetic val$lock:Ljava/lang/Object;

.field final synthetic val$sender:Landroid/app/PendingIntent;

.field final synthetic val$task:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/mob/tools/utils/MobLooper;Ljava/lang/Object;Ljava/lang/Runnable;Landroid/app/AlarmManager;JLandroid/app/PendingIntent;)V
    .registers 9
    .param p1, "this$0"    # Lcom/mob/tools/utils/MobLooper;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/mob/tools/utils/MobLooper$1;->this$0:Lcom/mob/tools/utils/MobLooper;

    iput-object p2, p0, Lcom/mob/tools/utils/MobLooper$1;->val$lock:Ljava/lang/Object;

    iput-object p3, p0, Lcom/mob/tools/utils/MobLooper$1;->val$task:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/mob/tools/utils/MobLooper$1;->val$am:Landroid/app/AlarmManager;

    iput-wide p5, p0, Lcom/mob/tools/utils/MobLooper$1;->val$interval:J

    iput-object p7, p0, Lcom/mob/tools/utils/MobLooper$1;->val$sender:Landroid/app/PendingIntent;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/mob/tools/utils/MobLooper$1;->this$0:Lcom/mob/tools/utils/MobLooper;

    invoke-static {v0}, Lcom/mob/tools/utils/MobLooper;->access$000(Lcom/mob/tools/utils/MobLooper;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 34
    new-instance v0, Lcom/mob/tools/utils/MobLooper$1$1;

    invoke-direct {v0, p0}, Lcom/mob/tools/utils/MobLooper$1$1;-><init>(Lcom/mob/tools/utils/MobLooper$1;)V

    .line 40
    invoke-virtual {v0}, Lcom/mob/tools/utils/MobLooper$1$1;->start()V

    .line 41
    iget-object v0, p0, Lcom/mob/tools/utils/MobLooper$1;->val$am:Landroid/app/AlarmManager;

    const/4 v1, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/mob/tools/utils/MobLooper$1;->val$interval:J

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/mob/tools/utils/MobLooper$1;->val$sender:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 43
    :cond_1f
    return-void
.end method
