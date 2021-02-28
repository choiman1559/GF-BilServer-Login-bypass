.class public Lcom/mob/tools/utils/ApplicationTracker;
.super Ljava/lang/Object;
.source "ApplicationTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/tools/utils/ApplicationTracker$Tracker;
    }
.end annotation


# static fields
.field private static trackers:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/mob/tools/utils/ApplicationTracker$Tracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 15

    .prologue
    const/4 v14, 0x0

    .line 16
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    sput-object v10, Lcom/mob/tools/utils/ApplicationTracker;->trackers:Ljava/util/HashSet;

    .line 20
    new-instance v4, Lcom/mob/tools/utils/ApplicationTracker$1;

    invoke-direct {v4}, Lcom/mob/tools/utils/ApplicationTracker$1;-><init>()V

    .line 57
    .local v4, "mainThreadAct":Lcom/mob/tools/utils/ReflectHelper$ReflectRunnable;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->getId()J

    move-result-wide v10

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Thread;->getId()J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-nez v10, :cond_62

    .line 58
    const/4 v10, 0x0

    invoke-interface {v4, v10}, Lcom/mob/tools/utils/ReflectHelper$ReflectRunnable;->run(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 87
    .local v9, "thread":Ljava/lang/Object;
    :goto_2a
    :try_start_2a
    const-string v10, "mH"

    invoke-static {v9, v10}, Lcom/mob/tools/utils/ReflectHelper;->getInstanceField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 88
    .local v2, "handler":Ljava/lang/Object;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .local v7, "sb":Ljava/lang/StringBuilder;
    const-string v10, "mC"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    const-string v10, "al"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    const-string v10, "lb"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    const-string v10, "ac"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    const-string v10, "k"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 95
    .local v5, "method":Ljava/lang/String;
    invoke-static {v2, v5}, Lcom/mob/tools/utils/ReflectHelper;->getInstanceField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler$Callback;

    .line 96
    .local v0, "backup":Landroid/os/Handler$Callback;
    move-object v1, v9

    .line 97
    .local v1, "fThread":Ljava/lang/Object;
    new-instance v10, Lcom/mob/tools/utils/ApplicationTracker$3;

    invoke-direct {v10, v1, v0}, Lcom/mob/tools/utils/ApplicationTracker$3;-><init>(Ljava/lang/Object;Landroid/os/Handler$Callback;)V

    invoke-static {v2, v5, v10}, Lcom/mob/tools/utils/ReflectHelper;->setInstanceField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_61} :catch_87

    .line 169
    .end local v0    # "backup":Landroid/os/Handler$Callback;
    .end local v1    # "fThread":Ljava/lang/Object;
    .end local v2    # "handler":Ljava/lang/Object;
    .end local v5    # "method":Ljava/lang/String;
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    :goto_61
    return-void

    .line 60
    .end local v9    # "thread":Ljava/lang/Object;
    :cond_62
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 61
    .local v3, "lock":Ljava/lang/Object;
    const/4 v10, 0x1

    new-array v6, v10, [Ljava/lang/Object;

    .line 62
    .local v6, "output":[Ljava/lang/Object;
    monitor-enter v3

    .line 63
    const/4 v10, 0x0

    :try_start_6c
    new-instance v11, Lcom/mob/tools/utils/ApplicationTracker$2;

    invoke-direct {v11, v3, v6, v4}, Lcom/mob/tools/utils/ApplicationTracker$2;-><init>(Ljava/lang/Object;[Ljava/lang/Object;Lcom/mob/tools/utils/ReflectHelper$ReflectRunnable;)V

    invoke-static {v10, v11}, Lcom/mob/tools/utils/UIHandler;->sendEmptyMessage(ILandroid/os/Handler$Callback;)Z
    :try_end_74
    .catchall {:try_start_6c .. :try_end_74} :catchall_84

    .line 77
    :try_start_74
    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_77
    .catch Ljava/lang/Throwable; {:try_start_74 .. :try_end_77} :catch_7b
    .catchall {:try_start_74 .. :try_end_77} :catchall_84

    .line 81
    :goto_77
    :try_start_77
    monitor-exit v3
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_84

    .line 82
    aget-object v9, v6, v14

    .restart local v9    # "thread":Ljava/lang/Object;
    goto :goto_2a

    .line 78
    .end local v9    # "thread":Ljava/lang/Object;
    :catch_7b
    move-exception v8

    .line 79
    .local v8, "t":Ljava/lang/Throwable;
    :try_start_7c
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_77

    .line 81
    .end local v8    # "t":Ljava/lang/Throwable;
    :catchall_84
    move-exception v10

    monitor-exit v3
    :try_end_86
    .catchall {:try_start_7c .. :try_end_86} :catchall_84

    throw v10

    .line 166
    .end local v3    # "lock":Ljava/lang/Object;
    .end local v6    # "output":[Ljava/lang/Object;
    .restart local v9    # "thread":Ljava/lang/Object;
    :catch_87
    move-exception v8

    .line 167
    .restart local v8    # "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_61
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/HashSet;
    .registers 1

    .prologue
    .line 12
    sget-object v0, Lcom/mob/tools/utils/ApplicationTracker;->trackers:Ljava/util/HashSet;

    return-object v0
.end method

.method public static addTracker(Lcom/mob/tools/utils/ApplicationTracker$Tracker;)V
    .registers 2
    .param p0, "t"    # Lcom/mob/tools/utils/ApplicationTracker$Tracker;

    .prologue
    .line 172
    sget-object v0, Lcom/mob/tools/utils/ApplicationTracker;->trackers:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 173
    return-void
.end method

.method public static removeTracker(Lcom/mob/tools/utils/ApplicationTracker$Tracker;)V
    .registers 2
    .param p0, "t"    # Lcom/mob/tools/utils/ApplicationTracker$Tracker;

    .prologue
    .line 176
    sget-object v0, Lcom/mob/tools/utils/ApplicationTracker;->trackers:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 177
    return-void
.end method
