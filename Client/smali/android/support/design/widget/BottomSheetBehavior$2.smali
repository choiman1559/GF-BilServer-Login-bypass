.class Landroid/support/design/widget/BottomSheetBehavior$2;
.super Landroid/support/v4/widget/ViewDragHelper$Callback;
.source "BottomSheetBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/BottomSheetBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/BottomSheetBehavior;


# direct methods
.method constructor <init>(Landroid/support/design/widget/BottomSheetBehavior;)V
    .registers 2
    .param p1, "this$0"    # Landroid/support/design/widget/BottomSheetBehavior;

    .prologue
    .line 766
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior$2;, "Landroid/support/design/widget/BottomSheetBehavior$2;"
    iput-object p1, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-direct {p0}, Landroid/support/v4/widget/ViewDragHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .registers 5
    .param p1, "child"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "left"    # I
    .param p3, "dx"    # I

    .prologue
    .line 878
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior$2;, "Landroid/support/design/widget/BottomSheetBehavior$2;"
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    return v0
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .registers 6
    .param p1, "child"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "top"    # I
    .param p3, "dy"    # I

    .prologue
    .line 872
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior$2;, "Landroid/support/design/widget/BottomSheetBehavior$2;"
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    .line 873
    invoke-static {v0}, Landroid/support/design/widget/BottomSheetBehavior;->access$100(Landroid/support/design/widget/BottomSheetBehavior;)I

    move-result v1

    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget-boolean v0, v0, Landroid/support/design/widget/BottomSheetBehavior;->hideable:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget v0, v0, Landroid/support/design/widget/BottomSheetBehavior;->parentHeight:I

    .line 872
    :goto_10
    invoke-static {p2, v1, v0}, Landroid/support/v4/math/MathUtils;->clamp(III)I

    move-result v0

    return v0

    .line 873
    :cond_15
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget v0, v0, Landroid/support/design/widget/BottomSheetBehavior;->collapsedOffset:I

    goto :goto_10
.end method

.method public getViewVerticalDragRange(Landroid/view/View;)I
    .registers 3
    .param p1, "child"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 883
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior$2;, "Landroid/support/design/widget/BottomSheetBehavior$2;"
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget-boolean v0, v0, Landroid/support/design/widget/BottomSheetBehavior;->hideable:Z

    if-eqz v0, :cond_b

    .line 884
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget v0, v0, Landroid/support/design/widget/BottomSheetBehavior;->parentHeight:I

    .line 886
    :goto_a
    return v0

    :cond_b
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget v0, v0, Landroid/support/design/widget/BottomSheetBehavior;->collapsedOffset:I

    goto :goto_a
.end method

.method public onViewDragStateChanged(I)V
    .registers 4
    .param p1, "state"    # I

    .prologue
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior$2;, "Landroid/support/design/widget/BottomSheetBehavior$2;"
    const/4 v1, 0x1

    .line 794
    if-ne p1, v1, :cond_8

    .line 795
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/BottomSheetBehavior;->setStateInternal(I)V

    .line 797
    :cond_8
    return-void
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .registers 7
    .param p1, "changedView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "dx"    # I
    .param p5, "dy"    # I

    .prologue
    .line 789
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior$2;, "Landroid/support/design/widget/BottomSheetBehavior$2;"
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-virtual {v0, p3}, Landroid/support/design/widget/BottomSheetBehavior;->dispatchOnSlide(I)V

    .line 790
    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .registers 10
    .param p1, "releasedChild"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "xvel"    # F
    .param p3, "yvel"    # F

    .prologue
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior$2;, "Landroid/support/design/widget/BottomSheetBehavior$2;"
    const/4 v5, 0x0

    .line 803
    cmpg-float v3, p3, v5

    if-gez v3, :cond_44

    .line 804
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-static {v3}, Landroid/support/design/widget/BottomSheetBehavior;->access$000(Landroid/support/design/widget/BottomSheetBehavior;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 805
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget v2, v3, Landroid/support/design/widget/BottomSheetBehavior;->fitToContentsOffset:I

    .line 806
    .local v2, "top":I
    const/4 v1, 0x3

    .line 861
    .local v1, "targetState":I
    :goto_12
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget-object v3, v3, Landroid/support/design/widget/BottomSheetBehavior;->viewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Landroid/support/v4/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    move-result v3

    if-eqz v3, :cond_f6

    .line 862
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/support/design/widget/BottomSheetBehavior;->setStateInternal(I)V

    .line 863
    new-instance v3, Landroid/support/design/widget/BottomSheetBehavior$SettleRunnable;

    iget-object v4, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-direct {v3, v4, p1, v1}, Landroid/support/design/widget/BottomSheetBehavior$SettleRunnable;-><init>(Landroid/support/design/widget/BottomSheetBehavior;Landroid/view/View;I)V

    invoke-static {p1, v3}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 868
    :goto_30
    return-void

    .line 808
    .end local v1    # "targetState":I
    .end local v2    # "top":I
    :cond_31
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    .line 809
    .local v0, "currentTop":I
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget v3, v3, Landroid/support/design/widget/BottomSheetBehavior;->halfExpandedOffset:I

    if-le v0, v3, :cond_41

    .line 810
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget v2, v3, Landroid/support/design/widget/BottomSheetBehavior;->halfExpandedOffset:I

    .line 811
    .restart local v2    # "top":I
    const/4 v1, 0x6

    .restart local v1    # "targetState":I
    goto :goto_12

    .line 813
    .end local v1    # "targetState":I
    .end local v2    # "top":I
    :cond_41
    const/4 v2, 0x0

    .line 814
    .restart local v2    # "top":I
    const/4 v1, 0x3

    .restart local v1    # "targetState":I
    goto :goto_12

    .line 817
    .end local v0    # "currentTop":I
    .end local v1    # "targetState":I
    .end local v2    # "top":I
    :cond_44
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget-boolean v3, v3, Landroid/support/design/widget/BottomSheetBehavior;->hideable:Z

    if-eqz v3, :cond_6e

    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    .line 818
    invoke-virtual {v3, p1, p3}, Landroid/support/design/widget/BottomSheetBehavior;->shouldHide(Landroid/view/View;F)Z

    move-result v3

    if-eqz v3, :cond_6e

    .line 819
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget v4, v4, Landroid/support/design/widget/BottomSheetBehavior;->collapsedOffset:I

    if-gt v3, v4, :cond_68

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_6e

    .line 822
    :cond_68
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget v2, v3, Landroid/support/design/widget/BottomSheetBehavior;->parentHeight:I

    .line 823
    .restart local v2    # "top":I
    const/4 v1, 0x5

    .restart local v1    # "targetState":I
    goto :goto_12

    .line 824
    .end local v1    # "targetState":I
    .end local v2    # "top":I
    :cond_6e
    cmpl-float v3, p3, v5

    if-eqz v3, :cond_7e

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_ef

    .line 827
    :cond_7e
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    .line 828
    .restart local v0    # "currentTop":I
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-static {v3}, Landroid/support/design/widget/BottomSheetBehavior;->access$000(Landroid/support/design/widget/BottomSheetBehavior;)Z

    move-result v3

    if-eqz v3, :cond_ae

    .line 829
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget v3, v3, Landroid/support/design/widget/BottomSheetBehavior;->fitToContentsOffset:I

    sub-int v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget-object v4, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget v4, v4, Landroid/support/design/widget/BottomSheetBehavior;->collapsedOffset:I

    sub-int v4, v0, v4

    .line 830
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v3, v4, :cond_a7

    .line 831
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget v2, v3, Landroid/support/design/widget/BottomSheetBehavior;->fitToContentsOffset:I

    .line 832
    .restart local v2    # "top":I
    const/4 v1, 0x3

    .restart local v1    # "targetState":I
    goto/16 :goto_12

    .line 834
    .end local v1    # "targetState":I
    .end local v2    # "top":I
    :cond_a7
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget v2, v3, Landroid/support/design/widget/BottomSheetBehavior;->collapsedOffset:I

    .line 835
    .restart local v2    # "top":I
    const/4 v1, 0x4

    .restart local v1    # "targetState":I
    goto/16 :goto_12

    .line 838
    .end local v1    # "targetState":I
    .end local v2    # "top":I
    :cond_ae
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget v3, v3, Landroid/support/design/widget/BottomSheetBehavior;->halfExpandedOffset:I

    if-ge v0, v3, :cond_cb

    .line 839
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget v3, v3, Landroid/support/design/widget/BottomSheetBehavior;->collapsedOffset:I

    sub-int v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v0, v3, :cond_c4

    .line 840
    const/4 v2, 0x0

    .line 841
    .restart local v2    # "top":I
    const/4 v1, 0x3

    .restart local v1    # "targetState":I
    goto/16 :goto_12

    .line 843
    .end local v1    # "targetState":I
    .end local v2    # "top":I
    :cond_c4
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget v2, v3, Landroid/support/design/widget/BottomSheetBehavior;->halfExpandedOffset:I

    .line 844
    .restart local v2    # "top":I
    const/4 v1, 0x6

    .restart local v1    # "targetState":I
    goto/16 :goto_12

    .line 847
    .end local v1    # "targetState":I
    .end local v2    # "top":I
    :cond_cb
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget v3, v3, Landroid/support/design/widget/BottomSheetBehavior;->halfExpandedOffset:I

    sub-int v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget-object v4, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget v4, v4, Landroid/support/design/widget/BottomSheetBehavior;->collapsedOffset:I

    sub-int v4, v0, v4

    .line 848
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v3, v4, :cond_e8

    .line 849
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget v2, v3, Landroid/support/design/widget/BottomSheetBehavior;->halfExpandedOffset:I

    .line 850
    .restart local v2    # "top":I
    const/4 v1, 0x6

    .restart local v1    # "targetState":I
    goto/16 :goto_12

    .line 852
    .end local v1    # "targetState":I
    .end local v2    # "top":I
    :cond_e8
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget v2, v3, Landroid/support/design/widget/BottomSheetBehavior;->collapsedOffset:I

    .line 853
    .restart local v2    # "top":I
    const/4 v1, 0x4

    .restart local v1    # "targetState":I
    goto/16 :goto_12

    .line 858
    .end local v0    # "currentTop":I
    .end local v1    # "targetState":I
    .end local v2    # "top":I
    :cond_ef
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget v2, v3, Landroid/support/design/widget/BottomSheetBehavior;->collapsedOffset:I

    .line 859
    .restart local v2    # "top":I
    const/4 v1, 0x4

    .restart local v1    # "targetState":I
    goto/16 :goto_12

    .line 866
    :cond_f6
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-virtual {v3, v1}, Landroid/support/design/widget/BottomSheetBehavior;->setStateInternal(I)V

    goto/16 :goto_30
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .registers 8
    .param p1, "child"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "pointerId"    # I

    .prologue
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior$2;, "Landroid/support/design/widget/BottomSheetBehavior$2;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 770
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget v3, v3, Landroid/support/design/widget/BottomSheetBehavior;->state:I

    if-ne v3, v1, :cond_9

    .line 783
    :cond_8
    :goto_8
    return v2

    .line 773
    :cond_9
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget-boolean v3, v3, Landroid/support/design/widget/BottomSheetBehavior;->touchingScrollingChild:Z

    if-nez v3, :cond_8

    .line 776
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget v3, v3, Landroid/support/design/widget/BottomSheetBehavior;->state:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2f

    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget v3, v3, Landroid/support/design/widget/BottomSheetBehavior;->activePointerId:I

    if-ne v3, p2, :cond_2f

    .line 777
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget-object v3, v3, Landroid/support/design/widget/BottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 778
    .local v0, "scroll":Landroid/view/View;
    if-eqz v0, :cond_2f

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v3

    if-nez v3, :cond_8

    .line 783
    .end local v0    # "scroll":Landroid/view/View;
    :cond_2f
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget-object v3, v3, Landroid/support/design/widget/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_41

    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget-object v3, v3, Landroid/support/design/widget/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_41

    :goto_3f
    move v2, v1

    goto :goto_8

    :cond_41
    move v1, v2

    goto :goto_3f
.end method
