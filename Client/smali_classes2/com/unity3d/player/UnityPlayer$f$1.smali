.class final Lcom/unity3d/player/UnityPlayer$f$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


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

    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer$f$1;->a:Lcom/unity3d/player/UnityPlayer$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .registers 3

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$f$1;->a:Lcom/unity3d/player/UnityPlayer$f;

    iget v0, v0, Lcom/unity3d/player/UnityPlayer$f;->d:I

    sget v1, Lcom/unity3d/player/UnityPlayer$b;->c:I

    if-ne v0, v1, :cond_1c

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$f$1;->a:Lcom/unity3d/player/UnityPlayer$f;

    iget-boolean v0, v0, Lcom/unity3d/player/UnityPlayer$f;->c:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$f$1;->a:Lcom/unity3d/player/UnityPlayer$f;

    iget-object v0, v0, Lcom/unity3d/player/UnityPlayer$f;->h:Lcom/unity3d/player/UnityPlayer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/unity3d/player/UnityPlayer;->a(Lcom/unity3d/player/UnityPlayer;Z)V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$f$1;->a:Lcom/unity3d/player/UnityPlayer$f;

    sget v1, Lcom/unity3d/player/UnityPlayer$b;->a:I

    iput v1, v0, Lcom/unity3d/player/UnityPlayer$f;->d:I

    :cond_1c
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .registers 6

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x8dd

    if-eq v0, v3, :cond_a

    move v0, v1

    :goto_9
    return v0

    :cond_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/unity3d/player/UnityPlayer$e;

    sget-object v3, Lcom/unity3d/player/UnityPlayer$e;->h:Lcom/unity3d/player/UnityPlayer$e;

    if-ne v0, v3, :cond_14

    move v0, v2

    goto :goto_9

    :cond_14
    sget-object v3, Lcom/unity3d/player/UnityPlayer$e;->c:Lcom/unity3d/player/UnityPlayer$e;

    if-ne v0, v3, :cond_21

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :cond_1f
    :goto_1f
    move v0, v2

    goto :goto_9

    :cond_21
    sget-object v3, Lcom/unity3d/player/UnityPlayer$e;->b:Lcom/unity3d/player/UnityPlayer$e;

    if-ne v0, v3, :cond_2a

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$f$1;->a:Lcom/unity3d/player/UnityPlayer$f;

    iput-boolean v2, v0, Lcom/unity3d/player/UnityPlayer$f;->b:Z

    goto :goto_1f

    :cond_2a
    sget-object v3, Lcom/unity3d/player/UnityPlayer$e;->a:Lcom/unity3d/player/UnityPlayer$e;

    if-ne v0, v3, :cond_33

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$f$1;->a:Lcom/unity3d/player/UnityPlayer$f;

    iput-boolean v1, v0, Lcom/unity3d/player/UnityPlayer$f;->b:Z

    goto :goto_1f

    :cond_33
    sget-object v3, Lcom/unity3d/player/UnityPlayer$e;->d:Lcom/unity3d/player/UnityPlayer$e;

    if-ne v0, v3, :cond_3c

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$f$1;->a:Lcom/unity3d/player/UnityPlayer$f;

    iput-boolean v1, v0, Lcom/unity3d/player/UnityPlayer$f;->c:Z

    goto :goto_1f

    :cond_3c
    sget-object v3, Lcom/unity3d/player/UnityPlayer$e;->e:Lcom/unity3d/player/UnityPlayer$e;

    if-ne v0, v3, :cond_48

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$f$1;->a:Lcom/unity3d/player/UnityPlayer$f;

    iput-boolean v2, v0, Lcom/unity3d/player/UnityPlayer$f;->c:Z

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer$f$1;->a()V

    goto :goto_1f

    :cond_48
    sget-object v3, Lcom/unity3d/player/UnityPlayer$e;->f:Lcom/unity3d/player/UnityPlayer$e;

    if-ne v0, v3, :cond_62

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$f$1;->a:Lcom/unity3d/player/UnityPlayer$f;

    iget v0, v0, Lcom/unity3d/player/UnityPlayer$f;->d:I

    sget v3, Lcom/unity3d/player/UnityPlayer$b;->a:I

    if-ne v0, v3, :cond_5b

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$f$1;->a:Lcom/unity3d/player/UnityPlayer$f;

    iget-object v0, v0, Lcom/unity3d/player/UnityPlayer$f;->h:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v0, v1}, Lcom/unity3d/player/UnityPlayer;->a(Lcom/unity3d/player/UnityPlayer;Z)V

    :cond_5b
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$f$1;->a:Lcom/unity3d/player/UnityPlayer$f;

    sget v1, Lcom/unity3d/player/UnityPlayer$b;->b:I

    iput v1, v0, Lcom/unity3d/player/UnityPlayer$f;->d:I

    goto :goto_1f

    :cond_62
    sget-object v1, Lcom/unity3d/player/UnityPlayer$e;->g:Lcom/unity3d/player/UnityPlayer$e;

    if-ne v0, v1, :cond_70

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$f$1;->a:Lcom/unity3d/player/UnityPlayer$f;

    sget v1, Lcom/unity3d/player/UnityPlayer$b;->c:I

    iput v1, v0, Lcom/unity3d/player/UnityPlayer$f;->d:I

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer$f$1;->a()V

    goto :goto_1f

    :cond_70
    sget-object v1, Lcom/unity3d/player/UnityPlayer$e;->i:Lcom/unity3d/player/UnityPlayer$e;

    if-ne v0, v1, :cond_1f

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$f$1;->a:Lcom/unity3d/player/UnityPlayer$f;

    iput-boolean v2, v0, Lcom/unity3d/player/UnityPlayer$f;->e:Z

    goto :goto_1f
.end method
