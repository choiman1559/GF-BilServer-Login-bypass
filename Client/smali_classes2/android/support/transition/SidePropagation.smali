.class public Landroid/support/transition/SidePropagation;
.super Landroid/support/transition/VisibilityPropagation;
.source "SidePropagation.java"


# instance fields
.field private mPropagationSpeed:F

.field private mSide:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/support/transition/VisibilityPropagation;-><init>()V

    .line 36
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Landroid/support/transition/SidePropagation;->mPropagationSpeed:F

    .line 37
    const/16 v0, 0x50

    iput v0, p0, Landroid/support/transition/SidePropagation;->mSide:I

    return-void
.end method

.method private distance(Landroid/view/View;IIIIIIII)I
    .registers 15
    .param p1, "sceneRoot"    # Landroid/view/View;
    .param p2, "viewX"    # I
    .param p3, "viewY"    # I
    .param p4, "epicenterX"    # I
    .param p5, "epicenterY"    # I
    .param p6, "left"    # I
    .param p7, "top"    # I
    .param p8, "right"    # I
    .param p9, "bottom"    # I

    .prologue
    .line 125
    iget v3, p0, Landroid/support/transition/SidePropagation;->mSide:I

    const v4, 0x800003

    if-ne v3, v4, :cond_1b

    .line 126
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_17

    const/4 v1, 0x1

    .line 128
    .local v1, "isRtl":Z
    :goto_f
    if-eqz v1, :cond_19

    const/4 v2, 0x5

    .line 136
    .end local v1    # "isRtl":Z
    .local v2, "side":I
    :goto_12
    const/4 v0, 0x0

    .line 137
    .local v0, "distance":I
    sparse-switch v2, :sswitch_data_62

    .line 151
    :goto_16
    return v0

    .line 126
    .end local v0    # "distance":I
    .end local v2    # "side":I
    :cond_17
    const/4 v1, 0x0

    goto :goto_f

    .line 128
    .restart local v1    # "isRtl":Z
    :cond_19
    const/4 v2, 0x3

    goto :goto_12

    .line 129
    .end local v1    # "isRtl":Z
    :cond_1b
    iget v3, p0, Landroid/support/transition/SidePropagation;->mSide:I

    const v4, 0x800005

    if-ne v3, v4, :cond_32

    .line 130
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2e

    const/4 v1, 0x1

    .line 132
    .restart local v1    # "isRtl":Z
    :goto_2a
    if-eqz v1, :cond_30

    const/4 v2, 0x3

    .line 133
    .restart local v2    # "side":I
    :goto_2d
    goto :goto_12

    .line 130
    .end local v1    # "isRtl":Z
    .end local v2    # "side":I
    :cond_2e
    const/4 v1, 0x0

    goto :goto_2a

    .line 132
    .restart local v1    # "isRtl":Z
    :cond_30
    const/4 v2, 0x5

    goto :goto_2d

    .line 134
    .end local v1    # "isRtl":Z
    :cond_32
    iget v2, p0, Landroid/support/transition/SidePropagation;->mSide:I

    .restart local v2    # "side":I
    goto :goto_12

    .line 139
    .restart local v0    # "distance":I
    :sswitch_35
    sub-int v3, p8, p2

    sub-int v4, p5, p3

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int v0, v3, v4

    .line 140
    goto :goto_16

    .line 142
    :sswitch_40
    sub-int v3, p9, p3

    sub-int v4, p4, p2

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int v0, v3, v4

    .line 143
    goto :goto_16

    .line 145
    :sswitch_4b
    sub-int v3, p2, p6

    sub-int v4, p5, p3

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int v0, v3, v4

    .line 146
    goto :goto_16

    .line 148
    :sswitch_56
    sub-int v3, p3, p7

    sub-int v4, p4, p2

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int v0, v3, v4

    goto :goto_16

    .line 137
    nop

    :sswitch_data_62
    .sparse-switch
        0x3 -> :sswitch_35
        0x5 -> :sswitch_4b
        0x30 -> :sswitch_40
        0x50 -> :sswitch_56
    .end sparse-switch
.end method

.method private getMaxDistance(Landroid/view/ViewGroup;)I
    .registers 3
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;

    .prologue
    .line 155
    iget v0, p0, Landroid/support/transition/SidePropagation;->mSide:I

    sparse-switch v0, :sswitch_data_10

    .line 162
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    :goto_9
    return v0

    .line 160
    :sswitch_a
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    goto :goto_9

    .line 155
    nop

    :sswitch_data_10
    .sparse-switch
        0x3 -> :sswitch_a
        0x5 -> :sswitch_a
        0x800003 -> :sswitch_a
        0x800005 -> :sswitch_a
    .end sparse-switch
.end method


# virtual methods
.method public getStartDelay(Landroid/view/ViewGroup;Landroid/support/transition/Transition;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)J
    .registers 26
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "transition"    # Landroid/support/transition/Transition;
    .param p3, "startValues"    # Landroid/support/transition/TransitionValues;
    .param p4, "endValues"    # Landroid/support/transition/TransitionValues;

    .prologue
    .line 76
    if-nez p3, :cond_7

    if-nez p4, :cond_7

    .line 77
    const-wide/16 v2, 0x0

    .line 119
    :goto_6
    return-wide v2

    .line 79
    :cond_7
    const/4 v12, 0x1

    .line 80
    .local v12, "directionMultiplier":I
    invoke-virtual/range {p2 .. p2}, Landroid/support/transition/Transition;->getEpicenter()Landroid/graphics/Rect;

    move-result-object v15

    .line 82
    .local v15, "epicenter":Landroid/graphics/Rect;
    if-eqz p4, :cond_18

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/support/transition/SidePropagation;->getViewVisibility(Landroid/support/transition/TransitionValues;)I

    move-result v2

    if-nez v2, :cond_96

    .line 83
    :cond_18
    move-object/from16 v20, p3

    .line 84
    .local v20, "positionValues":Landroid/support/transition/TransitionValues;
    const/4 v12, -0x1

    .line 89
    :goto_1b
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/support/transition/SidePropagation;->getViewX(Landroid/support/transition/TransitionValues;)I

    move-result v4

    .line 90
    .local v4, "viewCenterX":I
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/support/transition/SidePropagation;->getViewY(Landroid/support/transition/TransitionValues;)I

    move-result v5

    .line 92
    .local v5, "viewCenterY":I
    const/4 v2, 0x2

    new-array v0, v2, [I

    move-object/from16 v18, v0

    .line 93
    .local v18, "loc":[I
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 94
    const/4 v2, 0x0

    aget v2, v18, v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getTranslationX()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int v8, v2, v3

    .line 95
    .local v8, "left":I
    const/4 v2, 0x1

    aget v2, v18, v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int v9, v2, v3

    .line 96
    .local v9, "top":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    add-int v10, v8, v2

    .line 97
    .local v10, "right":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    add-int v11, v9, v2

    .line 101
    .local v11, "bottom":I
    if-eqz v15, :cond_99

    .line 102
    invoke-virtual {v15}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    .line 103
    .local v6, "epicenterX":I
    invoke-virtual {v15}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    .local v7, "epicenterY":I
    :goto_67
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 109
    invoke-direct/range {v2 .. v11}, Landroid/support/transition/SidePropagation;->distance(Landroid/view/View;IIIIIIII)I

    move-result v2

    int-to-float v13, v2

    .line 111
    .local v13, "distance":F
    invoke-direct/range {p0 .. p1}, Landroid/support/transition/SidePropagation;->getMaxDistance(Landroid/view/ViewGroup;)I

    move-result v2

    int-to-float v0, v2

    move/from16 v19, v0

    .line 112
    .local v19, "maxDistance":F
    div-float v14, v13, v19

    .line 114
    .local v14, "distanceFraction":F
    invoke-virtual/range {p2 .. p2}, Landroid/support/transition/Transition;->getDuration()J

    move-result-wide v16

    .line 115
    .local v16, "duration":J
    const-wide/16 v2, 0x0

    cmp-long v2, v16, v2

    if-gez v2, :cond_85

    .line 116
    const-wide/16 v16, 0x12c

    .line 119
    :cond_85
    int-to-long v2, v12

    mul-long v2, v2, v16

    long-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/transition/SidePropagation;->mPropagationSpeed:F

    div-float/2addr v2, v3

    mul-float/2addr v2, v14

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-long v2, v2

    goto/16 :goto_6

    .line 86
    .end local v4    # "viewCenterX":I
    .end local v5    # "viewCenterY":I
    .end local v6    # "epicenterX":I
    .end local v7    # "epicenterY":I
    .end local v8    # "left":I
    .end local v9    # "top":I
    .end local v10    # "right":I
    .end local v11    # "bottom":I
    .end local v13    # "distance":F
    .end local v14    # "distanceFraction":F
    .end local v16    # "duration":J
    .end local v18    # "loc":[I
    .end local v19    # "maxDistance":F
    .end local v20    # "positionValues":Landroid/support/transition/TransitionValues;
    :cond_96
    move-object/from16 v20, p4

    .restart local v20    # "positionValues":Landroid/support/transition/TransitionValues;
    goto :goto_1b

    .line 105
    .restart local v4    # "viewCenterX":I
    .restart local v5    # "viewCenterY":I
    .restart local v8    # "left":I
    .restart local v9    # "top":I
    .restart local v10    # "right":I
    .restart local v11    # "bottom":I
    .restart local v18    # "loc":[I
    :cond_99
    add-int v2, v8, v10

    div-int/lit8 v6, v2, 0x2

    .line 106
    .restart local v6    # "epicenterX":I
    add-int v2, v9, v11

    div-int/lit8 v7, v2, 0x2

    .restart local v7    # "epicenterY":I
    goto :goto_67
.end method

.method public setPropagationSpeed(F)V
    .registers 4
    .param p1, "propagationSpeed"    # F

    .prologue
    .line 67
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_d

    .line 68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "propagationSpeed may not be 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_d
    iput p1, p0, Landroid/support/transition/SidePropagation;->mPropagationSpeed:F

    .line 71
    return-void
.end method

.method public setSide(I)V
    .registers 2
    .param p1, "side"    # I

    .prologue
    .line 51
    iput p1, p0, Landroid/support/transition/SidePropagation;->mSide:I

    .line 52
    return-void
.end method
