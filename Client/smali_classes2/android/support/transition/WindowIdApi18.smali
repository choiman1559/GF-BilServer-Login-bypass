.class Landroid/support/transition/WindowIdApi18;
.super Ljava/lang/Object;
.source "WindowIdApi18.java"

# interfaces
.implements Landroid/support/transition/WindowIdImpl;


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x12
.end annotation


# instance fields
.field private final mWindowId:Landroid/view/WindowId;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getWindowId()Landroid/view/WindowId;

    move-result-object v0

    iput-object v0, p0, Landroid/support/transition/WindowIdApi18;->mWindowId:Landroid/view/WindowId;

    .line 31
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 35
    instance-of v0, p1, Landroid/support/transition/WindowIdApi18;

    if-eqz v0, :cond_12

    check-cast p1, Landroid/support/transition/WindowIdApi18;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v0, p1, Landroid/support/transition/WindowIdApi18;->mWindowId:Landroid/view/WindowId;

    iget-object v1, p0, Landroid/support/transition/WindowIdApi18;->mWindowId:Landroid/view/WindowId;

    invoke-virtual {v0, v1}, Landroid/view/WindowId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Landroid/support/transition/WindowIdApi18;->mWindowId:Landroid/view/WindowId;

    invoke-virtual {v0}, Landroid/view/WindowId;->hashCode()I

    move-result v0

    return v0
.end method
