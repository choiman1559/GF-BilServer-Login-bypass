.class public Lcom/bsgamesdk/android/widget/FrameAnimationController;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bsgamesdk/android/widget/FrameAnimationController$AnimationHandler;
    }
.end annotation


# static fields
.field public static final ANIMATION_FRAME_DURATION:I = 0x10

.field private static final a:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/bsgamesdk/android/widget/FrameAnimationController$AnimationHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bsgamesdk/android/widget/FrameAnimationController$AnimationHandler;-><init>(Lcom/bsgamesdk/android/widget/FrameAnimationController$1;)V

    sput-object v0, Lcom/bsgamesdk/android/widget/FrameAnimationController;->a:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static requestAnimationFrame(Ljava/lang/Runnable;)V
    .registers 5

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x3e8

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v1, Lcom/bsgamesdk/android/widget/FrameAnimationController;->a:Landroid/os/Handler;

    const-wide/16 v2, 0x10

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public static requestFrameDelay(Ljava/lang/Runnable;J)V
    .registers 6

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x3e8

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v1, Lcom/bsgamesdk/android/widget/FrameAnimationController;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
