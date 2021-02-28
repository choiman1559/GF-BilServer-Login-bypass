.class Lcom/bsgamesdk/android/widget/FrameAnimationController$AnimationHandler;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bsgamesdk/android/widget/FrameAnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimationHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bsgamesdk/android/widget/FrameAnimationController$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/bsgamesdk/android/widget/FrameAnimationController$AnimationHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_12

    :cond_5
    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_5

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_5

    :pswitch_data_12
    .packed-switch 0x3e8
        :pswitch_6
    .end packed-switch
.end method
