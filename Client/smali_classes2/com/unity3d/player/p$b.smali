.class public final Lcom/unity3d/player/p$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/player/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/unity3d/player/p;

.field private b:Lcom/unity3d/player/p;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/unity3d/player/p;Lcom/unity3d/player/p;)V
    .registers 4

    iput-object p1, p0, Lcom/unity3d/player/p$b;->a:Lcom/unity3d/player/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/unity3d/player/p$b;->b:Lcom/unity3d/player/p;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/player/p$b;->c:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unity3d/player/p$b;->c:Z

    return-void
.end method

.method public final run()V
    .registers 3

    const-wide/16 v0, 0x1388

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_1a

    :goto_5
    iget-boolean v0, p0, Lcom/unity3d/player/p$b;->c:Z

    if-nez v0, :cond_19

    invoke-static {}, Lcom/unity3d/player/p;->b()Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "Stopping the video player due to timeout."

    invoke-static {v0}, Lcom/unity3d/player/p;->a(Ljava/lang/String;)V

    :cond_14
    iget-object v0, p0, Lcom/unity3d/player/p$b;->b:Lcom/unity3d/player/p;

    invoke-virtual {v0}, Lcom/unity3d/player/p;->CancelOnPrepare()V

    :cond_19
    return-void

    :catch_1a
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_5
.end method