.class Landroid/support/transition/ViewGroupUtils;
.super Ljava/lang/Object;
.source "ViewGroupUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method static getOverlay(Landroid/view/ViewGroup;)Landroid/support/transition/ViewGroupOverlayImpl;
    .registers 3
    .param p0, "group"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 33
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_c

    .line 34
    new-instance v0, Landroid/support/transition/ViewGroupOverlayApi18;

    invoke-direct {v0, p0}, Landroid/support/transition/ViewGroupOverlayApi18;-><init>(Landroid/view/ViewGroup;)V

    .line 36
    :goto_b
    return-object v0

    :cond_c
    invoke-static {p0}, Landroid/support/transition/ViewGroupOverlayApi14;->createFrom(Landroid/view/ViewGroup;)Landroid/support/transition/ViewGroupOverlayApi14;

    move-result-object v0

    goto :goto_b
.end method

.method static suppressLayout(Landroid/view/ViewGroup;Z)V
    .registers 4
    .param p0, "group"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "suppress"    # Z

    .prologue
    .line 43
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_a

    .line 44
    invoke-static {p0, p1}, Landroid/support/transition/ViewGroupUtilsApi18;->suppressLayout(Landroid/view/ViewGroup;Z)V

    .line 48
    :goto_9
    return-void

    .line 46
    :cond_a
    invoke-static {p0, p1}, Landroid/support/transition/ViewGroupUtilsApi14;->suppressLayout(Landroid/view/ViewGroup;Z)V

    goto :goto_9
.end method
