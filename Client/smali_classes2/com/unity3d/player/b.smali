.class Lcom/unity3d/player/b;
.super Ljava/lang/Object;


# instance fields
.field protected a:Lcom/unity3d/player/o;

.field protected b:Lcom/unity3d/player/d;

.field protected c:Landroid/content/Context;

.field protected d:Ljava/lang/String;

.field protected e:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/unity3d/player/d;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/unity3d/player/b;->a:Lcom/unity3d/player/o;

    iput-object v0, p0, Lcom/unity3d/player/b;->b:Lcom/unity3d/player/d;

    iput-object v0, p0, Lcom/unity3d/player/b;->c:Landroid/content/Context;

    iput-object v0, p0, Lcom/unity3d/player/b;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unity3d/player/b;->e:Ljava/lang/String;

    iput-object p1, p0, Lcom/unity3d/player/b;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/unity3d/player/b;->b:Lcom/unity3d/player/d;

    return-void
.end method


# virtual methods
.method protected reportError(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/unity3d/player/b;->b:Lcom/unity3d/player/d;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/unity3d/player/b;->b:Lcom/unity3d/player/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/unity3d/player/b;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Error ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/unity3d/player/b;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/unity3d/player/d;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2a
    return-void

    :cond_2b
    const/4 v0, 0x6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/unity3d/player/b;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Error ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/unity3d/player/b;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unity3d/player/e;->Log(ILjava/lang/String;)V

    goto :goto_2a
.end method

.method protected runOnUiThread(Ljava/lang/Runnable;)V
    .registers 5

    iget-object v0, p0, Lcom/unity3d/player/b;->c:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/unity3d/player/b;->c:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_d
    return-void

    :cond_e
    const/4 v0, 0x5

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not running "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/unity3d/player/b;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from an Activity; Ignoring execution request..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unity3d/player/e;->Log(ILjava/lang/String;)V

    goto :goto_d
.end method

.method protected runOnUiThreadWithSync(Ljava/lang/Runnable;)Z
    .registers 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    if-ne v2, v3, :cond_14

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_13
    return v1

    :cond_14
    new-instance v2, Ljava/util/concurrent/Semaphore;

    invoke-direct {v2, v0}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    new-instance v3, Lcom/unity3d/player/b$1;

    invoke-direct {v3, p0, p1, v2}, Lcom/unity3d/player/b$1;-><init>(Lcom/unity3d/player/b;Ljava/lang/Runnable;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {p0, v3}, Lcom/unity3d/player/b;->runOnUiThread(Ljava/lang/Runnable;)V

    const-wide/16 v4, 0x4

    :try_start_23
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_4a

    const-string v1, "Timeout waiting for vr state change!"

    invoke-virtual {p0, v1}, Lcom/unity3d/player/b;->reportError(Ljava/lang/String;)V
    :try_end_30
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_30} :catch_32

    :goto_30
    move v1, v0

    goto :goto_13

    :catch_32
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Interrupted while trying to acquire sync lock. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/unity3d/player/b;->reportError(Ljava/lang/String;)V

    goto :goto_30

    :cond_4a
    move v0, v1

    goto :goto_30
.end method
