.class final Landroid/support/transition/ChangeBounds$4;
.super Landroid/util/Property;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/transition/ChangeBounds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property",
        "<",
        "Landroid/view/View;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 3
    .param p2, "x1"    # Ljava/lang/String;

    .prologue
    .line 113
    .local p1, "x0":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/graphics/PointF;>;"
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Landroid/view/View;)Landroid/graphics/PointF;
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 125
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 113
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/support/transition/ChangeBounds$4;->get(Landroid/view/View;)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public set(Landroid/view/View;Landroid/graphics/PointF;)V
    .registers 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "bottomRight"    # Landroid/graphics/PointF;

    .prologue
    .line 116
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 117
    .local v1, "left":I
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    .line 118
    .local v3, "top":I
    iget v4, p2, Landroid/graphics/PointF;->x:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 119
    .local v2, "right":I
    iget v4, p2, Landroid/graphics/PointF;->y:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 120
    .local v0, "bottom":I
    invoke-static {p1, v1, v3, v2, v0}, Landroid/support/transition/ViewUtils;->setLeftTopRightBottom(Landroid/view/View;IIII)V

    .line 121
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 113
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/graphics/PointF;

    invoke-virtual {p0, p1, p2}, Landroid/support/transition/ChangeBounds$4;->set(Landroid/view/View;Landroid/graphics/PointF;)V

    return-void
.end method