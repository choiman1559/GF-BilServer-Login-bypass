.class final Lcom/unity3d/player/UnityPlayer$21;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/UnityPlayer;->b()V
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

    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer$21;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$21;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v0}, Lcom/unity3d/player/UnityPlayer;->k(Lcom/unity3d/player/UnityPlayer;)Lcom/unity3d/player/k;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$21;->a:Lcom/unity3d/player/UnityPlayer;

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer$21;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v1}, Lcom/unity3d/player/UnityPlayer;->k(Lcom/unity3d/player/UnityPlayer;)Lcom/unity3d/player/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unity3d/player/UnityPlayer;->bringChildToFront(Landroid/view/View;)V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$21;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v0}, Lcom/unity3d/player/UnityPlayer;->k(Lcom/unity3d/player/UnityPlayer;)Lcom/unity3d/player/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/player/k;->a()V

    :cond_1c
    return-void
.end method
