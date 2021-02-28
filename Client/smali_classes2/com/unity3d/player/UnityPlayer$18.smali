.class final Lcom/unity3d/player/UnityPlayer$18;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/UnityPlayer;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unity3d/player/UnityPlayer;


# direct methods
.method constructor <init>(Lcom/unity3d/player/UnityPlayer;)V
    .registers 2

    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer$18;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_3a

    :cond_5
    :goto_5
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_9
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$18;->a:Lcom/unity3d/player/UnityPlayer;

    iget-object v0, v0, Lcom/unity3d/player/UnityPlayer;->c:Landroid/app/AlertDialog;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$18;->a:Lcom/unity3d/player/UnityPlayer;

    iget-object v0, v0, Lcom/unity3d/player/UnityPlayer;->c:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$18;->a:Lcom/unity3d/player/UnityPlayer;

    iget-object v0, v0, Lcom/unity3d/player/UnityPlayer;->c:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_5

    :pswitch_21
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$18;->a:Lcom/unity3d/player/UnityPlayer;

    iget-object v0, v0, Lcom/unity3d/player/UnityPlayer;->c:Landroid/app/AlertDialog;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$18;->a:Lcom/unity3d/player/UnityPlayer;

    iget-object v0, v0, Lcom/unity3d/player/UnityPlayer;->c:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$18;->a:Lcom/unity3d/player/UnityPlayer;

    iget-object v0, v0, Lcom/unity3d/player/UnityPlayer;->c:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->hide()V

    goto :goto_5

    nop

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_9
        :pswitch_21
    .end packed-switch
.end method
