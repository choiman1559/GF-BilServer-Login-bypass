.class Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;
.super Ljava/lang/Object;
.source "GapWorker.java"

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/GapWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LayoutPrefetchRegistryImpl"
.end annotation


# instance fields
.field mCount:I

.field mPrefetchArray:[I

.field mPrefetchDx:I

.field mPrefetchDy:I


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addPosition(II)V
    .registers 8
    .param p1, "layoutPosition"    # I
    .param p2, "pixelDistance"    # I

    .prologue
    const/4 v4, 0x0

    .line 110
    if-gez p1, :cond_b

    .line 111
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Layout positions must be non-negative"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 114
    :cond_b
    if-gez p2, :cond_15

    .line 115
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Pixel distance must be non-negative"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 119
    :cond_15
    iget v2, p0, Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    mul-int/lit8 v1, v2, 0x2

    .line 120
    .local v1, "storagePosition":I
    iget-object v2, p0, Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    if-nez v2, :cond_39

    .line 121
    const/4 v2, 0x4

    new-array v2, v2, [I

    iput-object v2, p0, Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    .line 122
    iget-object v2, p0, Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    const/4 v3, -0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    .line 130
    :cond_28
    :goto_28
    iget-object v2, p0, Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    aput p1, v2, v1

    .line 131
    iget-object v2, p0, Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    add-int/lit8 v3, v1, 0x1

    aput p2, v2, v3

    .line 133
    iget v2, p0, Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    .line 134
    return-void

    .line 123
    :cond_39
    iget-object v2, p0, Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    array-length v2, v2

    if-lt v1, v2, :cond_28

    .line 124
    iget-object v0, p0, Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    .line 125
    .local v0, "oldArray":[I
    mul-int/lit8 v2, v1, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    .line 126
    iget-object v2, p0, Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    array-length v3, v0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_28
.end method

.method clearPrefetchPositions()V
    .registers 3

    .prologue
    .line 150
    iget-object v0, p0, Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    if-eqz v0, :cond_a

    .line 151
    iget-object v0, p0, Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 153
    :cond_a
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    .line 154
    return-void
.end method

.method collectPrefetchPositionsFromView(Landroid/support/v7/widget/RecyclerView;Z)V
    .registers 7
    .param p1, "view"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "nested"    # Z

    .prologue
    .line 77
    const/4 v1, 0x0

    iput v1, p0, Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    .line 78
    iget-object v1, p0, Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    if-eqz v1, :cond_d

    .line 79
    iget-object v1, p0, Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 82
    :cond_d
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 83
    .local v0, "layout":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v1, :cond_3f

    if-eqz v0, :cond_3f

    .line 85
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->isItemPrefetchEnabled()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 86
    if-eqz p2, :cond_40

    .line 89
    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/AdapterHelper;->hasPendingUpdates()Z

    move-result v1

    if-nez v1, :cond_2e

    .line 90
    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->collectInitialPrefetchPositions(ILandroid/support/v7/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V

    .line 100
    :cond_2e
    :goto_2e
    iget v1, p0, Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    iget v2, v0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mPrefetchMaxCountObserved:I

    if-le v1, v2, :cond_3f

    .line 101
    iget v1, p0, Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    iput v1, v0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mPrefetchMaxCountObserved:I

    .line 102
    iput-boolean p2, v0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mPrefetchMaxObservedInInitialPrefetch:Z

    .line 103
    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Recycler;->updateViewCacheSize()V

    .line 106
    :cond_3f
    return-void

    .line 94
    :cond_40
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->hasPendingAdapterUpdates()Z

    move-result v1

    if-nez v1, :cond_2e

    .line 95
    iget v1, p0, Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchDx:I

    iget v2, p0, Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchDy:I

    iget-object v3, p1, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->collectAdjacentPrefetchPositions(IILandroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V

    goto :goto_2e
.end method

.method lastPrefetchIncludedPosition(I)Z
    .registers 5
    .param p1, "position"    # I

    .prologue
    .line 137
    iget-object v2, p0, Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    if-eqz v2, :cond_16

    .line 138
    iget v2, p0, Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    mul-int/lit8 v0, v2, 0x2

    .line 139
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v0, :cond_16

    .line 140
    iget-object v2, p0, Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    aget v2, v2, v1

    if-ne v2, p1, :cond_13

    const/4 v2, 0x1

    .line 143
    .end local v0    # "count":I
    .end local v1    # "i":I
    :goto_12
    return v2

    .line 139
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    :cond_13
    add-int/lit8 v1, v1, 0x2

    goto :goto_9

    .line 143
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_16
    const/4 v2, 0x0

    goto :goto_12
.end method

.method setPrefetchVector(II)V
    .registers 3
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 72
    iput p1, p0, Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchDx:I

    .line 73
    iput p2, p0, Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchDy:I

    .line 74
    return-void
.end method
