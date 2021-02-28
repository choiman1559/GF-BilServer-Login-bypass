.class final Lcom/unity3d/player/UnityPlayer$22;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/UnityPlayer;->c()V
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

    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer$22;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$22;->a:Lcom/unity3d/player/UnityPlayer;

    new-instance v1, Lcom/unity3d/player/UnityPlayer$22$1;

    invoke-direct {v1, p0}, Lcom/unity3d/player/UnityPlayer$22$1;-><init>(Lcom/unity3d/player/UnityPlayer$22;)V

    invoke-virtual {v0, v1}, Lcom/unity3d/player/UnityPlayer;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method
