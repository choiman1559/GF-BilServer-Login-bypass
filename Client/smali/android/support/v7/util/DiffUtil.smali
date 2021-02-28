.class public Landroid/support/v7/util/DiffUtil;
.super Ljava/lang/Object;
.source "DiffUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/util/DiffUtil$PostponedUpdate;,
        Landroid/support/v7/util/DiffUtil$DiffResult;,
        Landroid/support/v7/util/DiffUtil$Range;,
        Landroid/support/v7/util/DiffUtil$Snake;,
        Landroid/support/v7/util/DiffUtil$ItemCallback;,
        Landroid/support/v7/util/DiffUtil$Callback;
    }
.end annotation


# static fields
.field private static final SNAKE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/support/v7/util/DiffUtil$Snake;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 84
    new-instance v0, Landroid/support/v7/util/DiffUtil$1;

    invoke-direct {v0}, Landroid/support/v7/util/DiffUtil$1;-><init>()V

    sput-object v0, Landroid/support/v7/util/DiffUtil;->SNAKE_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    return-void
.end method

.method public static calculateDiff(Landroid/support/v7/util/DiffUtil$Callback;)Landroid/support/v7/util/DiffUtil$DiffResult;
    .registers 2
    .param p0, "cb"    # Landroid/support/v7/util/DiffUtil$Callback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 105
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/support/v7/util/DiffUtil;->calculateDiff(Landroid/support/v7/util/DiffUtil$Callback;Z)Landroid/support/v7/util/DiffUtil$DiffResult;

    move-result-object v0

    return-object v0
.end method

.method public static calculateDiff(Landroid/support/v7/util/DiffUtil$Callback;Z)Landroid/support/v7/util/DiffUtil$DiffResult;
    .registers 26
    .param p0, "cb"    # Landroid/support/v7/util/DiffUtil$Callback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "detectMoves"    # Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 123
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/util/DiffUtil$Callback;->getOldListSize()I

    move-result v18

    .line 124
    .local v18, "oldSize":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/util/DiffUtil$Callback;->getNewListSize()I

    move-result v17

    .line 126
    .local v17, "newSize":I
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v12, "snakes":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/util/DiffUtil$Snake;>;"
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 132
    .local v23, "stack":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/util/DiffUtil$Range;>;"
    new-instance v2, Landroid/support/v7/util/DiffUtil$Range;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-direct {v2, v3, v0, v4, v1}, Landroid/support/v7/util/DiffUtil$Range;-><init>(IIII)V

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    add-int v2, v18, v17

    sub-int v3, v18, v17

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int v9, v2, v3

    .line 138
    .local v9, "max":I
    mul-int/lit8 v2, v9, 0x2

    new-array v7, v2, [I

    .line 139
    .local v7, "forward":[I
    mul-int/lit8 v2, v9, 0x2

    new-array v8, v2, [I

    .line 142
    .local v8, "backward":[I
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 143
    .local v20, "rangePool":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/util/DiffUtil$Range;>;"
    :goto_39
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_173

    .line 144
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/support/v7/util/DiffUtil$Range;

    .line 145
    .local v19, "range":Landroid/support/v7/util/DiffUtil$Range;
    move-object/from16 v0, v19

    iget v3, v0, Landroid/support/v7/util/DiffUtil$Range;->oldListStart:I

    move-object/from16 v0, v19

    iget v4, v0, Landroid/support/v7/util/DiffUtil$Range;->oldListEnd:I

    move-object/from16 v0, v19

    iget v5, v0, Landroid/support/v7/util/DiffUtil$Range;->newListStart:I

    move-object/from16 v0, v19

    iget v6, v0, Landroid/support/v7/util/DiffUtil$Range;->newListEnd:I

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v9}, Landroid/support/v7/util/DiffUtil;->diffPartial(Landroid/support/v7/util/DiffUtil$Callback;IIII[I[II)Landroid/support/v7/util/DiffUtil$Snake;

    move-result-object v22

    .line 147
    .local v22, "snake":Landroid/support/v7/util/DiffUtil$Snake;
    if-eqz v22, :cond_16a

    .line 148
    move-object/from16 v0, v22

    iget v2, v0, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    if-lez v2, :cond_70

    .line 149
    move-object/from16 v0, v22

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    :cond_70
    move-object/from16 v0, v22

    iget v2, v0, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    move-object/from16 v0, v19

    iget v3, v0, Landroid/support/v7/util/DiffUtil$Range;->oldListStart:I

    add-int/2addr v2, v3

    move-object/from16 v0, v22

    iput v2, v0, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    .line 153
    move-object/from16 v0, v22

    iget v2, v0, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    move-object/from16 v0, v19

    iget v3, v0, Landroid/support/v7/util/DiffUtil$Range;->newListStart:I

    add-int/2addr v2, v3

    move-object/from16 v0, v22

    iput v2, v0, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    .line 156
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_f5

    new-instance v16, Landroid/support/v7/util/DiffUtil$Range;

    invoke-direct/range {v16 .. v16}, Landroid/support/v7/util/DiffUtil$Range;-><init>()V

    .line 158
    .local v16, "left":Landroid/support/v7/util/DiffUtil$Range;
    :goto_95
    move-object/from16 v0, v19

    iget v2, v0, Landroid/support/v7/util/DiffUtil$Range;->oldListStart:I

    move-object/from16 v0, v16

    iput v2, v0, Landroid/support/v7/util/DiffUtil$Range;->oldListStart:I

    .line 159
    move-object/from16 v0, v19

    iget v2, v0, Landroid/support/v7/util/DiffUtil$Range;->newListStart:I

    move-object/from16 v0, v16

    iput v2, v0, Landroid/support/v7/util/DiffUtil$Range;->newListStart:I

    .line 160
    move-object/from16 v0, v22

    iget-boolean v2, v0, Landroid/support/v7/util/DiffUtil$Snake;->reverse:Z

    if-eqz v2, :cond_106

    .line 161
    move-object/from16 v0, v22

    iget v2, v0, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    move-object/from16 v0, v16

    iput v2, v0, Landroid/support/v7/util/DiffUtil$Range;->oldListEnd:I

    .line 162
    move-object/from16 v0, v22

    iget v2, v0, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    move-object/from16 v0, v16

    iput v2, v0, Landroid/support/v7/util/DiffUtil$Range;->newListEnd:I

    .line 172
    :goto_bb
    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    move-object/from16 v21, v19

    .line 177
    .local v21, "right":Landroid/support/v7/util/DiffUtil$Range;
    move-object/from16 v0, v22

    iget-boolean v2, v0, Landroid/support/v7/util/DiffUtil$Snake;->reverse:Z

    if-eqz v2, :cond_14f

    .line 178
    move-object/from16 v0, v22

    iget-boolean v2, v0, Landroid/support/v7/util/DiffUtil$Snake;->removal:Z

    if-eqz v2, :cond_132

    .line 179
    move-object/from16 v0, v22

    iget v2, v0, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    move-object/from16 v0, v22

    iget v3, v0, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v21

    iput v2, v0, Landroid/support/v7/util/DiffUtil$Range;->oldListStart:I

    .line 180
    move-object/from16 v0, v22

    iget v2, v0, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    move-object/from16 v0, v22

    iget v3, v0, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    add-int/2addr v2, v3

    move-object/from16 v0, v21

    iput v2, v0, Landroid/support/v7/util/DiffUtil$Range;->newListStart:I

    .line 189
    :goto_ec
    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_39

    .line 157
    .end local v16    # "left":Landroid/support/v7/util/DiffUtil$Range;
    .end local v21    # "right":Landroid/support/v7/util/DiffUtil$Range;
    :cond_f5
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 156
    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/util/DiffUtil$Range;

    move-object/from16 v16, v2

    goto :goto_95

    .line 164
    .restart local v16    # "left":Landroid/support/v7/util/DiffUtil$Range;
    :cond_106
    move-object/from16 v0, v22

    iget-boolean v2, v0, Landroid/support/v7/util/DiffUtil$Snake;->removal:Z

    if-eqz v2, :cond_11f

    .line 165
    move-object/from16 v0, v22

    iget v2, v0, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v16

    iput v2, v0, Landroid/support/v7/util/DiffUtil$Range;->oldListEnd:I

    .line 166
    move-object/from16 v0, v22

    iget v2, v0, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    move-object/from16 v0, v16

    iput v2, v0, Landroid/support/v7/util/DiffUtil$Range;->newListEnd:I

    goto :goto_bb

    .line 168
    :cond_11f
    move-object/from16 v0, v22

    iget v2, v0, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    move-object/from16 v0, v16

    iput v2, v0, Landroid/support/v7/util/DiffUtil$Range;->oldListEnd:I

    .line 169
    move-object/from16 v0, v22

    iget v2, v0, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v16

    iput v2, v0, Landroid/support/v7/util/DiffUtil$Range;->newListEnd:I

    goto :goto_bb

    .line 182
    .restart local v21    # "right":Landroid/support/v7/util/DiffUtil$Range;
    :cond_132
    move-object/from16 v0, v22

    iget v2, v0, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    move-object/from16 v0, v22

    iget v3, v0, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    add-int/2addr v2, v3

    move-object/from16 v0, v21

    iput v2, v0, Landroid/support/v7/util/DiffUtil$Range;->oldListStart:I

    .line 183
    move-object/from16 v0, v22

    iget v2, v0, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    move-object/from16 v0, v22

    iget v3, v0, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v21

    iput v2, v0, Landroid/support/v7/util/DiffUtil$Range;->newListStart:I

    goto :goto_ec

    .line 186
    :cond_14f
    move-object/from16 v0, v22

    iget v2, v0, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    move-object/from16 v0, v22

    iget v3, v0, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    add-int/2addr v2, v3

    move-object/from16 v0, v21

    iput v2, v0, Landroid/support/v7/util/DiffUtil$Range;->oldListStart:I

    .line 187
    move-object/from16 v0, v22

    iget v2, v0, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    move-object/from16 v0, v22

    iget v3, v0, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    add-int/2addr v2, v3

    move-object/from16 v0, v21

    iput v2, v0, Landroid/support/v7/util/DiffUtil$Range;->newListStart:I

    goto :goto_ec

    .line 191
    .end local v16    # "left":Landroid/support/v7/util/DiffUtil$Range;
    .end local v21    # "right":Landroid/support/v7/util/DiffUtil$Range;
    :cond_16a
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_39

    .line 196
    .end local v19    # "range":Landroid/support/v7/util/DiffUtil$Range;
    .end local v22    # "snake":Landroid/support/v7/util/DiffUtil$Snake;
    :cond_173
    sget-object v2, Landroid/support/v7/util/DiffUtil;->SNAKE_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v12, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 198
    new-instance v10, Landroid/support/v7/util/DiffUtil$DiffResult;

    move-object/from16 v11, p0

    move-object v13, v7

    move-object v14, v8

    move/from16 v15, p1

    invoke-direct/range {v10 .. v15}, Landroid/support/v7/util/DiffUtil$DiffResult;-><init>(Landroid/support/v7/util/DiffUtil$Callback;Ljava/util/List;[I[IZ)V

    return-object v10
.end method

.method private static diffPartial(Landroid/support/v7/util/DiffUtil$Callback;IIII[I[II)Landroid/support/v7/util/DiffUtil$Snake;
    .registers 24
    .param p0, "cb"    # Landroid/support/v7/util/DiffUtil$Callback;
    .param p1, "startOld"    # I
    .param p2, "endOld"    # I
    .param p3, "startNew"    # I
    .param p4, "endNew"    # I
    .param p5, "forward"    # [I
    .param p6, "backward"    # [I
    .param p7, "kOffset"    # I

    .prologue
    .line 204
    sub-int v8, p2, p1

    .line 205
    .local v8, "oldSize":I
    sub-int v7, p4, p3

    .line 207
    .local v7, "newSize":I
    sub-int v13, p2, p1

    const/4 v14, 0x1

    if-lt v13, v14, :cond_e

    sub-int v13, p4, p3

    const/4 v14, 0x1

    if-ge v13, v14, :cond_10

    .line 208
    :cond_e
    const/4 v9, 0x0

    .line 282
    :goto_f
    return-object v9

    .line 211
    :cond_10
    sub-int v5, v8, v7

    .line 212
    .local v5, "delta":I
    add-int v13, v8, v7

    add-int/lit8 v13, v13, 0x1

    div-int/lit8 v4, v13, 0x2

    .line 213
    .local v4, "dLimit":I
    sub-int v13, p7, v4

    add-int/lit8 v13, v13, -0x1

    add-int v14, p7, v4

    add-int/lit8 v14, v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v0, p5

    invoke-static {v0, v13, v14, v15}, Ljava/util/Arrays;->fill([IIII)V

    .line 214
    sub-int v13, p7, v4

    add-int/lit8 v13, v13, -0x1

    add-int/2addr v13, v5

    add-int v14, p7, v4

    add-int/lit8 v14, v14, 0x1

    add-int/2addr v14, v5

    move-object/from16 v0, p6

    invoke-static {v0, v13, v14, v8}, Ljava/util/Arrays;->fill([IIII)V

    .line 215
    rem-int/lit8 v13, v5, 0x2

    if-eqz v13, :cond_71

    const/4 v2, 0x1

    .line 216
    .local v2, "checkInFwd":Z
    :goto_3a
    const/4 v3, 0x0

    .local v3, "d":I
    :goto_3b
    if-gt v3, v4, :cond_148

    .line 217
    neg-int v6, v3

    .local v6, "k":I
    :goto_3e
    if-gt v6, v3, :cond_be

    .line 222
    neg-int v13, v3

    if-eq v6, v13, :cond_53

    if-eq v6, v3, :cond_73

    add-int v13, p7, v6

    add-int/lit8 v13, v13, -0x1

    aget v13, p5, v13

    add-int v14, p7, v6

    add-int/lit8 v14, v14, 0x1

    aget v14, p5, v14

    if-ge v13, v14, :cond_73

    .line 223
    :cond_53
    add-int v13, p7, v6

    add-int/lit8 v13, v13, 0x1

    aget v11, p5, v13

    .line 224
    .local v11, "x":I
    const/4 v10, 0x0

    .line 230
    .local v10, "removal":Z
    :goto_5a
    sub-int v12, v11, v6

    .line 232
    .local v12, "y":I
    :goto_5c
    if-ge v11, v8, :cond_7d

    if-ge v12, v7, :cond_7d

    add-int v13, p1, v11

    add-int v14, p3, v12

    .line 233
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Landroid/support/v7/util/DiffUtil$Callback;->areItemsTheSame(II)Z

    move-result v13

    if-eqz v13, :cond_7d

    .line 234
    add-int/lit8 v11, v11, 0x1

    .line 235
    add-int/lit8 v12, v12, 0x1

    goto :goto_5c

    .line 215
    .end local v2    # "checkInFwd":Z
    .end local v3    # "d":I
    .end local v6    # "k":I
    .end local v10    # "removal":Z
    .end local v11    # "x":I
    .end local v12    # "y":I
    :cond_71
    const/4 v2, 0x0

    goto :goto_3a

    .line 226
    .restart local v2    # "checkInFwd":Z
    .restart local v3    # "d":I
    .restart local v6    # "k":I
    :cond_73
    add-int v13, p7, v6

    add-int/lit8 v13, v13, -0x1

    aget v13, p5, v13

    add-int/lit8 v11, v13, 0x1

    .line 227
    .restart local v11    # "x":I
    const/4 v10, 0x1

    .restart local v10    # "removal":Z
    goto :goto_5a

    .line 237
    .restart local v12    # "y":I
    :cond_7d
    add-int v13, p7, v6

    aput v11, p5, v13

    .line 238
    if-eqz v2, :cond_bb

    sub-int v13, v5, v3

    add-int/lit8 v13, v13, 0x1

    if-lt v6, v13, :cond_bb

    add-int v13, v5, v3

    add-int/lit8 v13, v13, -0x1

    if-gt v6, v13, :cond_bb

    .line 239
    add-int v13, p7, v6

    aget v13, p5, v13

    add-int v14, p7, v6

    aget v14, p6, v14

    if-lt v13, v14, :cond_bb

    .line 240
    new-instance v9, Landroid/support/v7/util/DiffUtil$Snake;

    invoke-direct {v9}, Landroid/support/v7/util/DiffUtil$Snake;-><init>()V

    .line 241
    .local v9, "outSnake":Landroid/support/v7/util/DiffUtil$Snake;
    add-int v13, p7, v6

    aget v13, p6, v13

    iput v13, v9, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    .line 242
    iget v13, v9, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    sub-int/2addr v13, v6

    iput v13, v9, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    .line 243
    add-int v13, p7, v6

    aget v13, p5, v13

    add-int v14, p7, v6

    aget v14, p6, v14

    sub-int/2addr v13, v14

    iput v13, v9, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    .line 244
    iput-boolean v10, v9, Landroid/support/v7/util/DiffUtil$Snake;->removal:Z

    .line 245
    const/4 v13, 0x0

    iput-boolean v13, v9, Landroid/support/v7/util/DiffUtil$Snake;->reverse:Z

    goto/16 :goto_f

    .line 217
    .end local v9    # "outSnake":Landroid/support/v7/util/DiffUtil$Snake;
    :cond_bb
    add-int/lit8 v6, v6, 0x2

    goto :goto_3e

    .line 250
    .end local v10    # "removal":Z
    .end local v11    # "x":I
    .end local v12    # "y":I
    :cond_be
    neg-int v6, v3

    :goto_bf
    if-gt v6, v3, :cond_144

    .line 252
    add-int v1, v6, v5

    .line 255
    .local v1, "backwardK":I
    add-int v13, v3, v5

    if-eq v1, v13, :cond_d9

    neg-int v13, v3

    add-int/2addr v13, v5

    if-eq v1, v13, :cond_fb

    add-int v13, p7, v1

    add-int/lit8 v13, v13, -0x1

    aget v13, p6, v13

    add-int v14, p7, v1

    add-int/lit8 v14, v14, 0x1

    aget v14, p6, v14

    if-ge v13, v14, :cond_fb

    .line 257
    :cond_d9
    add-int v13, p7, v1

    add-int/lit8 v13, v13, -0x1

    aget v11, p6, v13

    .line 258
    .restart local v11    # "x":I
    const/4 v10, 0x0

    .line 265
    .restart local v10    # "removal":Z
    :goto_e0
    sub-int v12, v11, v1

    .line 267
    .restart local v12    # "y":I
    :goto_e2
    if-lez v11, :cond_105

    if-lez v12, :cond_105

    add-int v13, p1, v11

    add-int/lit8 v13, v13, -0x1

    add-int v14, p3, v12

    add-int/lit8 v14, v14, -0x1

    .line 268
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Landroid/support/v7/util/DiffUtil$Callback;->areItemsTheSame(II)Z

    move-result v13

    if-eqz v13, :cond_105

    .line 269
    add-int/lit8 v11, v11, -0x1

    .line 270
    add-int/lit8 v12, v12, -0x1

    goto :goto_e2

    .line 260
    .end local v10    # "removal":Z
    .end local v11    # "x":I
    .end local v12    # "y":I
    :cond_fb
    add-int v13, p7, v1

    add-int/lit8 v13, v13, 0x1

    aget v13, p6, v13

    add-int/lit8 v11, v13, -0x1

    .line 261
    .restart local v11    # "x":I
    const/4 v10, 0x1

    .restart local v10    # "removal":Z
    goto :goto_e0

    .line 272
    .restart local v12    # "y":I
    :cond_105
    add-int v13, p7, v1

    aput v11, p6, v13

    .line 273
    if-nez v2, :cond_140

    add-int v13, v6, v5

    neg-int v14, v3

    if-lt v13, v14, :cond_140

    add-int v13, v6, v5

    if-gt v13, v3, :cond_140

    .line 274
    add-int v13, p7, v1

    aget v13, p5, v13

    add-int v14, p7, v1

    aget v14, p6, v14

    if-lt v13, v14, :cond_140

    .line 275
    new-instance v9, Landroid/support/v7/util/DiffUtil$Snake;

    invoke-direct {v9}, Landroid/support/v7/util/DiffUtil$Snake;-><init>()V

    .line 276
    .restart local v9    # "outSnake":Landroid/support/v7/util/DiffUtil$Snake;
    add-int v13, p7, v1

    aget v13, p6, v13

    iput v13, v9, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    .line 277
    iget v13, v9, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    sub-int/2addr v13, v1

    iput v13, v9, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    .line 278
    add-int v13, p7, v1

    aget v13, p5, v13

    add-int v14, p7, v1

    aget v14, p6, v14

    sub-int/2addr v13, v14

    iput v13, v9, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    .line 280
    iput-boolean v10, v9, Landroid/support/v7/util/DiffUtil$Snake;->removal:Z

    .line 281
    const/4 v13, 0x1

    iput-boolean v13, v9, Landroid/support/v7/util/DiffUtil$Snake;->reverse:Z

    goto/16 :goto_f

    .line 250
    .end local v9    # "outSnake":Landroid/support/v7/util/DiffUtil$Snake;
    :cond_140
    add-int/lit8 v6, v6, 0x2

    goto/16 :goto_bf

    .line 216
    .end local v1    # "backwardK":I
    .end local v10    # "removal":Z
    .end local v11    # "x":I
    .end local v12    # "y":I
    :cond_144
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3b

    .line 287
    .end local v6    # "k":I
    :cond_148
    new-instance v13, Ljava/lang/IllegalStateException;

    const-string v14, "DiffUtil hit an unexpected case while trying to calculate the optimal path. Please make sure your data is not changing during the diff calculation."

    invoke-direct {v13, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v13
.end method
