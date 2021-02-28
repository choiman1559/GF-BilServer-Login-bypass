.class final Lcom/unity3d/player/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/b;->runOnUiThreadWithSync(Ljava/lang/Runnable;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Ljava/util/concurrent/Semaphore;

.field final synthetic c:Lcom/unity3d/player/b;


# direct methods
.method constructor <init>(Lcom/unity3d/player/b;Ljava/lang/Runnable;Ljava/util/concurrent/Semaphore;)V
    .registers 4

    iput-object p1, p0, Lcom/unity3d/player/b$1;->c:Lcom/unity3d/player/b;

    iput-object p2, p0, Lcom/unity3d/player/b$1;->a:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/unity3d/player/b$1;->b:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/unity3d/player/b$1;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_b
    .catchall {:try_start_0 .. :try_end_5} :catchall_2a

    iget-object v0, p0, Lcom/unity3d/player/b$1;->b:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    :goto_a
    return-void

    :catch_b
    move-exception v0

    :try_start_c
    iget-object v1, p0, Lcom/unity3d/player/b$1;->c:Lcom/unity3d/player/b;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception unloading Google VR on UI Thread. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/unity3d/player/b;->reportError(Ljava/lang/String;)V
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2a

    iget-object v0, p0, Lcom/unity3d/player/b$1;->b:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_a

    :catchall_2a
    move-exception v0

    iget-object v1, p0, Lcom/unity3d/player/b$1;->b:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    throw v0
.end method
