.class final Lcom/unity3d/player/UnityPlayer$f;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/player/UnityPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field a:Landroid/os/Handler;

.field b:Z

.field c:Z

.field d:I

.field e:Z

.field f:I

.field g:I

.field final synthetic h:Lcom/unity3d/player/UnityPlayer;


# direct methods
.method private constructor <init>(Lcom/unity3d/player/UnityPlayer;)V
    .registers 5

    const/4 v2, 0x5

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer$f;->h:Lcom/unity3d/player/UnityPlayer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-boolean v1, p0, Lcom/unity3d/player/UnityPlayer$f;->b:Z

    iput-boolean v1, p0, Lcom/unity3d/player/UnityPlayer$f;->c:Z

    sget v0, Lcom/unity3d/player/UnityPlayer$b;->b:I

    iput v0, p0, Lcom/unity3d/player/UnityPlayer$f;->d:I

    iput-boolean v1, p0, Lcom/unity3d/player/UnityPlayer$f;->e:Z

    iput v2, p0, Lcom/unity3d/player/UnityPlayer$f;->f:I

    iput v2, p0, Lcom/unity3d/player/UnityPlayer$f;->g:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/unity3d/player/UnityPlayer;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/unity3d/player/UnityPlayer$f;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    return-void
.end method

.method private a(Lcom/unity3d/player/UnityPlayer$e;)V
    .registers 4

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$f;->a:Landroid/os/Handler;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$f;->a:Landroid/os/Handler;

    const/16 v1, 0x8dd

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_f
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    sget-object v0, Lcom/unity3d/player/UnityPlayer$e;->c:Lcom/unity3d/player/UnityPlayer$e;

    invoke-direct {p0, v0}, Lcom/unity3d/player/UnityPlayer$f;->a(Lcom/unity3d/player/UnityPlayer$e;)V

    return-void
.end method

.method public final a(Ljava/lang/Runnable;)V
    .registers 3

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$f;->a:Landroid/os/Handler;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    sget-object v0, Lcom/unity3d/player/UnityPlayer$e;->a:Lcom/unity3d/player/UnityPlayer$e;

    invoke-direct {p0, v0}, Lcom/unity3d/player/UnityPlayer$f;->a(Lcom/unity3d/player/UnityPlayer$e;)V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$f;->a:Landroid/os/Handler;

    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_4
.end method

.method public final b()V
    .registers 2

    sget-object v0, Lcom/unity3d/player/UnityPlayer$e;->b:Lcom/unity3d/player/UnityPlayer$e;

    invoke-direct {p0, v0}, Lcom/unity3d/player/UnityPlayer$f;->a(Lcom/unity3d/player/UnityPlayer$e;)V

    return-void
.end method

.method public final b(Ljava/lang/Runnable;)V
    .registers 3

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$f;->a:Landroid/os/Handler;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    sget-object v0, Lcom/unity3d/player/UnityPlayer$e;->d:Lcom/unity3d/player/UnityPlayer$e;

    invoke-direct {p0, v0}, Lcom/unity3d/player/UnityPlayer$f;->a(Lcom/unity3d/player/UnityPlayer$e;)V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$f;->a:Landroid/os/Handler;

    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_4
.end method

.method public final c()V
    .registers 2

    sget-object v0, Lcom/unity3d/player/UnityPlayer$e;->g:Lcom/unity3d/player/UnityPlayer$e;

    invoke-direct {p0, v0}, Lcom/unity3d/player/UnityPlayer$f;->a(Lcom/unity3d/player/UnityPlayer$e;)V

    return-void
.end method

.method public final c(Ljava/lang/Runnable;)V
    .registers 3

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$f;->a:Landroid/os/Handler;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$f;->a:Landroid/os/Handler;

    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    sget-object v0, Lcom/unity3d/player/UnityPlayer$e;->e:Lcom/unity3d/player/UnityPlayer$e;

    invoke-direct {p0, v0}, Lcom/unity3d/player/UnityPlayer$f;->a(Lcom/unity3d/player/UnityPlayer$e;)V

    goto :goto_4
.end method

.method public final d()V
    .registers 2

    sget-object v0, Lcom/unity3d/player/UnityPlayer$e;->f:Lcom/unity3d/player/UnityPlayer$e;

    invoke-direct {p0, v0}, Lcom/unity3d/player/UnityPlayer$f;->a(Lcom/unity3d/player/UnityPlayer$e;)V

    return-void
.end method

.method public final e()V
    .registers 2

    sget-object v0, Lcom/unity3d/player/UnityPlayer$e;->i:Lcom/unity3d/player/UnityPlayer$e;

    invoke-direct {p0, v0}, Lcom/unity3d/player/UnityPlayer$f;->a(Lcom/unity3d/player/UnityPlayer$e;)V

    return-void
.end method

.method public final run()V
    .registers 3

    const-string v0, "UnityMain"

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityPlayer$f;->setName(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/unity3d/player/UnityPlayer$f$1;

    invoke-direct {v1, p0}, Lcom/unity3d/player/UnityPlayer$f$1;-><init>(Lcom/unity3d/player/UnityPlayer$f;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer$f;->a:Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    new-instance v1, Lcom/unity3d/player/UnityPlayer$f$2;

    invoke-direct {v1, p0}, Lcom/unity3d/player/UnityPlayer$f$2;-><init>(Lcom/unity3d/player/UnityPlayer$f;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
