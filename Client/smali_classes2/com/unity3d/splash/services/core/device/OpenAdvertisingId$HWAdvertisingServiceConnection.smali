.class Lcom/unity3d/splash/services/core/device/OpenAdvertisingId$HWAdvertisingServiceConnection;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/splash/services/core/device/OpenAdvertisingId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HWAdvertisingServiceConnection"
.end annotation


# instance fields
.field private final _binderQueue:Ljava/util/concurrent/BlockingQueue;

.field _consumed:Z

.field final synthetic this$0:Lcom/unity3d/splash/services/core/device/OpenAdvertisingId;


# direct methods
.method private constructor <init>(Lcom/unity3d/splash/services/core/device/OpenAdvertisingId;)V
    .registers 3

    iput-object p1, p0, Lcom/unity3d/splash/services/core/device/OpenAdvertisingId$HWAdvertisingServiceConnection;->this$0:Lcom/unity3d/splash/services/core/device/OpenAdvertisingId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/splash/services/core/device/OpenAdvertisingId$HWAdvertisingServiceConnection;->_consumed:Z

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/unity3d/splash/services/core/device/OpenAdvertisingId$HWAdvertisingServiceConnection;->_binderQueue:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method synthetic constructor <init>(Lcom/unity3d/splash/services/core/device/OpenAdvertisingId;Lcom/unity3d/splash/services/core/device/OpenAdvertisingId$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/unity3d/splash/services/core/device/OpenAdvertisingId$HWAdvertisingServiceConnection;-><init>(Lcom/unity3d/splash/services/core/device/OpenAdvertisingId;)V

    return-void
.end method


# virtual methods
.method public getBinder()Landroid/os/IBinder;
    .registers 2

    iget-boolean v0, p0, Lcom/unity3d/splash/services/core/device/OpenAdvertisingId$HWAdvertisingServiceConnection;->_consumed:Z

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unity3d/splash/services/core/device/OpenAdvertisingId$HWAdvertisingServiceConnection;->_consumed:Z

    iget-object v0, p0, Lcom/unity3d/splash/services/core/device/OpenAdvertisingId$HWAdvertisingServiceConnection;->_binderQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/unity3d/splash/services/core/device/OpenAdvertisingId$HWAdvertisingServiceConnection;->_binderQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    const-string v0, "Couldn\'t put service to binder que"

    invoke-static {v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    goto :goto_5
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    return-void
.end method
