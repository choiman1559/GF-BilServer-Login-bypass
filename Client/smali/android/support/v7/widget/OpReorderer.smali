.class Landroid/support/v7/widget/OpReorderer;
.super Ljava/lang/Object;
.source "OpReorderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/OpReorderer$Callback;
    }
.end annotation


# instance fields
.field final mCallback:Landroid/support/v7/widget/OpReorderer$Callback;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/OpReorderer$Callback;)V
    .registers 2
    .param p1, "callback"    # Landroid/support/v7/widget/OpReorderer$Callback;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Landroid/support/v7/widget/OpReorderer;->mCallback:Landroid/support/v7/widget/OpReorderer$Callback;

    .line 27
    return-void
.end method

.method private getLastMoveOutOfOrder(Ljava/util/List;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/AdapterHelper$UpdateOp;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 213
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/widget/AdapterHelper$UpdateOp;>;"
    const/4 v0, 0x0

    .line 214
    .local v0, "foundNonMove":Z
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_7
    if-ltz v1, :cond_1c

    .line 215
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    .line 216
    .local v2, "op1":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    iget v3, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_18

    .line 217
    if-eqz v0, :cond_19

    .line 224
    .end local v1    # "i":I
    .end local v2    # "op1":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    :goto_17
    return v1

    .line 221
    .restart local v1    # "i":I
    .restart local v2    # "op1":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    :cond_18
    const/4 v0, 0x1

    .line 214
    :cond_19
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    .line 224
    .end local v2    # "op1":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    :cond_1c
    const/4 v1, -0x1

    goto :goto_17
.end method

.method private swapMoveAdd(Ljava/util/List;ILandroid/support/v7/widget/AdapterHelper$UpdateOp;ILandroid/support/v7/widget/AdapterHelper$UpdateOp;)V
    .registers 9
    .param p2, "move"    # I
    .param p3, "moveOp"    # Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    .param p4, "add"    # I
    .param p5, "addOp"    # Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/AdapterHelper$UpdateOp;",
            ">;I",
            "Landroid/support/v7/widget/AdapterHelper$UpdateOp;",
            "I",
            "Landroid/support/v7/widget/AdapterHelper$UpdateOp;",
            ")V"
        }
    .end annotation

    .prologue
    .line 155
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/widget/AdapterHelper$UpdateOp;>;"
    const/4 v0, 0x0

    .line 157
    .local v0, "offset":I
    iget v1, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v2, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ge v1, v2, :cond_9

    .line 158
    add-int/lit8 v0, v0, -0x1

    .line 160
    :cond_9
    iget v1, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ge v1, v2, :cond_11

    .line 161
    add-int/lit8 v0, v0, 0x1

    .line 163
    :cond_11
    iget v1, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v1, v2, :cond_1e

    .line 164
    iget v1, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v1, v2

    iput v1, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 166
    :cond_1e
    iget v1, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-gt v1, v2, :cond_2b

    .line 167
    iget v1, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v2, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v1, v2

    iput v1, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 169
    :cond_2b
    iget v1, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/2addr v1, v0

    iput v1, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 170
    invoke-interface {p1, p2, p5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 171
    invoke-interface {p1, p4, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 172
    return-void
.end method

.method private swapMoveOp(Ljava/util/List;II)V
    .registers 10
    .param p2, "badMove"    # I
    .param p3, "next"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/AdapterHelper$UpdateOp;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/widget/AdapterHelper$UpdateOp;>;"
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    .line 40
    .local v3, "moveOp":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    .line 41
    .local v5, "nextOp":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    iget v0, v5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    packed-switch v0, :pswitch_data_2a

    .line 52
    :goto_11
    :pswitch_11
    return-void

    :pswitch_12
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    .line 43
    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/OpReorderer;->swapMoveRemove(Ljava/util/List;ILandroid/support/v7/widget/AdapterHelper$UpdateOp;ILandroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    goto :goto_11

    :pswitch_1a
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    .line 46
    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/OpReorderer;->swapMoveAdd(Ljava/util/List;ILandroid/support/v7/widget/AdapterHelper$UpdateOp;ILandroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    goto :goto_11

    :pswitch_22
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    .line 49
    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/OpReorderer;->swapMoveUpdate(Ljava/util/List;ILandroid/support/v7/widget/AdapterHelper$UpdateOp;ILandroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    goto :goto_11

    .line 41
    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_12
        :pswitch_11
        :pswitch_22
    .end packed-switch
.end method


# virtual methods
.method reorderOps(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/AdapterHelper$UpdateOp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p1, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/widget/AdapterHelper$UpdateOp;>;"
    :goto_0
    invoke-direct {p0, p1}, Landroid/support/v7/widget/OpReorderer;->getLastMoveOutOfOrder(Ljava/util/List;)I

    move-result v0

    .local v0, "badMove":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    .line 34
    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v7/widget/OpReorderer;->swapMoveOp(Ljava/util/List;II)V

    goto :goto_0

    .line 36
    :cond_d
    return-void
.end method

.method swapMoveRemove(Ljava/util/List;ILandroid/support/v7/widget/AdapterHelper$UpdateOp;ILandroid/support/v7/widget/AdapterHelper$UpdateOp;)V
    .registers 14
    .param p2, "movePos"    # I
    .param p3, "moveOp"    # Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    .param p4, "removePos"    # I
    .param p5, "removeOp"    # Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/AdapterHelper$UpdateOp;",
            ">;I",
            "Landroid/support/v7/widget/AdapterHelper$UpdateOp;",
            "I",
            "Landroid/support/v7/widget/AdapterHelper$UpdateOp;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/widget/AdapterHelper$UpdateOp;>;"
    const/4 v7, 0x2

    .line 56
    const/4 v0, 0x0

    .line 58
    .local v0, "extraRm":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    const/4 v3, 0x0

    .line 61
    .local v3, "revertedMove":Z
    iget v4, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-ge v4, v5, :cond_40

    .line 62
    const/4 v1, 0x0

    .line 63
    .local v1, "moveIsBackwards":Z
    iget v4, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ne v4, v5, :cond_1a

    iget v4, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v5, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v6, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v5, v6

    if-ne v4, v5, :cond_1a

    .line 65
    const/4 v3, 0x1

    .line 76
    :cond_1a
    :goto_1a
    iget v4, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v5, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ge v4, v5, :cond_54

    .line 77
    iget v4, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 92
    :cond_26
    iget v4, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v4, v5, :cond_75

    .line 93
    iget v4, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 102
    :cond_32
    :goto_32
    if-eqz v3, :cond_9a

    .line 103
    invoke-interface {p1, p2, p5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 104
    invoke-interface {p1, p4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 105
    iget-object v4, p0, Landroid/support/v7/widget/OpReorderer;->mCallback:Landroid/support/v7/widget/OpReorderer$Callback;

    invoke-interface {v4, p3}, Landroid/support/v7/widget/OpReorderer$Callback;->recycleUpdateOp(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 151
    :cond_3f
    :goto_3f
    return-void

    .line 68
    .end local v1    # "moveIsBackwards":Z
    :cond_40
    const/4 v1, 0x1

    .line 69
    .restart local v1    # "moveIsBackwards":Z
    iget v4, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/lit8 v5, v5, 0x1

    if-ne v4, v5, :cond_1a

    iget v4, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v5, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v6, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v5, v6

    if-ne v4, v5, :cond_1a

    .line 71
    const/4 v3, 0x1

    goto :goto_1a

    .line 78
    :cond_54
    iget v4, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v5, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v6, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v5, v6

    if-ge v4, v5, :cond_26

    .line 80
    iget v4, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 81
    iput v7, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    .line 82
    const/4 v4, 0x1

    iput v4, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 83
    iget v4, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-nez v4, :cond_3f

    .line 84
    invoke-interface {p1, p4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 85
    iget-object v4, p0, Landroid/support/v7/widget/OpReorderer;->mCallback:Landroid/support/v7/widget/OpReorderer$Callback;

    invoke-interface {v4, p5}, Landroid/support/v7/widget/OpReorderer$Callback;->recycleUpdateOp(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    goto :goto_3f

    .line 94
    :cond_75
    iget v4, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v6, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v5, v6

    if-ge v4, v5, :cond_32

    .line 95
    iget v4, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v4, v5

    iget v5, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    sub-int v2, v4, v5

    .line 97
    .local v2, "remaining":I
    iget-object v4, p0, Landroid/support/v7/widget/OpReorderer;->mCallback:Landroid/support/v7/widget/OpReorderer$Callback;

    iget v5, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v4, v7, v5, v2, v6}, Landroid/support/v7/widget/OpReorderer$Callback;->obtainUpdateOp(IIILjava/lang/Object;)Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object v0

    .line 98
    iget v4, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v4, v5

    iput v4, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_32

    .line 110
    .end local v2    # "remaining":I
    :cond_9a
    if-eqz v1, :cond_e5

    .line 111
    if-eqz v0, :cond_b8

    .line 112
    iget v4, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-le v4, v5, :cond_ab

    .line 113
    iget v4, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v4, v5

    iput v4, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 115
    :cond_ab
    iget v4, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v5, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-le v4, v5, :cond_b8

    .line 116
    iget v4, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v5, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v4, v5

    iput v4, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 119
    :cond_b8
    iget v4, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-le v4, v5, :cond_c5

    .line 120
    iget v4, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v4, v5

    iput v4, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 122
    :cond_c5
    iget v4, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v5, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-le v4, v5, :cond_d2

    .line 123
    iget v4, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v5, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v4, v5

    iput v4, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 142
    :cond_d2
    :goto_d2
    invoke-interface {p1, p2, p5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget v4, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-eq v4, v5, :cond_11c

    .line 144
    invoke-interface {p1, p4, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 148
    :goto_de
    if-eqz v0, :cond_3f

    .line 149
    invoke-interface {p1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_3f

    .line 126
    :cond_e5
    if-eqz v0, :cond_101

    .line 127
    iget v4, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-lt v4, v5, :cond_f4

    .line 128
    iget v4, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v4, v5

    iput v4, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 130
    :cond_f4
    iget v4, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v5, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-lt v4, v5, :cond_101

    .line 131
    iget v4, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v5, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v4, v5

    iput v4, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 134
    :cond_101
    iget v4, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-lt v4, v5, :cond_10e

    .line 135
    iget v4, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v4, v5

    iput v4, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 137
    :cond_10e
    iget v4, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v5, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-lt v4, v5, :cond_d2

    .line 138
    iget v4, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v5, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v4, v5

    iput v4, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_d2

    .line 146
    :cond_11c
    invoke-interface {p1, p4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_de
.end method

.method swapMoveUpdate(Ljava/util/List;ILandroid/support/v7/widget/AdapterHelper$UpdateOp;ILandroid/support/v7/widget/AdapterHelper$UpdateOp;)V
    .registers 14
    .param p2, "move"    # I
    .param p3, "moveOp"    # Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    .param p4, "update"    # I
    .param p5, "updateOp"    # Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/AdapterHelper$UpdateOp;",
            ">;I",
            "Landroid/support/v7/widget/AdapterHelper$UpdateOp;",
            "I",
            "Landroid/support/v7/widget/AdapterHelper$UpdateOp;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/widget/AdapterHelper$UpdateOp;>;"
    const/4 v7, 0x4

    .line 176
    const/4 v0, 0x0

    .line 177
    .local v0, "extraUp1":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    const/4 v1, 0x0

    .line 179
    .local v1, "extraUp2":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    iget v3, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v4, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ge v3, v4, :cond_30

    .line 180
    iget v3, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 187
    :cond_f
    :goto_f
    iget v3, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v3, v4, :cond_4b

    .line 188
    iget v3, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 197
    :cond_1b
    :goto_1b
    invoke-interface {p1, p4, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 198
    iget v3, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-lez v3, :cond_6f

    .line 199
    invoke-interface {p1, p2, p5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 204
    :goto_25
    if-eqz v0, :cond_2a

    .line 205
    invoke-interface {p1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 207
    :cond_2a
    if-eqz v1, :cond_2f

    .line 208
    invoke-interface {p1, p2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 210
    :cond_2f
    return-void

    .line 181
    :cond_30
    iget v3, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v4, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_f

    .line 183
    iget v3, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 184
    iget-object v3, p0, Landroid/support/v7/widget/OpReorderer;->mCallback:Landroid/support/v7/widget/OpReorderer$Callback;

    iget v4, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    const/4 v5, 0x1

    iget-object v6, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-interface {v3, v7, v4, v5, v6}, Landroid/support/v7/widget/OpReorderer$Callback;->obtainUpdateOp(IIILjava/lang/Object;)Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object v0

    goto :goto_f

    .line 189
    :cond_4b
    iget v3, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_1b

    .line 190
    iget v3, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v3, v4

    iget v4, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    sub-int v2, v3, v4

    .line 192
    .local v2, "remaining":I
    iget-object v3, p0, Landroid/support/v7/widget/OpReorderer;->mCallback:Landroid/support/v7/widget/OpReorderer$Callback;

    iget v4, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-interface {v3, v7, v4, v2, v5}, Landroid/support/v7/widget/OpReorderer$Callback;->obtainUpdateOp(IIILjava/lang/Object;)Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object v1

    .line 195
    iget v3, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v3, v2

    iput v3, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_1b

    .line 201
    .end local v2    # "remaining":I
    :cond_6f
    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 202
    iget-object v3, p0, Landroid/support/v7/widget/OpReorderer;->mCallback:Landroid/support/v7/widget/OpReorderer$Callback;

    invoke-interface {v3, p5}, Landroid/support/v7/widget/OpReorderer$Callback;->recycleUpdateOp(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    goto :goto_25
.end method
