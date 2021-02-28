.class public Lcom/mob/tools/utils/MobLooper;
.super Ljava/lang/Object;
.source "MobLooper.java"


# instance fields
.field private context:Landroid/content/Context;

.field private goingToStop:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/tools/utils/MobLooper;->context:Landroid/content/Context;

    .line 17
    return-void
.end method

.method static synthetic access$000(Lcom/mob/tools/utils/MobLooper;)Z
    .registers 2
    .param p0, "x0"    # Lcom/mob/tools/utils/MobLooper;

    .prologue
    .line 11
    iget-boolean v0, p0, Lcom/mob/tools/utils/MobLooper;->goingToStop:Z

    return v0
.end method


# virtual methods
.method public start(Ljava/lang/Runnable;J)V
    .registers 10
    .param p1, "task"    # Ljava/lang/Runnable;
    .param p2, "interval"    # J

    .prologue
    .line 20
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/mob/tools/utils/MobLooper;->start(Ljava/lang/Runnable;JJ)V

    .line 21
    return-void
.end method

.method public declared-synchronized start(Ljava/lang/Runnable;JJ)V
    .registers 18
    .param p1, "task"    # Ljava/lang/Runnable;
    .param p2, "interval"    # J
    .param p4, "delay"    # J

    .prologue
    .line 24
    monitor-enter p0

    const/4 v1, 0x0

    :try_start_2
    iput-boolean v1, p0, Lcom/mob/tools/utils/MobLooper;->goingToStop:Z

    .line 25
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 26
    .local v3, "lock":Ljava/lang/Object;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, "action":Ljava/lang/String;
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 28
    .local v9, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/mob/tools/utils/MobLooper;->context:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v9, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 29
    .local v8, "sender":Landroid/app/PendingIntent;
    iget-object v1, p0, Lcom/mob/tools/utils/MobLooper;->context:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AlarmManager;

    .line 30
    .local v5, "am":Landroid/app/AlarmManager;
    const/4 v1, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    add-long v6, v6, p4

    invoke-virtual {v5, v1, v6, v7, v8}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 31
    iget-object v10, p0, Lcom/mob/tools/utils/MobLooper;->context:Landroid/content/Context;

    new-instance v1, Lcom/mob/tools/utils/MobLooper$1;

    move-object v2, p0

    move-object v4, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v8}, Lcom/mob/tools/utils/MobLooper$1;-><init>(Lcom/mob/tools/utils/MobLooper;Ljava/lang/Object;Ljava/lang/Runnable;Landroid/app/AlarmManager;JLandroid/app/PendingIntent;)V

    new-instance v2, Landroid/content/IntentFilter;

    .line 44
    invoke-virtual {v9}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v10, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_63
    .catchall {:try_start_2 .. :try_end_63} :catchall_65

    .line 45
    monitor-exit p0

    return-void

    .line 24
    .end local v0    # "action":Ljava/lang/String;
    .end local v3    # "lock":Ljava/lang/Object;
    .end local v5    # "am":Landroid/app/AlarmManager;
    .end local v8    # "sender":Landroid/app/PendingIntent;
    .end local v9    # "intent":Landroid/content/Intent;
    :catchall_65
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized stop()V
    .registers 2

    .prologue
    .line 48
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/mob/tools/utils/MobLooper;->goingToStop:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 49
    monitor-exit p0

    return-void

    .line 48
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method
