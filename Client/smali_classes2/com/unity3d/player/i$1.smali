.class final Lcom/unity3d/player/i$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/i;-><init>(Landroid/content/Context;Lcom/unity3d/player/UnityPlayer;Ljava/lang/String;IZZZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unity3d/player/i;


# direct methods
.method constructor <init>(Lcom/unity3d/player/i;)V
    .registers 2

    iput-object p1, p0, Lcom/unity3d/player/i$1;->a:Lcom/unity3d/player/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .registers 5

    if-eqz p2, :cond_c

    iget-object v0, p0, Lcom/unity3d/player/i$1;->a:Lcom/unity3d/player/i;

    invoke-virtual {v0}, Lcom/unity3d/player/i;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_c
    return-void
.end method
