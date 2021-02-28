.class public Lcom/unity3d/splash/services/core/configuration/InitializeThread;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateRetry;,
        Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateNetworkError;,
        Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateError;,
        Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateComplete;,
        Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateCreate;,
        Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateLoadWeb;,
        Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateLoadCache;,
        Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateConfig;,
        Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateInitModules;,
        Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateForceReset;,
        Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateReset;,
        Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeState;
    }
.end annotation


# static fields
.field private static _thread:Lcom/unity3d/splash/services/core/configuration/InitializeThread;


# instance fields
.field private _state:Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeState;

.field private _stopThread:Z


# direct methods
.method private constructor <init>(Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeState;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/splash/services/core/configuration/InitializeThread;->_stopThread:Z

    iput-object p1, p0, Lcom/unity3d/splash/services/core/configuration/InitializeThread;->_state:Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeState;

    return-void
.end method

.method public static declared-synchronized initialize(Lcom/unity3d/splash/services/core/configuration/Configuration;)V
    .registers 4

    const-class v1, Lcom/unity3d/splash/services/core/configuration/InitializeThread;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/unity3d/splash/services/core/configuration/InitializeThread;->_thread:Lcom/unity3d/splash/services/core/configuration/InitializeThread;

    if-nez v0, :cond_1d

    new-instance v0, Lcom/unity3d/splash/services/core/configuration/InitializeThread;

    new-instance v2, Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateReset;

    invoke-direct {v2, p0}, Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateReset;-><init>(Lcom/unity3d/splash/services/core/configuration/Configuration;)V

    invoke-direct {v0, v2}, Lcom/unity3d/splash/services/core/configuration/InitializeThread;-><init>(Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeState;)V

    sput-object v0, Lcom/unity3d/splash/services/core/configuration/InitializeThread;->_thread:Lcom/unity3d/splash/services/core/configuration/InitializeThread;

    const-string v2, "UnityAdsInitializeThread"

    invoke-virtual {v0, v2}, Lcom/unity3d/splash/services/core/configuration/InitializeThread;->setName(Ljava/lang/String;)V

    sget-object v0, Lcom/unity3d/splash/services/core/configuration/InitializeThread;->_thread:Lcom/unity3d/splash/services/core/configuration/InitializeThread;

    invoke-virtual {v0}, Lcom/unity3d/splash/services/core/configuration/InitializeThread;->start()V
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1f

    :cond_1d
    monitor-exit v1

    return-void

    :catchall_1f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized reset()V
    .registers 3

    const-class v1, Lcom/unity3d/splash/services/core/configuration/InitializeThread;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/unity3d/splash/services/core/configuration/InitializeThread;->_thread:Lcom/unity3d/splash/services/core/configuration/InitializeThread;

    if-nez v0, :cond_1d

    new-instance v0, Lcom/unity3d/splash/services/core/configuration/InitializeThread;

    new-instance v2, Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateForceReset;

    invoke-direct {v2}, Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateForceReset;-><init>()V

    invoke-direct {v0, v2}, Lcom/unity3d/splash/services/core/configuration/InitializeThread;-><init>(Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeState;)V

    sput-object v0, Lcom/unity3d/splash/services/core/configuration/InitializeThread;->_thread:Lcom/unity3d/splash/services/core/configuration/InitializeThread;

    const-string v2, "UnityAdsResetThread"

    invoke-virtual {v0, v2}, Lcom/unity3d/splash/services/core/configuration/InitializeThread;->setName(Ljava/lang/String;)V

    sget-object v0, Lcom/unity3d/splash/services/core/configuration/InitializeThread;->_thread:Lcom/unity3d/splash/services/core/configuration/InitializeThread;

    invoke-virtual {v0}, Lcom/unity3d/splash/services/core/configuration/InitializeThread;->start()V
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1f

    :cond_1d
    monitor-exit v1

    return-void

    :catchall_1f
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public quit()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unity3d/splash/services/core/configuration/InitializeThread;->_stopThread:Z

    return-void
.end method

.method public run()V
    .registers 2

    :goto_0
    iget-object v0, p0, Lcom/unity3d/splash/services/core/configuration/InitializeThread;->_state:Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeState;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/unity3d/splash/services/core/configuration/InitializeThread;->_state:Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeState;

    instance-of v0, v0, Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateComplete;

    if-nez v0, :cond_17

    iget-boolean v0, p0, Lcom/unity3d/splash/services/core/configuration/InitializeThread;->_stopThread:Z

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/unity3d/splash/services/core/configuration/InitializeThread;->_state:Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeState;

    invoke-virtual {v0}, Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeState;->execute()Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeState;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/splash/services/core/configuration/InitializeThread;->_state:Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeState;

    goto :goto_0

    :cond_17
    const/4 v0, 0x0

    sput-object v0, Lcom/unity3d/splash/services/core/configuration/InitializeThread;->_thread:Lcom/unity3d/splash/services/core/configuration/InitializeThread;

    return-void
.end method
