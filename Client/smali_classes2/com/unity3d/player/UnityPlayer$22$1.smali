.class final Lcom/unity3d/player/UnityPlayer$22$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/UnityPlayer$22;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unity3d/player/UnityPlayer$22;


# direct methods
.method constructor <init>(Lcom/unity3d/player/UnityPlayer$22;)V
    .registers 2

    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer$22$1;->a:Lcom/unity3d/player/UnityPlayer$22;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$22$1;->a:Lcom/unity3d/player/UnityPlayer$22;

    iget-object v0, v0, Lcom/unity3d/player/UnityPlayer$22;->a:Lcom/unity3d/player/UnityPlayer;

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer$22$1;->a:Lcom/unity3d/player/UnityPlayer$22;

    iget-object v1, v1, Lcom/unity3d/player/UnityPlayer$22;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v1}, Lcom/unity3d/player/UnityPlayer;->k(Lcom/unity3d/player/UnityPlayer;)Lcom/unity3d/player/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unity3d/player/UnityPlayer;->removeView(Landroid/view/View;)V

    return-void
.end method
