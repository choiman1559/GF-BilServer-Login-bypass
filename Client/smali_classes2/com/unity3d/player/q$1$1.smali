.class final Lcom/unity3d/player/q$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unity3d/player/p$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/q$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unity3d/player/q$1;


# direct methods
.method constructor <init>(Lcom/unity3d/player/q$1;)V
    .registers 2

    iput-object p1, p0, Lcom/unity3d/player/q$1$1;->a:Lcom/unity3d/player/q$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 4

    iget-object v0, p0, Lcom/unity3d/player/q$1$1;->a:Lcom/unity3d/player/q$1;

    iget-object v0, v0, Lcom/unity3d/player/q$1;->h:Lcom/unity3d/player/q;

    invoke-static {v0}, Lcom/unity3d/player/q;->d(Lcom/unity3d/player/q;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-object v0, p0, Lcom/unity3d/player/q$1$1;->a:Lcom/unity3d/player/q$1;

    iget-object v0, v0, Lcom/unity3d/player/q$1;->h:Lcom/unity3d/player/q;

    invoke-static {v0, p1}, Lcom/unity3d/player/q;->a(Lcom/unity3d/player/q;I)I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2b

    iget-object v0, p0, Lcom/unity3d/player/q$1$1;->a:Lcom/unity3d/player/q$1;

    iget-object v0, v0, Lcom/unity3d/player/q$1;->h:Lcom/unity3d/player/q;

    invoke-static {v0}, Lcom/unity3d/player/q;->e(Lcom/unity3d/player/q;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/unity3d/player/q$1$1;->a:Lcom/unity3d/player/q$1;

    iget-object v0, v0, Lcom/unity3d/player/q$1;->h:Lcom/unity3d/player/q;

    new-instance v1, Lcom/unity3d/player/q$1$1$1;

    invoke-direct {v1, p0}, Lcom/unity3d/player/q$1$1$1;-><init>(Lcom/unity3d/player/q$1$1;)V

    invoke-virtual {v0, v1}, Lcom/unity3d/player/q;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2b
    if-eqz p1, :cond_38

    iget-object v0, p0, Lcom/unity3d/player/q$1$1;->a:Lcom/unity3d/player/q$1;

    iget-object v0, v0, Lcom/unity3d/player/q$1;->h:Lcom/unity3d/player/q;

    invoke-static {v0}, Lcom/unity3d/player/q;->b(Lcom/unity3d/player/q;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    :cond_38
    iget-object v0, p0, Lcom/unity3d/player/q$1$1;->a:Lcom/unity3d/player/q$1;

    iget-object v0, v0, Lcom/unity3d/player/q$1;->h:Lcom/unity3d/player/q;

    invoke-static {v0}, Lcom/unity3d/player/q;->d(Lcom/unity3d/player/q;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method
