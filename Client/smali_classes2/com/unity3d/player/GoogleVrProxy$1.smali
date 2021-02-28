.class final Lcom/unity3d/player/GoogleVrProxy$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/player/GoogleVrProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unity3d/player/GoogleVrProxy;


# direct methods
.method constructor <init>(Lcom/unity3d/player/GoogleVrProxy;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/unity3d/player/GoogleVrProxy$1;->a:Lcom/unity3d/player/GoogleVrProxy;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 5

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_4a

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :cond_8
    :goto_8
    return-void

    :pswitch_9
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_50

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_8

    :pswitch_12
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/unity3d/player/GoogleVrProxy$1;->a:Lcom/unity3d/player/GoogleVrProxy;

    invoke-static {v1}, Lcom/unity3d/player/GoogleVrProxy;->a(Lcom/unity3d/player/GoogleVrProxy;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unity3d/player/GoogleVrVideo$GoogleVrVideoCallbacks;

    invoke-interface {v1, v0}, Lcom/unity3d/player/GoogleVrVideo$GoogleVrVideoCallbacks;->onSurfaceAvailable(Landroid/view/Surface;)V

    goto :goto_20

    :pswitch_30
    iget-object v0, p0, Lcom/unity3d/player/GoogleVrProxy$1;->a:Lcom/unity3d/player/GoogleVrProxy;

    invoke-static {v0}, Lcom/unity3d/player/GoogleVrProxy;->a(Lcom/unity3d/player/GoogleVrProxy;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/player/GoogleVrVideo$GoogleVrVideoCallbacks;

    invoke-interface {v0}, Lcom/unity3d/player/GoogleVrVideo$GoogleVrVideoCallbacks;->onFrameAvailable()V

    goto :goto_3a

    :pswitch_data_4a
    .packed-switch 0x2121f
        :pswitch_9
    .end packed-switch

    :pswitch_data_50
    .packed-switch 0x7ffffffd
        :pswitch_30
        :pswitch_12
    .end packed-switch
.end method
