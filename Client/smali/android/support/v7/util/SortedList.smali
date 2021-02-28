.class public Landroid/support/v7/util/SortedList;
.super Ljava/lang/Object;
.source "SortedList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/util/SortedList$BatchedCallback;,
        Landroid/support/v7/util/SortedList$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final CAPACITY_GROWTH:I = 0xa

.field private static final DELETION:I = 0x2

.field private static final INSERTION:I = 0x1

.field public static final INVALID_POSITION:I = -0x1

.field private static final LOOKUP:I = 0x4

.field private static final MIN_CAPACITY:I = 0xa


# instance fields
.field private mBatchedCallback:Landroid/support/v7/util/SortedList$BatchedCallback;

.field private mCallback:Landroid/support/v7/util/SortedList$Callback;

.field mData:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private mNewDataStart:I

.field private mOldData:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private mOldDataSize:I

.field private mOldDataStart:I

.field private mSize:I

.field private final mTClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Landroid/support/v7/util/SortedList$Callback;)V
    .registers 4
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v7/util/SortedList$Callback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/support/v7/util/SortedList$Callback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "this":Landroid/support/v7/util/SortedList;, "Landroid/support/v7/util/SortedList<TT;>;"
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "callback":Landroid/support/v7/util/SortedList$Callback;, "Landroid/support/v7/util/SortedList$Callback<TT;>;"
    const/16 v0, 0xa

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/util/SortedList;-><init>(Ljava/lang/Class;Landroid/support/v7/util/SortedList$Callback;I)V

    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Landroid/support/v7/util/SortedList$Callback;I)V
    .registers 5
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v7/util/SortedList$Callback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "initialCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/support/v7/util/SortedList$Callback",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, "this":Landroid/support/v7/util/SortedList;, "Landroid/support/v7/util/SortedList<TT;>;"
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "callback":Landroid/support/v7/util/SortedList$Callback;, "Landroid/support/v7/util/SortedList$Callback<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Landroid/support/v7/util/SortedList;->mTClass:Ljava/lang/Class;

    .line 103
    invoke-static {p1, p3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    .line 104
    iput-object p2, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    .line 105
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/util/SortedList;->mSize:I

    .line 106
    return-void
.end method

.method private add(Ljava/lang/Object;Z)I
    .registers 12
    .param p2, "notify"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)I"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/support/v7/util/SortedList;, "Landroid/support/v7/util/SortedList<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    const/4 v5, 0x1

    .line 542
    iget-object v2, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Landroid/support/v7/util/SortedList;->mSize:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/util/SortedList;->findIndexOf(Ljava/lang/Object;[Ljava/lang/Object;III)I

    move-result v7

    .line 543
    .local v7, "index":I
    const/4 v0, -0x1

    if-ne v7, v0, :cond_1c

    .line 544
    const/4 v7, 0x0

    .line 559
    :cond_10
    invoke-direct {p0, v7, p1}, Landroid/support/v7/util/SortedList;->addToData(ILjava/lang/Object;)V

    .line 560
    if-eqz p2, :cond_1a

    .line 561
    iget-object v0, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {v0, v7, v5}, Landroid/support/v7/util/SortedList$Callback;->onInserted(II)V

    :cond_1a
    move v8, v7

    .line 563
    .end local v7    # "index":I
    .local v8, "index":I
    :goto_1b
    return v8

    .line 545
    .end local v8    # "index":I
    .restart local v7    # "index":I
    :cond_1c
    iget v0, p0, Landroid/support/v7/util/SortedList;->mSize:I

    if-ge v7, v0, :cond_10

    .line 546
    iget-object v0, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    aget-object v6, v0, v7

    .line 547
    .local v6, "existing":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {v0, v6, p1}, Landroid/support/v7/util/SortedList$Callback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 548
    iget-object v0, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {v0, v6, p1}, Landroid/support/v7/util/SortedList$Callback;->areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 550
    iget-object v0, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    aput-object p1, v0, v7

    move v8, v7

    .line 551
    .end local v7    # "index":I
    .restart local v8    # "index":I
    goto :goto_1b

    .line 553
    .end local v8    # "index":I
    .restart local v7    # "index":I
    :cond_3a
    iget-object v0, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    aput-object p1, v0, v7

    .line 554
    iget-object v0, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    iget-object v1, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {v1, v6, p1}, Landroid/support/v7/util/SortedList$Callback;->getChangePayload(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v7, v5, v1}, Landroid/support/v7/util/SortedList$Callback;->onChanged(IILjava/lang/Object;)V

    move v8, v7

    .line 555
    .end local v7    # "index":I
    .restart local v8    # "index":I
    goto :goto_1b
.end method

.method private addAllInternal([Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .prologue
    .line 252
    .local p0, "this":Landroid/support/v7/util/SortedList;, "Landroid/support/v7/util/SortedList<TT;>;"
    .local p1, "newItems":[Ljava/lang/Object;, "[TT;"
    array-length v1, p1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_5

    .line 265
    :goto_4
    return-void

    .line 256
    :cond_5
    invoke-direct {p0, p1}, Landroid/support/v7/util/SortedList;->sortAndDedup([Ljava/lang/Object;)I

    move-result v0

    .line 258
    .local v0, "newSize":I
    iget v1, p0, Landroid/support/v7/util/SortedList;->mSize:I

    if-nez v1, :cond_18

    .line 259
    iput-object p1, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    .line 260
    iput v0, p0, Landroid/support/v7/util/SortedList;->mSize:I

    .line 261
    iget-object v1, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/support/v7/util/SortedList$Callback;->onInserted(II)V

    goto :goto_4

    .line 263
    :cond_18
    invoke-direct {p0, p1, v0}, Landroid/support/v7/util/SortedList;->merge([Ljava/lang/Object;I)V

    goto :goto_4
.end method

.method private addToData(ILjava/lang/Object;)V
    .registers 8
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/support/v7/util/SortedList;, "Landroid/support/v7/util/SortedList<TT;>;"
    .local p2, "item":Ljava/lang/Object;, "TT;"
    const/4 v3, 0x0

    .line 793
    iget v1, p0, Landroid/support/v7/util/SortedList;->mSize:I

    if-le p1, v1, :cond_2a

    .line 794
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot add item to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " because size is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/support/v7/util/SortedList;->mSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 797
    :cond_2a
    iget v1, p0, Landroid/support/v7/util/SortedList;->mSize:I

    iget-object v2, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    array-length v2, v2

    if-ne v1, v2, :cond_5b

    .line 799
    iget-object v1, p0, Landroid/support/v7/util/SortedList;->mTClass:Ljava/lang/Class;

    iget-object v2, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v2, v2, 0xa

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 800
    .local v0, "newData":[Ljava/lang/Object;, "[TT;"
    iget-object v1, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    invoke-static {v1, v3, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 801
    aput-object p2, v0, p1

    .line 802
    iget-object v1, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Landroid/support/v7/util/SortedList;->mSize:I

    sub-int/2addr v3, p1

    invoke-static {v1, p1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 803
    iput-object v0, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    .line 809
    .end local v0    # "newData":[Ljava/lang/Object;, "[TT;"
    :goto_54
    iget v1, p0, Landroid/support/v7/util/SortedList;->mSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/support/v7/util/SortedList;->mSize:I

    .line 810
    return-void

    .line 806
    :cond_5b
    iget-object v1, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    iget-object v2, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    add-int/lit8 v3, p1, 0x1

    iget v4, p0, Landroid/support/v7/util/SortedList;->mSize:I

    sub-int/2addr v4, p1

    invoke-static {v1, p1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 807
    iget-object v1, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    aput-object p2, v1, p1

    goto :goto_54
.end method

.method private copyArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/support/v7/util/SortedList;, "Landroid/support/v7/util/SortedList<TT;>;"
    .local p1, "items":[Ljava/lang/Object;, "[TT;"
    const/4 v3, 0x0

    .line 813
    iget-object v1, p0, Landroid/support/v7/util/SortedList;->mTClass:Ljava/lang/Class;

    array-length v2, p1

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 814
    .local v0, "copy":[Ljava/lang/Object;, "[TT;"
    array-length v1, p1

    invoke-static {p1, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 815
    return-object v0
.end method

.method private findIndexOf(Ljava/lang/Object;[Ljava/lang/Object;III)I
    .registers 13
    .param p3, "left"    # I
    .param p4, "right"    # I
    .param p5, "reason"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[TT;III)I"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/support/v7/util/SortedList;, "Landroid/support/v7/util/SortedList<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    .local p2, "mData":[Ljava/lang/Object;, "[TT;"
    const/4 v6, 0x1

    const/4 v4, -0x1

    .line 743
    :goto_2
    if-ge p3, p4, :cond_2e

    .line 744
    add-int v5, p3, p4

    div-int/lit8 v2, v5, 0x2

    .line 745
    .local v2, "middle":I
    aget-object v3, p2, v2

    .line 746
    .local v3, "myItem":Ljava/lang/Object;, "TT;"
    iget-object v5, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {v5, v3, p1}, Landroid/support/v7/util/SortedList$Callback;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 747
    .local v0, "cmp":I
    if-gez v0, :cond_15

    .line 748
    add-int/lit8 p3, v2, 0x1

    goto :goto_2

    .line 749
    :cond_15
    if-nez v0, :cond_2c

    .line 750
    iget-object v5, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {v5, v3, p1}, Landroid/support/v7/util/SortedList$Callback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 764
    .end local v0    # "cmp":I
    .end local v2    # "middle":I
    .end local v3    # "myItem":Ljava/lang/Object;, "TT;"
    .end local p3    # "left":I
    :cond_1f
    :goto_1f
    return v2

    .line 753
    .restart local v0    # "cmp":I
    .restart local v2    # "middle":I
    .restart local v3    # "myItem":Ljava/lang/Object;, "TT;"
    .restart local p3    # "left":I
    :cond_20
    invoke-direct {p0, p1, v2, p3, p4}, Landroid/support/v7/util/SortedList;->linearEqualitySearch(Ljava/lang/Object;III)I

    move-result v1

    .line 754
    .local v1, "exact":I
    if-ne p5, v6, :cond_2a

    .line 755
    if-eq v1, v4, :cond_1f

    move v2, v1

    goto :goto_1f

    :cond_2a
    move v2, v1

    .line 757
    goto :goto_1f

    .line 761
    .end local v1    # "exact":I
    :cond_2c
    move p4, v2

    goto :goto_2

    .line 764
    .end local v0    # "cmp":I
    .end local v2    # "middle":I
    .end local v3    # "myItem":Ljava/lang/Object;, "TT;"
    :cond_2e
    if-ne p5, v6, :cond_32

    .end local p3    # "left":I
    :goto_30
    move v2, p3

    goto :goto_1f

    .restart local p3    # "left":I
    :cond_32
    move p3, v4

    goto :goto_30
.end method

.method private findSameItem(Ljava/lang/Object;[Ljava/lang/Object;II)I
    .registers 8
    .param p3, "from"    # I
    .param p4, "to"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[TT;II)I"
        }
    .end annotation

    .prologue
    .line 396
    .local p0, "this":Landroid/support/v7/util/SortedList;, "Landroid/support/v7/util/SortedList<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    .local p2, "items":[Ljava/lang/Object;, "[TT;"
    move v0, p3

    .local v0, "pos":I
    :goto_1
    if-ge v0, p4, :cond_11

    .line 397
    iget-object v1, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    aget-object v2, p2, v0

    invoke-virtual {v1, v2, p1}, Landroid/support/v7/util/SortedList$Callback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 401
    .end local v0    # "pos":I
    :goto_d
    return v0

    .line 396
    .restart local v0    # "pos":I
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 401
    :cond_11
    const/4 v0, -0x1

    goto :goto_d
.end method

.method private linearEqualitySearch(Ljava/lang/Object;III)I
    .registers 9
    .param p2, "middle"    # I
    .param p3, "left"    # I
    .param p4, "right"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;III)I"
        }
    .end annotation

    .prologue
    .line 769
    .local p0, "this":Landroid/support/v7/util/SortedList;, "Landroid/support/v7/util/SortedList<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    add-int/lit8 v1, p2, -0x1

    .local v1, "next":I
    :goto_2
    if-lt v1, p3, :cond_10

    .line 770
    iget-object v3, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    aget-object v2, v3, v1

    .line 771
    .local v2, "nextItem":Ljava/lang/Object;, "TT;"
    iget-object v3, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {v3, v2, p1}, Landroid/support/v7/util/SortedList$Callback;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 772
    .local v0, "cmp":I
    if-eqz v0, :cond_22

    .line 779
    .end local v0    # "cmp":I
    .end local v2    # "nextItem":Ljava/lang/Object;, "TT;"
    :cond_10
    add-int/lit8 v1, p2, 0x1

    :goto_12
    if-ge v1, p4, :cond_20

    .line 780
    iget-object v3, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    aget-object v2, v3, v1

    .line 781
    .restart local v2    # "nextItem":Ljava/lang/Object;, "TT;"
    iget-object v3, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {v3, v2, p1}, Landroid/support/v7/util/SortedList$Callback;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 782
    .restart local v0    # "cmp":I
    if-eqz v0, :cond_2f

    .line 789
    .end local v0    # "cmp":I
    .end local v2    # "nextItem":Ljava/lang/Object;, "TT;"
    :cond_20
    const/4 v3, -0x1

    :goto_21
    return v3

    .line 775
    .restart local v0    # "cmp":I
    .restart local v2    # "nextItem":Ljava/lang/Object;, "TT;"
    :cond_22
    iget-object v3, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {v3, v2, p1}, Landroid/support/v7/util/SortedList$Callback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    move v3, v1

    .line 776
    goto :goto_21

    .line 769
    :cond_2c
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 785
    :cond_2f
    iget-object v3, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {v3, v2, p1}, Landroid/support/v7/util/SortedList$Callback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    move v3, v1

    .line 786
    goto :goto_21

    .line 779
    :cond_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_12
.end method

.method private merge([Ljava/lang/Object;I)V
    .registers 14
    .param p2, "newDataSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;I)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/support/v7/util/SortedList;, "Landroid/support/v7/util/SortedList<TT;>;"
    .local p1, "newData":[Ljava/lang/Object;, "[TT;"
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 408
    iget-object v7, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    instance-of v7, v7, Landroid/support/v7/util/SortedList$BatchedCallback;

    if-nez v7, :cond_5e

    move v1, v8

    .line 409
    .local v1, "forceBatchedUpdates":Z
    :goto_9
    if-eqz v1, :cond_e

    .line 410
    invoke-virtual {p0}, Landroid/support/v7/util/SortedList;->beginBatchedUpdates()V

    .line 413
    :cond_e
    iget-object v7, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    iput-object v7, p0, Landroid/support/v7/util/SortedList;->mOldData:[Ljava/lang/Object;

    .line 414
    iput v9, p0, Landroid/support/v7/util/SortedList;->mOldDataStart:I

    .line 415
    iget v7, p0, Landroid/support/v7/util/SortedList;->mSize:I

    iput v7, p0, Landroid/support/v7/util/SortedList;->mOldDataSize:I

    .line 417
    iget v7, p0, Landroid/support/v7/util/SortedList;->mSize:I

    add-int/2addr v7, p2

    add-int/lit8 v3, v7, 0xa

    .line 418
    .local v3, "mergedCapacity":I
    iget-object v7, p0, Landroid/support/v7/util/SortedList;->mTClass:Ljava/lang/Class;

    invoke-static {v7, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    check-cast v7, [Ljava/lang/Object;

    iput-object v7, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    .line 419
    iput v9, p0, Landroid/support/v7/util/SortedList;->mNewDataStart:I

    .line 421
    const/4 v4, 0x0

    .line 422
    .local v4, "newDataStart":I
    :cond_2c
    :goto_2c
    iget v7, p0, Landroid/support/v7/util/SortedList;->mOldDataStart:I

    iget v9, p0, Landroid/support/v7/util/SortedList;->mOldDataSize:I

    if-lt v7, v9, :cond_34

    if-ge v4, p2, :cond_55

    .line 423
    :cond_34
    iget v7, p0, Landroid/support/v7/util/SortedList;->mOldDataStart:I

    iget v9, p0, Landroid/support/v7/util/SortedList;->mOldDataSize:I

    if-ne v7, v9, :cond_60

    .line 425
    sub-int v2, p2, v4

    .line 426
    .local v2, "itemCount":I
    iget-object v7, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    iget v8, p0, Landroid/support/v7/util/SortedList;->mNewDataStart:I

    invoke-static {p1, v4, v7, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 427
    iget v7, p0, Landroid/support/v7/util/SortedList;->mNewDataStart:I

    add-int/2addr v7, v2

    iput v7, p0, Landroid/support/v7/util/SortedList;->mNewDataStart:I

    .line 428
    iget v7, p0, Landroid/support/v7/util/SortedList;->mSize:I

    add-int/2addr v7, v2

    iput v7, p0, Landroid/support/v7/util/SortedList;->mSize:I

    .line 429
    iget-object v7, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    iget v8, p0, Landroid/support/v7/util/SortedList;->mNewDataStart:I

    sub-int/2addr v8, v2

    invoke-virtual {v7, v8, v2}, Landroid/support/v7/util/SortedList$Callback;->onInserted(II)V

    .line 467
    .end local v2    # "itemCount":I
    :cond_55
    :goto_55
    const/4 v7, 0x0

    iput-object v7, p0, Landroid/support/v7/util/SortedList;->mOldData:[Ljava/lang/Object;

    .line 469
    if-eqz v1, :cond_5d

    .line 470
    invoke-virtual {p0}, Landroid/support/v7/util/SortedList;->endBatchedUpdates()V

    .line 472
    :cond_5d
    return-void

    .end local v1    # "forceBatchedUpdates":Z
    .end local v3    # "mergedCapacity":I
    .end local v4    # "newDataStart":I
    :cond_5e
    move v1, v9

    .line 408
    goto :goto_9

    .line 433
    .restart local v1    # "forceBatchedUpdates":Z
    .restart local v3    # "mergedCapacity":I
    .restart local v4    # "newDataStart":I
    :cond_60
    if-ne v4, p2, :cond_79

    .line 435
    iget v7, p0, Landroid/support/v7/util/SortedList;->mOldDataSize:I

    iget v8, p0, Landroid/support/v7/util/SortedList;->mOldDataStart:I

    sub-int v2, v7, v8

    .line 436
    .restart local v2    # "itemCount":I
    iget-object v7, p0, Landroid/support/v7/util/SortedList;->mOldData:[Ljava/lang/Object;

    iget v8, p0, Landroid/support/v7/util/SortedList;->mOldDataStart:I

    iget-object v9, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    iget v10, p0, Landroid/support/v7/util/SortedList;->mNewDataStart:I

    invoke-static {v7, v8, v9, v10, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 437
    iget v7, p0, Landroid/support/v7/util/SortedList;->mNewDataStart:I

    add-int/2addr v7, v2

    iput v7, p0, Landroid/support/v7/util/SortedList;->mNewDataStart:I

    goto :goto_55

    .line 441
    .end local v2    # "itemCount":I
    :cond_79
    iget-object v7, p0, Landroid/support/v7/util/SortedList;->mOldData:[Ljava/lang/Object;

    iget v9, p0, Landroid/support/v7/util/SortedList;->mOldDataStart:I

    aget-object v6, v7, v9

    .line 442
    .local v6, "oldItem":Ljava/lang/Object;, "TT;"
    aget-object v5, p1, v4

    .line 443
    .local v5, "newItem":Ljava/lang/Object;, "TT;"
    iget-object v7, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {v7, v6, v5}, Landroid/support/v7/util/SortedList$Callback;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 444
    .local v0, "compare":I
    if-lez v0, :cond_a5

    .line 446
    iget-object v7, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    iget v9, p0, Landroid/support/v7/util/SortedList;->mNewDataStart:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Landroid/support/v7/util/SortedList;->mNewDataStart:I

    aput-object v5, v7, v9

    .line 447
    iget v7, p0, Landroid/support/v7/util/SortedList;->mSize:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Landroid/support/v7/util/SortedList;->mSize:I

    .line 448
    add-int/lit8 v4, v4, 0x1

    .line 449
    iget-object v7, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    iget v9, p0, Landroid/support/v7/util/SortedList;->mNewDataStart:I

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v7, v9, v8}, Landroid/support/v7/util/SortedList$Callback;->onInserted(II)V

    goto :goto_2c

    .line 450
    :cond_a5
    if-nez v0, :cond_da

    iget-object v7, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {v7, v6, v5}, Landroid/support/v7/util/SortedList$Callback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_da

    .line 452
    iget-object v7, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    iget v9, p0, Landroid/support/v7/util/SortedList;->mNewDataStart:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Landroid/support/v7/util/SortedList;->mNewDataStart:I

    aput-object v5, v7, v9

    .line 453
    add-int/lit8 v4, v4, 0x1

    .line 454
    iget v7, p0, Landroid/support/v7/util/SortedList;->mOldDataStart:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Landroid/support/v7/util/SortedList;->mOldDataStart:I

    .line 455
    iget-object v7, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {v7, v6, v5}, Landroid/support/v7/util/SortedList$Callback;->areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2c

    .line 456
    iget-object v7, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    iget v9, p0, Landroid/support/v7/util/SortedList;->mNewDataStart:I

    add-int/lit8 v9, v9, -0x1

    iget-object v10, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    .line 457
    invoke-virtual {v10, v6, v5}, Landroid/support/v7/util/SortedList$Callback;->getChangePayload(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 456
    invoke-virtual {v7, v9, v8, v10}, Landroid/support/v7/util/SortedList$Callback;->onChanged(IILjava/lang/Object;)V

    goto/16 :goto_2c

    .line 462
    :cond_da
    iget-object v7, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    iget v9, p0, Landroid/support/v7/util/SortedList;->mNewDataStart:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Landroid/support/v7/util/SortedList;->mNewDataStart:I

    aput-object v6, v7, v9

    .line 463
    iget v7, p0, Landroid/support/v7/util/SortedList;->mOldDataStart:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Landroid/support/v7/util/SortedList;->mOldDataStart:I

    goto/16 :goto_2c
.end method

.method private remove(Ljava/lang/Object;Z)Z
    .registers 10
    .param p2, "notify"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/support/v7/util/SortedList;, "Landroid/support/v7/util/SortedList<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    const/4 v3, 0x0

    .line 593
    iget-object v2, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    iget v4, p0, Landroid/support/v7/util/SortedList;->mSize:I

    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/util/SortedList;->findIndexOf(Ljava/lang/Object;[Ljava/lang/Object;III)I

    move-result v6

    .line 594
    .local v6, "index":I
    const/4 v0, -0x1

    if-ne v6, v0, :cond_10

    .line 598
    :goto_f
    return v3

    .line 597
    :cond_10
    invoke-direct {p0, v6, p2}, Landroid/support/v7/util/SortedList;->removeItemAtIndex(IZ)V

    .line 598
    const/4 v3, 0x1

    goto :goto_f
.end method

.method private removeItemAtIndex(IZ)V
    .registers 7
    .param p1, "index"    # I
    .param p2, "notify"    # Z

    .prologue
    .line 602
    .local p0, "this":Landroid/support/v7/util/SortedList;, "Landroid/support/v7/util/SortedList<TT;>;"
    iget-object v0, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    iget v3, p0, Landroid/support/v7/util/SortedList;->mSize:I

    sub-int/2addr v3, p1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 603
    iget v0, p0, Landroid/support/v7/util/SortedList;->mSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v7/util/SortedList;->mSize:I

    .line 604
    iget-object v0, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    iget v1, p0, Landroid/support/v7/util/SortedList;->mSize:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 605
    if-eqz p2, :cond_23

    .line 606
    iget-object v0, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/util/SortedList$Callback;->onRemoved(II)V

    .line 608
    :cond_23
    return-void
.end method

.method private replaceAllInsert(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 334
    .local p0, "this":Landroid/support/v7/util/SortedList;, "Landroid/support/v7/util/SortedList<TT;>;"
    .local p1, "newItem":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    iget v1, p0, Landroid/support/v7/util/SortedList;->mNewDataStart:I

    aput-object p1, v0, v1

    .line 335
    iget v0, p0, Landroid/support/v7/util/SortedList;->mNewDataStart:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v7/util/SortedList;->mNewDataStart:I

    .line 336
    iget v0, p0, Landroid/support/v7/util/SortedList;->mSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v7/util/SortedList;->mSize:I

    .line 337
    iget-object v0, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    iget v1, p0, Landroid/support/v7/util/SortedList;->mNewDataStart:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/util/SortedList$Callback;->onInserted(II)V

    .line 338
    return-void
.end method

.method private replaceAllInternal([Ljava/lang/Object;)V
    .registers 13
    .param p1    # [Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/support/v7/util/SortedList;, "Landroid/support/v7/util/SortedList<TT;>;"
    .local p1, "newData":[Ljava/lang/Object;, "[TT;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 268
    iget-object v9, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    instance-of v9, v9, Landroid/support/v7/util/SortedList$BatchedCallback;

    if-nez v9, :cond_5d

    move v0, v8

    .line 269
    .local v0, "forceBatchedUpdates":Z
    :goto_9
    if-eqz v0, :cond_e

    .line 270
    invoke-virtual {p0}, Landroid/support/v7/util/SortedList;->beginBatchedUpdates()V

    .line 273
    :cond_e
    iput v7, p0, Landroid/support/v7/util/SortedList;->mOldDataStart:I

    .line 274
    iget v9, p0, Landroid/support/v7/util/SortedList;->mSize:I

    iput v9, p0, Landroid/support/v7/util/SortedList;->mOldDataSize:I

    .line 275
    iget-object v9, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    iput-object v9, p0, Landroid/support/v7/util/SortedList;->mOldData:[Ljava/lang/Object;

    .line 277
    iput v7, p0, Landroid/support/v7/util/SortedList;->mNewDataStart:I

    .line 278
    invoke-direct {p0, p1}, Landroid/support/v7/util/SortedList;->sortAndDedup([Ljava/lang/Object;)I

    move-result v4

    .line 279
    .local v4, "newSize":I
    iget-object v7, p0, Landroid/support/v7/util/SortedList;->mTClass:Ljava/lang/Class;

    invoke-static {v7, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    check-cast v7, [Ljava/lang/Object;

    iput-object v7, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    .line 281
    :cond_2a
    :goto_2a
    iget v7, p0, Landroid/support/v7/util/SortedList;->mNewDataStart:I

    if-lt v7, v4, :cond_34

    iget v7, p0, Landroid/support/v7/util/SortedList;->mOldDataStart:I

    iget v9, p0, Landroid/support/v7/util/SortedList;->mOldDataSize:I

    if-ge v7, v9, :cond_54

    .line 282
    :cond_34
    iget v7, p0, Landroid/support/v7/util/SortedList;->mOldDataStart:I

    iget v9, p0, Landroid/support/v7/util/SortedList;->mOldDataSize:I

    if-lt v7, v9, :cond_5f

    .line 283
    iget v1, p0, Landroid/support/v7/util/SortedList;->mNewDataStart:I

    .line 284
    .local v1, "insertIndex":I
    iget v7, p0, Landroid/support/v7/util/SortedList;->mNewDataStart:I

    sub-int v2, v4, v7

    .line 285
    .local v2, "itemCount":I
    iget-object v7, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    invoke-static {p1, v1, v7, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 286
    iget v7, p0, Landroid/support/v7/util/SortedList;->mNewDataStart:I

    add-int/2addr v7, v2

    iput v7, p0, Landroid/support/v7/util/SortedList;->mNewDataStart:I

    .line 287
    iget v7, p0, Landroid/support/v7/util/SortedList;->mSize:I

    add-int/2addr v7, v2

    iput v7, p0, Landroid/support/v7/util/SortedList;->mSize:I

    .line 288
    iget-object v7, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {v7, v1, v2}, Landroid/support/v7/util/SortedList$Callback;->onInserted(II)V

    .line 326
    .end local v1    # "insertIndex":I
    .end local v2    # "itemCount":I
    :cond_54
    :goto_54
    const/4 v7, 0x0

    iput-object v7, p0, Landroid/support/v7/util/SortedList;->mOldData:[Ljava/lang/Object;

    .line 328
    if-eqz v0, :cond_5c

    .line 329
    invoke-virtual {p0}, Landroid/support/v7/util/SortedList;->endBatchedUpdates()V

    .line 331
    :cond_5c
    return-void

    .end local v0    # "forceBatchedUpdates":Z
    .end local v4    # "newSize":I
    :cond_5d
    move v0, v7

    .line 268
    goto :goto_9

    .line 291
    .restart local v0    # "forceBatchedUpdates":Z
    .restart local v4    # "newSize":I
    :cond_5f
    iget v7, p0, Landroid/support/v7/util/SortedList;->mNewDataStart:I

    if-lt v7, v4, :cond_76

    .line 292
    iget v7, p0, Landroid/support/v7/util/SortedList;->mOldDataSize:I

    iget v8, p0, Landroid/support/v7/util/SortedList;->mOldDataStart:I

    sub-int v2, v7, v8

    .line 293
    .restart local v2    # "itemCount":I
    iget v7, p0, Landroid/support/v7/util/SortedList;->mSize:I

    sub-int/2addr v7, v2

    iput v7, p0, Landroid/support/v7/util/SortedList;->mSize:I

    .line 294
    iget-object v7, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    iget v8, p0, Landroid/support/v7/util/SortedList;->mNewDataStart:I

    invoke-virtual {v7, v8, v2}, Landroid/support/v7/util/SortedList$Callback;->onRemoved(II)V

    goto :goto_54

    .line 298
    .end local v2    # "itemCount":I
    :cond_76
    iget-object v7, p0, Landroid/support/v7/util/SortedList;->mOldData:[Ljava/lang/Object;

    iget v9, p0, Landroid/support/v7/util/SortedList;->mOldDataStart:I

    aget-object v5, v7, v9

    .line 299
    .local v5, "oldItem":Ljava/lang/Object;, "TT;"
    iget v7, p0, Landroid/support/v7/util/SortedList;->mNewDataStart:I

    aget-object v3, p1, v7

    .line 301
    .local v3, "newItem":Ljava/lang/Object;, "TT;"
    iget-object v7, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {v7, v5, v3}, Landroid/support/v7/util/SortedList$Callback;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    .line 302
    .local v6, "result":I
    if-gez v6, :cond_8c

    .line 303
    invoke-direct {p0}, Landroid/support/v7/util/SortedList;->replaceAllRemove()V

    goto :goto_2a

    .line 304
    :cond_8c
    if-lez v6, :cond_92

    .line 305
    invoke-direct {p0, v3}, Landroid/support/v7/util/SortedList;->replaceAllInsert(Ljava/lang/Object;)V

    goto :goto_2a

    .line 307
    :cond_92
    iget-object v7, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {v7, v5, v3}, Landroid/support/v7/util/SortedList$Callback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a1

    .line 310
    invoke-direct {p0}, Landroid/support/v7/util/SortedList;->replaceAllRemove()V

    .line 311
    invoke-direct {p0, v3}, Landroid/support/v7/util/SortedList;->replaceAllInsert(Ljava/lang/Object;)V

    goto :goto_2a

    .line 313
    :cond_a1
    iget-object v7, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    iget v9, p0, Landroid/support/v7/util/SortedList;->mNewDataStart:I

    aput-object v3, v7, v9

    .line 314
    iget v7, p0, Landroid/support/v7/util/SortedList;->mOldDataStart:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Landroid/support/v7/util/SortedList;->mOldDataStart:I

    .line 315
    iget v7, p0, Landroid/support/v7/util/SortedList;->mNewDataStart:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Landroid/support/v7/util/SortedList;->mNewDataStart:I

    .line 316
    iget-object v7, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {v7, v5, v3}, Landroid/support/v7/util/SortedList$Callback;->areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2a

    .line 319
    iget-object v7, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    iget v9, p0, Landroid/support/v7/util/SortedList;->mNewDataStart:I

    add-int/lit8 v9, v9, -0x1

    iget-object v10, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    .line 320
    invoke-virtual {v10, v5, v3}, Landroid/support/v7/util/SortedList$Callback;->getChangePayload(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 319
    invoke-virtual {v7, v9, v8, v10}, Landroid/support/v7/util/SortedList$Callback;->onChanged(IILjava/lang/Object;)V

    goto/16 :goto_2a
.end method

.method private replaceAllRemove()V
    .registers 4

    .prologue
    .line 341
    .local p0, "this":Landroid/support/v7/util/SortedList;, "Landroid/support/v7/util/SortedList<TT;>;"
    iget v0, p0, Landroid/support/v7/util/SortedList;->mSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v7/util/SortedList;->mSize:I

    .line 342
    iget v0, p0, Landroid/support/v7/util/SortedList;->mOldDataStart:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v7/util/SortedList;->mOldDataStart:I

    .line 343
    iget-object v0, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    iget v1, p0, Landroid/support/v7/util/SortedList;->mNewDataStart:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/util/SortedList$Callback;->onRemoved(II)V

    .line 344
    return-void
.end method

.method private sortAndDedup([Ljava/lang/Object;)I
    .registers 11
    .param p1    # [Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)I"
        }
    .end annotation

    .prologue
    .line 353
    .local p0, "this":Landroid/support/v7/util/SortedList;, "Landroid/support/v7/util/SortedList<TT;>;"
    .local p1, "items":[Ljava/lang/Object;, "[TT;"
    array-length v7, p1

    if-nez v7, :cond_5

    .line 354
    const/4 v3, 0x0

    .line 391
    :cond_4
    return v3

    .line 358
    :cond_5
    iget-object v7, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-static {p1, v7}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 362
    const/4 v5, 0x0

    .line 363
    .local v5, "rangeStart":I
    const/4 v3, 0x1

    .line 365
    .local v3, "rangeEnd":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_d
    array-length v7, p1

    if-ge v2, v7, :cond_4

    .line 366
    aget-object v1, p1, v2

    .line 368
    .local v1, "currentItem":Ljava/lang/Object;, "TT;"
    iget-object v7, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    aget-object v8, p1, v5

    invoke-virtual {v7, v8, v1}, Landroid/support/v7/util/SortedList$Callback;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 370
    .local v0, "compare":I
    if-nez v0, :cond_2f

    .line 372
    invoke-direct {p0, v1, p1, v5, v3}, Landroid/support/v7/util/SortedList;->findSameItem(Ljava/lang/Object;[Ljava/lang/Object;II)I

    move-result v6

    .line 373
    .local v6, "sameItemPos":I
    const/4 v7, -0x1

    if-eq v6, v7, :cond_28

    .line 375
    aput-object v1, p1, v6

    .line 365
    .end local v6    # "sameItemPos":I
    :goto_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 378
    .restart local v6    # "sameItemPos":I
    :cond_28
    if-eq v3, v2, :cond_2c

    .line 379
    aput-object v1, p1, v3

    .line 381
    :cond_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .line 385
    .end local v6    # "sameItemPos":I
    :cond_2f
    if-eq v3, v2, :cond_33

    .line 386
    aput-object v1, p1, v3

    .line 388
    :cond_33
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "rangeEnd":I
    .local v4, "rangeEnd":I
    move v5, v3

    move v3, v4

    .end local v4    # "rangeEnd":I
    .restart local v3    # "rangeEnd":I
    goto :goto_25
.end method

.method private throwIfInMutationOperation()V
    .registers 3

    .prologue
    .line 479
    .local p0, "this":Landroid/support/v7/util/SortedList;, "Landroid/support/v7/util/SortedList<TT;>;"
    iget-object v0, p0, Landroid/support/v7/util/SortedList;->mOldData:[Ljava/lang/Object;

    if-eqz v0, :cond_c

    .line 480
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Data cannot be mutated in the middle of a batch update operation such as addAll or replaceAll."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 483
    :cond_c
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .line 143
    .local p0, "this":Landroid/support/v7/util/SortedList;, "Landroid/support/v7/util/SortedList<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Landroid/support/v7/util/SortedList;->throwIfInMutationOperation()V

    .line 144
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/support/v7/util/SortedList;->add(Ljava/lang/Object;Z)I

    move-result v0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)V
    .registers 5
    .param p1    # Ljava/util/Collection;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 193
    .local p0, "this":Landroid/support/v7/util/SortedList;, "Landroid/support/v7/util/SortedList<TT;>;"
    .local p1, "items":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    iget-object v1, p0, Landroid/support/v7/util/SortedList;->mTClass:Ljava/lang/Class;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 194
    .local v0, "copy":[Ljava/lang/Object;, "[TT;"
    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/support/v7/util/SortedList;->addAll([Ljava/lang/Object;Z)V

    .line 195
    return-void
.end method

.method public varargs addAll([Ljava/lang/Object;)V
    .registers 3
    .param p1    # [Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .prologue
    .line 182
    .local p0, "this":Landroid/support/v7/util/SortedList;, "Landroid/support/v7/util/SortedList<TT;>;"
    .local p1, "items":[Ljava/lang/Object;, "[TT;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/util/SortedList;->addAll([Ljava/lang/Object;Z)V

    .line 183
    return-void
.end method

.method public addAll([Ljava/lang/Object;Z)V
    .registers 4
    .param p1    # [Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "mayModifyInput"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;Z)V"
        }
    .end annotation

    .prologue
    .line 162
    .local p0, "this":Landroid/support/v7/util/SortedList;, "Landroid/support/v7/util/SortedList<TT;>;"
    .local p1, "items":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0}, Landroid/support/v7/util/SortedList;->throwIfInMutationOperation()V

    .line 163
    array-length v0, p1

    if-nez v0, :cond_7

    .line 172
    :goto_6
    return-void

    .line 167
    :cond_7
    if-eqz p2, :cond_d

    .line 168
    invoke-direct {p0, p1}, Landroid/support/v7/util/SortedList;->addAllInternal([Ljava/lang/Object;)V

    goto :goto_6

    .line 170
    :cond_d
    invoke-direct {p0, p1}, Landroid/support/v7/util/SortedList;->copyArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/util/SortedList;->addAllInternal([Ljava/lang/Object;)V

    goto :goto_6
.end method

.method public beginBatchedUpdates()V
    .registers 3

    .prologue
    .line 518
    .local p0, "this":Landroid/support/v7/util/SortedList;, "Landroid/support/v7/util/SortedList<TT;>;"
    invoke-direct {p0}, Landroid/support/v7/util/SortedList;->throwIfInMutationOperation()V

    .line 519
    iget-object v0, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    instance-of v0, v0, Landroid/support/v7/util/SortedList$BatchedCallback;

    if-eqz v0, :cond_a

    .line 526
    :goto_9
    return-void

    .line 522
    :cond_a
    iget-object v0, p0, Landroid/support/v7/util/SortedList;->mBatchedCallback:Landroid/support/v7/util/SortedList$BatchedCallback;

    if-nez v0, :cond_17

    .line 523
    new-instance v0, Landroid/support/v7/util/SortedList$BatchedCallback;

    iget-object v1, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-direct {v0, v1}, Landroid/support/v7/util/SortedList$BatchedCallback;-><init>(Landroid/support/v7/util/SortedList$Callback;)V

    iput-object v0, p0, Landroid/support/v7/util/SortedList;->mBatchedCallback:Landroid/support/v7/util/SortedList$BatchedCallback;

    .line 525
    :cond_17
    iget-object v0, p0, Landroid/support/v7/util/SortedList;->mBatchedCallback:Landroid/support/v7/util/SortedList$BatchedCallback;

    iput-object v0, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    goto :goto_9
.end method

.method public clear()V
    .registers 5

    .prologue
    .local p0, "this":Landroid/support/v7/util/SortedList;, "Landroid/support/v7/util/SortedList<TT;>;"
    const/4 v3, 0x0

    .line 822
    invoke-direct {p0}, Landroid/support/v7/util/SortedList;->throwIfInMutationOperation()V

    .line 823
    iget v1, p0, Landroid/support/v7/util/SortedList;->mSize:I

    if-nez v1, :cond_9

    .line 830
    :goto_8
    return-void

    .line 826
    :cond_9
    iget v0, p0, Landroid/support/v7/util/SortedList;->mSize:I

    .line 827
    .local v0, "prevSize":I
    iget-object v1, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v1, v3, v0, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 828
    iput v3, p0, Landroid/support/v7/util/SortedList;->mSize:I

    .line 829
    iget-object v1, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {v1, v3, v0}, Landroid/support/v7/util/SortedList$Callback;->onRemoved(II)V

    goto :goto_8
.end method

.method public endBatchedUpdates()V
    .registers 3

    .prologue
    .line 532
    .local p0, "this":Landroid/support/v7/util/SortedList;, "Landroid/support/v7/util/SortedList<TT;>;"
    invoke-direct {p0}, Landroid/support/v7/util/SortedList;->throwIfInMutationOperation()V

    .line 533
    iget-object v0, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    instance-of v0, v0, Landroid/support/v7/util/SortedList$BatchedCallback;

    if-eqz v0, :cond_10

    .line 534
    iget-object v0, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    check-cast v0, Landroid/support/v7/util/SortedList$BatchedCallback;

    invoke-virtual {v0}, Landroid/support/v7/util/SortedList$BatchedCallback;->dispatchLastEvent()V

    .line 536
    :cond_10
    iget-object v0, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    iget-object v1, p0, Landroid/support/v7/util/SortedList;->mBatchedCallback:Landroid/support/v7/util/SortedList$BatchedCallback;

    if-ne v0, v1, :cond_1c

    .line 537
    iget-object v0, p0, Landroid/support/v7/util/SortedList;->mBatchedCallback:Landroid/support/v7/util/SortedList$BatchedCallback;

    iget-object v0, v0, Landroid/support/v7/util/SortedList$BatchedCallback;->mWrappedCallback:Landroid/support/v7/util/SortedList$Callback;

    iput-object v0, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    .line 539
    :cond_1c
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .registers 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 705
    .local p0, "this":Landroid/support/v7/util/SortedList;, "Landroid/support/v7/util/SortedList<TT;>;"
    iget v0, p0, Landroid/support/v7/util/SortedList;->mSize:I

    if-ge p1, v0, :cond_6

    if-gez p1, :cond_2b

    .line 706
    :cond_6
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Asked to get item at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v7/util/SortedList;->mSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 709
    :cond_2b
    iget-object v0, p0, Landroid/support/v7/util/SortedList;->mOldData:[Ljava/lang/Object;

    if-eqz v0, :cond_3f

    .line 712
    iget v0, p0, Landroid/support/v7/util/SortedList;->mNewDataStart:I

    if-lt p1, v0, :cond_3f

    .line 713
    iget-object v0, p0, Landroid/support/v7/util/SortedList;->mOldData:[Ljava/lang/Object;

    iget v1, p0, Landroid/support/v7/util/SortedList;->mNewDataStart:I

    sub-int v1, p1, v1

    iget v2, p0, Landroid/support/v7/util/SortedList;->mOldDataStart:I

    add-int/2addr v1, v2

    aget-object v0, v0, v1

    .line 716
    :goto_3e
    return-object v0

    :cond_3f
    iget-object v0, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    aget-object v0, v0, p1

    goto :goto_3e
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/support/v7/util/SortedList;, "Landroid/support/v7/util/SortedList<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    const/4 v3, 0x0

    const/4 v5, 0x4

    const/4 v7, -0x1

    .line 728
    iget-object v0, p0, Landroid/support/v7/util/SortedList;->mOldData:[Ljava/lang/Object;

    if-eqz v0, :cond_2d

    .line 729
    iget-object v2, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    iget v4, p0, Landroid/support/v7/util/SortedList;->mNewDataStart:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/util/SortedList;->findIndexOf(Ljava/lang/Object;[Ljava/lang/Object;III)I

    move-result v6

    .line 730
    .local v6, "index":I
    if-eq v6, v7, :cond_14

    .line 739
    .end local v6    # "index":I
    :goto_13
    return v6

    .line 733
    .restart local v6    # "index":I
    :cond_14
    iget-object v2, p0, Landroid/support/v7/util/SortedList;->mOldData:[Ljava/lang/Object;

    iget v3, p0, Landroid/support/v7/util/SortedList;->mOldDataStart:I

    iget v4, p0, Landroid/support/v7/util/SortedList;->mOldDataSize:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/util/SortedList;->findIndexOf(Ljava/lang/Object;[Ljava/lang/Object;III)I

    move-result v6

    .line 734
    if-eq v6, v7, :cond_2b

    .line 735
    iget v0, p0, Landroid/support/v7/util/SortedList;->mOldDataStart:I

    sub-int v0, v6, v0

    iget v1, p0, Landroid/support/v7/util/SortedList;->mNewDataStart:I

    add-int v6, v0, v1

    goto :goto_13

    :cond_2b
    move v6, v7

    .line 737
    goto :goto_13

    .line 739
    .end local v6    # "index":I
    :cond_2d
    iget-object v2, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    iget v4, p0, Landroid/support/v7/util/SortedList;->mSize:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/util/SortedList;->findIndexOf(Ljava/lang/Object;[Ljava/lang/Object;III)I

    move-result v6

    goto :goto_13
.end method

.method public recalculatePositionOfItemAt(I)V
    .registers 5
    .param p1, "index"    # I

    .prologue
    .local p0, "this":Landroid/support/v7/util/SortedList;, "Landroid/support/v7/util/SortedList<TT;>;"
    const/4 v2, 0x0

    .line 685
    invoke-direct {p0}, Landroid/support/v7/util/SortedList;->throwIfInMutationOperation()V

    .line 687
    invoke-virtual {p0, p1}, Landroid/support/v7/util/SortedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 688
    .local v0, "item":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1, v2}, Landroid/support/v7/util/SortedList;->removeItemAtIndex(IZ)V

    .line 689
    invoke-direct {p0, v0, v2}, Landroid/support/v7/util/SortedList;->add(Ljava/lang/Object;Z)I

    move-result v1

    .line 690
    .local v1, "newIndex":I
    if-eq p1, v1, :cond_16

    .line 691
    iget-object v2, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {v2, p1, v1}, Landroid/support/v7/util/SortedList$Callback;->onMoved(II)V

    .line 693
    :cond_16
    return-void
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 574
    .local p0, "this":Landroid/support/v7/util/SortedList;, "Landroid/support/v7/util/SortedList<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Landroid/support/v7/util/SortedList;->throwIfInMutationOperation()V

    .line 575
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/support/v7/util/SortedList;->remove(Ljava/lang/Object;Z)Z

    move-result v0

    return v0
.end method

.method public removeItemAt(I)Ljava/lang/Object;
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 586
    .local p0, "this":Landroid/support/v7/util/SortedList;, "Landroid/support/v7/util/SortedList<TT;>;"
    invoke-direct {p0}, Landroid/support/v7/util/SortedList;->throwIfInMutationOperation()V

    .line 587
    invoke-virtual {p0, p1}, Landroid/support/v7/util/SortedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 588
    .local v0, "item":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Landroid/support/v7/util/SortedList;->removeItemAtIndex(IZ)V

    .line 589
    return-object v0
.end method

.method public replaceAll(Ljava/util/Collection;)V
    .registers 5
    .param p1    # Ljava/util/Collection;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 247
    .local p0, "this":Landroid/support/v7/util/SortedList;, "Landroid/support/v7/util/SortedList<TT;>;"
    .local p1, "items":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    iget-object v1, p0, Landroid/support/v7/util/SortedList;->mTClass:Ljava/lang/Class;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 248
    .local v0, "copy":[Ljava/lang/Object;, "[TT;"
    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/support/v7/util/SortedList;->replaceAll([Ljava/lang/Object;Z)V

    .line 249
    return-void
.end method

.method public varargs replaceAll([Ljava/lang/Object;)V
    .registers 3
    .param p1    # [Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .prologue
    .line 235
    .local p0, "this":Landroid/support/v7/util/SortedList;, "Landroid/support/v7/util/SortedList<TT;>;"
    .local p1, "items":[Ljava/lang/Object;, "[TT;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/util/SortedList;->replaceAll([Ljava/lang/Object;Z)V

    .line 236
    return-void
.end method

.method public replaceAll([Ljava/lang/Object;Z)V
    .registers 4
    .param p1    # [Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "mayModifyInput"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;Z)V"
        }
    .end annotation

    .prologue
    .line 217
    .local p0, "this":Landroid/support/v7/util/SortedList;, "Landroid/support/v7/util/SortedList<TT;>;"
    .local p1, "items":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0}, Landroid/support/v7/util/SortedList;->throwIfInMutationOperation()V

    .line 219
    if-eqz p2, :cond_9

    .line 220
    invoke-direct {p0, p1}, Landroid/support/v7/util/SortedList;->replaceAllInternal([Ljava/lang/Object;)V

    .line 224
    :goto_8
    return-void

    .line 222
    :cond_9
    invoke-direct {p0, p1}, Landroid/support/v7/util/SortedList;->copyArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/util/SortedList;->replaceAllInternal([Ljava/lang/Object;)V

    goto :goto_8
.end method

.method public size()I
    .registers 2

    .prologue
    .line 114
    .local p0, "this":Landroid/support/v7/util/SortedList;, "Landroid/support/v7/util/SortedList<TT;>;"
    iget v0, p0, Landroid/support/v7/util/SortedList;->mSize:I

    return v0
.end method

.method public updateItemAt(ILjava/lang/Object;)V
    .registers 11
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/support/v7/util/SortedList;, "Landroid/support/v7/util/SortedList<TT;>;"
    .local p2, "item":Ljava/lang/Object;, "TT;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 631
    invoke-direct {p0}, Landroid/support/v7/util/SortedList;->throwIfInMutationOperation()V

    .line 632
    invoke-virtual {p0, p1}, Landroid/support/v7/util/SortedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 634
    .local v2, "existing":Ljava/lang/Object;, "TT;"
    if-eq v2, p2, :cond_13

    iget-object v6, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {v6, v2, p2}, Landroid/support/v7/util/SortedList$Callback;->areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_30

    :cond_13
    move v1, v5

    .line 635
    .local v1, "contentsChanged":Z
    :goto_14
    if-eq v2, p2, :cond_32

    .line 637
    iget-object v6, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {v6, v2, p2}, Landroid/support/v7/util/SortedList$Callback;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 638
    .local v0, "cmp":I
    if-nez v0, :cond_32

    .line 639
    iget-object v4, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    aput-object p2, v4, p1

    .line 640
    if-eqz v1, :cond_2f

    .line 641
    iget-object v4, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    iget-object v6, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {v6, v2, p2}, Landroid/support/v7/util/SortedList$Callback;->getChangePayload(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, p1, v5, v6}, Landroid/support/v7/util/SortedList$Callback;->onChanged(IILjava/lang/Object;)V

    .line 655
    .end local v0    # "cmp":I
    :cond_2f
    :goto_2f
    return-void

    .end local v1    # "contentsChanged":Z
    :cond_30
    move v1, v4

    .line 634
    goto :goto_14

    .line 646
    .restart local v1    # "contentsChanged":Z
    :cond_32
    if-eqz v1, :cond_3f

    .line 647
    iget-object v6, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    iget-object v7, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {v7, v2, p2}, Landroid/support/v7/util/SortedList$Callback;->getChangePayload(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, p1, v5, v7}, Landroid/support/v7/util/SortedList$Callback;->onChanged(IILjava/lang/Object;)V

    .line 650
    :cond_3f
    invoke-direct {p0, p1, v4}, Landroid/support/v7/util/SortedList;->removeItemAtIndex(IZ)V

    .line 651
    invoke-direct {p0, p2, v4}, Landroid/support/v7/util/SortedList;->add(Ljava/lang/Object;Z)I

    move-result v3

    .line 652
    .local v3, "newIndex":I
    if-eq p1, v3, :cond_2f

    .line 653
    iget-object v4, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {v4, p1, v3}, Landroid/support/v7/util/SortedList$Callback;->onMoved(II)V

    goto :goto_2f
.end method
