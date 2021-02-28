.class public final Lcom/mob/commons/eventrecoder/EventRecorder;
.super Ljava/lang/Object;
.source "EventRecorder.java"

# interfaces
.implements Lcom/mob/tools/proguard/PublicMemberKeeper;


# static fields
.field private static a:Ljava/io/File;

.field private static b:Ljava/io/FileOutputStream;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/io/File;
    .registers 1

    .prologue
    .line 19
    sget-object v0, Lcom/mob/commons/eventrecoder/EventRecorder;->a:Ljava/io/File;

    return-object v0
.end method

.method static synthetic a(Ljava/io/File;)Ljava/io/File;
    .registers 1

    .prologue
    .line 19
    sput-object p0, Lcom/mob/commons/eventrecoder/EventRecorder;->a:Ljava/io/File;

    return-object p0
.end method

.method static synthetic a(Ljava/io/FileOutputStream;)Ljava/io/FileOutputStream;
    .registers 1

    .prologue
    .line 19
    sput-object p0, Lcom/mob/commons/eventrecoder/EventRecorder;->b:Ljava/io/FileOutputStream;

    return-object p0
.end method

.method private static final a(Lcom/mob/commons/LockAction;)V
    .registers 4

    .prologue
    .line 47
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "comm/locks/.mrlock"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 48
    invoke-static {v0, p0}, Lcom/mob/commons/d;->a(Ljava/io/File;Lcom/mob/commons/LockAction;)V

    .line 49
    return-void
.end method

.method private static final a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 56
    new-instance v0, Lcom/mob/commons/eventrecoder/EventRecorder$2;

    invoke-direct {v0, p0}, Lcom/mob/commons/eventrecoder/EventRecorder$2;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/mob/commons/eventrecoder/EventRecorder;->a(Lcom/mob/commons/LockAction;)V

    .line 67
    return-void
.end method

.method public static final declared-synchronized addBegin(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 43
    const-class v1, Lcom/mob/commons/eventrecoder/EventRecorder;

    monitor-enter v1

    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " 0\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/commons/eventrecoder/EventRecorder;->a(Ljava/lang/String;)V
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_25

    .line 44
    monitor-exit v1

    return-void

    .line 43
    :catchall_25
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static final declared-synchronized addEnd(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 52
    const-class v1, Lcom/mob/commons/eventrecoder/EventRecorder;

    monitor-enter v1

    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " 1\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/commons/eventrecoder/EventRecorder;->a(Ljava/lang/String;)V
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_25

    .line 53
    monitor-exit v1

    return-void

    .line 52
    :catchall_25
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic b()Ljava/io/FileOutputStream;
    .registers 1

    .prologue
    .line 19
    sget-object v0, Lcom/mob/commons/eventrecoder/EventRecorder;->b:Ljava/io/FileOutputStream;

    return-object v0
.end method

.method public static final declared-synchronized checkRecord(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 70
    const-class v1, Lcom/mob/commons/eventrecoder/EventRecorder;

    monitor-enter v1

    :try_start_3
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 71
    new-instance v2, Lcom/mob/commons/eventrecoder/EventRecorder$3;

    invoke-direct {v2, p0, v0}, Lcom/mob/commons/eventrecoder/EventRecorder$3;-><init>(Ljava/lang/String;Ljava/util/LinkedList;)V

    invoke-static {v2}, Lcom/mob/commons/eventrecoder/EventRecorder;->a(Lcom/mob/commons/LockAction;)V

    .line 100
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_1f

    .line 101
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_21

    .line 103
    :goto_1d
    monitor-exit v1

    return-object v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1d

    .line 70
    :catchall_21
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static final declared-synchronized clear()V
    .registers 2

    .prologue
    .line 108
    const-class v1, Lcom/mob/commons/eventrecoder/EventRecorder;

    monitor-enter v1

    :try_start_3
    new-instance v0, Lcom/mob/commons/eventrecoder/EventRecorder$4;

    invoke-direct {v0}, Lcom/mob/commons/eventrecoder/EventRecorder$4;-><init>()V

    invoke-static {v0}, Lcom/mob/commons/eventrecoder/EventRecorder;->a(Lcom/mob/commons/LockAction;)V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    .line 123
    monitor-exit v1

    return-void

    .line 108
    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static final declared-synchronized prepare()V
    .registers 2

    .prologue
    .line 26
    const-class v1, Lcom/mob/commons/eventrecoder/EventRecorder;

    monitor-enter v1

    :try_start_3
    new-instance v0, Lcom/mob/commons/eventrecoder/EventRecorder$1;

    invoke-direct {v0}, Lcom/mob/commons/eventrecoder/EventRecorder$1;-><init>()V

    invoke-static {v0}, Lcom/mob/commons/eventrecoder/EventRecorder;->a(Lcom/mob/commons/LockAction;)V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    .line 40
    monitor-exit v1

    return-void

    .line 26
    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method
