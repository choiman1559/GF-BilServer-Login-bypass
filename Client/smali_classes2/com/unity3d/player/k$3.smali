.class final Lcom/unity3d/player/k$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/k;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unity3d/player/k;


# direct methods
.method constructor <init>(Lcom/unity3d/player/k;)V
    .registers 2

    iput-object p1, p0, Lcom/unity3d/player/k$3;->a:Lcom/unity3d/player/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/unity3d/player/k$3;->a:Lcom/unity3d/player/k;

    iget-object v1, p0, Lcom/unity3d/player/k$3;->a:Lcom/unity3d/player/k;

    iget-object v1, v1, Lcom/unity3d/player/k;->b:Lcom/unity3d/player/j;

    invoke-virtual {v1}, Lcom/unity3d/player/j;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unity3d/player/k;->a(Lcom/unity3d/player/k;Ljava/lang/String;)V

    :cond_13
    const/4 v0, 0x1

    return v0
.end method
