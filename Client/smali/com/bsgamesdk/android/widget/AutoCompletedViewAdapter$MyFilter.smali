.class Lcom/bsgamesdk/android/widget/AutoCompletedViewAdapter$MyFilter;
.super Landroid/widget/Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bsgamesdk/android/widget/AutoCompletedViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyFilter"
.end annotation


# instance fields
.field final synthetic a:Lcom/bsgamesdk/android/widget/AutoCompletedViewAdapter;


# direct methods
.method private constructor <init>(Lcom/bsgamesdk/android/widget/AutoCompletedViewAdapter;)V
    .registers 2

    iput-object p1, p0, Lcom/bsgamesdk/android/widget/AutoCompletedViewAdapter$MyFilter;->a:Lcom/bsgamesdk/android/widget/AutoCompletedViewAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bsgamesdk/android/widget/AutoCompletedViewAdapter;Lcom/bsgamesdk/android/widget/AutoCompletedViewAdapter$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/bsgamesdk/android/widget/AutoCompletedViewAdapter$MyFilter;-><init>(Lcom/bsgamesdk/android/widget/AutoCompletedViewAdapter;)V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .registers 5

    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    iget-object v1, p0, Lcom/bsgamesdk/android/widget/AutoCompletedViewAdapter$MyFilter;->a:Lcom/bsgamesdk/android/widget/AutoCompletedViewAdapter;

    iget-object v1, v1, Lcom/bsgamesdk/android/widget/AutoCompletedViewAdapter;->mList:Ljava/util/List;

    if-nez v1, :cond_14

    iget-object v1, p0, Lcom/bsgamesdk/android/widget/AutoCompletedViewAdapter$MyFilter;->a:Lcom/bsgamesdk/android/widget/AutoCompletedViewAdapter;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/bsgamesdk/android/widget/AutoCompletedViewAdapter;->mList:Ljava/util/List;

    :cond_14
    iget-object v1, p0, Lcom/bsgamesdk/android/widget/AutoCompletedViewAdapter$MyFilter;->a:Lcom/bsgamesdk/android/widget/AutoCompletedViewAdapter;

    iget-object v1, v1, Lcom/bsgamesdk/android/widget/AutoCompletedViewAdapter;->mList:Ljava/util/List;

    iput-object v1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    iget-object v1, p0, Lcom/bsgamesdk/android/widget/AutoCompletedViewAdapter$MyFilter;->a:Lcom/bsgamesdk/android/widget/AutoCompletedViewAdapter;

    iget-object v1, v1, Lcom/bsgamesdk/android/widget/AutoCompletedViewAdapter;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v0, Landroid/widget/Filter$FilterResults;->count:I

    return-object v0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .registers 4

    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez v0, :cond_a

    iget-object v0, p0, Lcom/bsgamesdk/android/widget/AutoCompletedViewAdapter$MyFilter;->a:Lcom/bsgamesdk/android/widget/AutoCompletedViewAdapter;

    invoke-virtual {v0}, Lcom/bsgamesdk/android/widget/AutoCompletedViewAdapter;->notifyDataSetChanged()V

    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/bsgamesdk/android/widget/AutoCompletedViewAdapter$MyFilter;->a:Lcom/bsgamesdk/android/widget/AutoCompletedViewAdapter;

    invoke-virtual {v0}, Lcom/bsgamesdk/android/widget/AutoCompletedViewAdapter;->notifyDataSetInvalidated()V

    goto :goto_9
.end method
