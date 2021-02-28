.class public Lcom/lohanry/android/framework/action/BaseAction;
.super Ljava/lang/Object;
.source "BaseAction.java"


# instance fields
.field protected TAG:Ljava/lang/String;

.field private mActionContext:Lcom/lohanry/android/framework/context/ActionContext;

.field private mBaseActionResultCallBack:Lcom/lohanry/android/framework/action/callback/BaseActionResultCallBack;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lohanry/android/framework/action/BaseAction;->TAG:Ljava/lang/String;

    .line 20
    new-instance v0, Lcom/lohanry/android/framework/context/ActionContext;

    invoke-direct {v0}, Lcom/lohanry/android/framework/context/ActionContext;-><init>()V

    iput-object v0, p0, Lcom/lohanry/android/framework/action/BaseAction;->mActionContext:Lcom/lohanry/android/framework/context/ActionContext;

    .line 23
    iget-object v0, p0, Lcom/lohanry/android/framework/action/BaseAction;->mActionContext:Lcom/lohanry/android/framework/context/ActionContext;

    invoke-virtual {v0, p0}, Lcom/lohanry/android/framework/context/ActionContext;->injectActionSelf(Lcom/lohanry/android/framework/action/BaseAction;)V

    .line 24
    return-void
.end method

.method static synthetic access$000(Lcom/lohanry/android/framework/action/BaseAction;)Lcom/lohanry/android/framework/action/callback/BaseActionResultCallBack;
    .registers 2
    .param p0, "x0"    # Lcom/lohanry/android/framework/action/BaseAction;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/lohanry/android/framework/action/BaseAction;->mBaseActionResultCallBack:Lcom/lohanry/android/framework/action/callback/BaseActionResultCallBack;

    return-object v0
.end method

.method private getHandler()Landroid/os/Handler;
    .registers 4

    .prologue
    .line 125
    iget-object v0, p0, Lcom/lohanry/android/framework/action/BaseAction;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_17

    .line 126
    const-class v1, Lcom/lohanry/android/framework/action/BaseAction;

    monitor-enter v1

    .line 127
    :try_start_7
    iget-object v0, p0, Lcom/lohanry/android/framework/action/BaseAction;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_16

    .line 128
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/lohanry/android/framework/action/BaseAction;->mHandler:Landroid/os/Handler;

    .line 130
    :cond_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_1a

    .line 132
    :cond_17
    iget-object v0, p0, Lcom/lohanry/android/framework/action/BaseAction;->mHandler:Landroid/os/Handler;

    return-object v0

    .line 130
    :catchall_1a
    move-exception v0

    :try_start_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v0
.end method


# virtual methods
.method public onBegin()V
    .registers 3

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/lohanry/android/framework/action/BaseAction;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/lohanry/android/framework/action/BaseAction$1;

    invoke-direct {v1, p0}, Lcom/lohanry/android/framework/action/BaseAction$1;-><init>(Lcom/lohanry/android/framework/action/BaseAction;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 47
    return-void
.end method

.method public onCancel()V
    .registers 3

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/lohanry/android/framework/action/BaseAction;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/lohanry/android/framework/action/BaseAction$3;

    invoke-direct {v1, p0}, Lcom/lohanry/android/framework/action/BaseAction$3;-><init>(Lcom/lohanry/android/framework/action/BaseAction;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 80
    return-void
.end method

.method public onError()V
    .registers 3

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/lohanry/android/framework/action/BaseAction;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/lohanry/android/framework/action/BaseAction$4;

    invoke-direct {v1, p0}, Lcom/lohanry/android/framework/action/BaseAction$4;-><init>(Lcom/lohanry/android/framework/action/BaseAction;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 97
    return-void
.end method

.method public onFinish()V
    .registers 3

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/lohanry/android/framework/action/BaseAction;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/lohanry/android/framework/action/BaseAction$5;

    invoke-direct {v1, p0}, Lcom/lohanry/android/framework/action/BaseAction$5;-><init>(Lcom/lohanry/android/framework/action/BaseAction;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 111
    return-void
.end method

.method public onSuccess()V
    .registers 3

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/lohanry/android/framework/action/BaseAction;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/lohanry/android/framework/action/BaseAction$2;

    invoke-direct {v1, p0}, Lcom/lohanry/android/framework/action/BaseAction$2;-><init>(Lcom/lohanry/android/framework/action/BaseAction;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 64
    return-void
.end method

.method public release()V
    .registers 2

    .prologue
    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lohanry/android/framework/action/BaseAction;->mBaseActionResultCallBack:Lcom/lohanry/android/framework/action/callback/BaseActionResultCallBack;

    .line 118
    return-void
.end method

.method public setBaseActionResultCallBack(Lcom/lohanry/android/framework/action/callback/BaseActionResultCallBack;)V
    .registers 2
    .param p1, "listener"    # Lcom/lohanry/android/framework/action/callback/BaseActionResultCallBack;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/lohanry/android/framework/action/BaseAction;->mBaseActionResultCallBack:Lcom/lohanry/android/framework/action/callback/BaseActionResultCallBack;

    .line 33
    return-void
.end method

.method setHandler(Landroid/os/Handler;)V
    .registers 2
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/lohanry/android/framework/action/BaseAction;->mHandler:Landroid/os/Handler;

    .line 122
    return-void
.end method
