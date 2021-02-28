.class Landroid/support/v7/widget/AdapterHelper;
.super Ljava/lang/Object;
.source "AdapterHelper.java"

# interfaces
.implements Landroid/support/v7/widget/OpReorderer$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/AdapterHelper$Callback;,
        Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final POSITION_TYPE_INVISIBLE:I = 0x0

.field static final POSITION_TYPE_NEW_OR_LAID_OUT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AHT"


# instance fields
.field final mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

.field final mDisableRecycler:Z

.field private mExistingUpdateTypes:I

.field mOnItemProcessedCallback:Ljava/lang/Runnable;

.field final mOpReorderer:Landroid/support/v7/widget/OpReorderer;

.field final mPendingUpdates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/AdapterHelper$UpdateOp;",
            ">;"
        }
    .end annotation
.end field

.field final mPostponedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/AdapterHelper$UpdateOp;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateOpPool:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool",
            "<",
            "Landroid/support/v7/widget/AdapterHelper$UpdateOp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/support/v7/widget/AdapterHelper$Callback;)V
    .registers 3
    .param p1, "callback"    # Landroid/support/v7/widget/AdapterHelper$Callback;

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/AdapterHelper;-><init>(Landroid/support/v7/widget/AdapterHelper$Callback;Z)V

    .line 73
    return-void
.end method

.method constructor <init>(Landroid/support/v7/widget/AdapterHelper$Callback;Z)V
    .registers 5
    .param p1, "callback"    # Landroid/support/v7/widget/AdapterHelper$Callback;
    .param p2, "disableRecycler"    # Z

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Landroid/support/v4/util/Pools$SimplePool;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Landroid/support/v4/util/Pools$SimplePool;-><init>(I)V

    iput-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->mUpdateOpPool:Landroid/support/v4/util/Pools$Pool;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/AdapterHelper;->mExistingUpdateTypes:I

    .line 76
    iput-object p1, p0, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    .line 77
    iput-boolean p2, p0, Landroid/support/v7/widget/AdapterHelper;->mDisableRecycler:Z

    .line 78
    new-instance v0, Landroid/support/v7/widget/OpReorderer;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/OpReorderer;-><init>(Landroid/support/v7/widget/OpReorderer$Callback;)V

    iput-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->mOpReorderer:Landroid/support/v7/widget/OpReorderer;

    .line 79
    return-void
.end method

.method private applyAdd(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V
    .registers 2
    .param p1, "op"    # Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    .prologue
    .line 432
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AdapterHelper;->postponeAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 433
    return-void
.end method

.method private applyMove(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V
    .registers 2
    .param p1, "op"    # Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    .prologue
    .line 130
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AdapterHelper;->postponeAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 131
    return-void
.end method

.method private applyRemove(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V
    .registers 14
    .param p1, "op"    # Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x2

    .line 134
    iget v4, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 135
    .local v4, "tmpStart":I
    const/4 v2, 0x0

    .line 136
    .local v2, "tmpCount":I
    iget v8, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v9, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int v3, v8, v9

    .line 137
    .local v3, "tmpEnd":I
    const/4 v5, -0x1

    .line 138
    .local v5, "type":I
    iget v1, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .local v1, "position":I
    :goto_e
    if-ge v1, v3, :cond_42

    .line 139
    const/4 v6, 0x0

    .line 140
    .local v6, "typeChanged":Z
    iget-object v8, p0, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    invoke-interface {v8, v1}, Landroid/support/v7/widget/AdapterHelper$Callback;->findViewHolder(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v7

    .line 141
    .local v7, "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-nez v7, :cond_1f

    invoke-direct {p0, v1}, Landroid/support/v7/widget/AdapterHelper;->canFindInPreLayout(I)Z

    move-result v8

    if-eqz v8, :cond_32

    .line 148
    :cond_1f
    if-nez v5, :cond_29

    .line 151
    invoke-virtual {p0, v10, v4, v2, v11}, Landroid/support/v7/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object v0

    .line 152
    .local v0, "newOp":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    invoke-direct {p0, v0}, Landroid/support/v7/widget/AdapterHelper;->dispatchAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 153
    const/4 v6, 0x1

    .line 155
    .end local v0    # "newOp":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    :cond_29
    const/4 v5, 0x1

    .line 168
    :goto_2a
    if-eqz v6, :cond_3f

    .line 169
    sub-int/2addr v1, v2

    .line 170
    sub-int/2addr v3, v2

    .line 171
    const/4 v2, 0x1

    .line 138
    :goto_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 159
    :cond_32
    const/4 v8, 0x1

    if-ne v5, v8, :cond_3d

    .line 162
    invoke-virtual {p0, v10, v4, v2, v11}, Landroid/support/v7/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object v0

    .line 163
    .restart local v0    # "newOp":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    invoke-direct {p0, v0}, Landroid/support/v7/widget/AdapterHelper;->postponeAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 164
    const/4 v6, 0x1

    .line 166
    .end local v0    # "newOp":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    :cond_3d
    const/4 v5, 0x0

    goto :goto_2a

    .line 173
    :cond_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    .line 176
    .end local v6    # "typeChanged":Z
    .end local v7    # "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_42
    iget v8, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-eq v2, v8, :cond_4d

    .line 177
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/AdapterHelper;->recycleUpdateOp(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 178
    invoke-virtual {p0, v10, v4, v2, v11}, Landroid/support/v7/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object p1

    .line 180
    :cond_4d
    if-nez v5, :cond_53

    .line 181
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AdapterHelper;->dispatchAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 185
    :goto_52
    return-void

    .line 183
    :cond_53
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AdapterHelper;->postponeAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    goto :goto_52
.end method

.method private applyUpdate(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V
    .registers 13
    .param p1, "op"    # Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    .prologue
    const/4 v10, 0x4

    .line 188
    iget v5, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 189
    .local v5, "tmpStart":I
    const/4 v3, 0x0

    .line 190
    .local v3, "tmpCount":I
    iget v8, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v9, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int v4, v8, v9

    .line 191
    .local v4, "tmpEnd":I
    const/4 v6, -0x1

    .line 192
    .local v6, "type":I
    iget v2, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .local v2, "position":I
    :goto_d
    if-ge v2, v4, :cond_40

    .line 193
    iget-object v8, p0, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    invoke-interface {v8, v2}, Landroid/support/v7/widget/AdapterHelper$Callback;->findViewHolder(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v7

    .line 194
    .local v7, "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-nez v7, :cond_1d

    invoke-direct {p0, v2}, Landroid/support/v7/widget/AdapterHelper;->canFindInPreLayout(I)Z

    move-result v8

    if-eqz v8, :cond_30

    .line 195
    :cond_1d
    if-nez v6, :cond_2a

    .line 196
    iget-object v8, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {p0, v10, v5, v3, v8}, Landroid/support/v7/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object v0

    .line 198
    .local v0, "newOp":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    invoke-direct {p0, v0}, Landroid/support/v7/widget/AdapterHelper;->dispatchAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 199
    const/4 v3, 0x0

    .line 200
    move v5, v2

    .line 202
    .end local v0    # "newOp":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    :cond_2a
    const/4 v6, 0x1

    .line 213
    :goto_2b
    add-int/lit8 v3, v3, 0x1

    .line 192
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 204
    :cond_30
    const/4 v8, 0x1

    if-ne v6, v8, :cond_3e

    .line 205
    iget-object v8, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {p0, v10, v5, v3, v8}, Landroid/support/v7/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object v0

    .line 207
    .restart local v0    # "newOp":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    invoke-direct {p0, v0}, Landroid/support/v7/widget/AdapterHelper;->postponeAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 208
    const/4 v3, 0x0

    .line 209
    move v5, v2

    .line 211
    .end local v0    # "newOp":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    :cond_3e
    const/4 v6, 0x0

    goto :goto_2b

    .line 215
    .end local v7    # "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_40
    iget v8, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-eq v3, v8, :cond_4d

    .line 216
    iget-object v1, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    .line 217
    .local v1, "payload":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/AdapterHelper;->recycleUpdateOp(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 218
    invoke-virtual {p0, v10, v5, v3, v1}, Landroid/support/v7/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object p1

    .line 220
    .end local v1    # "payload":Ljava/lang/Object;
    :cond_4d
    if-nez v6, :cond_53

    .line 221
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AdapterHelper;->dispatchAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 225
    :goto_52
    return-void

    .line 223
    :cond_53
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AdapterHelper;->postponeAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    goto :goto_52
.end method

.method private canFindInPreLayout(I)Z
    .registers 10
    .param p1, "position"    # I

    .prologue
    const/4 v5, 0x1

    .line 411
    iget-object v6, p0, Landroid/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 412
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v0, :cond_3f

    .line 413
    iget-object v6, p0, Landroid/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    .line 414
    .local v3, "op":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    iget v6, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    const/16 v7, 0x8

    if-ne v6, v7, :cond_23

    .line 415
    iget v6, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p0, v6, v7}, Landroid/support/v7/widget/AdapterHelper;->findPositionOffset(II)I

    move-result v6

    if-ne v6, p1, :cond_3c

    .line 428
    .end local v3    # "op":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    :cond_22
    :goto_22
    return v5

    .line 418
    .restart local v3    # "op":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    :cond_23
    iget v6, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    if-ne v6, v5, :cond_3c

    .line 420
    iget v6, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v7, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int v1, v6, v7

    .line 421
    .local v1, "end":I
    iget v4, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .local v4, "pos":I
    :goto_2f
    if-ge v4, v1, :cond_3c

    .line 422
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p0, v4, v6}, Landroid/support/v7/widget/AdapterHelper;->findPositionOffset(II)I

    move-result v6

    if-eq v6, p1, :cond_22

    .line 421
    add-int/lit8 v4, v4, 0x1

    goto :goto_2f

    .line 412
    .end local v1    # "end":I
    .end local v4    # "pos":I
    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 428
    .end local v3    # "op":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    :cond_3f
    const/4 v5, 0x0

    goto :goto_22
.end method

.method private dispatchAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V
    .registers 16
    .param p1, "op"    # Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 231
    iget v12, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    if-eq v12, v10, :cond_c

    iget v12, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    const/16 v13, 0x8

    if-ne v12, v13, :cond_14

    .line 232
    :cond_c
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "should not dispatch add or move for pre layout"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 245
    :cond_14
    iget v12, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v13, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    invoke-direct {p0, v12, v13}, Landroid/support/v7/widget/AdapterHelper;->updatePositionWithPostponed(II)I

    move-result v8

    .line 249
    .local v8, "tmpStart":I
    const/4 v7, 0x1

    .line 250
    .local v7, "tmpCnt":I
    iget v1, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 252
    .local v1, "offsetPositionForPartial":I
    iget v12, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    packed-switch v12, :pswitch_data_98

    .line 260
    :pswitch_24
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "op should be remove or update."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 254
    :pswitch_3d
    const/4 v5, 0x1

    .line 262
    .local v5, "positionMultiplier":I
    :goto_3e
    const/4 v2, 0x1

    .local v2, "p":I
    :goto_3f
    iget v12, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-ge v2, v12, :cond_83

    .line 263
    iget v12, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    mul-int v13, v5, v2

    add-int v4, v12, v13

    .line 264
    .local v4, "pos":I
    iget v12, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    invoke-direct {p0, v4, v12}, Landroid/support/v7/widget/AdapterHelper;->updatePositionWithPostponed(II)I

    move-result v9

    .line 268
    .local v9, "updatedPos":I
    const/4 v0, 0x0

    .line 269
    .local v0, "continuous":Z
    iget v12, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    packed-switch v12, :pswitch_data_a2

    .line 277
    :goto_55
    :pswitch_55
    if-eqz v0, :cond_6c

    .line 278
    add-int/lit8 v7, v7, 0x1

    .line 262
    :goto_59
    add-int/lit8 v2, v2, 0x1

    goto :goto_3f

    .line 257
    .end local v0    # "continuous":Z
    .end local v2    # "p":I
    .end local v4    # "pos":I
    .end local v5    # "positionMultiplier":I
    .end local v9    # "updatedPos":I
    :pswitch_5c
    const/4 v5, 0x0

    .line 258
    .restart local v5    # "positionMultiplier":I
    goto :goto_3e

    .line 271
    .restart local v0    # "continuous":Z
    .restart local v2    # "p":I
    .restart local v4    # "pos":I
    .restart local v9    # "updatedPos":I
    :pswitch_5e
    add-int/lit8 v12, v8, 0x1

    if-ne v9, v12, :cond_64

    move v0, v10

    .line 272
    :goto_63
    goto :goto_55

    :cond_64
    move v0, v11

    .line 271
    goto :goto_63

    .line 274
    :pswitch_66
    if-ne v9, v8, :cond_6a

    move v0, v10

    :goto_69
    goto :goto_55

    :cond_6a
    move v0, v11

    goto :goto_69

    .line 281
    :cond_6c
    iget v12, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    iget-object v13, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {p0, v12, v8, v7, v13}, Landroid/support/v7/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object v6

    .line 285
    .local v6, "tmp":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    invoke-virtual {p0, v6, v1}, Landroid/support/v7/widget/AdapterHelper;->dispatchFirstPassAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;I)V

    .line 286
    invoke-virtual {p0, v6}, Landroid/support/v7/widget/AdapterHelper;->recycleUpdateOp(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 287
    iget v12, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v13, 0x4

    if-ne v12, v13, :cond_80

    .line 288
    add-int/2addr v1, v7

    .line 290
    :cond_80
    move v8, v9

    .line 291
    const/4 v7, 0x1

    goto :goto_59

    .line 294
    .end local v0    # "continuous":Z
    .end local v4    # "pos":I
    .end local v6    # "tmp":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    .end local v9    # "updatedPos":I
    :cond_83
    iget-object v3, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    .line 295
    .local v3, "payload":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/AdapterHelper;->recycleUpdateOp(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 296
    if-lez v7, :cond_96

    .line 297
    iget v10, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    invoke-virtual {p0, v10, v8, v7, v3}, Landroid/support/v7/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object v6

    .line 301
    .restart local v6    # "tmp":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    invoke-virtual {p0, v6, v1}, Landroid/support/v7/widget/AdapterHelper;->dispatchFirstPassAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;I)V

    .line 302
    invoke-virtual {p0, v6}, Landroid/support/v7/widget/AdapterHelper;->recycleUpdateOp(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 312
    .end local v6    # "tmp":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    :cond_96
    return-void

    .line 252
    nop

    :pswitch_data_98
    .packed-switch 0x2
        :pswitch_5c
        :pswitch_24
        :pswitch_3d
    .end packed-switch

    .line 269
    :pswitch_data_a2
    .packed-switch 0x2
        :pswitch_66
        :pswitch_55
        :pswitch_5e
    .end packed-switch
.end method

.method private postponeAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V
    .registers 6
    .param p1, "op"    # Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    .prologue
    .line 439
    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    iget v0, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    packed-switch v0, :pswitch_data_4e

    .line 455
    :pswitch_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown update op type for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 442
    :pswitch_23
    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    iget v1, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v0, v1, v2}, Landroid/support/v7/widget/AdapterHelper$Callback;->offsetPositionsForAdd(II)V

    .line 457
    :goto_2c
    return-void

    .line 445
    :pswitch_2d
    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    iget v1, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v0, v1, v2}, Landroid/support/v7/widget/AdapterHelper$Callback;->offsetPositionsForMove(II)V

    goto :goto_2c

    .line 448
    :pswitch_37
    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    iget v1, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v0, v1, v2}, Landroid/support/v7/widget/AdapterHelper$Callback;->offsetPositionsForRemovingLaidOutOrNewView(II)V

    goto :goto_2c

    .line 452
    :pswitch_41
    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    iget v1, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget-object v3, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Landroid/support/v7/widget/AdapterHelper$Callback;->markViewHoldersUpdated(IILjava/lang/Object;)V

    goto :goto_2c

    .line 440
    nop

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_23
        :pswitch_37
        :pswitch_a
        :pswitch_41
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_2d
    .end packed-switch
.end method

.method private updatePositionWithPostponed(II)I
    .registers 14
    .param p1, "pos"    # I
    .param p2, "cmd"    # I

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 330
    iget-object v6, p0, Landroid/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 331
    .local v0, "count":I
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_c
    if-ltz v2, :cond_a3

    .line 332
    iget-object v6, p0, Landroid/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    .line 333
    .local v4, "postponed":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    iget v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    if-ne v6, v10, :cond_7d

    .line 335
    iget v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v7, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-ge v6, v7, :cond_39

    .line 336
    iget v5, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 337
    .local v5, "start":I
    iget v1, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 342
    .local v1, "end":I
    :goto_24
    if-lt p1, v5, :cond_5b

    if-gt p1, v1, :cond_5b

    .line 344
    iget v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ne v5, v6, :cond_47

    .line 345
    if-ne p2, v8, :cond_3e

    .line 346
    iget v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 351
    :cond_34
    :goto_34
    add-int/lit8 p1, p1, 0x1

    .line 331
    .end local v1    # "end":I
    .end local v5    # "start":I
    :cond_36
    :goto_36
    add-int/lit8 v2, v2, -0x1

    goto :goto_c

    .line 339
    :cond_39
    iget v5, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 340
    .restart local v5    # "start":I
    iget v1, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .restart local v1    # "end":I
    goto :goto_24

    .line 347
    :cond_3e
    if-ne p2, v9, :cond_34

    .line 348
    iget v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_34

    .line 353
    :cond_47
    if-ne p2, v8, :cond_52

    .line 354
    iget v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 359
    :cond_4f
    :goto_4f
    add-int/lit8 p1, p1, -0x1

    goto :goto_36

    .line 355
    :cond_52
    if-ne p2, v9, :cond_4f

    .line 356
    iget v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    goto :goto_4f

    .line 361
    :cond_5b
    iget v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ge p1, v6, :cond_36

    .line 363
    if-ne p2, v8, :cond_6e

    .line 364
    iget v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 365
    iget v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_36

    .line 366
    :cond_6e
    if-ne p2, v9, :cond_36

    .line 367
    iget v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 368
    iget v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_36

    .line 372
    .end local v1    # "end":I
    .end local v5    # "start":I
    :cond_7d
    iget v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v6, p1, :cond_91

    .line 373
    iget v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    if-ne v6, v8, :cond_89

    .line 374
    iget v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr p1, v6

    goto :goto_36

    .line 375
    :cond_89
    iget v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    if-ne v6, v9, :cond_36

    .line 376
    iget v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr p1, v6

    goto :goto_36

    .line 379
    :cond_91
    if-ne p2, v8, :cond_9a

    .line 380
    iget v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    goto :goto_36

    .line 381
    :cond_9a
    if-ne p2, v9, :cond_36

    .line 382
    iget v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    goto :goto_36

    .line 395
    .end local v4    # "postponed":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    :cond_a3
    iget-object v6, p0, Landroid/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    :goto_ab
    if-ltz v2, :cond_db

    .line 396
    iget-object v6, p0, Landroid/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    .line 397
    .local v3, "op":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    iget v6, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    if-ne v6, v10, :cond_ce

    .line 398
    iget v6, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v7, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-eq v6, v7, :cond_c3

    iget v6, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-gez v6, :cond_cb

    .line 399
    :cond_c3
    iget-object v6, p0, Landroid/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 400
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/AdapterHelper;->recycleUpdateOp(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 395
    :cond_cb
    :goto_cb
    add-int/lit8 v2, v2, -0x1

    goto :goto_ab

    .line 402
    :cond_ce
    iget v6, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-gtz v6, :cond_cb

    .line 403
    iget-object v6, p0, Landroid/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 404
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/AdapterHelper;->recycleUpdateOp(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    goto :goto_cb

    .line 407
    .end local v3    # "op":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    :cond_db
    return p1
.end method


# virtual methods
.method varargs addUpdateOp([Landroid/support/v7/widget/AdapterHelper$UpdateOp;)Landroid/support/v7/widget/AdapterHelper;
    .registers 3
    .param p1, "ops"    # [Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    .prologue
    .line 82
    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 83
    return-object p0
.end method

.method public applyPendingUpdatesToPosition(I)I
    .registers 8
    .param p1, "position"    # I

    .prologue
    .line 588
    iget-object v4, p0, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 589
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v3, :cond_2e

    .line 590
    iget-object v4, p0, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    .line 591
    .local v2, "op":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    iget v4, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    sparse-switch v4, :sswitch_data_48

    .line 589
    :cond_16
    :goto_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 593
    :sswitch_19
    iget v4, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v4, p1, :cond_16

    .line 594
    iget v4, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr p1, v4

    goto :goto_16

    .line 598
    :sswitch_21
    iget v4, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v4, p1, :cond_16

    .line 599
    iget v4, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int v0, v4, v5

    .line 600
    .local v0, "end":I
    if-le v0, p1, :cond_2f

    .line 601
    const/4 p1, -0x1

    .line 620
    .end local v0    # "end":I
    .end local v2    # "op":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    .end local p1    # "position":I
    :cond_2e
    return p1

    .line 603
    .restart local v0    # "end":I
    .restart local v2    # "op":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    .restart local p1    # "position":I
    :cond_2f
    iget v4, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr p1, v4

    .line 604
    goto :goto_16

    .line 607
    .end local v0    # "end":I
    :sswitch_33
    iget v4, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ne v4, p1, :cond_3a

    .line 608
    iget p1, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_16

    .line 610
    :cond_3a
    iget v4, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ge v4, p1, :cond_40

    .line 611
    add-int/lit8 p1, p1, -0x1

    .line 613
    :cond_40
    iget v4, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-gt v4, p1, :cond_16

    .line 614
    add-int/lit8 p1, p1, 0x1

    goto :goto_16

    .line 591
    nop

    :sswitch_data_48
    .sparse-switch
        0x1 -> :sswitch_19
        0x2 -> :sswitch_21
        0x8 -> :sswitch_33
    .end sparse-switch
.end method

.method consumePostponedUpdates()V
    .registers 5

    .prologue
    .line 119
    iget-object v2, p0, Landroid/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 120
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_19

    .line 121
    iget-object v3, p0, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    iget-object v2, p0, Landroid/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    invoke-interface {v3, v2}, Landroid/support/v7/widget/AdapterHelper$Callback;->onDispatchSecondPass(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 120
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 123
    :cond_19
    iget-object v2, p0, Landroid/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/AdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    .line 124
    const/4 v2, 0x0

    iput v2, p0, Landroid/support/v7/widget/AdapterHelper;->mExistingUpdateTypes:I

    .line 125
    return-void
.end method

.method consumeUpdatesInOnePass()V
    .registers 8

    .prologue
    .line 557
    invoke-virtual {p0}, Landroid/support/v7/widget/AdapterHelper;->consumePostponedUpdates()V

    .line 558
    iget-object v3, p0, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 559
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_63

    .line 560
    iget-object v3, p0, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    .line 561
    .local v2, "op":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    iget v3, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    packed-switch v3, :pswitch_data_6c

    .line 579
    :goto_19
    :pswitch_19
    iget-object v3, p0, Landroid/support/v7/widget/AdapterHelper;->mOnItemProcessedCallback:Ljava/lang/Runnable;

    if-eqz v3, :cond_22

    .line 580
    iget-object v3, p0, Landroid/support/v7/widget/AdapterHelper;->mOnItemProcessedCallback:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 559
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 563
    :pswitch_25
    iget-object v3, p0, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    invoke-interface {v3, v2}, Landroid/support/v7/widget/AdapterHelper$Callback;->onDispatchSecondPass(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 564
    iget-object v3, p0, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    iget v4, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v3, v4, v5}, Landroid/support/v7/widget/AdapterHelper$Callback;->offsetPositionsForAdd(II)V

    goto :goto_19

    .line 567
    :pswitch_34
    iget-object v3, p0, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    invoke-interface {v3, v2}, Landroid/support/v7/widget/AdapterHelper$Callback;->onDispatchSecondPass(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 568
    iget-object v3, p0, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    iget v4, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v3, v4, v5}, Landroid/support/v7/widget/AdapterHelper$Callback;->offsetPositionsForRemovingInvisible(II)V

    goto :goto_19

    .line 571
    :pswitch_43
    iget-object v3, p0, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    invoke-interface {v3, v2}, Landroid/support/v7/widget/AdapterHelper$Callback;->onDispatchSecondPass(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 572
    iget-object v3, p0, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    iget v4, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget-object v6, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-interface {v3, v4, v5, v6}, Landroid/support/v7/widget/AdapterHelper$Callback;->markViewHoldersUpdated(IILjava/lang/Object;)V

    goto :goto_19

    .line 575
    :pswitch_54
    iget-object v3, p0, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    invoke-interface {v3, v2}, Landroid/support/v7/widget/AdapterHelper$Callback;->onDispatchSecondPass(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 576
    iget-object v3, p0, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    iget v4, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v3, v4, v5}, Landroid/support/v7/widget/AdapterHelper$Callback;->offsetPositionsForMove(II)V

    goto :goto_19

    .line 583
    .end local v2    # "op":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    :cond_63
    iget-object v3, p0, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {p0, v3}, Landroid/support/v7/widget/AdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    .line 584
    const/4 v3, 0x0

    iput v3, p0, Landroid/support/v7/widget/AdapterHelper;->mExistingUpdateTypes:I

    .line 585
    return-void

    .line 561
    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_25
        :pswitch_34
        :pswitch_19
        :pswitch_43
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_54
    .end packed-switch
.end method

.method dispatchFirstPassAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;I)V
    .registers 6
    .param p1, "op"    # Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    .param p2, "offsetStart"    # I

    .prologue
    .line 315
    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/AdapterHelper$Callback;->onDispatchFirstPass(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 316
    iget v0, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    packed-switch v0, :pswitch_data_24

    .line 324
    :pswitch_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "only remove and update ops can be dispatched in first pass"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 318
    :pswitch_12
    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    iget v1, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v0, p2, v1}, Landroid/support/v7/widget/AdapterHelper$Callback;->offsetPositionsForRemovingInvisible(II)V

    .line 327
    :goto_19
    return-void

    .line 321
    :pswitch_1a
    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    iget v1, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget-object v2, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-interface {v0, p2, v1, v2}, Landroid/support/v7/widget/AdapterHelper$Callback;->markViewHoldersUpdated(IILjava/lang/Object;)V

    goto :goto_19

    .line 316
    :pswitch_data_24
    .packed-switch 0x2
        :pswitch_12
        :pswitch_a
        :pswitch_1a
    .end packed-switch
.end method

.method findPositionOffset(I)I
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 468
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/AdapterHelper;->findPositionOffset(II)I

    move-result v0

    return v0
.end method

.method findPositionOffset(II)I
    .registers 8
    .param p1, "position"    # I
    .param p2, "firstPostponedItem"    # I

    .prologue
    .line 472
    iget-object v3, p0, Landroid/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 473
    .local v0, "count":I
    move v1, p2

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_3e

    .line 474
    iget-object v3, p0, Landroid/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    .line 475
    .local v2, "op":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    iget v3, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_2d

    .line 476
    iget v3, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ne v3, p1, :cond_20

    .line 477
    iget p1, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 473
    :cond_1d
    :goto_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 479
    :cond_20
    iget v3, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ge v3, p1, :cond_26

    .line 480
    add-int/lit8 p1, p1, -0x1

    .line 482
    :cond_26
    iget v3, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-gt v3, p1, :cond_1d

    .line 483
    add-int/lit8 p1, p1, 0x1

    goto :goto_1d

    .line 486
    :cond_2d
    iget v3, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v3, p1, :cond_1d

    .line 487
    iget v3, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_43

    .line 488
    iget v3, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v3, v4

    if-ge p1, v3, :cond_3f

    .line 489
    const/4 p1, -0x1

    .line 497
    .end local v2    # "op":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    .end local p1    # "position":I
    :cond_3e
    return p1

    .line 491
    .restart local v2    # "op":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    .restart local p1    # "position":I
    :cond_3f
    iget v3, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr p1, v3

    goto :goto_1d

    .line 492
    :cond_43
    iget v3, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1d

    .line 493
    iget v3, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr p1, v3

    goto :goto_1d
.end method

.method hasAnyUpdateTypes(I)Z
    .registers 3
    .param p1, "updateTypes"    # I

    .prologue
    .line 464
    iget v0, p0, Landroid/support/v7/widget/AdapterHelper;->mExistingUpdateTypes:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method hasPendingUpdates()Z
    .registers 2

    .prologue
    .line 460
    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method hasUpdates()Z
    .registers 2

    .prologue
    .line 624
    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public obtainUpdateOp(IIILjava/lang/Object;)Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    .registers 7
    .param p1, "cmd"    # I
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I
    .param p4, "payload"    # Ljava/lang/Object;

    .prologue
    .line 727
    iget-object v1, p0, Landroid/support/v7/widget/AdapterHelper;->mUpdateOpPool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v1}, Landroid/support/v4/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    .line 728
    .local v0, "op":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    if-nez v0, :cond_10

    .line 729
    new-instance v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    .end local v0    # "op":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    invoke-direct {v0, p1, p2, p3, p4}, Landroid/support/v7/widget/AdapterHelper$UpdateOp;-><init>(IIILjava/lang/Object;)V

    .line 736
    .restart local v0    # "op":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    :goto_f
    return-object v0

    .line 731
    :cond_10
    iput p1, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    .line 732
    iput p2, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 733
    iput p3, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 734
    iput-object p4, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    goto :goto_f
.end method

.method onItemRangeChanged(IILjava/lang/Object;)Z
    .registers 8
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I
    .param p3, "payload"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 504
    if-ge p2, v0, :cond_5

    .line 509
    :goto_4
    return v1

    .line 507
    :cond_5
    iget-object v2, p0, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    const/4 v3, 0x4

    invoke-virtual {p0, v3, p1, p2, p3}, Landroid/support/v7/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 508
    iget v2, p0, Landroid/support/v7/widget/AdapterHelper;->mExistingUpdateTypes:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Landroid/support/v7/widget/AdapterHelper;->mExistingUpdateTypes:I

    .line 509
    iget-object v2, p0, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v0, :cond_1f

    :goto_1d
    move v1, v0

    goto :goto_4

    :cond_1f
    move v0, v1

    goto :goto_1d
.end method

.method onItemRangeInserted(II)Z
    .registers 7
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 516
    if-ge p2, v0, :cond_5

    .line 521
    :goto_4
    return v1

    .line 519
    :cond_5
    iget-object v2, p0, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, p1, p2, v3}, Landroid/support/v7/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 520
    iget v2, p0, Landroid/support/v7/widget/AdapterHelper;->mExistingUpdateTypes:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/support/v7/widget/AdapterHelper;->mExistingUpdateTypes:I

    .line 521
    iget-object v2, p0, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v0, :cond_1f

    :goto_1d
    move v1, v0

    goto :goto_4

    :cond_1f
    move v0, v1

    goto :goto_1d
.end method

.method onItemRangeMoved(III)Z
    .registers 9
    .param p1, "from"    # I
    .param p2, "to"    # I
    .param p3, "itemCount"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 540
    if-ne p1, p2, :cond_5

    .line 548
    :goto_4
    return v1

    .line 543
    :cond_5
    if-eq p3, v0, :cond_f

    .line 544
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Moving more than 1 item is not supported yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 546
    :cond_f
    iget-object v2, p0, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-virtual {p0, v3, p1, p2, v4}, Landroid/support/v7/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 547
    iget v2, p0, Landroid/support/v7/widget/AdapterHelper;->mExistingUpdateTypes:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Landroid/support/v7/widget/AdapterHelper;->mExistingUpdateTypes:I

    .line 548
    iget-object v2, p0, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v0, :cond_2b

    :goto_29
    move v1, v0

    goto :goto_4

    :cond_2b
    move v0, v1

    goto :goto_29
.end method

.method onItemRangeRemoved(II)Z
    .registers 8
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 528
    if-ge p2, v0, :cond_5

    .line 533
    :goto_4
    return v1

    .line 531
    :cond_5
    iget-object v2, p0, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {p0, v3, p1, p2, v4}, Landroid/support/v7/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 532
    iget v2, p0, Landroid/support/v7/widget/AdapterHelper;->mExistingUpdateTypes:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Landroid/support/v7/widget/AdapterHelper;->mExistingUpdateTypes:I

    .line 533
    iget-object v2, p0, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v0, :cond_20

    :goto_1e
    move v1, v0

    goto :goto_4

    :cond_20
    move v0, v1

    goto :goto_1e
.end method

.method preProcess()V
    .registers 6

    .prologue
    .line 93
    iget-object v3, p0, Landroid/support/v7/widget/AdapterHelper;->mOpReorderer:Landroid/support/v7/widget/OpReorderer;

    iget-object v4, p0, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/OpReorderer;->reorderOps(Ljava/util/List;)V

    .line 94
    iget-object v3, p0, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 95
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    if-ge v1, v0, :cond_39

    .line 96
    iget-object v3, p0, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    .line 97
    .local v2, "op":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    iget v3, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    packed-switch v3, :pswitch_data_40

    .line 111
    :goto_1d
    :pswitch_1d
    iget-object v3, p0, Landroid/support/v7/widget/AdapterHelper;->mOnItemProcessedCallback:Ljava/lang/Runnable;

    if-eqz v3, :cond_26

    .line 112
    iget-object v3, p0, Landroid/support/v7/widget/AdapterHelper;->mOnItemProcessedCallback:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 95
    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 99
    :pswitch_29
    invoke-direct {p0, v2}, Landroid/support/v7/widget/AdapterHelper;->applyAdd(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    goto :goto_1d

    .line 102
    :pswitch_2d
    invoke-direct {p0, v2}, Landroid/support/v7/widget/AdapterHelper;->applyRemove(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    goto :goto_1d

    .line 105
    :pswitch_31
    invoke-direct {p0, v2}, Landroid/support/v7/widget/AdapterHelper;->applyUpdate(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    goto :goto_1d

    .line 108
    :pswitch_35
    invoke-direct {p0, v2}, Landroid/support/v7/widget/AdapterHelper;->applyMove(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    goto :goto_1d

    .line 115
    .end local v2    # "op":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    :cond_39
    iget-object v3, p0, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 116
    return-void

    .line 97
    nop

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_29
        :pswitch_2d
        :pswitch_1d
        :pswitch_31
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_35
    .end packed-switch
.end method

.method public recycleUpdateOp(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V
    .registers 3
    .param p1, "op"    # Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    .prologue
    .line 741
    iget-boolean v0, p0, Landroid/support/v7/widget/AdapterHelper;->mDisableRecycler:Z

    if-nez v0, :cond_c

    .line 742
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    .line 743
    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->mUpdateOpPool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0, p1}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 745
    :cond_c
    return-void
.end method

.method recycleUpdateOpsAndClearList(Ljava/util/List;)V
    .registers 5
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
    .line 748
    .local p1, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/widget/AdapterHelper$UpdateOp;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 749
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_13

    .line 750
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/AdapterHelper;->recycleUpdateOp(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 749
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 752
    :cond_13
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 753
    return-void
.end method

.method reset()V
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/AdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    .line 88
    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/AdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/AdapterHelper;->mExistingUpdateTypes:I

    .line 90
    return-void
.end method
