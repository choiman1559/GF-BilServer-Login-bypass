.class final Landroid/support/v7/widget/GapWorker;
.super Ljava/lang/Object;
.source "GapWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;,
        Landroid/support/v7/widget/GapWorker$Task;
    }
.end annotation


# static fields
.field static final sGapWorker:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/support/v7/widget/GapWorker;",
            ">;"
        }
    .end annotation
.end field

.field static sTaskComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/support/v7/widget/GapWorker$Task;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mFrameIntervalNs:J

.field mPostTimeNs:J

.field mRecyclerViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView;",
            ">;"
        }
    .end annotation
.end field

.field private mTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/GapWorker$Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/support/v7/widget/GapWorker;->sGapWorker:Ljava/lang/ThreadLocal;

    .line 188
    new-instance v0, Landroid/support/v7/widget/GapWorker$1;

    invoke-direct {v0}, Landroid/support/v7/widget/GapWorker$1;-><init>()V

    sput-object v0, Landroid/support/v7/widget/GapWorker;->sTaskComparator:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    .line 63
    return-void
.end method

.method private buildTaskList()V
    .registers 14

    .prologue
    const/4 v11, 0x0

    .line 215
    iget-object v10, p0, Landroid/support/v7/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 216
    .local v8, "viewCount":I
    const/4 v5, 0x0

    .line 217
    .local v5, "totalTaskCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v8, :cond_26

    .line 218
    iget-object v10, p0, Landroid/support/v7/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v7/widget/RecyclerView;

    .line 219
    .local v7, "view":Landroid/support/v7/widget/RecyclerView;
    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView;->getWindowVisibility()I

    move-result v10

    if-nez v10, :cond_23

    .line 220
    iget-object v10, v7, Landroid/support/v7/widget/RecyclerView;->mPrefetchRegistry:Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;

    invoke-virtual {v10, v7, v11}, Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->collectPrefetchPositionsFromView(Landroid/support/v7/widget/RecyclerView;Z)V

    .line 221
    iget-object v10, v7, Landroid/support/v7/widget/RecyclerView;->mPrefetchRegistry:Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;

    iget v10, v10, Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    add-int/2addr v5, v10

    .line 217
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 226
    .end local v7    # "view":Landroid/support/v7/widget/RecyclerView;
    :cond_26
    iget-object v10, p0, Landroid/support/v7/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 227
    const/4 v6, 0x0

    .line 228
    .local v6, "totalTaskIndex":I
    const/4 v1, 0x0

    :goto_2d
    if-ge v1, v8, :cond_90

    .line 229
    iget-object v10, p0, Landroid/support/v7/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v7/widget/RecyclerView;

    .line 230
    .restart local v7    # "view":Landroid/support/v7/widget/RecyclerView;
    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView;->getWindowVisibility()I

    move-result v10

    if-eqz v10, :cond_40

    .line 228
    :cond_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    .line 235
    :cond_40
    iget-object v3, v7, Landroid/support/v7/widget/RecyclerView;->mPrefetchRegistry:Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;

    .line 236
    .local v3, "prefetchRegistry":Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;
    iget v10, v3, Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchDx:I

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    iget v12, v3, Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchDy:I

    .line 237
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    add-int v9, v10, v12

    .line 238
    .local v9, "viewVelocity":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_51
    iget v10, v3, Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    mul-int/lit8 v10, v10, 0x2

    if-ge v2, v10, :cond_3d

    .line 240
    iget-object v10, p0, Landroid/support/v7/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lt v6, v10, :cond_85

    .line 241
    new-instance v4, Landroid/support/v7/widget/GapWorker$Task;

    invoke-direct {v4}, Landroid/support/v7/widget/GapWorker$Task;-><init>()V

    .line 242
    .local v4, "task":Landroid/support/v7/widget/GapWorker$Task;
    iget-object v10, p0, Landroid/support/v7/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    :goto_69
    iget-object v10, v3, Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    add-int/lit8 v12, v2, 0x1

    aget v0, v10, v12

    .line 248
    .local v0, "distanceToItem":I
    if-gt v0, v9, :cond_8e

    const/4 v10, 0x1

    :goto_72
    iput-boolean v10, v4, Landroid/support/v7/widget/GapWorker$Task;->immediate:Z

    .line 249
    iput v9, v4, Landroid/support/v7/widget/GapWorker$Task;->viewVelocity:I

    .line 250
    iput v0, v4, Landroid/support/v7/widget/GapWorker$Task;->distanceToItem:I

    .line 251
    iput-object v7, v4, Landroid/support/v7/widget/GapWorker$Task;->view:Landroid/support/v7/widget/RecyclerView;

    .line 252
    iget-object v10, v3, Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    aget v10, v10, v2

    iput v10, v4, Landroid/support/v7/widget/GapWorker$Task;->position:I

    .line 254
    add-int/lit8 v6, v6, 0x1

    .line 238
    add-int/lit8 v2, v2, 0x2

    goto :goto_51

    .line 244
    .end local v0    # "distanceToItem":I
    .end local v4    # "task":Landroid/support/v7/widget/GapWorker$Task;
    :cond_85
    iget-object v10, p0, Landroid/support/v7/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/GapWorker$Task;

    .restart local v4    # "task":Landroid/support/v7/widget/GapWorker$Task;
    goto :goto_69

    .restart local v0    # "distanceToItem":I
    :cond_8e
    move v10, v11

    .line 248
    goto :goto_72

    .line 259
    .end local v0    # "distanceToItem":I
    .end local v2    # "j":I
    .end local v3    # "prefetchRegistry":Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;
    .end local v4    # "task":Landroid/support/v7/widget/GapWorker$Task;
    .end local v7    # "view":Landroid/support/v7/widget/RecyclerView;
    .end local v9    # "viewVelocity":I
    :cond_90
    iget-object v10, p0, Landroid/support/v7/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    sget-object v11, Landroid/support/v7/widget/GapWorker;->sTaskComparator:Ljava/util/Comparator;

    invoke-static {v10, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 260
    return-void
.end method

.method private flushTaskWithDeadline(Landroid/support/v7/widget/GapWorker$Task;J)V
    .registers 10
    .param p1, "task"    # Landroid/support/v7/widget/GapWorker$Task;
    .param p2, "deadlineNs"    # J

    .prologue
    .line 342
    iget-boolean v1, p1, Landroid/support/v7/widget/GapWorker$Task;->immediate:Z

    if-eqz v1, :cond_2f

    const-wide v2, 0x7fffffffffffffffL

    .line 343
    .local v2, "taskDeadlineNs":J
    :goto_9
    iget-object v1, p1, Landroid/support/v7/widget/GapWorker$Task;->view:Landroid/support/v7/widget/RecyclerView;

    iget v4, p1, Landroid/support/v7/widget/GapWorker$Task;->position:I

    invoke-direct {p0, v1, v4, v2, v3}, Landroid/support/v7/widget/GapWorker;->prefetchPositionWithDeadline(Landroid/support/v7/widget/RecyclerView;IJ)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 345
    .local v0, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-eqz v0, :cond_2e

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_2e

    .line 347
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 348
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v1

    if-nez v1, :cond_2e

    .line 349
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0, v1, p2, p3}, Landroid/support/v7/widget/GapWorker;->prefetchInnerRecyclerViewWithDeadline(Landroid/support/v7/widget/RecyclerView;J)V

    .line 351
    :cond_2e
    return-void

    .end local v0    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .end local v2    # "taskDeadlineNs":J
    :cond_2f
    move-wide v2, p2

    .line 342
    goto :goto_9
.end method

.method private flushTasksWithDeadline(J)V
    .registers 6
    .param p1, "deadlineNs"    # J

    .prologue
    .line 354
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Landroid/support/v7/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_15

    .line 355
    iget-object v2, p0, Landroid/support/v7/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/GapWorker$Task;

    .line 356
    .local v1, "task":Landroid/support/v7/widget/GapWorker$Task;
    iget-object v2, v1, Landroid/support/v7/widget/GapWorker$Task;->view:Landroid/support/v7/widget/RecyclerView;

    if-nez v2, :cond_16

    .line 362
    .end local v1    # "task":Landroid/support/v7/widget/GapWorker$Task;
    :cond_15
    return-void

    .line 359
    .restart local v1    # "task":Landroid/support/v7/widget/GapWorker$Task;
    :cond_16
    invoke-direct {p0, v1, p1, p2}, Landroid/support/v7/widget/GapWorker;->flushTaskWithDeadline(Landroid/support/v7/widget/GapWorker$Task;J)V

    .line 360
    invoke-virtual {v1}, Landroid/support/v7/widget/GapWorker$Task;->clear()V

    .line 354
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method static isPrefetchPositionAttached(Landroid/support/v7/widget/RecyclerView;I)Z
    .registers 7
    .param p0, "view"    # Landroid/support/v7/widget/RecyclerView;
    .param p1, "position"    # I

    .prologue
    .line 263
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v4}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v1

    .line 264
    .local v1, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_7
    if-ge v3, v1, :cond_22

    .line 265
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 266
    .local v0, "attachedView":Landroid/view/View;
    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 268
    .local v2, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    iget v4, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    if-ne v4, p1, :cond_1f

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v4

    if-nez v4, :cond_1f

    .line 269
    const/4 v4, 0x1

    .line 272
    .end local v0    # "attachedView":Landroid/view/View;
    .end local v2    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :goto_1e
    return v4

    .line 264
    .restart local v0    # "attachedView":Landroid/view/View;
    .restart local v2    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 272
    .end local v0    # "attachedView":Landroid/view/View;
    .end local v2    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_22
    const/4 v4, 0x0

    goto :goto_1e
.end method

.method private prefetchInnerRecyclerViewWithDeadline(Landroid/support/v7/widget/RecyclerView;J)V
    .registers 10
    .param p1, "innerView"    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "deadlineNs"    # J

    .prologue
    .line 310
    if-nez p1, :cond_3

    .line 339
    :cond_2
    :goto_2
    return-void

    .line 314
    :cond_3
    iget-boolean v3, p1, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v3, :cond_12

    iget-object v3, p1, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    .line 315
    invoke-virtual {v3}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v3

    if-eqz v3, :cond_12

    .line 318
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->removeAndRecycleViews()V

    .line 322
    :cond_12
    iget-object v2, p1, Landroid/support/v7/widget/RecyclerView;->mPrefetchRegistry:Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;

    .line 323
    .local v2, "innerPrefetchRegistry":Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;
    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->collectPrefetchPositionsFromView(Landroid/support/v7/widget/RecyclerView;Z)V

    .line 325
    iget v3, v2, Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    if-eqz v3, :cond_2

    .line 327
    :try_start_1c
    const-string v3, "RV Nested Prefetch"

    invoke-static {v3}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 328
    iget-object v3, p1, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v4, p1, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView$State;->prepareForNestedPrefetch(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 329
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_29
    iget v3, v2, Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    mul-int/lit8 v3, v3, 0x2

    if-ge v0, v3, :cond_39

    .line 332
    iget-object v3, v2, Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    aget v1, v3, v0

    .line 333
    .local v1, "innerPosition":I
    invoke-direct {p0, p1, v1, p2, p3}, Landroid/support/v7/widget/GapWorker;->prefetchPositionWithDeadline(Landroid/support/v7/widget/RecyclerView;IJ)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :try_end_36
    .catchall {:try_start_1c .. :try_end_36} :catchall_3d

    .line 329
    add-int/lit8 v0, v0, 0x2

    goto :goto_29

    .line 336
    .end local v1    # "innerPosition":I
    :cond_39
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    goto :goto_2

    .end local v0    # "i":I
    :catchall_3d
    move-exception v3

    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    throw v3
.end method

.method private prefetchPositionWithDeadline(Landroid/support/v7/widget/RecyclerView;IJ)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 10
    .param p1, "view"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "position"    # I
    .param p3, "deadlineNs"    # J

    .prologue
    const/4 v3, 0x0

    .line 277
    invoke-static {p1, p2}, Landroid/support/v7/widget/GapWorker;->isPrefetchPositionAttached(Landroid/support/v7/widget/RecyclerView;I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 279
    const/4 v0, 0x0

    .line 305
    :goto_8
    return-object v0

    .line 282
    :cond_9
    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    .line 285
    .local v1, "recycler":Landroid/support/v7/widget/RecyclerView$Recycler;
    :try_start_b
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 286
    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2, p3, p4}, Landroid/support/v7/widget/RecyclerView$Recycler;->tryGetViewHolderForPositionByDeadline(IZJ)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 289
    .local v0, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-eqz v0, :cond_26

    .line 290
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v2

    if-nez v2, :cond_2a

    .line 293
    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView$Recycler;->recycleView(Landroid/view/View;)V
    :try_end_26
    .catchall {:try_start_b .. :try_end_26} :catchall_2f

    .line 303
    :cond_26
    :goto_26
    invoke-virtual {p1, v3}, Landroid/support/v7/widget/RecyclerView;->onExitLayoutOrScroll(Z)V

    goto :goto_8

    .line 299
    :cond_2a
    const/4 v2, 0x0

    :try_start_2b
    invoke-virtual {v1, v0, v2}, Landroid/support/v7/widget/RecyclerView$Recycler;->addViewHolderToRecycledViewPool(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_2f

    goto :goto_26

    .line 303
    .end local v0    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :catchall_2f
    move-exception v2

    invoke-virtual {p1, v3}, Landroid/support/v7/widget/RecyclerView;->onExitLayoutOrScroll(Z)V

    throw v2
.end method


# virtual methods
.method public add(Landroid/support/v7/widget/RecyclerView;)V
    .registers 3
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 161
    iget-object v0, p0, Landroid/support/v7/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    return-void
.end method

.method postFromTraversal(Landroid/support/v7/widget/RecyclerView;II)V
    .registers 8
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "prefetchDx"    # I
    .param p3, "prefetchDy"    # I

    .prologue
    .line 175
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 179
    iget-wide v0, p0, Landroid/support/v7/widget/GapWorker;->mPostTimeNs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_17

    .line 180
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getNanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v7/widget/GapWorker;->mPostTimeNs:J

    .line 181
    invoke-virtual {p1, p0}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 185
    :cond_17
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView;->mPrefetchRegistry:Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;

    invoke-virtual {v0, p2, p3}, Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->setPrefetchVector(II)V

    .line 186
    return-void
.end method

.method prefetch(J)V
    .registers 4
    .param p1, "deadlineNs"    # J

    .prologue
    .line 365
    invoke-direct {p0}, Landroid/support/v7/widget/GapWorker;->buildTaskList()V

    .line 366
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/GapWorker;->flushTasksWithDeadline(J)V

    .line 367
    return-void
.end method

.method public remove(Landroid/support/v7/widget/RecyclerView;)V
    .registers 4
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 165
    iget-object v1, p0, Landroid/support/v7/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 169
    .local v0, "removeSuccess":Z
    return-void
.end method

.method public run()V
    .registers 15

    .prologue
    const-wide/16 v12, 0x0

    .line 372
    :try_start_2
    const-string v7, "RV Prefetch"

    invoke-static {v7}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 374
    iget-object v7, p0, Landroid/support/v7/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_56

    move-result v7

    if-eqz v7, :cond_15

    .line 401
    iput-wide v12, p0, Landroid/support/v7/widget/GapWorker;->mPostTimeNs:J

    .line 402
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    .line 404
    :goto_14
    return-void

    .line 381
    :cond_15
    :try_start_15
    iget-object v7, p0, Landroid/support/v7/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 382
    .local v1, "size":I
    const-wide/16 v2, 0x0

    .line 383
    .local v2, "latestFrameVsyncMs":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1e
    if-ge v0, v1, :cond_39

    .line 384
    iget-object v7, p0, Landroid/support/v7/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/RecyclerView;

    .line 385
    .local v6, "view":Landroid/support/v7/widget/RecyclerView;
    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView;->getWindowVisibility()I

    move-result v7

    if-nez v7, :cond_36

    .line 386
    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView;->getDrawingTime()J

    move-result-wide v8

    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->max(JJ)J
    :try_end_35
    .catchall {:try_start_15 .. :try_end_35} :catchall_56

    move-result-wide v2

    .line 383
    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 390
    .end local v6    # "view":Landroid/support/v7/widget/RecyclerView;
    :cond_39
    cmp-long v7, v2, v12

    if-nez v7, :cond_43

    .line 401
    iput-wide v12, p0, Landroid/support/v7/widget/GapWorker;->mPostTimeNs:J

    .line 402
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    goto :goto_14

    .line 395
    :cond_43
    :try_start_43
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v8

    iget-wide v10, p0, Landroid/support/v7/widget/GapWorker;->mFrameIntervalNs:J

    add-long v4, v8, v10

    .line 397
    .local v4, "nextFrameNs":J
    invoke-virtual {p0, v4, v5}, Landroid/support/v7/widget/GapWorker;->prefetch(J)V
    :try_end_50
    .catchall {:try_start_43 .. :try_end_50} :catchall_56

    .line 401
    iput-wide v12, p0, Landroid/support/v7/widget/GapWorker;->mPostTimeNs:J

    .line 402
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    goto :goto_14

    .line 401
    .end local v0    # "i":I
    .end local v1    # "size":I
    .end local v2    # "latestFrameVsyncMs":J
    .end local v4    # "nextFrameNs":J
    :catchall_56
    move-exception v7

    iput-wide v12, p0, Landroid/support/v7/widget/GapWorker;->mPostTimeNs:J

    .line 402
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    throw v7
.end method
