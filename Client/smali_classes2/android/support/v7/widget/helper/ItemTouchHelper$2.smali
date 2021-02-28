.class Landroid/support/v7/widget/helper/ItemTouchHelper$2;
.super Ljava/lang/Object;
.source "ItemTouchHelper.java"

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/helper/ItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/helper/ItemTouchHelper;)V
    .registers 2
    .param p1, "this$0"    # Landroid/support/v7/widget/helper/ItemTouchHelper;

    .prologue
    .line 313
    iput-object p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .registers 11
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "event"    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v6, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 317
    iget-object v5, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v5, v5, Landroid/support/v7/widget/helper/ItemTouchHelper;->mGestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

    invoke-virtual {v5, p2}, Landroid/support/v4/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 321
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 322
    .local v0, "action":I
    if-nez v0, :cond_95

    .line 323
    iget-object v5, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, v5, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    .line 324
    iget-object v5, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iput v6, v5, Landroid/support/v7/widget/helper/ItemTouchHelper;->mInitialTouchX:F

    .line 325
    iget-object v5, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iput v6, v5, Landroid/support/v7/widget/helper/ItemTouchHelper;->mInitialTouchY:F

    .line 326
    iget-object v5, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-virtual {v5}, Landroid/support/v7/widget/helper/ItemTouchHelper;->obtainVelocityTracker()V

    .line 327
    iget-object v5, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v5, v5, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-nez v5, :cond_81

    .line 328
    iget-object v5, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-virtual {v5, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper;->findAnimation(Landroid/view/MotionEvent;)Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;

    move-result-object v1

    .line 329
    .local v1, "animation":Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;
    if-eqz v1, :cond_81

    .line 330
    iget-object v5, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget v6, v5, Landroid/support/v7/widget/helper/ItemTouchHelper;->mInitialTouchX:F

    iget v7, v1, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mX:F

    sub-float/2addr v6, v7

    iput v6, v5, Landroid/support/v7/widget/helper/ItemTouchHelper;->mInitialTouchX:F

    .line 331
    iget-object v5, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget v6, v5, Landroid/support/v7/widget/helper/ItemTouchHelper;->mInitialTouchY:F

    iget v7, v1, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mY:F

    sub-float/2addr v6, v7

    iput v6, v5, Landroid/support/v7/widget/helper/ItemTouchHelper;->mInitialTouchY:F

    .line 332
    iget-object v5, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v6, v1, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v5, v6, v3}, Landroid/support/v7/widget/helper/ItemTouchHelper;->endRecoverAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)V

    .line 333
    iget-object v5, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v5, v5, Landroid/support/v7/widget/helper/ItemTouchHelper;->mPendingCleanup:Ljava/util/List;

    iget-object v6, v1, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v5, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6f

    .line 334
    iget-object v5, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v5, v5, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    iget-object v6, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v6, v6, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v7, v1, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v5, v6, v7}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->clearView(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 336
    :cond_6f
    iget-object v5, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v6, v1, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget v7, v1, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mActionState:I

    invoke-virtual {v5, v6, v7}, Landroid/support/v7/widget/helper/ItemTouchHelper;->select(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 337
    iget-object v5, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v6, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget v6, v6, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedFlags:I

    invoke-virtual {v5, p2, v6, v4}, Landroid/support/v7/widget/helper/ItemTouchHelper;->updateDxDy(Landroid/view/MotionEvent;II)V

    .line 354
    .end local v1    # "animation":Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;
    :cond_81
    :goto_81
    iget-object v5, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v5, v5, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v5, :cond_8e

    .line 355
    iget-object v5, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v5, v5, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 357
    :cond_8e
    iget-object v5, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v5, v5, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v5, :cond_bb

    :goto_94
    return v3

    .line 340
    :cond_95
    const/4 v5, 0x3

    if-eq v0, v5, :cond_9a

    if-ne v0, v3, :cond_a5

    .line 341
    :cond_9a
    iget-object v5, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iput v6, v5, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    .line 342
    iget-object v5, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v4}, Landroid/support/v7/widget/helper/ItemTouchHelper;->select(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    goto :goto_81

    .line 343
    :cond_a5
    iget-object v5, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget v5, v5, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    if-eq v5, v6, :cond_81

    .line 346
    iget-object v5, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget v5, v5, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 350
    .local v2, "index":I
    if-ltz v2, :cond_81

    .line 351
    iget-object v5, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-virtual {v5, v0, p2, v2}, Landroid/support/v7/widget/helper/ItemTouchHelper;->checkSelectForSwipe(ILandroid/view/MotionEvent;I)V

    goto :goto_81

    .end local v2    # "index":I
    :cond_bb
    move v3, v4

    .line 357
    goto :goto_94
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .registers 5
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 420
    if-nez p1, :cond_3

    .line 424
    :goto_2
    return-void

    .line 423
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/helper/ItemTouchHelper;->select(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    goto :goto_2
.end method

.method public onTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .registers 12
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "event"    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    const/4 v8, -0x1

    .line 362
    iget-object v6, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v6, v6, Landroid/support/v7/widget/helper/ItemTouchHelper;->mGestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

    invoke-virtual {v6, p2}, Landroid/support/v4/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 367
    iget-object v6, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v6, v6, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v6, :cond_16

    .line 368
    iget-object v6, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v6, v6, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 370
    :cond_16
    iget-object v6, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget v6, v6, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    if-ne v6, v8, :cond_1d

    .line 416
    :cond_1c
    :goto_1c
    return-void

    .line 373
    :cond_1d
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 374
    .local v0, "action":I
    iget-object v6, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget v6, v6, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 375
    .local v1, "activePointerIndex":I
    if-ltz v1, :cond_30

    .line 376
    iget-object v6, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-virtual {v6, v0, p2, v1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->checkSelectForSwipe(ILandroid/view/MotionEvent;I)V

    .line 378
    :cond_30
    iget-object v6, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v5, v6, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 379
    .local v5, "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-eqz v5, :cond_1c

    .line 382
    packed-switch v0, :pswitch_data_a2

    :pswitch_39
    goto :goto_1c

    .line 400
    :cond_3a
    :goto_3a
    :pswitch_3a
    iget-object v6, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v2}, Landroid/support/v7/widget/helper/ItemTouchHelper;->select(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 401
    iget-object v6, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iput v8, v6, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    goto :goto_1c

    .line 385
    :pswitch_45
    if-ltz v1, :cond_1c

    .line 386
    iget-object v6, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v7, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget v7, v7, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedFlags:I

    invoke-virtual {v6, p2, v7, v1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->updateDxDy(Landroid/view/MotionEvent;II)V

    .line 387
    iget-object v6, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-virtual {v6, v5}, Landroid/support/v7/widget/helper/ItemTouchHelper;->moveIfNecessary(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 388
    iget-object v6, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v6, v6, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v7, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v7, v7, Landroid/support/v7/widget/helper/ItemTouchHelper;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 389
    iget-object v6, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v6, v6, Landroid/support/v7/widget/helper/ItemTouchHelper;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    .line 390
    iget-object v6, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v6, v6, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    goto :goto_1c

    .line 395
    :pswitch_6f
    iget-object v6, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v6, v6, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v6, :cond_3a

    .line 396
    iget-object v6, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v6, v6, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_3a

    .line 404
    :pswitch_7d
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    .line 405
    .local v4, "pointerIndex":I
    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 406
    .local v3, "pointerId":I
    iget-object v6, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget v6, v6, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    if-ne v3, v6, :cond_1c

    .line 409
    if-nez v4, :cond_8e

    const/4 v2, 0x1

    .line 410
    .local v2, "newPointerIndex":I
    :cond_8e
    iget-object v6, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, v6, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    .line 411
    iget-object v6, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v7, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget v7, v7, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedFlags:I

    invoke-virtual {v6, p2, v7, v4}, Landroid/support/v7/widget/helper/ItemTouchHelper;->updateDxDy(Landroid/view/MotionEvent;II)V

    goto/16 :goto_1c

    .line 382
    nop

    :pswitch_data_a2
    .packed-switch 0x1
        :pswitch_3a
        :pswitch_45
        :pswitch_6f
        :pswitch_39
        :pswitch_39
        :pswitch_7d
    .end packed-switch
.end method
