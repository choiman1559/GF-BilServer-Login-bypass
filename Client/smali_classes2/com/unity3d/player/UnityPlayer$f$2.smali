.class final Lcom/unity3d/player/UnityPlayer$f$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/UnityPlayer$f;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unity3d/player/UnityPlayer$f;


# direct methods
.method constructor <init>(Lcom/unity3d/player/UnityPlayer$f;)V
    .registers 2

    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer$f$2;->a:Lcom/unity3d/player/UnityPlayer$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final queueIdle()Z
    .registers 5

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$f$2;->a:Lcom/unity3d/player/UnityPlayer$f;

    iget-object v0, v0, Lcom/unity3d/player/UnityPlayer$f;->h:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->executeGLThreadJobs()V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$f$2;->a:Lcom/unity3d/player/UnityPlayer$f;

    iget-boolean v0, v0, Lcom/unity3d/player/UnityPlayer$f;->b:Z

    if-nez v0, :cond_f

    :cond_e
    :goto_e
    return v3

    :cond_f
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$f$2;->a:Lcom/unity3d/player/UnityPlayer$f;

    iget-boolean v0, v0, Lcom/unity3d/player/UnityPlayer$f;->c:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$f$2;->a:Lcom/unity3d/player/UnityPlayer$f;

    iget v0, v0, Lcom/unity3d/player/UnityPlayer$f;->f:I

    if-ltz v0, :cond_3a

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$f$2;->a:Lcom/unity3d/player/UnityPlayer$f;

    iget v0, v0, Lcom/unity3d/player/UnityPlayer$f;->f:I

    if-nez v0, :cond_32

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$f$2;->a:Lcom/unity3d/player/UnityPlayer$f;

    iget-object v0, v0, Lcom/unity3d/player/UnityPlayer$f;->h:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v0}, Lcom/unity3d/player/UnityPlayer;->a(Lcom/unity3d/player/UnityPlayer;)Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$f$2;->a:Lcom/unity3d/player/UnityPlayer$f;

    iget-object v0, v0, Lcom/unity3d/player/UnityPlayer$f;->h:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v0}, Lcom/unity3d/player/UnityPlayer;->b(Lcom/unity3d/player/UnityPlayer;)V

    :cond_32
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$f$2;->a:Lcom/unity3d/player/UnityPlayer$f;

    iget v1, v0, Lcom/unity3d/player/UnityPlayer$f;->f:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/unity3d/player/UnityPlayer$f;->f:I

    :cond_3a
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$f$2;->a:Lcom/unity3d/player/UnityPlayer$f;

    iget v0, v0, Lcom/unity3d/player/UnityPlayer$f;->f:I

    if-nez v0, :cond_4f

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$f$2;->a:Lcom/unity3d/player/UnityPlayer$f;

    iget-object v0, v0, Lcom/unity3d/player/UnityPlayer$f;->h:Lcom/unity3d/player/UnityPlayer;

    iget-boolean v0, v0, Lcom/unity3d/player/UnityPlayer;->shouldShowLaunchScreenAds:Z

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$f$2;->a:Lcom/unity3d/player/UnityPlayer$f;

    iget-object v0, v0, Lcom/unity3d/player/UnityPlayer$f;->h:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v0}, Lcom/unity3d/player/UnityPlayer;->c(Lcom/unity3d/player/UnityPlayer;)V

    :cond_4f
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$f$2;->a:Lcom/unity3d/player/UnityPlayer$f;

    iget-boolean v0, v0, Lcom/unity3d/player/UnityPlayer$f;->e:Z

    if-eqz v0, :cond_70

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$f$2;->a:Lcom/unity3d/player/UnityPlayer$f;

    iget v0, v0, Lcom/unity3d/player/UnityPlayer$f;->g:I

    if-ltz v0, :cond_70

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$f$2;->a:Lcom/unity3d/player/UnityPlayer$f;

    iget v0, v0, Lcom/unity3d/player/UnityPlayer$f;->g:I

    if-nez v0, :cond_68

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$f$2;->a:Lcom/unity3d/player/UnityPlayer$f;

    iget-object v0, v0, Lcom/unity3d/player/UnityPlayer$f;->h:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v0}, Lcom/unity3d/player/UnityPlayer;->d(Lcom/unity3d/player/UnityPlayer;)V

    :cond_68
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$f$2;->a:Lcom/unity3d/player/UnityPlayer$f;

    iget v1, v0, Lcom/unity3d/player/UnityPlayer$f;->g:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/unity3d/player/UnityPlayer$f;->g:I

    :cond_70
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$f$2;->a:Lcom/unity3d/player/UnityPlayer$f;

    iget-object v0, v0, Lcom/unity3d/player/UnityPlayer$f;->h:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_8b

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$f$2;->a:Lcom/unity3d/player/UnityPlayer$f;

    iget-object v0, v0, Lcom/unity3d/player/UnityPlayer$f;->h:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v0}, Lcom/unity3d/player/UnityPlayer;->e(Lcom/unity3d/player/UnityPlayer;)Z

    move-result v0

    if-nez v0, :cond_8b

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$f$2;->a:Lcom/unity3d/player/UnityPlayer$f;

    iget-object v0, v0, Lcom/unity3d/player/UnityPlayer$f;->h:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v0}, Lcom/unity3d/player/UnityPlayer;->f(Lcom/unity3d/player/UnityPlayer;)V

    :cond_8b
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$f$2;->a:Lcom/unity3d/player/UnityPlayer$f;

    iget-object v0, v0, Lcom/unity3d/player/UnityPlayer$f;->a:Landroid/os/Handler;

    const/16 v1, 0x8dd

    sget-object v2, Lcom/unity3d/player/UnityPlayer$e;->h:Lcom/unity3d/player/UnityPlayer$e;

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_e
.end method
