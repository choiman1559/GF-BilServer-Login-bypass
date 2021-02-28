.class public Landroid/support/transition/PatternPathMotion;
.super Landroid/support/transition/PathMotion;
.source "PatternPathMotion.java"


# instance fields
.field private mOriginalPatternPath:Landroid/graphics/Path;

.field private final mPatternPath:Landroid/graphics/Path;

.field private final mTempMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/support/transition/PathMotion;-><init>()V

    .line 46
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/support/transition/PatternPathMotion;->mPatternPath:Landroid/graphics/Path;

    .line 48
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/transition/PatternPathMotion;->mTempMatrix:Landroid/graphics/Matrix;

    .line 54
    iget-object v0, p0, Landroid/support/transition/PatternPathMotion;->mPatternPath:Landroid/graphics/Path;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 55
    iget-object v0, p0, Landroid/support/transition/PatternPathMotion;->mPatternPath:Landroid/graphics/Path;

    iput-object v0, p0, Landroid/support/transition/PatternPathMotion;->mOriginalPatternPath:Landroid/graphics/Path;

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/support/transition/PathMotion;-><init>()V

    .line 46
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Landroid/support/transition/PatternPathMotion;->mPatternPath:Landroid/graphics/Path;

    .line 48
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Landroid/support/transition/PatternPathMotion;->mTempMatrix:Landroid/graphics/Matrix;

    .line 59
    sget-object v3, Landroid/support/transition/Styleable;->PATTERN_PATH_MOTION:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 61
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_17
    check-cast p2, Lorg/xmlpull/v1/XmlPullParser;

    .end local p2    # "attrs":Landroid/util/AttributeSet;
    const-string v3, "patternPathData"

    const/4 v4, 0x0

    invoke-static {v0, p2, v3, v4}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, "pathData":Ljava/lang/String;
    if-nez v1, :cond_2f

    .line 64
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "pathData must be supplied for patternPathMotion"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2a
    .catchall {:try_start_17 .. :try_end_2a} :catchall_2a

    .line 69
    .end local v1    # "pathData":Ljava/lang/String;
    :catchall_2a
    move-exception v3

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v3

    .line 66
    .restart local v1    # "pathData":Ljava/lang/String;
    :cond_2f
    :try_start_2f
    invoke-static {v1}, Landroid/support/v4/graphics/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v2

    .line 67
    .local v2, "pattern":Landroid/graphics/Path;
    invoke-virtual {p0, v2}, Landroid/support/transition/PatternPathMotion;->setPatternPath(Landroid/graphics/Path;)V
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_2a

    .line 69
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Path;)V
    .registers 3
    .param p1, "patternPath"    # Landroid/graphics/Path;

    .prologue
    .line 81
    invoke-direct {p0}, Landroid/support/transition/PathMotion;-><init>()V

    .line 46
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/support/transition/PatternPathMotion;->mPatternPath:Landroid/graphics/Path;

    .line 48
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/transition/PatternPathMotion;->mTempMatrix:Landroid/graphics/Matrix;

    .line 82
    invoke-virtual {p0, p1}, Landroid/support/transition/PatternPathMotion;->setPatternPath(Landroid/graphics/Path;)V

    .line 83
    return-void
.end method

.method private static distance(FF)F
    .registers 4
    .param p0, "x"    # F
    .param p1, "y"    # F

    .prologue
    .line 146
    mul-float v0, p0, p0

    mul-float v1, p1, p1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method


# virtual methods
.method public getPath(FFFF)Landroid/graphics/Path;
    .registers 15
    .param p1, "startX"    # F
    .param p2, "startY"    # F
    .param p3, "endX"    # F
    .param p4, "endY"    # F

    .prologue
    .line 132
    sub-float v2, p3, p1

    .line 133
    .local v2, "dx":F
    sub-float v3, p4, p2

    .line 134
    .local v3, "dy":F
    invoke-static {v2, v3}, Landroid/support/transition/PatternPathMotion;->distance(FF)F

    move-result v4

    .line 135
    .local v4, "length":F
    float-to-double v6, v3

    float-to-double v8, v2

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    .line 137
    .local v0, "angle":D
    iget-object v6, p0, Landroid/support/transition/PatternPathMotion;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v4, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 138
    iget-object v6, p0, Landroid/support/transition/PatternPathMotion;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v8

    double-to-float v7, v8

    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 139
    iget-object v6, p0, Landroid/support/transition/PatternPathMotion;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 140
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    .line 141
    .local v5, "path":Landroid/graphics/Path;
    iget-object v6, p0, Landroid/support/transition/PatternPathMotion;->mPatternPath:Landroid/graphics/Path;

    iget-object v7, p0, Landroid/support/transition/PatternPathMotion;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v7, v5}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 142
    return-object v5
.end method

.method public getPatternPath()Landroid/graphics/Path;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Landroid/support/transition/PatternPathMotion;->mOriginalPatternPath:Landroid/graphics/Path;

    return-object v0
.end method

.method public setPatternPath(Landroid/graphics/Path;)V
    .registers 22
    .param p1, "patternPath"    # Landroid/graphics/Path;

    .prologue
    .line 104
    new-instance v10, Landroid/graphics/PathMeasure;

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-direct {v10, v0, v15}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 105
    .local v10, "pathMeasure":Landroid/graphics/PathMeasure;
    invoke-virtual {v10}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v9

    .line 106
    .local v9, "length":F
    const/4 v15, 0x2

    new-array v11, v15, [F

    .line 107
    .local v11, "pos":[F
    const/4 v15, 0x0

    invoke-virtual {v10, v9, v11, v15}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 108
    const/4 v15, 0x0

    aget v7, v11, v15

    .line 109
    .local v7, "endX":F
    const/4 v15, 0x1

    aget v8, v11, v15

    .line 110
    .local v8, "endY":F
    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v10, v15, v11, v0}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 111
    const/4 v15, 0x0

    aget v13, v11, v15

    .line 112
    .local v13, "startX":F
    const/4 v15, 0x1

    aget v14, v11, v15

    .line 114
    .local v14, "startY":F
    cmpl-float v15, v13, v7

    if-nez v15, :cond_37

    cmpl-float v15, v14, v8

    if-nez v15, :cond_37

    .line 115
    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string v16, "pattern must not end at the starting point"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 118
    :cond_37
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/transition/PatternPathMotion;->mTempMatrix:Landroid/graphics/Matrix;

    neg-float v0, v13

    move/from16 v16, v0

    neg-float v0, v14

    move/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 119
    sub-float v5, v7, v13

    .line 120
    .local v5, "dx":F
    sub-float v6, v8, v14

    .line 121
    .local v6, "dy":F
    invoke-static {v5, v6}, Landroid/support/transition/PatternPathMotion;->distance(FF)F

    move-result v4

    .line 122
    .local v4, "distance":F
    const/high16 v15, 0x3f800000    # 1.0f

    div-float v12, v15, v4

    .line 123
    .local v12, "scale":F
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/transition/PatternPathMotion;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v15, v12, v12}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 124
    float-to-double v0, v6

    move-wide/from16 v16, v0

    float-to-double v0, v5

    move-wide/from16 v18, v0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    .line 125
    .local v2, "angle":D
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/transition/PatternPathMotion;->mTempMatrix:Landroid/graphics/Matrix;

    neg-double v0, v2

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 126
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/transition/PatternPathMotion;->mTempMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/transition/PatternPathMotion;->mPatternPath:Landroid/graphics/Path;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 127
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/transition/PatternPathMotion;->mOriginalPatternPath:Landroid/graphics/Path;

    .line 128
    return-void
.end method
