.class Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$1;
.super Landroid/support/v7/util/DiffUtil$Callback;
.source "AsyncListDiffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;


# direct methods
.method constructor <init>(Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;)V
    .registers 2
    .param p1, "this$1"    # Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;

    .prologue
    .line 246
    .local p0, "this":Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$1;, "Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$1;"
    iput-object p1, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$1;->this$1:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;

    invoke-direct {p0}, Landroid/support/v7/util/DiffUtil$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public areContentsTheSame(II)Z
    .registers 6
    .param p1, "oldItemPosition"    # I
    .param p2, "newItemPosition"    # I

    .prologue
    .line 270
    .local p0, "this":Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$1;, "Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$1;"
    iget-object v2, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$1;->this$1:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;

    iget-object v2, v2, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;->val$oldList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 271
    .local v1, "oldItem":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$1;->this$1:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;

    iget-object v2, v2, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;->val$newList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 272
    .local v0, "newItem":Ljava/lang/Object;, "TT;"
    if-eqz v1, :cond_23

    if-eqz v0, :cond_23

    .line 273
    iget-object v2, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$1;->this$1:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;

    iget-object v2, v2, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;->this$0:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;

    iget-object v2, v2, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->mConfig:Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig;

    invoke-virtual {v2}, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig;->getDiffCallback()Landroid/support/v7/util/DiffUtil$ItemCallback;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/support/v7/util/DiffUtil$ItemCallback;->areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 276
    :goto_22
    return v2

    .line 275
    :cond_23
    if-nez v1, :cond_29

    if-nez v0, :cond_29

    .line 276
    const/4 v2, 0x1

    goto :goto_22

    .line 282
    :cond_29
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method public areItemsTheSame(II)Z
    .registers 6
    .param p1, "oldItemPosition"    # I
    .param p2, "newItemPosition"    # I

    .prologue
    .line 259
    .local p0, "this":Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$1;, "Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$1;"
    iget-object v2, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$1;->this$1:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;

    iget-object v2, v2, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;->val$oldList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 260
    .local v1, "oldItem":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$1;->this$1:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;

    iget-object v2, v2, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;->val$newList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 261
    .local v0, "newItem":Ljava/lang/Object;, "TT;"
    if-eqz v1, :cond_23

    if-eqz v0, :cond_23

    .line 262
    iget-object v2, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$1;->this$1:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;

    iget-object v2, v2, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;->this$0:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;

    iget-object v2, v2, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->mConfig:Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig;

    invoke-virtual {v2}, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig;->getDiffCallback()Landroid/support/v7/util/DiffUtil$ItemCallback;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/support/v7/util/DiffUtil$ItemCallback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 265
    :goto_22
    return v2

    :cond_23
    if-nez v1, :cond_29

    if-nez v0, :cond_29

    const/4 v2, 0x1

    goto :goto_22

    :cond_29
    const/4 v2, 0x0

    goto :goto_22
.end method

.method public getChangePayload(II)Ljava/lang/Object;
    .registers 6
    .param p1, "oldItemPosition"    # I
    .param p2, "newItemPosition"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 288
    .local p0, "this":Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$1;, "Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$1;"
    iget-object v2, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$1;->this$1:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;

    iget-object v2, v2, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;->val$oldList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 289
    .local v1, "oldItem":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$1;->this$1:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;

    iget-object v2, v2, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;->val$newList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 290
    .local v0, "newItem":Ljava/lang/Object;, "TT;"
    if-eqz v1, :cond_23

    if-eqz v0, :cond_23

    .line 291
    iget-object v2, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$1;->this$1:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;

    iget-object v2, v2, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;->this$0:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;

    iget-object v2, v2, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->mConfig:Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig;

    invoke-virtual {v2}, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig;->getDiffCallback()Landroid/support/v7/util/DiffUtil$ItemCallback;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/support/v7/util/DiffUtil$ItemCallback;->getChangePayload(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 297
    :cond_23
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method public getNewListSize()I
    .registers 2

    .prologue
    .line 254
    .local p0, "this":Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$1;, "Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$1;"
    iget-object v0, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$1;->this$1:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;

    iget-object v0, v0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;->val$newList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getOldListSize()I
    .registers 2

    .prologue
    .line 249
    .local p0, "this":Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$1;, "Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$1;"
    iget-object v0, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$1;->this$1:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;

    iget-object v0, v0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;->val$oldList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method