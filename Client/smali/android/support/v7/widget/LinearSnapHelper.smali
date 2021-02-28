.class public Landroid/support/v7/widget/LinearSnapHelper;
.super Landroid/support/v7/widget/SnapHelper;
.source "LinearSnapHelper.java"


# static fields
.field private static final INVALID_DISTANCE:F = 1.0f


# instance fields
.field private mHorizontalHelper:Landroid/support/v7/widget/OrientationHelper;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mVerticalHelper:Landroid/support/v7/widget/OrientationHelper;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/support/v7/widget/SnapHelper;-><init>()V

    return-void
.end method

.method private computeDistancePerChild(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/support/v7/widget/OrientationHelper;)F
    .registers 16
    .param p1, "layoutManager"    # Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .param p2, "helper"    # Landroid/support/v7/widget/OrientationHelper;

    .prologue
    .line 233
    const/4 v8, 0x0

    .line 234
    .local v8, "minPosView":Landroid/view/View;
    const/4 v6, 0x0

    .line 235
    .local v6, "maxPosView":Landroid/view/View;
    const v7, 0x7fffffff

    .line 236
    .local v7, "minPos":I
    const/high16 v5, -0x80000000

    .line 237
    .local v5, "maxPos":I
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    .line 238
    .local v1, "childCount":I
    if-nez v1, :cond_10

    .line 239
    const/high16 v11, 0x3f800000    # 1.0f

    .line 268
    :goto_f
    return v11

    .line 242
    :cond_10
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_11
    if-ge v4, v1, :cond_2a

    .line 243
    invoke-virtual {p1, v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 244
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v9

    .line 245
    .local v9, "pos":I
    const/4 v11, -0x1

    if-ne v9, v11, :cond_21

    .line 242
    :cond_1e
    :goto_1e
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 248
    :cond_21
    if-ge v9, v7, :cond_25

    .line 249
    move v7, v9

    .line 250
    move-object v8, v0

    .line 252
    :cond_25
    if-le v9, v5, :cond_1e

    .line 253
    move v5, v9

    .line 254
    move-object v6, v0

    goto :goto_1e

    .line 257
    .end local v0    # "child":Landroid/view/View;
    .end local v9    # "pos":I
    :cond_2a
    if-eqz v8, :cond_2e

    if-nez v6, :cond_31

    .line 258
    :cond_2e
    const/high16 v11, 0x3f800000    # 1.0f

    goto :goto_f

    .line 260
    :cond_31
    invoke-virtual {p2, v8}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v11

    .line 261
    invoke-virtual {p2, v6}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v12

    .line 260
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 262
    .local v10, "start":I
    invoke-virtual {p2, v8}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v11

    .line 263
    invoke-virtual {p2, v6}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v12

    .line 262
    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 264
    .local v3, "end":I
    sub-int v2, v3, v10

    .line 265
    .local v2, "distance":I
    if-nez v2, :cond_50

    .line 266
    const/high16 v11, 0x3f800000    # 1.0f

    goto :goto_f

    .line 268
    :cond_50
    const/high16 v11, 0x3f800000    # 1.0f

    int-to-float v12, v2

    mul-float/2addr v11, v12

    sub-int v12, v5, v7

    add-int/lit8 v12, v12, 0x1

    int-to-float v12, v12

    div-float/2addr v11, v12

    goto :goto_f
.end method

.method private distanceToCenter(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/view/View;Landroid/support/v7/widget/OrientationHelper;)I
    .registers 8
    .param p1, "layoutManager"    # Landroid/support/v7/widget/RecyclerView$LayoutManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "targetView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "helper"    # Landroid/support/v7/widget/OrientationHelper;

    .prologue
    .line 143
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v2

    .line 144
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int v0, v2, v3

    .line 146
    .local v0, "childCenter":I
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getClipToPadding()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 147
    invoke-virtual {p3}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v2

    invoke-virtual {p3}, Landroid/support/v7/widget/OrientationHelper;->getTotalSpace()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int v1, v2, v3

    .line 151
    .local v1, "containerCenter":I
    :goto_1e
    sub-int v2, v0, v1

    return v2

    .line 149
    .end local v1    # "containerCenter":I
    :cond_21
    invoke-virtual {p3}, Landroid/support/v7/widget/OrientationHelper;->getEnd()I

    move-result v2

    div-int/lit8 v1, v2, 0x2

    .restart local v1    # "containerCenter":I
    goto :goto_1e
.end method

.method private estimateNextPositionDiffForFling(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/support/v7/widget/OrientationHelper;II)I
    .registers 12
    .param p1, "layoutManager"    # Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .param p2, "helper"    # Landroid/support/v7/widget/OrientationHelper;
    .param p3, "velocityX"    # I
    .param p4, "velocityY"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 167
    invoke-virtual {p0, p3, p4}, Landroid/support/v7/widget/LinearSnapHelper;->calculateScrollDistance(II)[I

    move-result-object v2

    .line 168
    .local v2, "distances":[I
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearSnapHelper;->computeDistancePerChild(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/support/v7/widget/OrientationHelper;)F

    move-result v1

    .line 169
    .local v1, "distancePerChild":F
    const/4 v4, 0x0

    cmpg-float v4, v1, v4

    if-gtz v4, :cond_10

    .line 174
    :goto_f
    return v3

    .line 172
    :cond_10
    aget v4, v2, v3

    .line 173
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    aget v5, v2, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-le v4, v5, :cond_27

    aget v0, v2, v3

    .line 174
    .local v0, "distance":I
    :goto_20
    int-to-float v3, v0

    div-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    goto :goto_f

    .line 173
    .end local v0    # "distance":I
    :cond_27
    aget v0, v2, v6

    goto :goto_20
.end method

.method private findCenterView(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/support/v7/widget/OrientationHelper;)Landroid/view/View;
    .registers 13
    .param p1, "layoutManager"    # Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .param p2, "helper"    # Landroid/support/v7/widget/OrientationHelper;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 189
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v5

    .line 190
    .local v5, "childCount":I
    if-nez v5, :cond_8

    .line 191
    const/4 v6, 0x0

    .line 215
    :cond_7
    return-object v6

    .line 194
    :cond_8
    const/4 v6, 0x0

    .line 196
    .local v6, "closestChild":Landroid/view/View;
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getClipToPadding()Z

    move-result v8

    if-eqz v8, :cond_3e

    .line 197
    invoke-virtual {p2}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v8

    invoke-virtual {p2}, Landroid/support/v7/widget/OrientationHelper;->getTotalSpace()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int v2, v8, v9

    .line 201
    .local v2, "center":I
    :goto_1b
    const v0, 0x7fffffff

    .line 203
    .local v0, "absClosest":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1f
    if-ge v7, v5, :cond_7

    .line 204
    invoke-virtual {p1, v7}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 205
    .local v3, "child":Landroid/view/View;
    invoke-virtual {p2, v3}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v8

    .line 206
    invoke-virtual {p2, v3}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int v4, v8, v9

    .line 207
    .local v4, "childCenter":I
    sub-int v8, v4, v2

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 210
    .local v1, "absDistance":I
    if-ge v1, v0, :cond_3b

    .line 211
    move v0, v1

    .line 212
    move-object v6, v3

    .line 203
    :cond_3b
    add-int/lit8 v7, v7, 0x1

    goto :goto_1f

    .line 199
    .end local v0    # "absClosest":I
    .end local v1    # "absDistance":I
    .end local v2    # "center":I
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "childCenter":I
    .end local v7    # "i":I
    :cond_3e
    invoke-virtual {p2}, Landroid/support/v7/widget/OrientationHelper;->getEnd()I

    move-result v8

    div-int/lit8 v2, v8, 0x2

    .restart local v2    # "center":I
    goto :goto_1b
.end method

.method private getHorizontalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;
    .registers 3
    .param p1, "layoutManager"    # Landroid/support/v7/widget/RecyclerView$LayoutManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 282
    iget-object v0, p0, Landroid/support/v7/widget/LinearSnapHelper;->mHorizontalHelper:Landroid/support/v7/widget/OrientationHelper;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/support/v7/widget/LinearSnapHelper;->mHorizontalHelper:Landroid/support/v7/widget/OrientationHelper;

    iget-object v0, v0, Landroid/support/v7/widget/OrientationHelper;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eq v0, p1, :cond_10

    .line 283
    :cond_a
    invoke-static {p1}, Landroid/support/v7/widget/OrientationHelper;->createHorizontalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/LinearSnapHelper;->mHorizontalHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 285
    :cond_10
    iget-object v0, p0, Landroid/support/v7/widget/LinearSnapHelper;->mHorizontalHelper:Landroid/support/v7/widget/OrientationHelper;

    return-object v0
.end method

.method private getVerticalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;
    .registers 3
    .param p1, "layoutManager"    # Landroid/support/v7/widget/RecyclerView$LayoutManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 273
    iget-object v0, p0, Landroid/support/v7/widget/LinearSnapHelper;->mVerticalHelper:Landroid/support/v7/widget/OrientationHelper;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/support/v7/widget/LinearSnapHelper;->mVerticalHelper:Landroid/support/v7/widget/OrientationHelper;

    iget-object v0, v0, Landroid/support/v7/widget/OrientationHelper;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eq v0, p1, :cond_10

    .line 274
    :cond_a
    invoke-static {p1}, Landroid/support/v7/widget/OrientationHelper;->createVerticalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/LinearSnapHelper;->mVerticalHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 276
    :cond_10
    iget-object v0, p0, Landroid/support/v7/widget/LinearSnapHelper;->mVerticalHelper:Landroid/support/v7/widget/OrientationHelper;

    return-object v0
.end method


# virtual methods
.method public calculateDistanceToFinalSnap(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I
    .registers 7
    .param p1, "layoutManager"    # Landroid/support/v7/widget/RecyclerView$LayoutManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "targetView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 46
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 47
    .local v0, "out":[I
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 49
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearSnapHelper;->getHorizontalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v1

    .line 48
    invoke-direct {p0, p1, p2, v1}, Landroid/support/v7/widget/LinearSnapHelper;->distanceToCenter(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/view/View;Landroid/support/v7/widget/OrientationHelper;)I

    move-result v1

    aput v1, v0, v2

    .line 54
    :goto_15
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 56
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearSnapHelper;->getVerticalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v1

    .line 55
    invoke-direct {p0, p1, p2, v1}, Landroid/support/v7/widget/LinearSnapHelper;->distanceToCenter(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/view/View;Landroid/support/v7/widget/OrientationHelper;)I

    move-result v1

    aput v1, v0, v3

    .line 60
    :goto_25
    return-object v0

    .line 51
    :cond_26
    aput v2, v0, v2

    goto :goto_15

    .line 58
    :cond_29
    aput v2, v0, v3

    goto :goto_25
.end method

.method public findSnapView(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/view/View;
    .registers 3
    .param p1, "layoutManager"    # Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .prologue
    .line 133
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 134
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearSnapHelper;->getVerticalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/LinearSnapHelper;->findCenterView(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/support/v7/widget/OrientationHelper;)Landroid/view/View;

    move-result-object v0

    .line 138
    :goto_e
    return-object v0

    .line 135
    :cond_f
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 136
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearSnapHelper;->getHorizontalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/LinearSnapHelper;->findCenterView(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/support/v7/widget/OrientationHelper;)Landroid/view/View;

    move-result-object v0

    goto :goto_e

    .line 138
    :cond_1e
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public findTargetSnapPosition(Landroid/support/v7/widget/RecyclerView$LayoutManager;II)I
    .registers 16
    .param p1, "layoutManager"    # Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .param p2, "velocityX"    # I
    .param p3, "velocityY"    # I

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v5, -0x1

    .line 66
    instance-of v9, p1, Landroid/support/v7/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    if-nez v9, :cond_8

    .line 128
    :cond_7
    :goto_7
    return v5

    .line 70
    :cond_8
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v4

    .line 71
    .local v4, "itemCount":I
    if-eqz v4, :cond_7

    .line 75
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearSnapHelper;->findSnapView(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object v1

    .line 76
    .local v1, "currentView":Landroid/view/View;
    if-eqz v1, :cond_7

    .line 80
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    .line 81
    .local v0, "currentPosition":I
    if-eq v0, v5, :cond_7

    move-object v8, p1

    .line 85
    check-cast v8, Landroid/support/v7/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    .line 90
    .local v8, "vectorProvider":Landroid/support/v7/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;
    add-int/lit8 v9, v4, -0x1

    invoke-interface {v8, v9}, Landroid/support/v7/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v7

    .line 91
    .local v7, "vectorForEnd":Landroid/graphics/PointF;
    if-eqz v7, :cond_7

    .line 97
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v9

    if-eqz v9, :cond_62

    .line 99
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearSnapHelper;->getHorizontalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v9

    .line 98
    invoke-direct {p0, p1, v9, p2, v11}, Landroid/support/v7/widget/LinearSnapHelper;->estimateNextPositionDiffForFling(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/support/v7/widget/OrientationHelper;II)I

    move-result v3

    .line 100
    .local v3, "hDeltaJump":I
    iget v9, v7, Landroid/graphics/PointF;->x:F

    cmpg-float v9, v9, v10

    if-gez v9, :cond_3a

    .line 101
    neg-int v3, v3

    .line 106
    :cond_3a
    :goto_3a
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v9

    if-eqz v9, :cond_64

    .line 108
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearSnapHelper;->getVerticalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v9

    .line 107
    invoke-direct {p0, p1, v9, v11, p3}, Landroid/support/v7/widget/LinearSnapHelper;->estimateNextPositionDiffForFling(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/support/v7/widget/OrientationHelper;II)I

    move-result v6

    .line 109
    .local v6, "vDeltaJump":I
    iget v9, v7, Landroid/graphics/PointF;->y:F

    cmpg-float v9, v9, v10

    if-gez v9, :cond_4f

    .line 110
    neg-int v6, v6

    .line 116
    :cond_4f
    :goto_4f
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v9

    if-eqz v9, :cond_66

    move v2, v6

    .line 117
    .local v2, "deltaJump":I
    :goto_56
    if-eqz v2, :cond_7

    .line 121
    add-int v5, v0, v2

    .line 122
    .local v5, "targetPos":I
    if-gez v5, :cond_5d

    .line 123
    const/4 v5, 0x0

    .line 125
    :cond_5d
    if-lt v5, v4, :cond_7

    .line 126
    add-int/lit8 v5, v4, -0x1

    goto :goto_7

    .line 104
    .end local v2    # "deltaJump":I
    .end local v3    # "hDeltaJump":I
    .end local v5    # "targetPos":I
    .end local v6    # "vDeltaJump":I
    :cond_62
    const/4 v3, 0x0

    .restart local v3    # "hDeltaJump":I
    goto :goto_3a

    .line 113
    :cond_64
    const/4 v6, 0x0

    .restart local v6    # "vDeltaJump":I
    goto :goto_4f

    :cond_66
    move v2, v3

    .line 116
    goto :goto_56
.end method
