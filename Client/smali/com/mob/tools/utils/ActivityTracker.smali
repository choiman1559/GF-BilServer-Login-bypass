.class public Lcom/mob/tools/utils/ActivityTracker;
.super Ljava/lang/Object;
.source "ActivityTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/tools/utils/ActivityTracker$Tracker;
    }
.end annotation


# static fields
.field private static instance:Lcom/mob/tools/utils/ActivityTracker;


# instance fields
.field private trackers:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/mob/tools/utils/ActivityTracker$Tracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mob/tools/utils/ActivityTracker;->trackers:Ljava/util/HashSet;

    .line 20
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_14

    .line 21
    invoke-direct {p0, p1}, Lcom/mob/tools/utils/ActivityTracker;->initLevel14(Landroid/content/Context;)V

    .line 25
    :goto_13
    return-void

    .line 23
    :cond_14
    invoke-direct {p0, p1}, Lcom/mob/tools/utils/ActivityTracker;->init(Landroid/content/Context;)V

    goto :goto_13
.end method

.method static synthetic access$000(Lcom/mob/tools/utils/ActivityTracker;Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3
    .param p0, "x0"    # Lcom/mob/tools/utils/ActivityTracker;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Landroid/os/Bundle;

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/mob/tools/utils/ActivityTracker;->onCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mob/tools/utils/ActivityTracker;Landroid/app/Activity;)V
    .registers 2
    .param p0, "x0"    # Lcom/mob/tools/utils/ActivityTracker;
    .param p1, "x1"    # Landroid/app/Activity;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/mob/tools/utils/ActivityTracker;->onStarted(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$200(Lcom/mob/tools/utils/ActivityTracker;Landroid/app/Activity;)V
    .registers 2
    .param p0, "x0"    # Lcom/mob/tools/utils/ActivityTracker;
    .param p1, "x1"    # Landroid/app/Activity;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/mob/tools/utils/ActivityTracker;->onResumed(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$300(Lcom/mob/tools/utils/ActivityTracker;Landroid/app/Activity;)V
    .registers 2
    .param p0, "x0"    # Lcom/mob/tools/utils/ActivityTracker;
    .param p1, "x1"    # Landroid/app/Activity;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/mob/tools/utils/ActivityTracker;->onPaused(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$400(Lcom/mob/tools/utils/ActivityTracker;Landroid/app/Activity;)V
    .registers 2
    .param p0, "x0"    # Lcom/mob/tools/utils/ActivityTracker;
    .param p1, "x1"    # Landroid/app/Activity;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/mob/tools/utils/ActivityTracker;->onStopped(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$500(Lcom/mob/tools/utils/ActivityTracker;Landroid/app/Activity;)V
    .registers 2
    .param p0, "x0"    # Lcom/mob/tools/utils/ActivityTracker;
    .param p1, "x1"    # Landroid/app/Activity;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/mob/tools/utils/ActivityTracker;->onDestroyed(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$600(Lcom/mob/tools/utils/ActivityTracker;Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3
    .param p0, "x0"    # Lcom/mob/tools/utils/ActivityTracker;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Landroid/os/Bundle;

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/mob/tools/utils/ActivityTracker;->onSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/ActivityTracker;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    const-class v1, Lcom/mob/tools/utils/ActivityTracker;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/mob/tools/utils/ActivityTracker;->instance:Lcom/mob/tools/utils/ActivityTracker;

    if-nez v0, :cond_e

    .line 29
    new-instance v0, Lcom/mob/tools/utils/ActivityTracker;

    invoke-direct {v0, p0}, Lcom/mob/tools/utils/ActivityTracker;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mob/tools/utils/ActivityTracker;->instance:Lcom/mob/tools/utils/ActivityTracker;

    .line 31
    :cond_e
    sget-object v0, Lcom/mob/tools/utils/ActivityTracker;->instance:Lcom/mob/tools/utils/ActivityTracker;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 28
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private init(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    :try_start_0
    invoke-static {p1}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mob/tools/utils/DeviceHelper;->currentActivityThread()Ljava/lang/Object;

    move-result-object v1

    .line 72
    .local v1, "thread":Ljava/lang/Object;
    const-string v2, "mInstrumentation"

    new-instance v3, Lcom/mob/tools/utils/ActivityTracker$2;

    invoke-direct {v3, p0}, Lcom/mob/tools/utils/ActivityTracker$2;-><init>(Lcom/mob/tools/utils/ActivityTracker;)V

    invoke-static {v1, v2, v3}, Lcom/mob/tools/utils/ReflectHelper;->setInstanceField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_12} :catch_13

    .line 111
    .end local v1    # "thread":Ljava/lang/Object;
    :goto_12
    return-void

    .line 108
    :catch_13
    move-exception v0

    .line 109
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_12
.end method

.method private initLevel14(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    new-instance v1, Lcom/mob/tools/utils/ActivityTracker$1;

    invoke-direct {v1, p0}, Lcom/mob/tools/utils/ActivityTracker$1;-><init>(Lcom/mob/tools/utils/ActivityTracker;)V

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 66
    return-void
.end method

.method private onCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 122
    iget-object v1, p0, Lcom/mob/tools/utils/ActivityTracker;->trackers:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mob/tools/utils/ActivityTracker$Tracker;

    .line 123
    .local v0, "t":Lcom/mob/tools/utils/ActivityTracker$Tracker;
    if-eqz v0, :cond_6

    .line 124
    invoke-interface {v0, p1, p2}, Lcom/mob/tools/utils/ActivityTracker$Tracker;->onCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_6

    .line 127
    .end local v0    # "t":Lcom/mob/tools/utils/ActivityTracker$Tracker;
    :cond_18
    return-void
.end method

.method private onDestroyed(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 162
    iget-object v1, p0, Lcom/mob/tools/utils/ActivityTracker;->trackers:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mob/tools/utils/ActivityTracker$Tracker;

    .line 163
    .local v0, "t":Lcom/mob/tools/utils/ActivityTracker$Tracker;
    if-eqz v0, :cond_6

    .line 164
    invoke-interface {v0, p1}, Lcom/mob/tools/utils/ActivityTracker$Tracker;->onDestroyed(Landroid/app/Activity;)V

    goto :goto_6

    .line 167
    .end local v0    # "t":Lcom/mob/tools/utils/ActivityTracker$Tracker;
    :cond_18
    return-void
.end method

.method private onPaused(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 146
    iget-object v1, p0, Lcom/mob/tools/utils/ActivityTracker;->trackers:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mob/tools/utils/ActivityTracker$Tracker;

    .line 147
    .local v0, "t":Lcom/mob/tools/utils/ActivityTracker$Tracker;
    if-eqz v0, :cond_6

    .line 148
    invoke-interface {v0, p1}, Lcom/mob/tools/utils/ActivityTracker$Tracker;->onPaused(Landroid/app/Activity;)V

    goto :goto_6

    .line 151
    .end local v0    # "t":Lcom/mob/tools/utils/ActivityTracker$Tracker;
    :cond_18
    return-void
.end method

.method private onResumed(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 138
    iget-object v1, p0, Lcom/mob/tools/utils/ActivityTracker;->trackers:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mob/tools/utils/ActivityTracker$Tracker;

    .line 139
    .local v0, "t":Lcom/mob/tools/utils/ActivityTracker$Tracker;
    if-eqz v0, :cond_6

    .line 140
    invoke-interface {v0, p1}, Lcom/mob/tools/utils/ActivityTracker$Tracker;->onResumed(Landroid/app/Activity;)V

    goto :goto_6

    .line 143
    .end local v0    # "t":Lcom/mob/tools/utils/ActivityTracker$Tracker;
    :cond_18
    return-void
.end method

.method private onSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 170
    iget-object v1, p0, Lcom/mob/tools/utils/ActivityTracker;->trackers:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mob/tools/utils/ActivityTracker$Tracker;

    .line 171
    .local v0, "t":Lcom/mob/tools/utils/ActivityTracker$Tracker;
    if-eqz v0, :cond_6

    .line 172
    invoke-interface {v0, p1, p2}, Lcom/mob/tools/utils/ActivityTracker$Tracker;->onSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_6

    .line 175
    .end local v0    # "t":Lcom/mob/tools/utils/ActivityTracker$Tracker;
    :cond_18
    return-void
.end method

.method private onStarted(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 130
    iget-object v1, p0, Lcom/mob/tools/utils/ActivityTracker;->trackers:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mob/tools/utils/ActivityTracker$Tracker;

    .line 131
    .local v0, "t":Lcom/mob/tools/utils/ActivityTracker$Tracker;
    if-eqz v0, :cond_6

    .line 132
    invoke-interface {v0, p1}, Lcom/mob/tools/utils/ActivityTracker$Tracker;->onStarted(Landroid/app/Activity;)V

    goto :goto_6

    .line 135
    .end local v0    # "t":Lcom/mob/tools/utils/ActivityTracker$Tracker;
    :cond_18
    return-void
.end method

.method private onStopped(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 154
    iget-object v1, p0, Lcom/mob/tools/utils/ActivityTracker;->trackers:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mob/tools/utils/ActivityTracker$Tracker;

    .line 155
    .local v0, "t":Lcom/mob/tools/utils/ActivityTracker$Tracker;
    if-eqz v0, :cond_6

    .line 156
    invoke-interface {v0, p1}, Lcom/mob/tools/utils/ActivityTracker$Tracker;->onStopped(Landroid/app/Activity;)V

    goto :goto_6

    .line 159
    .end local v0    # "t":Lcom/mob/tools/utils/ActivityTracker$Tracker;
    :cond_18
    return-void
.end method


# virtual methods
.method public declared-synchronized addTracker(Lcom/mob/tools/utils/ActivityTracker$Tracker;)V
    .registers 3
    .param p1, "tracker"    # Lcom/mob/tools/utils/ActivityTracker$Tracker;

    .prologue
    .line 114
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/mob/tools/utils/ActivityTracker;->trackers:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 115
    monitor-exit p0

    return-void

    .line 114
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeTracker(Lcom/mob/tools/utils/ActivityTracker$Tracker;)V
    .registers 3
    .param p1, "tracker"    # Lcom/mob/tools/utils/ActivityTracker$Tracker;

    .prologue
    .line 118
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/mob/tools/utils/ActivityTracker;->trackers:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 119
    monitor-exit p0

    return-void

    .line 118
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method
