.class final Lcom/unity3d/player/q;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/player/q$a;
    }
.end annotation


# instance fields
.field private a:Lcom/unity3d/player/UnityPlayer;

.field private b:Landroid/content/Context;

.field private c:Lcom/unity3d/player/q$a;

.field private final d:Ljava/util/concurrent/Semaphore;

.field private final e:Ljava/util/concurrent/locks/Lock;

.field private f:Lcom/unity3d/player/p;

.field private g:I

.field private h:Z

.field private i:Z


# direct methods
.method constructor <init>(Lcom/unity3d/player/UnityPlayer;)V
    .registers 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/unity3d/player/q;->a:Lcom/unity3d/player/UnityPlayer;

    iput-object v2, p0, Lcom/unity3d/player/q;->b:Landroid/content/Context;

    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/unity3d/player/q;->d:Ljava/util/concurrent/Semaphore;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/unity3d/player/q;->e:Ljava/util/concurrent/locks/Lock;

    iput-object v2, p0, Lcom/unity3d/player/q;->f:Lcom/unity3d/player/p;

    const/4 v0, 0x2

    iput v0, p0, Lcom/unity3d/player/q;->g:I

    iput-boolean v1, p0, Lcom/unity3d/player/q;->h:Z

    iput-boolean v1, p0, Lcom/unity3d/player/q;->i:Z

    iput-object p1, p0, Lcom/unity3d/player/q;->a:Lcom/unity3d/player/UnityPlayer;

    return-void
.end method

.method static synthetic a(Lcom/unity3d/player/q;I)I
    .registers 2

    iput p1, p0, Lcom/unity3d/player/q;->g:I

    return p1
.end method

.method static synthetic a(Lcom/unity3d/player/q;)Lcom/unity3d/player/p;
    .registers 2

    iget-object v0, p0, Lcom/unity3d/player/q;->f:Lcom/unity3d/player/p;

    return-object v0
.end method

.method static synthetic a(Lcom/unity3d/player/q;Lcom/unity3d/player/p;)Lcom/unity3d/player/p;
    .registers 2

    iput-object p1, p0, Lcom/unity3d/player/q;->f:Lcom/unity3d/player/p;

    return-object p1
.end method

.method static synthetic b(Lcom/unity3d/player/q;)Ljava/util/concurrent/Semaphore;
    .registers 2

    iget-object v0, p0, Lcom/unity3d/player/q;->d:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic c(Lcom/unity3d/player/q;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/unity3d/player/q;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/unity3d/player/q;)Ljava/util/concurrent/locks/Lock;
    .registers 2

    iget-object v0, p0, Lcom/unity3d/player/q;->e:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method private d()V
    .registers 3

    iget-object v0, p0, Lcom/unity3d/player/q;->f:Lcom/unity3d/player/p;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/unity3d/player/q;->a:Lcom/unity3d/player/UnityPlayer;

    iget-object v1, p0, Lcom/unity3d/player/q;->f:Lcom/unity3d/player/p;

    invoke-virtual {v0, v1}, Lcom/unity3d/player/UnityPlayer;->removeViewFromPlayer(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/player/q;->i:Z

    iget-object v0, p0, Lcom/unity3d/player/q;->f:Lcom/unity3d/player/p;

    invoke-virtual {v0}, Lcom/unity3d/player/p;->destroyPlayer()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/player/q;->f:Lcom/unity3d/player/p;

    iget-object v0, p0, Lcom/unity3d/player/q;->c:Lcom/unity3d/player/q$a;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/unity3d/player/q;->c:Lcom/unity3d/player/q$a;

    invoke-interface {v0}, Lcom/unity3d/player/q$a;->a()V

    :cond_1f
    return-void
.end method

.method static synthetic e(Lcom/unity3d/player/q;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/unity3d/player/q;->i:Z

    return v0
.end method

.method static synthetic f(Lcom/unity3d/player/q;)V
    .registers 1

    invoke-direct {p0}, Lcom/unity3d/player/q;->d()V

    return-void
.end method

.method static synthetic g(Lcom/unity3d/player/q;)Lcom/unity3d/player/UnityPlayer;
    .registers 2

    iget-object v0, p0, Lcom/unity3d/player/q;->a:Lcom/unity3d/player/UnityPlayer;

    return-object v0
.end method

.method static synthetic h(Lcom/unity3d/player/q;)Z
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unity3d/player/q;->i:Z

    return v0
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/unity3d/player/q;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-object v0, p0, Lcom/unity3d/player/q;->f:Lcom/unity3d/player/p;

    if-eqz v0, :cond_12

    iget v0, p0, Lcom/unity3d/player/q;->g:I

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/unity3d/player/q;->f:Lcom/unity3d/player/p;

    invoke-virtual {v0}, Lcom/unity3d/player/p;->CancelOnPrepare()V

    :cond_12
    :goto_12
    iget-object v0, p0, Lcom/unity3d/player/q;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_18
    iget-boolean v0, p0, Lcom/unity3d/player/q;->i:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/unity3d/player/q;->f:Lcom/unity3d/player/p;

    invoke-virtual {v0}, Lcom/unity3d/player/p;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/unity3d/player/q;->h:Z

    iget-boolean v0, p0, Lcom/unity3d/player/q;->h:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/unity3d/player/q;->f:Lcom/unity3d/player/p;

    invoke-virtual {v0}, Lcom/unity3d/player/p;->pause()V

    goto :goto_12
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;IIIZJJLcom/unity3d/player/q$a;)Z
    .registers 27

    iget-object v2, p0, Lcom/unity3d/player/q;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/unity3d/player/q;->c:Lcom/unity3d/player/q$a;

    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/unity3d/player/q;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/unity3d/player/q;->d:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->drainPermits()I

    const/4 v2, 0x2

    iput v2, p0, Lcom/unity3d/player/q;->g:I

    new-instance v3, Lcom/unity3d/player/q$1;

    move-object v4, p0

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-wide/from16 v10, p7

    move-wide/from16 v12, p9

    invoke-direct/range {v3 .. v13}, Lcom/unity3d/player/q$1;-><init>(Lcom/unity3d/player/q;Ljava/lang/String;IIIZJJ)V

    invoke-virtual {p0, v3}, Lcom/unity3d/player/q;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v2, 0x0

    :try_start_2d
    iget-object v3, p0, Lcom/unity3d/player/q;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-object v3, p0, Lcom/unity3d/player/q;->d:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->acquire()V

    iget-object v3, p0, Lcom/unity3d/player/q;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget v2, p0, Lcom/unity3d/player/q;->g:I
    :try_end_3e
    .catch Ljava/lang/InterruptedException; {:try_start_2d .. :try_end_3e} :catch_6a

    const/4 v3, 0x2

    if-eq v2, v3, :cond_5f

    const/4 v2, 0x1

    :goto_42
    new-instance v3, Lcom/unity3d/player/q$2;

    invoke-direct {v3, p0}, Lcom/unity3d/player/q$2;-><init>(Lcom/unity3d/player/q;)V

    invoke-virtual {p0, v3}, Lcom/unity3d/player/q;->runOnUiThread(Ljava/lang/Runnable;)V

    if-eqz v2, :cond_61

    iget v3, p0, Lcom/unity3d/player/q;->g:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_61

    new-instance v3, Lcom/unity3d/player/q$3;

    invoke-direct {v3, p0}, Lcom/unity3d/player/q$3;-><init>(Lcom/unity3d/player/q;)V

    invoke-virtual {p0, v3}, Lcom/unity3d/player/q;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_59
    iget-object v3, p0, Lcom/unity3d/player/q;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v2

    :cond_5f
    const/4 v2, 0x0

    goto :goto_42

    :cond_61
    new-instance v3, Lcom/unity3d/player/q$4;

    invoke-direct {v3, p0}, Lcom/unity3d/player/q$4;-><init>(Lcom/unity3d/player/q;)V

    invoke-virtual {p0, v3}, Lcom/unity3d/player/q;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_59

    :catch_6a
    move-exception v3

    goto :goto_42
.end method

.method public final b()V
    .registers 2

    iget-object v0, p0, Lcom/unity3d/player/q;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-object v0, p0, Lcom/unity3d/player/q;->f:Lcom/unity3d/player/p;

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/unity3d/player/q;->i:Z

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/unity3d/player/q;->h:Z

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/unity3d/player/q;->f:Lcom/unity3d/player/p;

    invoke-virtual {v0}, Lcom/unity3d/player/p;->start()V

    :cond_16
    iget-object v0, p0, Lcom/unity3d/player/q;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public final c()V
    .registers 2

    iget-object v0, p0, Lcom/unity3d/player/q;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-object v0, p0, Lcom/unity3d/player/q;->f:Lcom/unity3d/player/p;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/unity3d/player/q;->f:Lcom/unity3d/player/p;

    invoke-virtual {v0}, Lcom/unity3d/player/p;->updateVideoLayout()V

    :cond_e
    iget-object v0, p0, Lcom/unity3d/player/q;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method protected final runOnUiThread(Ljava/lang/Runnable;)V
    .registers 4

    iget-object v0, p0, Lcom/unity3d/player/q;->b:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/unity3d/player/q;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_d
    return-void

    :cond_e
    const/4 v0, 0x5

    const-string v1, "Not running from an Activity; Ignoring execution request..."

    invoke-static {v0, v1}, Lcom/unity3d/player/e;->Log(ILjava/lang/String;)V

    goto :goto_d
.end method
