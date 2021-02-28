.class public Landroid/support/design/shape/ShapePath;
.super Ljava/lang/Object;
.source "ShapePath.java"


# annotations
.annotation build Landroid/support/design/internal/Experimental;
    value = "The shapes API is currently experimental and subject to change"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/shape/ShapePath$PathArcOperation;,
        Landroid/support/design/shape/ShapePath$PathQuadOperation;,
        Landroid/support/design/shape/ShapePath$PathLineOperation;,
        Landroid/support/design/shape/ShapePath$PathOperation;
    }
.end annotation


# instance fields
.field public endX:F

.field public endY:F

.field private final operations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/design/shape/ShapePath$PathOperation;",
            ">;"
        }
    .end annotation
.end field

.field public startX:F

.field public startY:F


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/design/shape/ShapePath;->operations:Ljava/util/List;

    .line 41
    invoke-virtual {p0, v1, v1}, Landroid/support/design/shape/ShapePath;->reset(FF)V

    .line 42
    return-void
.end method

.method public constructor <init>(FF)V
    .registers 4
    .param p1, "startX"    # F
    .param p2, "startY"    # F

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/design/shape/ShapePath;->operations:Ljava/util/List;

    .line 45
    invoke-virtual {p0, p1, p2}, Landroid/support/design/shape/ShapePath;->reset(FF)V

    .line 46
    return-void
.end method


# virtual methods
.method public addArc(FFFFFF)V
    .registers 15
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "startAngle"    # F
    .param p6, "sweepAngle"    # F

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v6, 0x3f000000    # 0.5f

    .line 104
    new-instance v0, Landroid/support/design/shape/ShapePath$PathArcOperation;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/support/design/shape/ShapePath$PathArcOperation;-><init>(FFFF)V

    .line 105
    .local v0, "operation":Landroid/support/design/shape/ShapePath$PathArcOperation;
    iput p5, v0, Landroid/support/design/shape/ShapePath$PathArcOperation;->startAngle:F

    .line 106
    iput p6, v0, Landroid/support/design/shape/ShapePath$PathArcOperation;->sweepAngle:F

    .line 107
    iget-object v1, p0, Landroid/support/design/shape/ShapePath;->operations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    add-float v1, p1, p3

    mul-float/2addr v1, v6

    sub-float v2, p3, p1

    div-float/2addr v2, v7

    add-float v3, p5, p6

    float-to-double v4, v3

    .line 110
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v3, v4

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p0, Landroid/support/design/shape/ShapePath;->endX:F

    .line 111
    add-float v1, p2, p4

    mul-float/2addr v1, v6

    sub-float v2, p4, p2

    div-float/2addr v2, v7

    add-float v3, p5, p6

    float-to-double v4, v3

    .line 112
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v3, v4

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p0, Landroid/support/design/shape/ShapePath;->endY:F

    .line 113
    return-void
.end method

.method public applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .registers 7
    .param p1, "transform"    # Landroid/graphics/Matrix;
    .param p2, "path"    # Landroid/graphics/Path;

    .prologue
    .line 122
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Landroid/support/design/shape/ShapePath;->operations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_7
    if-ge v0, v2, :cond_17

    .line 123
    iget-object v3, p0, Landroid/support/design/shape/ShapePath;->operations:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/design/shape/ShapePath$PathOperation;

    .line 124
    .local v1, "operation":Landroid/support/design/shape/ShapePath$PathOperation;
    invoke-virtual {v1, p1, p2}, Landroid/support/design/shape/ShapePath$PathOperation;->applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 126
    .end local v1    # "operation":Landroid/support/design/shape/ShapePath$PathOperation;
    :cond_17
    return-void
.end method

.method public lineTo(FF)V
    .registers 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 63
    new-instance v0, Landroid/support/design/shape/ShapePath$PathLineOperation;

    invoke-direct {v0}, Landroid/support/design/shape/ShapePath$PathLineOperation;-><init>()V

    .line 64
    .local v0, "operation":Landroid/support/design/shape/ShapePath$PathLineOperation;
    invoke-static {v0, p1}, Landroid/support/design/shape/ShapePath$PathLineOperation;->access$002(Landroid/support/design/shape/ShapePath$PathLineOperation;F)F

    .line 65
    invoke-static {v0, p2}, Landroid/support/design/shape/ShapePath$PathLineOperation;->access$102(Landroid/support/design/shape/ShapePath$PathLineOperation;F)F

    .line 66
    iget-object v1, p0, Landroid/support/design/shape/ShapePath;->operations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    iput p1, p0, Landroid/support/design/shape/ShapePath;->endX:F

    .line 69
    iput p2, p0, Landroid/support/design/shape/ShapePath;->endY:F

    .line 70
    return-void
.end method

.method public quadToPoint(FFFF)V
    .registers 7
    .param p1, "controlX"    # F
    .param p2, "controlY"    # F
    .param p3, "toX"    # F
    .param p4, "toY"    # F

    .prologue
    .line 81
    new-instance v0, Landroid/support/design/shape/ShapePath$PathQuadOperation;

    invoke-direct {v0}, Landroid/support/design/shape/ShapePath$PathQuadOperation;-><init>()V

    .line 82
    .local v0, "operation":Landroid/support/design/shape/ShapePath$PathQuadOperation;
    iput p1, v0, Landroid/support/design/shape/ShapePath$PathQuadOperation;->controlX:F

    .line 83
    iput p2, v0, Landroid/support/design/shape/ShapePath$PathQuadOperation;->controlY:F

    .line 84
    iput p3, v0, Landroid/support/design/shape/ShapePath$PathQuadOperation;->endX:F

    .line 85
    iput p4, v0, Landroid/support/design/shape/ShapePath$PathQuadOperation;->endY:F

    .line 86
    iget-object v1, p0, Landroid/support/design/shape/ShapePath;->operations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    iput p3, p0, Landroid/support/design/shape/ShapePath;->endX:F

    .line 89
    iput p4, p0, Landroid/support/design/shape/ShapePath;->endY:F

    .line 90
    return-void
.end method

.method public reset(FF)V
    .registers 4
    .param p1, "startX"    # F
    .param p2, "startY"    # F

    .prologue
    .line 49
    iput p1, p0, Landroid/support/design/shape/ShapePath;->startX:F

    .line 50
    iput p2, p0, Landroid/support/design/shape/ShapePath;->startY:F

    .line 51
    iput p1, p0, Landroid/support/design/shape/ShapePath;->endX:F

    .line 52
    iput p2, p0, Landroid/support/design/shape/ShapePath;->endY:F

    .line 53
    iget-object v0, p0, Landroid/support/design/shape/ShapePath;->operations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 54
    return-void
.end method
