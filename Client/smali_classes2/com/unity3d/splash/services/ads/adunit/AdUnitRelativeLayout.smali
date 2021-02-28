.class public Lcom/unity3d/splash/services/ads/adunit/AdUnitRelativeLayout;
.super Landroid/widget/RelativeLayout;


# instance fields
.field private _maxEvents:I

.field private final _motionEvents:Ljava/util/ArrayList;

.field private _shouldCapture:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitRelativeLayout;->_motionEvents:Ljava/util/ArrayList;

    const/16 v0, 0x2710

    iput v0, p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitRelativeLayout;->_maxEvents:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitRelativeLayout;->_shouldCapture:Z

    return-void
.end method


# virtual methods
.method public clearCapture()V
    .registers 3

    iget-object v1, p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitRelativeLayout;->_motionEvents:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitRelativeLayout;->_motionEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public endCapture()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitRelativeLayout;->_shouldCapture:Z

    return-void
.end method

.method public getCurrentEventCount()I
    .registers 3

    iget-object v1, p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitRelativeLayout;->_motionEvents:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitRelativeLayout;->_motionEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    monitor-exit v1

    return v0

    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public getEventCount(Ljava/util/ArrayList;)Landroid/util/SparseIntArray;
    .registers 10

    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iget-object v3, p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitRelativeLayout;->_motionEvents:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_8
    iget-object v0, p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitRelativeLayout;->_motionEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_e
    :goto_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/splash/services/ads/adunit/AdUnitMotionEvent;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0}, Lcom/unity3d/splash/services/ads/adunit/AdUnitMotionEvent;->getAction()I

    move-result v6

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v6, v7, :cond_1e

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_e

    :catchall_47
    move-exception v0

    monitor-exit v3
    :try_end_49
    .catchall {:try_start_8 .. :try_end_49} :catchall_47

    throw v0

    :cond_4a
    :try_start_4a
    monitor-exit v3
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_47

    return-object v2
.end method

.method public getEvents(Landroid/util/SparseArray;)Landroid/util/SparseArray;
    .registers 11

    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iget-object v5, p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitRelativeLayout;->_motionEvents:Ljava/util/ArrayList;

    monitor-enter v5

    :try_start_d
    iget-object v0, p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitRelativeLayout;->_motionEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_13
    :goto_13
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/splash/services/ads/adunit/AdUnitMotionEvent;

    invoke-virtual {v0}, Lcom/unity3d/splash/services/ads/adunit/AdUnitMotionEvent;->getAction()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_13

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v0}, Lcom/unity3d/splash/services/ads/adunit/AdUnitMotionEvent;->getAction()I

    move-result v2

    const/4 v8, 0x0

    invoke-virtual {v3, v2, v8}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    if-ne v2, v7, :cond_68

    invoke-virtual {v0}, Lcom/unity3d/splash/services/ads/adunit/AdUnitMotionEvent;->getAction()I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_57

    invoke-virtual {v0}, Lcom/unity3d/splash/services/ads/adunit/AdUnitMotionEvent;->getAction()I

    move-result v2

    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {v4, v2, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_57
    invoke-virtual {v0}, Lcom/unity3d/splash/services/ads/adunit/AdUnitMotionEvent;->getAction()I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    invoke-virtual {v2, v7, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_68
    invoke-virtual {v0}, Lcom/unity3d/splash/services/ads/adunit/AdUnitMotionEvent;->getAction()I

    move-result v1

    invoke-virtual {v0}, Lcom/unity3d/splash/services/ads/adunit/AdUnitMotionEvent;->getAction()I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v1, v0}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_13

    :catchall_7a
    move-exception v0

    monitor-exit v5
    :try_end_7c
    .catchall {:try_start_d .. :try_end_7c} :catchall_7a

    throw v0

    :cond_7d
    :try_start_7d
    monitor-exit v5
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_7a

    return-object v4
.end method

.method public getMaxEventCount()I
    .registers 2

    iget v0, p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitRelativeLayout;->_maxEvents:I

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 16
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    iget-boolean v0, p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitRelativeLayout;->_shouldCapture:Z

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitRelativeLayout;->_motionEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitRelativeLayout;->_maxEvents:I

    if-ge v0, v1, :cond_51

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_53

    const/4 v2, 0x1

    :goto_1a
    iget-object v12, p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitRelativeLayout;->_motionEvents:Ljava/util/ArrayList;

    monitor-enter v12

    :try_start_1d
    iget-object v13, p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitRelativeLayout;->_motionEvents:Ljava/util/ArrayList;

    new-instance v0, Lcom/unity3d/splash/services/ads/adunit/AdUnitMotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getSize(I)F

    move-result v11

    invoke-direct/range {v0 .. v11}, Lcom/unity3d/splash/services/ads/adunit/AdUnitMotionEvent;-><init>(IZIIIFFJFF)V

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v12

    :cond_51
    const/4 v0, 0x0

    return v0

    :cond_53
    const/4 v2, 0x0

    goto :goto_1a

    :catchall_55
    move-exception v0

    monitor-exit v12
    :try_end_57
    .catchall {:try_start_1d .. :try_end_57} :catchall_55

    throw v0
.end method

.method public startCapture(I)V
    .registers 3

    iput p1, p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitRelativeLayout;->_maxEvents:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitRelativeLayout;->_shouldCapture:Z

    return-void
.end method
