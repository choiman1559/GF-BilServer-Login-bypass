.class public Landroid/support/design/shape/MaterialShapeDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "MaterialShapeDrawable.java"

# interfaces
.implements Landroid/support/v4/graphics/drawable/TintAwareDrawable;


# annotations
.annotation build Landroid/support/design/internal/Experimental;
    value = "The shapes API is currently experimental and subject to change"
.end annotation


# instance fields
.field private alpha:I

.field private final cornerPaths:[Landroid/support/design/shape/ShapePath;

.field private final cornerTransforms:[Landroid/graphics/Matrix;

.field private final edgeTransforms:[Landroid/graphics/Matrix;

.field private interpolation:F

.field private final matrix:Landroid/graphics/Matrix;

.field private final paint:Landroid/graphics/Paint;

.field private paintStyle:Landroid/graphics/Paint$Style;

.field private final path:Landroid/graphics/Path;

.field private final pointF:Landroid/graphics/PointF;

.field private scale:F

.field private final scratch:[F

.field private final scratch2:[F

.field private final scratchRegion:Landroid/graphics/Region;

.field private shadowColor:I

.field private shadowElevation:I

.field private shadowEnabled:Z

.field private shadowRadius:I

.field private final shapePath:Landroid/support/design/shape/ShapePath;

.field private shapedViewModel:Landroid/support/design/shape/ShapePathModel;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private strokeWidth:F

.field private tintFilter:Landroid/graphics/PorterDuffColorFilter;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private tintList:Landroid/content/res/ColorStateList;

.field private tintMode:Landroid/graphics/PorterDuff$Mode;

.field private final transparentRegion:Landroid/graphics/Region;

.field private useTintColorForShadow:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/design/shape/MaterialShapeDrawable;-><init>(Landroid/support/design/shape/ShapePathModel;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/support/design/shape/ShapePathModel;)V
    .registers 9
    .param p1, "shapePathModel"    # Landroid/support/design/shape/ShapePathModel;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x4

    .line 88
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 48
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->paint:Landroid/graphics/Paint;

    .line 50
    new-array v1, v3, [Landroid/graphics/Matrix;

    iput-object v1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->cornerTransforms:[Landroid/graphics/Matrix;

    .line 51
    new-array v1, v3, [Landroid/graphics/Matrix;

    iput-object v1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->edgeTransforms:[Landroid/graphics/Matrix;

    .line 52
    new-array v1, v3, [Landroid/support/design/shape/ShapePath;

    iput-object v1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->cornerPaths:[Landroid/support/design/shape/ShapePath;

    .line 54
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->matrix:Landroid/graphics/Matrix;

    .line 55
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->path:Landroid/graphics/Path;

    .line 56
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->pointF:Landroid/graphics/PointF;

    .line 57
    new-instance v1, Landroid/support/design/shape/ShapePath;

    invoke-direct {v1}, Landroid/support/design/shape/ShapePath;-><init>()V

    iput-object v1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->shapePath:Landroid/support/design/shape/ShapePath;

    .line 58
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->transparentRegion:Landroid/graphics/Region;

    .line 59
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->scratchRegion:Landroid/graphics/Region;

    .line 60
    new-array v1, v5, [F

    iput-object v1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->scratch:[F

    .line 61
    new-array v1, v5, [F

    iput-object v1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->scratch2:[F

    .line 62
    iput-object v6, p0, Landroid/support/design/shape/MaterialShapeDrawable;->shapedViewModel:Landroid/support/design/shape/ShapePathModel;

    .line 63
    iput-boolean v4, p0, Landroid/support/design/shape/MaterialShapeDrawable;->shadowEnabled:Z

    .line 64
    iput-boolean v4, p0, Landroid/support/design/shape/MaterialShapeDrawable;->useTintColorForShadow:Z

    .line 65
    iput v2, p0, Landroid/support/design/shape/MaterialShapeDrawable;->interpolation:F

    .line 66
    const/high16 v1, -0x1000000

    iput v1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->shadowColor:I

    .line 67
    const/4 v1, 0x5

    iput v1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->shadowElevation:I

    .line 68
    const/16 v1, 0xa

    iput v1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->shadowRadius:I

    .line 69
    const/16 v1, 0xff

    iput v1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->alpha:I

    .line 70
    iput v2, p0, Landroid/support/design/shape/MaterialShapeDrawable;->scale:F

    .line 71
    const/4 v1, 0x0

    iput v1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->strokeWidth:F

    .line 72
    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    iput-object v1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->paintStyle:Landroid/graphics/Paint$Style;

    .line 74
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object v1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->tintMode:Landroid/graphics/PorterDuff$Mode;

    .line 75
    iput-object v6, p0, Landroid/support/design/shape/MaterialShapeDrawable;->tintList:Landroid/content/res/ColorStateList;

    .line 89
    iput-object p1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->shapedViewModel:Landroid/support/design/shape/ShapePathModel;

    .line 91
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_77
    if-ge v0, v3, :cond_97

    .line 92
    iget-object v1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->cornerTransforms:[Landroid/graphics/Matrix;

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    aput-object v2, v1, v0

    .line 93
    iget-object v1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->edgeTransforms:[Landroid/graphics/Matrix;

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    aput-object v2, v1, v0

    .line 94
    iget-object v1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->cornerPaths:[Landroid/support/design/shape/ShapePath;

    new-instance v2, Landroid/support/design/shape/ShapePath;

    invoke-direct {v2}, Landroid/support/design/shape/ShapePath;-><init>()V

    aput-object v2, v1, v0

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_77

    .line 96
    :cond_97
    return-void
.end method

.method private angleOfCorner(III)F
    .registers 28
    .param p1, "index"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 498
    add-int/lit8 v19, p1, -0x1

    add-int/lit8 v19, v19, 0x4

    rem-int/lit8 v19, v19, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/design/shape/MaterialShapeDrawable;->pointF:Landroid/graphics/PointF;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/support/design/shape/MaterialShapeDrawable;->getCoordinatesOfCorner(IIILandroid/graphics/PointF;)V

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/design/shape/MaterialShapeDrawable;->pointF:Landroid/graphics/PointF;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v15, v0, Landroid/graphics/PointF;->x:F

    .line 500
    .local v15, "prevCornerCoordX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/design/shape/MaterialShapeDrawable;->pointF:Landroid/graphics/PointF;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v16, v0

    .line 502
    .local v16, "prevCornerCoordY":F
    add-int/lit8 v19, p1, 0x1

    rem-int/lit8 v19, v19, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/design/shape/MaterialShapeDrawable;->pointF:Landroid/graphics/PointF;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/support/design/shape/MaterialShapeDrawable;->getCoordinatesOfCorner(IIILandroid/graphics/PointF;)V

    .line 503
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/design/shape/MaterialShapeDrawable;->pointF:Landroid/graphics/PointF;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v10, v0, Landroid/graphics/PointF;->x:F

    .line 504
    .local v10, "nextCornerCoordX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/design/shape/MaterialShapeDrawable;->pointF:Landroid/graphics/PointF;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v11, v0, Landroid/graphics/PointF;->y:F

    .line 506
    .local v11, "nextCornerCoordY":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/design/shape/MaterialShapeDrawable;->pointF:Landroid/graphics/PointF;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/support/design/shape/MaterialShapeDrawable;->getCoordinatesOfCorner(IIILandroid/graphics/PointF;)V

    .line 507
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/design/shape/MaterialShapeDrawable;->pointF:Landroid/graphics/PointF;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v7, v0, Landroid/graphics/PointF;->x:F

    .line 508
    .local v7, "cornerCoordX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/design/shape/MaterialShapeDrawable;->pointF:Landroid/graphics/PointF;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v8, v0, Landroid/graphics/PointF;->y:F

    .line 510
    .local v8, "cornerCoordY":F
    sub-float v17, v15, v7

    .line 511
    .local v17, "prevVectorX":F
    sub-float v18, v16, v8

    .line 513
    .local v18, "prevVectorY":F
    sub-float v12, v10, v7

    .line 514
    .local v12, "nextVectorX":F
    sub-float v13, v11, v8

    .line 516
    .local v13, "nextVectorY":F
    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v14, v0

    .line 517
    .local v14, "prevAngle":F
    float-to-double v0, v13

    move-wide/from16 v20, v0

    float-to-double v0, v12

    move-wide/from16 v22, v0

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v9, v0

    .line 518
    .local v9, "nextAngle":F
    sub-float v6, v14, v9

    .line 519
    .local v6, "angle":F
    const/16 v19, 0x0

    cmpg-float v19, v6, v19

    if-gez v19, :cond_bc

    .line 520
    float-to-double v0, v6

    move-wide/from16 v20, v0

    const-wide v22, 0x401921fb54442d18L    # 6.283185307179586

    add-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-float v6, v0

    .line 522
    :cond_bc
    return v6
.end method

.method private angleOfEdge(III)F
    .registers 16
    .param p1, "index"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 526
    move v7, p1

    .line 527
    .local v7, "startCornerPosition":I
    add-int/lit8 v8, p1, 0x1

    rem-int/lit8 v4, v8, 0x4

    .line 529
    .local v4, "endCornerPoisition":I
    iget-object v8, p0, Landroid/support/design/shape/MaterialShapeDrawable;->pointF:Landroid/graphics/PointF;

    invoke-direct {p0, v7, p2, p3, v8}, Landroid/support/design/shape/MaterialShapeDrawable;->getCoordinatesOfCorner(IIILandroid/graphics/PointF;)V

    .line 530
    iget-object v8, p0, Landroid/support/design/shape/MaterialShapeDrawable;->pointF:Landroid/graphics/PointF;

    iget v5, v8, Landroid/graphics/PointF;->x:F

    .line 531
    .local v5, "startCornerCoordX":F
    iget-object v8, p0, Landroid/support/design/shape/MaterialShapeDrawable;->pointF:Landroid/graphics/PointF;

    iget v6, v8, Landroid/graphics/PointF;->y:F

    .line 533
    .local v6, "startCornerCoordY":F
    iget-object v8, p0, Landroid/support/design/shape/MaterialShapeDrawable;->pointF:Landroid/graphics/PointF;

    invoke-direct {p0, v4, p2, p3, v8}, Landroid/support/design/shape/MaterialShapeDrawable;->getCoordinatesOfCorner(IIILandroid/graphics/PointF;)V

    .line 534
    iget-object v8, p0, Landroid/support/design/shape/MaterialShapeDrawable;->pointF:Landroid/graphics/PointF;

    iget v2, v8, Landroid/graphics/PointF;->x:F

    .line 535
    .local v2, "endCornerCoordX":F
    iget-object v8, p0, Landroid/support/design/shape/MaterialShapeDrawable;->pointF:Landroid/graphics/PointF;

    iget v3, v8, Landroid/graphics/PointF;->y:F

    .line 537
    .local v3, "endCornerCoordY":F
    sub-float v0, v2, v5

    .line 538
    .local v0, "edgeVectorX":F
    sub-float v1, v3, v6

    .line 539
    .local v1, "edgeVectorY":F
    float-to-double v8, v1

    float-to-double v10, v0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v8

    double-to-float v8, v8

    return v8
.end method

.method private appendCornerPath(ILandroid/graphics/Path;)V
    .registers 7
    .param p1, "index"    # I
    .param p2, "path"    # Landroid/graphics/Path;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 424
    iget-object v0, p0, Landroid/support/design/shape/MaterialShapeDrawable;->scratch:[F

    iget-object v1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->cornerPaths:[Landroid/support/design/shape/ShapePath;

    aget-object v1, v1, p1

    iget v1, v1, Landroid/support/design/shape/ShapePath;->startX:F

    aput v1, v0, v2

    .line 425
    iget-object v0, p0, Landroid/support/design/shape/MaterialShapeDrawable;->scratch:[F

    iget-object v1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->cornerPaths:[Landroid/support/design/shape/ShapePath;

    aget-object v1, v1, p1

    iget v1, v1, Landroid/support/design/shape/ShapePath;->startY:F

    aput v1, v0, v3

    .line 426
    iget-object v0, p0, Landroid/support/design/shape/MaterialShapeDrawable;->cornerTransforms:[Landroid/graphics/Matrix;

    aget-object v0, v0, p1

    iget-object v1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->scratch:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 427
    if-nez p1, :cond_38

    .line 428
    iget-object v0, p0, Landroid/support/design/shape/MaterialShapeDrawable;->scratch:[F

    aget v0, v0, v2

    iget-object v1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->scratch:[F

    aget v1, v1, v3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 432
    :goto_2c
    iget-object v0, p0, Landroid/support/design/shape/MaterialShapeDrawable;->cornerPaths:[Landroid/support/design/shape/ShapePath;

    aget-object v0, v0, p1

    iget-object v1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->cornerTransforms:[Landroid/graphics/Matrix;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1, p2}, Landroid/support/design/shape/ShapePath;->applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 433
    return-void

    .line 430
    :cond_38
    iget-object v0, p0, Landroid/support/design/shape/MaterialShapeDrawable;->scratch:[F

    aget v0, v0, v2

    iget-object v1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->scratch:[F

    aget v1, v1, v3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_2c
.end method

.method private appendEdgePath(ILandroid/graphics/Path;)V
    .registers 11
    .param p1, "index"    # I
    .param p2, "path"    # Landroid/graphics/Path;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 436
    add-int/lit8 v2, p1, 0x1

    rem-int/lit8 v1, v2, 0x4

    .line 437
    .local v1, "nextIndex":I
    iget-object v2, p0, Landroid/support/design/shape/MaterialShapeDrawable;->scratch:[F

    iget-object v3, p0, Landroid/support/design/shape/MaterialShapeDrawable;->cornerPaths:[Landroid/support/design/shape/ShapePath;

    aget-object v3, v3, p1

    iget v3, v3, Landroid/support/design/shape/ShapePath;->endX:F

    aput v3, v2, v4

    .line 438
    iget-object v2, p0, Landroid/support/design/shape/MaterialShapeDrawable;->scratch:[F

    iget-object v3, p0, Landroid/support/design/shape/MaterialShapeDrawable;->cornerPaths:[Landroid/support/design/shape/ShapePath;

    aget-object v3, v3, p1

    iget v3, v3, Landroid/support/design/shape/ShapePath;->endY:F

    aput v3, v2, v6

    .line 439
    iget-object v2, p0, Landroid/support/design/shape/MaterialShapeDrawable;->cornerTransforms:[Landroid/graphics/Matrix;

    aget-object v2, v2, p1

    iget-object v3, p0, Landroid/support/design/shape/MaterialShapeDrawable;->scratch:[F

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 441
    iget-object v2, p0, Landroid/support/design/shape/MaterialShapeDrawable;->scratch2:[F

    iget-object v3, p0, Landroid/support/design/shape/MaterialShapeDrawable;->cornerPaths:[Landroid/support/design/shape/ShapePath;

    aget-object v3, v3, v1

    iget v3, v3, Landroid/support/design/shape/ShapePath;->startX:F

    aput v3, v2, v4

    .line 442
    iget-object v2, p0, Landroid/support/design/shape/MaterialShapeDrawable;->scratch2:[F

    iget-object v3, p0, Landroid/support/design/shape/MaterialShapeDrawable;->cornerPaths:[Landroid/support/design/shape/ShapePath;

    aget-object v3, v3, v1

    iget v3, v3, Landroid/support/design/shape/ShapePath;->startY:F

    aput v3, v2, v6

    .line 443
    iget-object v2, p0, Landroid/support/design/shape/MaterialShapeDrawable;->cornerTransforms:[Landroid/graphics/Matrix;

    aget-object v2, v2, v1

    iget-object v3, p0, Landroid/support/design/shape/MaterialShapeDrawable;->scratch2:[F

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 445
    iget-object v2, p0, Landroid/support/design/shape/MaterialShapeDrawable;->scratch:[F

    aget v2, v2, v4

    iget-object v3, p0, Landroid/support/design/shape/MaterialShapeDrawable;->scratch2:[F

    aget v3, v3, v4

    sub-float/2addr v2, v3

    float-to-double v2, v2

    iget-object v4, p0, Landroid/support/design/shape/MaterialShapeDrawable;->scratch:[F

    aget v4, v4, v6

    iget-object v5, p0, Landroid/support/design/shape/MaterialShapeDrawable;->scratch2:[F

    aget v5, v5, v6

    sub-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v0, v2

    .line 446
    .local v0, "edgeLength":F
    iget-object v2, p0, Landroid/support/design/shape/MaterialShapeDrawable;->shapePath:Landroid/support/design/shape/ShapePath;

    invoke-virtual {v2, v7, v7}, Landroid/support/design/shape/ShapePath;->reset(FF)V

    .line 447
    invoke-direct {p0, p1}, Landroid/support/design/shape/MaterialShapeDrawable;->getEdgeTreatmentForIndex(I)Landroid/support/design/shape/EdgeTreatment;

    move-result-object v2

    iget v3, p0, Landroid/support/design/shape/MaterialShapeDrawable;->interpolation:F

    iget-object v4, p0, Landroid/support/design/shape/MaterialShapeDrawable;->shapePath:Landroid/support/design/shape/ShapePath;

    invoke-virtual {v2, v0, v3, v4}, Landroid/support/design/shape/EdgeTreatment;->getEdgePath(FFLandroid/support/design/shape/ShapePath;)V

    .line 448
    iget-object v2, p0, Landroid/support/design/shape/MaterialShapeDrawable;->shapePath:Landroid/support/design/shape/ShapePath;

    iget-object v3, p0, Landroid/support/design/shape/MaterialShapeDrawable;->edgeTransforms:[Landroid/graphics/Matrix;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3, p2}, Landroid/support/design/shape/ShapePath;->applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 449
    return-void
.end method

.method private getCoordinatesOfCorner(IIILandroid/graphics/PointF;)V
    .registers 7
    .param p1, "index"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "pointF"    # Landroid/graphics/PointF;

    .prologue
    const/4 v1, 0x0

    .line 480
    packed-switch p1, :pswitch_data_18

    .line 492
    invoke-virtual {p4, v1, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 495
    :goto_7
    return-void

    .line 482
    :pswitch_8
    int-to-float v0, p2

    invoke-virtual {p4, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_7

    .line 485
    :pswitch_d
    int-to-float v0, p2

    int-to-float v1, p3

    invoke-virtual {p4, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_7

    .line 488
    :pswitch_13
    int-to-float v0, p3

    invoke-virtual {p4, v1, v0}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_7

    .line 480
    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_8
        :pswitch_d
        :pswitch_13
    .end packed-switch
.end method

.method private getCornerTreatmentForIndex(I)Landroid/support/design/shape/CornerTreatment;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 452
    packed-switch p1, :pswitch_data_20

    .line 461
    iget-object v0, p0, Landroid/support/design/shape/MaterialShapeDrawable;->shapedViewModel:Landroid/support/design/shape/ShapePathModel;

    invoke-virtual {v0}, Landroid/support/design/shape/ShapePathModel;->getTopLeftCorner()Landroid/support/design/shape/CornerTreatment;

    move-result-object v0

    :goto_9
    return-object v0

    .line 454
    :pswitch_a
    iget-object v0, p0, Landroid/support/design/shape/MaterialShapeDrawable;->shapedViewModel:Landroid/support/design/shape/ShapePathModel;

    invoke-virtual {v0}, Landroid/support/design/shape/ShapePathModel;->getTopRightCorner()Landroid/support/design/shape/CornerTreatment;

    move-result-object v0

    goto :goto_9

    .line 456
    :pswitch_11
    iget-object v0, p0, Landroid/support/design/shape/MaterialShapeDrawable;->shapedViewModel:Landroid/support/design/shape/ShapePathModel;

    invoke-virtual {v0}, Landroid/support/design/shape/ShapePathModel;->getBottomRightCorner()Landroid/support/design/shape/CornerTreatment;

    move-result-object v0

    goto :goto_9

    .line 458
    :pswitch_18
    iget-object v0, p0, Landroid/support/design/shape/MaterialShapeDrawable;->shapedViewModel:Landroid/support/design/shape/ShapePathModel;

    invoke-virtual {v0}, Landroid/support/design/shape/ShapePathModel;->getBottomLeftCorner()Landroid/support/design/shape/CornerTreatment;

    move-result-object v0

    goto :goto_9

    .line 452
    nop

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_a
        :pswitch_11
        :pswitch_18
    .end packed-switch
.end method

.method private getEdgeTreatmentForIndex(I)Landroid/support/design/shape/EdgeTreatment;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 466
    packed-switch p1, :pswitch_data_20

    .line 475
    iget-object v0, p0, Landroid/support/design/shape/MaterialShapeDrawable;->shapedViewModel:Landroid/support/design/shape/ShapePathModel;

    invoke-virtual {v0}, Landroid/support/design/shape/ShapePathModel;->getTopEdge()Landroid/support/design/shape/EdgeTreatment;

    move-result-object v0

    :goto_9
    return-object v0

    .line 468
    :pswitch_a
    iget-object v0, p0, Landroid/support/design/shape/MaterialShapeDrawable;->shapedViewModel:Landroid/support/design/shape/ShapePathModel;

    invoke-virtual {v0}, Landroid/support/design/shape/ShapePathModel;->getRightEdge()Landroid/support/design/shape/EdgeTreatment;

    move-result-object v0

    goto :goto_9

    .line 470
    :pswitch_11
    iget-object v0, p0, Landroid/support/design/shape/MaterialShapeDrawable;->shapedViewModel:Landroid/support/design/shape/ShapePathModel;

    invoke-virtual {v0}, Landroid/support/design/shape/ShapePathModel;->getBottomEdge()Landroid/support/design/shape/EdgeTreatment;

    move-result-object v0

    goto :goto_9

    .line 472
    :pswitch_18
    iget-object v0, p0, Landroid/support/design/shape/MaterialShapeDrawable;->shapedViewModel:Landroid/support/design/shape/ShapePathModel;

    invoke-virtual {v0}, Landroid/support/design/shape/ShapePathModel;->getLeftEdge()Landroid/support/design/shape/EdgeTreatment;

    move-result-object v0

    goto :goto_9

    .line 466
    nop

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_a
        :pswitch_11
        :pswitch_18
    .end packed-switch
.end method

.method private getPath(IILandroid/graphics/Path;)V
    .registers 9
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "path"    # Landroid/graphics/Path;

    .prologue
    .line 543
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/design/shape/MaterialShapeDrawable;->getPathForSize(IILandroid/graphics/Path;)V

    .line 544
    iget v0, p0, Landroid/support/design/shape/MaterialShapeDrawable;->scale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_c

    .line 550
    :goto_b
    return-void

    .line 547
    :cond_c
    iget-object v0, p0, Landroid/support/design/shape/MaterialShapeDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 548
    iget-object v0, p0, Landroid/support/design/shape/MaterialShapeDrawable;->matrix:Landroid/graphics/Matrix;

    iget v1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->scale:F

    iget v2, p0, Landroid/support/design/shape/MaterialShapeDrawable;->scale:F

    div-int/lit8 v3, p1, 0x2

    int-to-float v3, v3

    div-int/lit8 v4, p2, 0x2

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 549
    iget-object v0, p0, Landroid/support/design/shape/MaterialShapeDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p3, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    goto :goto_b
.end method

.method private static modulateAlpha(II)I
    .registers 4
    .param p0, "paintAlpha"    # I
    .param p1, "alpha"    # I

    .prologue
    .line 99
    ushr-int/lit8 v1, p1, 0x7

    add-int v0, p1, v1

    .line 100
    .local v0, "scale":I
    mul-int v1, p0, v0

    ushr-int/lit8 v1, v1, 0x8

    return v1
.end method

.method private setCornerPathAndTransform(III)V
    .registers 10
    .param p1, "index"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 403
    iget-object v2, p0, Landroid/support/design/shape/MaterialShapeDrawable;->pointF:Landroid/graphics/PointF;

    invoke-direct {p0, p1, p2, p3, v2}, Landroid/support/design/shape/MaterialShapeDrawable;->getCoordinatesOfCorner(IIILandroid/graphics/PointF;)V

    .line 404
    invoke-direct {p0, p1, p2, p3}, Landroid/support/design/shape/MaterialShapeDrawable;->angleOfCorner(III)F

    move-result v0

    .line 405
    .local v0, "angle":F
    invoke-direct {p0, p1}, Landroid/support/design/shape/MaterialShapeDrawable;->getCornerTreatmentForIndex(I)Landroid/support/design/shape/CornerTreatment;

    move-result-object v2

    iget v3, p0, Landroid/support/design/shape/MaterialShapeDrawable;->interpolation:F

    iget-object v4, p0, Landroid/support/design/shape/MaterialShapeDrawable;->cornerPaths:[Landroid/support/design/shape/ShapePath;

    aget-object v4, v4, p1

    invoke-virtual {v2, v0, v3, v4}, Landroid/support/design/shape/CornerTreatment;->getCornerPath(FFLandroid/support/design/shape/ShapePath;)V

    .line 407
    add-int/lit8 v2, p1, -0x1

    add-int/lit8 v2, v2, 0x4

    rem-int/lit8 v2, v2, 0x4

    invoke-direct {p0, v2, p2, p3}, Landroid/support/design/shape/MaterialShapeDrawable;->angleOfEdge(III)F

    move-result v2

    const v3, 0x3fc90fdb

    add-float v1, v2, v3

    .line 408
    .local v1, "prevEdgeAngle":F
    iget-object v2, p0, Landroid/support/design/shape/MaterialShapeDrawable;->cornerTransforms:[Landroid/graphics/Matrix;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 409
    iget-object v2, p0, Landroid/support/design/shape/MaterialShapeDrawable;->cornerTransforms:[Landroid/graphics/Matrix;

    aget-object v2, v2, p1

    iget-object v3, p0, Landroid/support/design/shape/MaterialShapeDrawable;->pointF:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Landroid/support/design/shape/MaterialShapeDrawable;->pointF:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 410
    iget-object v2, p0, Landroid/support/design/shape/MaterialShapeDrawable;->cornerTransforms:[Landroid/graphics/Matrix;

    aget-object v2, v2, p1

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 411
    return-void
.end method

.method private setEdgeTransform(III)V
    .registers 9
    .param p1, "index"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 414
    iget-object v1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->scratch:[F

    iget-object v2, p0, Landroid/support/design/shape/MaterialShapeDrawable;->cornerPaths:[Landroid/support/design/shape/ShapePath;

    aget-object v2, v2, p1

    iget v2, v2, Landroid/support/design/shape/ShapePath;->endX:F

    aput v2, v1, v3

    .line 415
    iget-object v1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->scratch:[F

    iget-object v2, p0, Landroid/support/design/shape/MaterialShapeDrawable;->cornerPaths:[Landroid/support/design/shape/ShapePath;

    aget-object v2, v2, p1

    iget v2, v2, Landroid/support/design/shape/ShapePath;->endY:F

    aput v2, v1, v4

    .line 416
    iget-object v1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->cornerTransforms:[Landroid/graphics/Matrix;

    aget-object v1, v1, p1

    iget-object v2, p0, Landroid/support/design/shape/MaterialShapeDrawable;->scratch:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 417
    invoke-direct {p0, p1, p2, p3}, Landroid/support/design/shape/MaterialShapeDrawable;->angleOfEdge(III)F

    move-result v0

    .line 418
    .local v0, "edgeAngle":F
    iget-object v1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->edgeTransforms:[Landroid/graphics/Matrix;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 419
    iget-object v1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->edgeTransforms:[Landroid/graphics/Matrix;

    aget-object v1, v1, p1

    iget-object v2, p0, Landroid/support/design/shape/MaterialShapeDrawable;->scratch:[F

    aget v2, v2, v3

    iget-object v3, p0, Landroid/support/design/shape/MaterialShapeDrawable;->scratch:[F

    aget v3, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 420
    iget-object v1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->edgeTransforms:[Landroid/graphics/Matrix;

    aget-object v1, v1, p1

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 421
    return-void
.end method

.method private updateTintFilter()V
    .registers 5

    .prologue
    .line 553
    iget-object v1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->tintList:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_8

    iget-object v1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->tintMode:Landroid/graphics/PorterDuff$Mode;

    if-nez v1, :cond_c

    .line 554
    :cond_8
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->tintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 562
    :cond_b
    :goto_b
    return-void

    .line 557
    :cond_c
    iget-object v1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->tintList:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/support/design/shape/MaterialShapeDrawable;->getState()[I

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 558
    .local v0, "color":I
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, Landroid/support/design/shape/MaterialShapeDrawable;->tintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v0, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->tintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 559
    iget-boolean v1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->useTintColorForShadow:Z

    if-eqz v1, :cond_b

    .line 560
    iput v0, p0, Landroid/support/design/shape/MaterialShapeDrawable;->shadowColor:I

    goto :goto_b
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 352
    iget-object v0, p0, Landroid/support/design/shape/MaterialShapeDrawable;->paint:Landroid/graphics/Paint;

    iget-object v2, p0, Landroid/support/design/shape/MaterialShapeDrawable;->tintFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 353
    iget-object v0, p0, Landroid/support/design/shape/MaterialShapeDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v6

    .line 354
    .local v6, "prevAlpha":I
    iget-object v0, p0, Landroid/support/design/shape/MaterialShapeDrawable;->paint:Landroid/graphics/Paint;

    iget v2, p0, Landroid/support/design/shape/MaterialShapeDrawable;->alpha:I

    invoke-static {v6, v2}, Landroid/support/design/shape/MaterialShapeDrawable;->modulateAlpha(II)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 355
    iget-object v0, p0, Landroid/support/design/shape/MaterialShapeDrawable;->paint:Landroid/graphics/Paint;

    iget v2, p0, Landroid/support/design/shape/MaterialShapeDrawable;->strokeWidth:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 356
    iget-object v0, p0, Landroid/support/design/shape/MaterialShapeDrawable;->paint:Landroid/graphics/Paint;

    iget-object v2, p0, Landroid/support/design/shape/MaterialShapeDrawable;->paintStyle:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 357
    iget v0, p0, Landroid/support/design/shape/MaterialShapeDrawable;->shadowElevation:I

    if-lez v0, :cond_3c

    iget-boolean v0, p0, Landroid/support/design/shape/MaterialShapeDrawable;->shadowEnabled:Z

    if-eqz v0, :cond_3c

    .line 358
    iget-object v0, p0, Landroid/support/design/shape/MaterialShapeDrawable;->paint:Landroid/graphics/Paint;

    iget v2, p0, Landroid/support/design/shape/MaterialShapeDrawable;->shadowRadius:I

    int-to-float v2, v2

    iget v3, p0, Landroid/support/design/shape/MaterialShapeDrawable;->shadowElevation:I

    int-to-float v3, v3

    iget v4, p0, Landroid/support/design/shape/MaterialShapeDrawable;->shadowColor:I

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 360
    :cond_3c
    iget-object v0, p0, Landroid/support/design/shape/MaterialShapeDrawable;->shapedViewModel:Landroid/support/design/shape/ShapePathModel;

    if-eqz v0, :cond_5a

    .line 361
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    iget-object v2, p0, Landroid/support/design/shape/MaterialShapeDrawable;->path:Landroid/graphics/Path;

    invoke-direct {p0, v0, v1, v2}, Landroid/support/design/shape/MaterialShapeDrawable;->getPath(IILandroid/graphics/Path;)V

    .line 362
    iget-object v0, p0, Landroid/support/design/shape/MaterialShapeDrawable;->path:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 366
    :goto_54
    iget-object v0, p0, Landroid/support/design/shape/MaterialShapeDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 367
    return-void

    .line 364
    :cond_5a
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Landroid/support/design/shape/MaterialShapeDrawable;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_54
.end method

.method public getInterpolation()F
    .registers 2

    .prologue
    .line 219
    iget v0, p0, Landroid/support/design/shape/MaterialShapeDrawable;->interpolation:F

    return v0
.end method

.method public getOpacity()I
    .registers 2

    .prologue
    .line 155
    const/4 v0, -0x3

    return v0
.end method

.method public getPaintStyle()Landroid/graphics/Paint$Style;
    .registers 2

    .prologue
    .line 318
    iget-object v0, p0, Landroid/support/design/shape/MaterialShapeDrawable;->paintStyle:Landroid/graphics/Paint$Style;

    return-object v0
.end method

.method public getPathForSize(IILandroid/graphics/Path;)V
    .registers 7
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "path"    # Landroid/graphics/Path;

    .prologue
    const/4 v2, 0x4

    .line 379
    invoke-virtual {p3}, Landroid/graphics/Path;->rewind()V

    .line 381
    iget-object v1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->shapedViewModel:Landroid/support/design/shape/ShapePathModel;

    if-nez v1, :cond_9

    .line 400
    :goto_8
    return-void

    .line 387
    :cond_9
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_a
    if-ge v0, v2, :cond_15

    .line 388
    invoke-direct {p0, v0, p1, p2}, Landroid/support/design/shape/MaterialShapeDrawable;->setCornerPathAndTransform(III)V

    .line 389
    invoke-direct {p0, v0, p1, p2}, Landroid/support/design/shape/MaterialShapeDrawable;->setEdgeTransform(III)V

    .line 387
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 394
    :cond_15
    const/4 v0, 0x0

    :goto_16
    if-ge v0, v2, :cond_21

    .line 395
    invoke-direct {p0, v0, p3}, Landroid/support/design/shape/MaterialShapeDrawable;->appendCornerPath(ILandroid/graphics/Path;)V

    .line 396
    invoke-direct {p0, v0, p3}, Landroid/support/design/shape/MaterialShapeDrawable;->appendEdgePath(ILandroid/graphics/Path;)V

    .line 394
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 399
    :cond_21
    invoke-virtual {p3}, Landroid/graphics/Path;->close()V

    goto :goto_8
.end method

.method public getScale()F
    .registers 2

    .prologue
    .line 278
    iget v0, p0, Landroid/support/design/shape/MaterialShapeDrawable;->scale:F

    return v0
.end method

.method public getShadowElevation()I
    .registers 2

    .prologue
    .line 240
    iget v0, p0, Landroid/support/design/shape/MaterialShapeDrawable;->shadowElevation:I

    return v0
.end method

.method public getShadowRadius()I
    .registers 2

    .prologue
    .line 259
    iget v0, p0, Landroid/support/design/shape/MaterialShapeDrawable;->shadowRadius:I

    return v0
.end method

.method public getShapedViewModel()Landroid/support/design/shape/ShapePathModel;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Landroid/support/design/shape/MaterialShapeDrawable;->shapedViewModel:Landroid/support/design/shape/ShapePathModel;

    return-object v0
.end method

.method public getStrokeWidth()F
    .registers 2

    .prologue
    .line 337
    iget v0, p0, Landroid/support/design/shape/MaterialShapeDrawable;->strokeWidth:F

    return v0
.end method

.method public getTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Landroid/support/design/shape/MaterialShapeDrawable;->tintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTransparentRegion()Landroid/graphics/Region;
    .registers 5

    .prologue
    .line 172
    invoke-virtual {p0}, Landroid/support/design/shape/MaterialShapeDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 173
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->transparentRegion:Landroid/graphics/Region;

    invoke-virtual {v1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 174
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget-object v3, p0, Landroid/support/design/shape/MaterialShapeDrawable;->path:Landroid/graphics/Path;

    invoke-direct {p0, v1, v2, v3}, Landroid/support/design/shape/MaterialShapeDrawable;->getPath(IILandroid/graphics/Path;)V

    .line 175
    iget-object v1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->scratchRegion:Landroid/graphics/Region;

    iget-object v2, p0, Landroid/support/design/shape/MaterialShapeDrawable;->path:Landroid/graphics/Path;

    iget-object v3, p0, Landroid/support/design/shape/MaterialShapeDrawable;->transparentRegion:Landroid/graphics/Region;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    .line 176
    iget-object v1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->transparentRegion:Landroid/graphics/Region;

    iget-object v2, p0, Landroid/support/design/shape/MaterialShapeDrawable;->scratchRegion:Landroid/graphics/Region;

    sget-object v3, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 177
    iget-object v1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->transparentRegion:Landroid/graphics/Region;

    return-object v1
.end method

.method public isPointInTransparentRegion(II)Z
    .registers 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 190
    invoke-virtual {p0}, Landroid/support/design/shape/MaterialShapeDrawable;->getTransparentRegion()Landroid/graphics/Region;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Region;->contains(II)Z

    move-result v0

    return v0
.end method

.method public isShadowEnabled()Z
    .registers 2

    .prologue
    .line 199
    iget-boolean v0, p0, Landroid/support/design/shape/MaterialShapeDrawable;->shadowEnabled:Z

    return v0
.end method

.method public setAlpha(I)V
    .registers 2
    .param p1, "alpha"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param

    .prologue
    .line 160
    iput p1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->alpha:I

    .line 161
    invoke-virtual {p0}, Landroid/support/design/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 162
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 166
    iget-object v0, p0, Landroid/support/design/shape/MaterialShapeDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 167
    invoke-virtual {p0}, Landroid/support/design/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 168
    return-void
.end method

.method public setInterpolation(F)V
    .registers 2
    .param p1, "interpolation"    # F

    .prologue
    .line 230
    iput p1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->interpolation:F

    .line 231
    invoke-virtual {p0}, Landroid/support/design/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 232
    return-void
.end method

.method public setPaintStyle(Landroid/graphics/Paint$Style;)V
    .registers 2
    .param p1, "paintStyle"    # Landroid/graphics/Paint$Style;

    .prologue
    .line 327
    iput-object p1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->paintStyle:Landroid/graphics/Paint$Style;

    .line 328
    invoke-virtual {p0}, Landroid/support/design/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 329
    return-void
.end method

.method public setScale(F)V
    .registers 2
    .param p1, "scale"    # F

    .prologue
    .line 287
    iput p1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->scale:F

    .line 288
    invoke-virtual {p0}, Landroid/support/design/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 289
    return-void
.end method

.method public setShadowColor(I)V
    .registers 3
    .param p1, "shadowColor"    # I

    .prologue
    .line 307
    iput p1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->shadowColor:I

    .line 308
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/shape/MaterialShapeDrawable;->useTintColorForShadow:Z

    .line 309
    invoke-virtual {p0}, Landroid/support/design/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 310
    return-void
.end method

.method public setShadowElevation(I)V
    .registers 2
    .param p1, "shadowElevation"    # I

    .prologue
    .line 249
    iput p1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->shadowElevation:I

    .line 250
    invoke-virtual {p0}, Landroid/support/design/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 251
    return-void
.end method

.method public setShadowEnabled(Z)V
    .registers 2
    .param p1, "shadowEnabled"    # Z

    .prologue
    .line 208
    iput-boolean p1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->shadowEnabled:Z

    .line 209
    invoke-virtual {p0}, Landroid/support/design/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 210
    return-void
.end method

.method public setShadowRadius(I)V
    .registers 2
    .param p1, "shadowRadius"    # I

    .prologue
    .line 268
    iput p1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->shadowRadius:I

    .line 269
    invoke-virtual {p0}, Landroid/support/design/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 270
    return-void
.end method

.method public setShapedViewModel(Landroid/support/design/shape/ShapePathModel;)V
    .registers 2
    .param p1, "shapedViewModel"    # Landroid/support/design/shape/ShapePathModel;

    .prologue
    .line 119
    iput-object p1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->shapedViewModel:Landroid/support/design/shape/ShapePathModel;

    .line 120
    invoke-virtual {p0}, Landroid/support/design/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 121
    return-void
.end method

.method public setStrokeWidth(F)V
    .registers 2
    .param p1, "strokeWidth"    # F

    .prologue
    .line 346
    iput p1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->strokeWidth:F

    .line 347
    invoke-virtual {p0}, Landroid/support/design/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 348
    return-void
.end method

.method public setTint(I)V
    .registers 3
    .param p1, "tintColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 148
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/shape/MaterialShapeDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 149
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .registers 2
    .param p1, "tintList"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 134
    iput-object p1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->tintList:Landroid/content/res/ColorStateList;

    .line 135
    invoke-direct {p0}, Landroid/support/design/shape/MaterialShapeDrawable;->updateTintFilter()V

    .line 136
    invoke-virtual {p0}, Landroid/support/design/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 137
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 2
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 141
    iput-object p1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->tintMode:Landroid/graphics/PorterDuff$Mode;

    .line 142
    invoke-direct {p0}, Landroid/support/design/shape/MaterialShapeDrawable;->updateTintFilter()V

    .line 143
    invoke-virtual {p0}, Landroid/support/design/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 144
    return-void
.end method

.method public setUseTintColorForShadow(Z)V
    .registers 2
    .param p1, "useTintColorForShadow"    # Z

    .prologue
    .line 297
    iput-boolean p1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->useTintColorForShadow:Z

    .line 298
    invoke-virtual {p0}, Landroid/support/design/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 299
    return-void
.end method
