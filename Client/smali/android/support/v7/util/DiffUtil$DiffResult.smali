.class public Landroid/support/v7/util/DiffUtil$DiffResult;
.super Ljava/lang/Object;
.source "DiffUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/util/DiffUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DiffResult"
.end annotation


# static fields
.field private static final FLAG_CHANGED:I = 0x2

.field private static final FLAG_IGNORE:I = 0x10

.field private static final FLAG_MASK:I = 0x1f

.field private static final FLAG_MOVED_CHANGED:I = 0x4

.field private static final FLAG_MOVED_NOT_CHANGED:I = 0x8

.field private static final FLAG_NOT_CHANGED:I = 0x1

.field private static final FLAG_OFFSET:I = 0x5

.field public static final NO_POSITION:I = -0x1


# instance fields
.field private final mCallback:Landroid/support/v7/util/DiffUtil$Callback;

.field private final mDetectMoves:Z

.field private final mNewItemStatuses:[I

.field private final mNewListSize:I

.field private final mOldItemStatuses:[I

.field private final mOldListSize:I

.field private final mSnakes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/util/DiffUtil$Snake;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/support/v7/util/DiffUtil$Callback;Ljava/util/List;[I[IZ)V
    .registers 8
    .param p1, "callback"    # Landroid/support/v7/util/DiffUtil$Callback;
    .param p3, "oldItemStatuses"    # [I
    .param p4, "newItemStatuses"    # [I
    .param p5, "detectMoves"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/util/DiffUtil$Callback;",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/util/DiffUtil$Snake;",
            ">;[I[IZ)V"
        }
    .end annotation

    .prologue
    .local p2, "snakes":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/util/DiffUtil$Snake;>;"
    const/4 v1, 0x0

    .line 567
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 568
    iput-object p2, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    .line 569
    iput-object p3, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldItemStatuses:[I

    .line 570
    iput-object p4, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mNewItemStatuses:[I

    .line 571
    iget-object v0, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldItemStatuses:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 572
    iget-object v0, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mNewItemStatuses:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 573
    iput-object p1, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mCallback:Landroid/support/v7/util/DiffUtil$Callback;

    .line 574
    invoke-virtual {p1}, Landroid/support/v7/util/DiffUtil$Callback;->getOldListSize()I

    move-result v0

    iput v0, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldListSize:I

    .line 575
    invoke-virtual {p1}, Landroid/support/v7/util/DiffUtil$Callback;->getNewListSize()I

    move-result v0

    iput v0, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mNewListSize:I

    .line 576
    iput-boolean p5, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mDetectMoves:Z

    .line 577
    invoke-direct {p0}, Landroid/support/v7/util/DiffUtil$DiffResult;->addRootSnake()V

    .line 578
    invoke-direct {p0}, Landroid/support/v7/util/DiffUtil$DiffResult;->findMatchingItems()V

    .line 579
    return-void
.end method

.method private addRootSnake()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 586
    iget-object v2, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_29

    const/4 v0, 0x0

    .line 587
    .local v0, "firstSnake":Landroid/support/v7/util/DiffUtil$Snake;
    :goto_a
    if-eqz v0, :cond_14

    iget v2, v0, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    if-nez v2, :cond_14

    iget v2, v0, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    if-eqz v2, :cond_28

    .line 588
    :cond_14
    new-instance v1, Landroid/support/v7/util/DiffUtil$Snake;

    invoke-direct {v1}, Landroid/support/v7/util/DiffUtil$Snake;-><init>()V

    .line 589
    .local v1, "root":Landroid/support/v7/util/DiffUtil$Snake;
    iput v3, v1, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    .line 590
    iput v3, v1, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    .line 591
    iput-boolean v3, v1, Landroid/support/v7/util/DiffUtil$Snake;->removal:Z

    .line 592
    iput v3, v1, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    .line 593
    iput-boolean v3, v1, Landroid/support/v7/util/DiffUtil$Snake;->reverse:Z

    .line 594
    iget-object v2, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    invoke-interface {v2, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 596
    .end local v1    # "root":Landroid/support/v7/util/DiffUtil$Snake;
    :cond_28
    return-void

    .line 586
    .end local v0    # "firstSnake":Landroid/support/v7/util/DiffUtil$Snake;
    :cond_29
    iget-object v2, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/util/DiffUtil$Snake;

    move-object v0, v2

    goto :goto_a
.end method

.method private dispatchAdditions(Ljava/util/List;Landroid/support/v7/util/ListUpdateCallback;III)V
    .registers 14
    .param p2, "updateCallback"    # Landroid/support/v7/util/ListUpdateCallback;
    .param p3, "start"    # I
    .param p4, "count"    # I
    .param p5, "globalIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/util/DiffUtil$PostponedUpdate;",
            ">;",
            "Landroid/support/v7/util/ListUpdateCallback;",
            "III)V"
        }
    .end annotation

    .prologue
    .local p1, "postponedUpdates":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/util/DiffUtil$PostponedUpdate;>;"
    const/4 v7, 0x1

    .line 873
    iget-boolean v4, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mDetectMoves:Z

    if-nez v4, :cond_9

    .line 874
    invoke-interface {p2, p3, p4}, Landroid/support/v7/util/ListUpdateCallback;->onInserted(II)V

    .line 909
    :cond_8
    return-void

    .line 877
    :cond_9
    add-int/lit8 v0, p4, -0x1

    .local v0, "i":I
    :goto_b
    if-ltz v0, :cond_8

    .line 878
    iget-object v4, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mNewItemStatuses:[I

    add-int v5, p5, v0

    aget v4, v4, v5

    and-int/lit8 v2, v4, 0x1f

    .line 879
    .local v2, "status":I
    sparse-switch v2, :sswitch_data_8a

    .line 904
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unknown flag for pos "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int v6, p5, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    int-to-long v6, v2

    .line 906
    invoke-static {v6, v7}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 881
    :sswitch_42
    invoke-interface {p2, p3, v7}, Landroid/support/v7/util/ListUpdateCallback;->onInserted(II)V

    .line 882
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_49
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/util/DiffUtil$PostponedUpdate;

    .line 883
    .local v3, "update":Landroid/support/v7/util/DiffUtil$PostponedUpdate;
    iget v5, v3, Landroid/support/v7/util/DiffUtil$PostponedUpdate;->currentPos:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v3, Landroid/support/v7/util/DiffUtil$PostponedUpdate;->currentPos:I

    goto :goto_49

    .line 888
    .end local v3    # "update":Landroid/support/v7/util/DiffUtil$PostponedUpdate;
    :sswitch_5c
    iget-object v4, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mNewItemStatuses:[I

    add-int v5, p5, v0

    aget v4, v4, v5

    shr-int/lit8 v1, v4, 0x5

    .line 889
    .local v1, "pos":I
    invoke-static {p1, v1, v7}, Landroid/support/v7/util/DiffUtil$DiffResult;->removePostponedUpdate(Ljava/util/List;IZ)Landroid/support/v7/util/DiffUtil$PostponedUpdate;

    move-result-object v3

    .line 893
    .restart local v3    # "update":Landroid/support/v7/util/DiffUtil$PostponedUpdate;
    iget v4, v3, Landroid/support/v7/util/DiffUtil$PostponedUpdate;->currentPos:I

    invoke-interface {p2, v4, p3}, Landroid/support/v7/util/ListUpdateCallback;->onMoved(II)V

    .line 894
    const/4 v4, 0x4

    if-ne v2, v4, :cond_7b

    .line 896
    iget-object v4, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mCallback:Landroid/support/v7/util/DiffUtil$Callback;

    add-int v5, p5, v0

    .line 897
    invoke-virtual {v4, v1, v5}, Landroid/support/v7/util/DiffUtil$Callback;->getChangePayload(II)Ljava/lang/Object;

    move-result-object v4

    .line 896
    invoke-interface {p2, p3, v7, v4}, Landroid/support/v7/util/ListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    .line 877
    .end local v1    # "pos":I
    .end local v3    # "update":Landroid/support/v7/util/DiffUtil$PostponedUpdate;
    :cond_7b
    :goto_7b
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 901
    :sswitch_7e
    new-instance v4, Landroid/support/v7/util/DiffUtil$PostponedUpdate;

    add-int v5, p5, v0

    const/4 v6, 0x0

    invoke-direct {v4, v5, p3, v6}, Landroid/support/v7/util/DiffUtil$PostponedUpdate;-><init>(IIZ)V

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7b

    .line 879
    :sswitch_data_8a
    .sparse-switch
        0x0 -> :sswitch_42
        0x4 -> :sswitch_5c
        0x8 -> :sswitch_5c
        0x10 -> :sswitch_7e
    .end sparse-switch
.end method

.method private dispatchRemovals(Ljava/util/List;Landroid/support/v7/util/ListUpdateCallback;III)V
    .registers 14
    .param p2, "updateCallback"    # Landroid/support/v7/util/ListUpdateCallback;
    .param p3, "start"    # I
    .param p4, "count"    # I
    .param p5, "globalIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/util/DiffUtil$PostponedUpdate;",
            ">;",
            "Landroid/support/v7/util/ListUpdateCallback;",
            "III)V"
        }
    .end annotation

    .prologue
    .local p1, "postponedUpdates":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/util/DiffUtil$PostponedUpdate;>;"
    const/4 v7, 0x1

    .line 913
    iget-boolean v4, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mDetectMoves:Z

    if-nez v4, :cond_9

    .line 914
    invoke-interface {p2, p3, p4}, Landroid/support/v7/util/ListUpdateCallback;->onRemoved(II)V

    .line 950
    :cond_8
    return-void

    .line 917
    :cond_9
    add-int/lit8 v0, p4, -0x1

    .local v0, "i":I
    :goto_b
    if-ltz v0, :cond_8

    .line 918
    iget-object v4, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldItemStatuses:[I

    add-int v5, p5, v0

    aget v4, v4, v5

    and-int/lit8 v2, v4, 0x1f

    .line 919
    .local v2, "status":I
    sparse-switch v2, :sswitch_data_96

    .line 945
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unknown flag for pos "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int v6, p5, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    int-to-long v6, v2

    .line 947
    invoke-static {v6, v7}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 921
    :sswitch_42
    add-int v4, p3, v0

    invoke-interface {p2, v4, v7}, Landroid/support/v7/util/ListUpdateCallback;->onRemoved(II)V

    .line 922
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_86

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/util/DiffUtil$PostponedUpdate;

    .line 923
    .local v3, "update":Landroid/support/v7/util/DiffUtil$PostponedUpdate;
    iget v5, v3, Landroid/support/v7/util/DiffUtil$PostponedUpdate;->currentPos:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v3, Landroid/support/v7/util/DiffUtil$PostponedUpdate;->currentPos:I

    goto :goto_4b

    .line 928
    .end local v3    # "update":Landroid/support/v7/util/DiffUtil$PostponedUpdate;
    :sswitch_5e
    iget-object v4, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldItemStatuses:[I

    add-int v5, p5, v0

    aget v4, v4, v5

    shr-int/lit8 v1, v4, 0x5

    .line 929
    .local v1, "pos":I
    const/4 v4, 0x0

    invoke-static {p1, v1, v4}, Landroid/support/v7/util/DiffUtil$DiffResult;->removePostponedUpdate(Ljava/util/List;IZ)Landroid/support/v7/util/DiffUtil$PostponedUpdate;

    move-result-object v3

    .line 934
    .restart local v3    # "update":Landroid/support/v7/util/DiffUtil$PostponedUpdate;
    add-int v4, p3, v0

    iget v5, v3, Landroid/support/v7/util/DiffUtil$PostponedUpdate;->currentPos:I

    add-int/lit8 v5, v5, -0x1

    invoke-interface {p2, v4, v5}, Landroid/support/v7/util/ListUpdateCallback;->onMoved(II)V

    .line 935
    const/4 v4, 0x4

    if-ne v2, v4, :cond_86

    .line 937
    iget v4, v3, Landroid/support/v7/util/DiffUtil$PostponedUpdate;->currentPos:I

    add-int/lit8 v4, v4, -0x1

    iget-object v5, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mCallback:Landroid/support/v7/util/DiffUtil$Callback;

    add-int v6, p5, v0

    .line 938
    invoke-virtual {v5, v6, v1}, Landroid/support/v7/util/DiffUtil$Callback;->getChangePayload(II)Ljava/lang/Object;

    move-result-object v5

    .line 937
    invoke-interface {p2, v4, v7, v5}, Landroid/support/v7/util/ListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    .line 917
    .end local v1    # "pos":I
    .end local v3    # "update":Landroid/support/v7/util/DiffUtil$PostponedUpdate;
    :cond_86
    :goto_86
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 942
    :sswitch_89
    new-instance v4, Landroid/support/v7/util/DiffUtil$PostponedUpdate;

    add-int v5, p5, v0

    add-int v6, p3, v0

    invoke-direct {v4, v5, v6, v7}, Landroid/support/v7/util/DiffUtil$PostponedUpdate;-><init>(IIZ)V

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_86

    .line 919
    :sswitch_data_96
    .sparse-switch
        0x0 -> :sswitch_42
        0x4 -> :sswitch_5e
        0x8 -> :sswitch_5e
        0x10 -> :sswitch_89
    .end sparse-switch
.end method

.method private findAddition(III)V
    .registers 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "snakeIndex"    # I

    .prologue
    .line 646
    iget-object v0, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldItemStatuses:[I

    add-int/lit8 v1, p1, -0x1

    aget v0, v0, v1

    if-eqz v0, :cond_9

    .line 650
    :goto_8
    return-void

    .line 649
    :cond_9
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/util/DiffUtil$DiffResult;->findMatchingItem(IIIZ)Z

    goto :goto_8
.end method

.method private findMatchingItem(IIIZ)Z
    .registers 18
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "snakeIndex"    # I
    .param p4, "removal"    # Z

    .prologue
    .line 723
    if-eqz p4, :cond_48

    .line 724
    add-int/lit8 v6, p2, -0x1

    .line 725
    .local v6, "myItemPos":I
    move v1, p1

    .line 726
    .local v1, "curX":I
    add-int/lit8 v2, p2, -0x1

    .line 732
    .local v2, "curY":I
    :goto_7
    move/from16 v5, p3

    .local v5, "i":I
    :goto_9
    if-ltz v5, :cond_8a

    .line 733
    iget-object v10, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v7/util/DiffUtil$Snake;

    .line 734
    .local v8, "snake":Landroid/support/v7/util/DiffUtil$Snake;
    iget v10, v8, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    iget v11, v8, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    add-int v3, v10, v11

    .line 735
    .local v3, "endX":I
    iget v10, v8, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    iget v11, v8, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    add-int v4, v10, v11

    .line 736
    .local v4, "endY":I
    if-eqz p4, :cond_53

    .line 738
    add-int/lit8 v7, v1, -0x1

    .local v7, "pos":I
    :goto_23
    if-lt v7, v3, :cond_83

    .line 739
    iget-object v10, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mCallback:Landroid/support/v7/util/DiffUtil$Callback;

    invoke-virtual {v10, v7, v6}, Landroid/support/v7/util/DiffUtil$Callback;->areItemsTheSame(II)Z

    move-result v10

    if-eqz v10, :cond_50

    .line 741
    iget-object v10, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mCallback:Landroid/support/v7/util/DiffUtil$Callback;

    invoke-virtual {v10, v7, v6}, Landroid/support/v7/util/DiffUtil$Callback;->areContentsTheSame(II)Z

    move-result v9

    .line 742
    .local v9, "theSame":Z
    if-eqz v9, :cond_4e

    const/16 v0, 0x8

    .line 744
    .local v0, "changeFlag":I
    :goto_37
    iget-object v10, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mNewItemStatuses:[I

    shl-int/lit8 v11, v7, 0x5

    or-int/lit8 v11, v11, 0x10

    aput v11, v10, v6

    .line 745
    iget-object v10, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldItemStatuses:[I

    shl-int/lit8 v11, v6, 0x5

    or-int/2addr v11, v0

    aput v11, v10, v7

    .line 746
    const/4 v10, 0x1

    .line 766
    .end local v0    # "changeFlag":I
    .end local v3    # "endX":I
    .end local v4    # "endY":I
    .end local v7    # "pos":I
    .end local v8    # "snake":Landroid/support/v7/util/DiffUtil$Snake;
    .end local v9    # "theSame":Z
    :goto_47
    return v10

    .line 728
    .end local v1    # "curX":I
    .end local v2    # "curY":I
    .end local v5    # "i":I
    .end local v6    # "myItemPos":I
    :cond_48
    add-int/lit8 v6, p1, -0x1

    .line 729
    .restart local v6    # "myItemPos":I
    add-int/lit8 v1, p1, -0x1

    .line 730
    .restart local v1    # "curX":I
    move v2, p2

    .restart local v2    # "curY":I
    goto :goto_7

    .line 742
    .restart local v3    # "endX":I
    .restart local v4    # "endY":I
    .restart local v5    # "i":I
    .restart local v7    # "pos":I
    .restart local v8    # "snake":Landroid/support/v7/util/DiffUtil$Snake;
    .restart local v9    # "theSame":Z
    :cond_4e
    const/4 v0, 0x4

    goto :goto_37

    .line 738
    .end local v9    # "theSame":Z
    :cond_50
    add-int/lit8 v7, v7, -0x1

    goto :goto_23

    .line 751
    .end local v7    # "pos":I
    :cond_53
    add-int/lit8 v7, v2, -0x1

    .restart local v7    # "pos":I
    :goto_55
    if-lt v7, v4, :cond_83

    .line 752
    iget-object v10, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mCallback:Landroid/support/v7/util/DiffUtil$Callback;

    invoke-virtual {v10, v6, v7}, Landroid/support/v7/util/DiffUtil$Callback;->areItemsTheSame(II)Z

    move-result v10

    if-eqz v10, :cond_80

    .line 754
    iget-object v10, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mCallback:Landroid/support/v7/util/DiffUtil$Callback;

    invoke-virtual {v10, v6, v7}, Landroid/support/v7/util/DiffUtil$Callback;->areContentsTheSame(II)Z

    move-result v9

    .line 755
    .restart local v9    # "theSame":Z
    if-eqz v9, :cond_7e

    const/16 v0, 0x8

    .line 757
    .restart local v0    # "changeFlag":I
    :goto_69
    iget-object v10, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldItemStatuses:[I

    add-int/lit8 v11, p1, -0x1

    shl-int/lit8 v12, v7, 0x5

    or-int/lit8 v12, v12, 0x10

    aput v12, v10, v11

    .line 758
    iget-object v10, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mNewItemStatuses:[I

    add-int/lit8 v11, p1, -0x1

    shl-int/lit8 v11, v11, 0x5

    or-int/2addr v11, v0

    aput v11, v10, v7

    .line 759
    const/4 v10, 0x1

    goto :goto_47

    .line 755
    .end local v0    # "changeFlag":I
    :cond_7e
    const/4 v0, 0x4

    goto :goto_69

    .line 751
    .end local v9    # "theSame":Z
    :cond_80
    add-int/lit8 v7, v7, -0x1

    goto :goto_55

    .line 763
    :cond_83
    iget v1, v8, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    .line 764
    iget v2, v8, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    .line 732
    add-int/lit8 v5, v5, -0x1

    goto :goto_9

    .line 766
    .end local v3    # "endX":I
    .end local v4    # "endY":I
    .end local v7    # "pos":I
    .end local v8    # "snake":Landroid/support/v7/util/DiffUtil$Snake;
    :cond_8a
    const/4 v10, 0x0

    goto :goto_47
.end method

.method private findMatchingItems()V
    .registers 14

    .prologue
    .line 610
    iget v8, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldListSize:I

    .line 611
    .local v8, "posOld":I
    iget v7, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mNewListSize:I

    .line 613
    .local v7, "posNew":I
    iget-object v11, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    add-int/lit8 v3, v11, -0x1

    .local v3, "i":I
    :goto_c
    if-ltz v3, :cond_66

    .line 614
    iget-object v11, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v7/util/DiffUtil$Snake;

    .line 615
    .local v9, "snake":Landroid/support/v7/util/DiffUtil$Snake;
    iget v11, v9, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    iget v12, v9, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    add-int v1, v11, v12

    .line 616
    .local v1, "endX":I
    iget v11, v9, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    iget v12, v9, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    add-int v2, v11, v12

    .line 617
    .local v2, "endY":I
    iget-boolean v11, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mDetectMoves:Z

    if-eqz v11, :cond_36

    .line 618
    :goto_26
    if-le v8, v1, :cond_2e

    .line 620
    invoke-direct {p0, v8, v7, v3}, Landroid/support/v7/util/DiffUtil$DiffResult;->findAddition(III)V

    .line 621
    add-int/lit8 v8, v8, -0x1

    goto :goto_26

    .line 623
    :cond_2e
    :goto_2e
    if-le v7, v2, :cond_36

    .line 626
    invoke-direct {p0, v8, v7, v3}, Landroid/support/v7/util/DiffUtil$DiffResult;->findRemoval(III)V

    .line 627
    add-int/lit8 v7, v7, -0x1

    goto :goto_2e

    .line 630
    :cond_36
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_37
    iget v11, v9, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    if-ge v4, v11, :cond_5f

    .line 632
    iget v11, v9, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    add-int v6, v11, v4

    .line 633
    .local v6, "oldItemPos":I
    iget v11, v9, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    add-int v5, v11, v4

    .line 634
    .local v5, "newItemPos":I
    iget-object v11, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mCallback:Landroid/support/v7/util/DiffUtil$Callback;

    .line 635
    invoke-virtual {v11, v6, v5}, Landroid/support/v7/util/DiffUtil$Callback;->areContentsTheSame(II)Z

    move-result v10

    .line 636
    .local v10, "theSame":Z
    if-eqz v10, :cond_5d

    const/4 v0, 0x1

    .line 637
    .local v0, "changeFlag":I
    :goto_4c
    iget-object v11, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldItemStatuses:[I

    shl-int/lit8 v12, v5, 0x5

    or-int/2addr v12, v0

    aput v12, v11, v6

    .line 638
    iget-object v11, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mNewItemStatuses:[I

    shl-int/lit8 v12, v6, 0x5

    or-int/2addr v12, v0

    aput v12, v11, v5

    .line 630
    add-int/lit8 v4, v4, 0x1

    goto :goto_37

    .line 636
    .end local v0    # "changeFlag":I
    :cond_5d
    const/4 v0, 0x2

    goto :goto_4c

    .line 640
    .end local v5    # "newItemPos":I
    .end local v6    # "oldItemPos":I
    .end local v10    # "theSame":Z
    :cond_5f
    iget v8, v9, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    .line 641
    iget v7, v9, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    .line 613
    add-int/lit8 v3, v3, -0x1

    goto :goto_c

    .line 643
    .end local v1    # "endX":I
    .end local v2    # "endY":I
    .end local v4    # "j":I
    .end local v9    # "snake":Landroid/support/v7/util/DiffUtil$Snake;
    :cond_66
    return-void
.end method

.method private findRemoval(III)V
    .registers 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "snakeIndex"    # I

    .prologue
    .line 653
    iget-object v0, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mNewItemStatuses:[I

    add-int/lit8 v1, p2, -0x1

    aget v0, v0, v1

    if-eqz v0, :cond_9

    .line 657
    :goto_8
    return-void

    .line 656
    :cond_9
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/util/DiffUtil$DiffResult;->findMatchingItem(IIIZ)Z

    goto :goto_8
.end method

.method private static removePostponedUpdate(Ljava/util/List;IZ)Landroid/support/v7/util/DiffUtil$PostponedUpdate;
    .registers 9
    .param p1, "pos"    # I
    .param p2, "removal"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/util/DiffUtil$PostponedUpdate;",
            ">;IZ)",
            "Landroid/support/v7/util/DiffUtil$PostponedUpdate;"
        }
    .end annotation

    .prologue
    .line 857
    .local p0, "updates":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/util/DiffUtil$PostponedUpdate;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_36

    .line 858
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/util/DiffUtil$PostponedUpdate;

    .line 859
    .local v2, "update":Landroid/support/v7/util/DiffUtil$PostponedUpdate;
    iget v3, v2, Landroid/support/v7/util/DiffUtil$PostponedUpdate;->posInOwnerList:I

    if-ne v3, p1, :cond_33

    iget-boolean v3, v2, Landroid/support/v7/util/DiffUtil$PostponedUpdate;->removal:Z

    if-ne v3, p2, :cond_33

    .line 860
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 861
    move v1, v0

    .local v1, "j":I
    :goto_1a
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_37

    .line 863
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/util/DiffUtil$PostponedUpdate;

    iget v5, v3, Landroid/support/v7/util/DiffUtil$PostponedUpdate;->currentPos:I

    if-eqz p2, :cond_31

    const/4 v4, 0x1

    :goto_2b
    add-int/2addr v4, v5

    iput v4, v3, Landroid/support/v7/util/DiffUtil$PostponedUpdate;->currentPos:I

    .line 861
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 863
    :cond_31
    const/4 v4, -0x1

    goto :goto_2b

    .line 857
    .end local v1    # "j":I
    :cond_33
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 868
    .end local v2    # "update":Landroid/support/v7/util/DiffUtil$PostponedUpdate;
    :cond_36
    const/4 v2, 0x0

    :cond_37
    return-object v2
.end method


# virtual methods
.method public convertNewPositionToOld(I)I
    .registers 6
    .param p1, "newListPosition"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .prologue
    .line 695
    if-ltz p1, :cond_7

    iget-object v1, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mNewItemStatuses:[I

    array-length v1, v1

    if-lt p1, v1, :cond_2d

    .line 696
    :cond_7
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Index out of bounds - passed position = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", new list size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mNewItemStatuses:[I

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 699
    :cond_2d
    iget-object v1, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mNewItemStatuses:[I

    aget v0, v1, p1

    .line 700
    .local v0, "status":I
    and-int/lit8 v1, v0, 0x1f

    if-nez v1, :cond_37

    .line 701
    const/4 v1, -0x1

    .line 703
    :goto_36
    return v1

    :cond_37
    shr-int/lit8 v1, v0, 0x5

    goto :goto_36
.end method

.method public convertOldPositionToNew(I)I
    .registers 6
    .param p1, "oldListPosition"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .prologue
    .line 671
    if-ltz p1, :cond_7

    iget-object v1, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldItemStatuses:[I

    array-length v1, v1

    if-lt p1, v1, :cond_2d

    .line 672
    :cond_7
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Index out of bounds - passed position = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", old list size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldItemStatuses:[I

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 675
    :cond_2d
    iget-object v1, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldItemStatuses:[I

    aget v0, v1, p1

    .line 676
    .local v0, "status":I
    and-int/lit8 v1, v0, 0x1f

    if-nez v1, :cond_37

    .line 677
    const/4 v1, -0x1

    .line 679
    :goto_36
    return v1

    :cond_37
    shr-int/lit8 v1, v0, 0x5

    goto :goto_36
.end method

.method public dispatchUpdatesTo(Landroid/support/v7/util/ListUpdateCallback;)V
    .registers 18
    .param p1, "updateCallback"    # Landroid/support/v7/util/ListUpdateCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 816
    move-object/from16 v0, p1

    instance-of v1, v0, Landroid/support/v7/util/BatchingListUpdateCallback;

    if-eqz v1, :cond_75

    move-object/from16 v3, p1

    .line 817
    check-cast v3, Landroid/support/v7/util/BatchingListUpdateCallback;

    .line 827
    .local v3, "batchingCallback":Landroid/support/v7/util/BatchingListUpdateCallback;
    :goto_a
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 828
    .local v2, "postponedUpdates":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/util/DiffUtil$PostponedUpdate;>;"
    move-object/from16 v0, p0

    iget v10, v0, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldListSize:I

    .line 829
    .local v10, "posOld":I
    move-object/from16 v0, p0

    iget v9, v0, Landroid/support/v7/util/DiffUtil$DiffResult;->mNewListSize:I

    .line 830
    .local v9, "posNew":I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/util/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v12, v1, -0x1

    .local v12, "snakeIndex":I
    :goto_21
    if-ltz v12, :cond_86

    .line 831
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/util/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/support/v7/util/DiffUtil$Snake;

    .line 832
    .local v11, "snake":Landroid/support/v7/util/DiffUtil$Snake;
    iget v13, v11, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    .line 833
    .local v13, "snakeSize":I
    iget v1, v11, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    add-int v4, v1, v13

    .line 834
    .local v4, "endX":I
    iget v1, v11, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    add-int v7, v1, v13

    .line 835
    .local v7, "endY":I
    if-ge v4, v10, :cond_41

    .line 836
    sub-int v5, v10, v4

    move-object/from16 v1, p0

    move v6, v4

    invoke-direct/range {v1 .. v6}, Landroid/support/v7/util/DiffUtil$DiffResult;->dispatchRemovals(Ljava/util/List;Landroid/support/v7/util/ListUpdateCallback;III)V

    .line 839
    :cond_41
    if-ge v7, v9, :cond_4b

    .line 840
    sub-int v5, v9, v7

    move-object/from16 v1, p0

    move v6, v7

    invoke-direct/range {v1 .. v6}, Landroid/support/v7/util/DiffUtil$DiffResult;->dispatchAdditions(Ljava/util/List;Landroid/support/v7/util/ListUpdateCallback;III)V

    .line 843
    :cond_4b
    add-int/lit8 v8, v13, -0x1

    .local v8, "i":I
    :goto_4d
    if-ltz v8, :cond_7f

    .line 844
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldItemStatuses:[I

    iget v5, v11, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    add-int/2addr v5, v8

    aget v1, v1, v5

    and-int/lit8 v1, v1, 0x1f

    const/4 v5, 0x2

    if-ne v1, v5, :cond_72

    .line 845
    iget v1, v11, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    add-int/2addr v1, v8

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/util/DiffUtil$DiffResult;->mCallback:Landroid/support/v7/util/DiffUtil$Callback;

    iget v14, v11, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    add-int/2addr v14, v8

    iget v15, v11, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    add-int/2addr v15, v8

    .line 846
    invoke-virtual {v6, v14, v15}, Landroid/support/v7/util/DiffUtil$Callback;->getChangePayload(II)Ljava/lang/Object;

    move-result-object v6

    .line 845
    invoke-virtual {v3, v1, v5, v6}, Landroid/support/v7/util/BatchingListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    .line 843
    :cond_72
    add-int/lit8 v8, v8, -0x1

    goto :goto_4d

    .line 819
    .end local v2    # "postponedUpdates":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/util/DiffUtil$PostponedUpdate;>;"
    .end local v3    # "batchingCallback":Landroid/support/v7/util/BatchingListUpdateCallback;
    .end local v4    # "endX":I
    .end local v7    # "endY":I
    .end local v8    # "i":I
    .end local v9    # "posNew":I
    .end local v10    # "posOld":I
    .end local v11    # "snake":Landroid/support/v7/util/DiffUtil$Snake;
    .end local v12    # "snakeIndex":I
    .end local v13    # "snakeSize":I
    :cond_75
    new-instance v3, Landroid/support/v7/util/BatchingListUpdateCallback;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Landroid/support/v7/util/BatchingListUpdateCallback;-><init>(Landroid/support/v7/util/ListUpdateCallback;)V

    .line 823
    .restart local v3    # "batchingCallback":Landroid/support/v7/util/BatchingListUpdateCallback;
    move-object/from16 p1, v3

    goto :goto_a

    .line 849
    .restart local v2    # "postponedUpdates":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/util/DiffUtil$PostponedUpdate;>;"
    .restart local v4    # "endX":I
    .restart local v7    # "endY":I
    .restart local v8    # "i":I
    .restart local v9    # "posNew":I
    .restart local v10    # "posOld":I
    .restart local v11    # "snake":Landroid/support/v7/util/DiffUtil$Snake;
    .restart local v12    # "snakeIndex":I
    .restart local v13    # "snakeSize":I
    :cond_7f
    iget v10, v11, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    .line 850
    iget v9, v11, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    .line 830
    add-int/lit8 v12, v12, -0x1

    goto :goto_21

    .line 852
    .end local v4    # "endX":I
    .end local v7    # "endY":I
    .end local v8    # "i":I
    .end local v11    # "snake":Landroid/support/v7/util/DiffUtil$Snake;
    .end local v13    # "snakeSize":I
    :cond_86
    invoke-virtual {v3}, Landroid/support/v7/util/BatchingListUpdateCallback;->dispatchLastEvent()V

    .line 853
    return-void
.end method

.method public dispatchUpdatesTo(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .registers 3
    .param p1, "adapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 802
    new-instance v0, Landroid/support/v7/util/AdapterListUpdateCallback;

    invoke-direct {v0, p1}, Landroid/support/v7/util/AdapterListUpdateCallback;-><init>(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0, v0}, Landroid/support/v7/util/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroid/support/v7/util/ListUpdateCallback;)V

    .line 803
    return-void
.end method

.method getSnakes()Ljava/util/List;
    .registers 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/util/DiffUtil$Snake;",
            ">;"
        }
    .end annotation

    .prologue
    .line 954
    iget-object v0, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    return-object v0
.end method
