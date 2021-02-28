.class final Lcom/bsgamesdk/android/widget/SwitchButton$SwitchAnimation;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bsgamesdk/android/widget/SwitchButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SwitchAnimation"
.end annotation


# instance fields
.field final synthetic a:Lcom/bsgamesdk/android/widget/SwitchButton;


# direct methods
.method private constructor <init>(Lcom/bsgamesdk/android/widget/SwitchButton;)V
    .registers 2

    iput-object p1, p0, Lcom/bsgamesdk/android/widget/SwitchButton$SwitchAnimation;->a:Lcom/bsgamesdk/android/widget/SwitchButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bsgamesdk/android/widget/SwitchButton;Lcom/bsgamesdk/android/widget/SwitchButton$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/bsgamesdk/android/widget/SwitchButton$SwitchAnimation;-><init>(Lcom/bsgamesdk/android/widget/SwitchButton;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/widget/SwitchButton$SwitchAnimation;->a:Lcom/bsgamesdk/android/widget/SwitchButton;

    invoke-static {v0}, Lcom/bsgamesdk/android/widget/SwitchButton;->a(Lcom/bsgamesdk/android/widget/SwitchButton;)Z

    move-result v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/bsgamesdk/android/widget/SwitchButton$SwitchAnimation;->a:Lcom/bsgamesdk/android/widget/SwitchButton;

    invoke-static {v0}, Lcom/bsgamesdk/android/widget/SwitchButton;->b(Lcom/bsgamesdk/android/widget/SwitchButton;)V

    invoke-static {p0}, Lcom/bsgamesdk/android/widget/FrameAnimationController;->requestAnimationFrame(Ljava/lang/Runnable;)V

    goto :goto_8
.end method
