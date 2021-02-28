.class Lcom/mob/tools/utils/DeviceHelper$GSConnection;
.super Ljava/lang/Object;
.source "DeviceHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/tools/utils/DeviceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GSConnection"
.end annotation


# instance fields
.field got:Z

.field private final iBinders:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/mob/tools/utils/DeviceHelper;


# direct methods
.method private constructor <init>(Lcom/mob/tools/utils/DeviceHelper;)V
    .registers 3

    .prologue
    .line 2244
    iput-object p1, p0, Lcom/mob/tools/utils/DeviceHelper$GSConnection;->this$0:Lcom/mob/tools/utils/DeviceHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2245
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mob/tools/utils/DeviceHelper$GSConnection;->got:Z

    .line 2246
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/mob/tools/utils/DeviceHelper$GSConnection;->iBinders:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method synthetic constructor <init>(Lcom/mob/tools/utils/DeviceHelper;Lcom/mob/tools/utils/DeviceHelper$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/mob/tools/utils/DeviceHelper;
    .param p2, "x1"    # Lcom/mob/tools/utils/DeviceHelper$1;

    .prologue
    .line 2244
    invoke-direct {p0, p1}, Lcom/mob/tools/utils/DeviceHelper$GSConnection;-><init>(Lcom/mob/tools/utils/DeviceHelper;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 2250
    :try_start_0
    iget-object v1, p0, Lcom/mob/tools/utils/DeviceHelper$GSConnection;->iBinders:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, p2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_6

    .line 2254
    :goto_5
    return-void

    .line 2251
    :catch_6
    move-exception v0

    .line 2252
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 2258
    return-void
.end method

.method public takeBinder()Landroid/os/IBinder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 2261
    iget-boolean v0, p0, Lcom/mob/tools/utils/DeviceHelper$GSConnection;->got:Z

    if-eqz v0, :cond_a

    .line 2262
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 2265
    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mob/tools/utils/DeviceHelper$GSConnection;->got:Z

    .line 2268
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper$GSConnection;->iBinders:Ljava/util/concurrent/BlockingQueue;

    const-wide/16 v2, 0x5dc

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    return-object v0
.end method
