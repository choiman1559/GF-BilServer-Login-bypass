.class public Lcom/bsgamesdk/android/widget/AutoCompletedViewAdapter;
.super Landroid/widget/BaseAdapter;

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bsgamesdk/android/widget/AutoCompletedViewAdapter$MyFilter;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/bsgamesdk/android/widget/AutoCompletedViewAdapter$MyFilter;

.field public mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/bsgamesdk/android/widget/AutoCompletedViewAdapter;->a:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bsgamesdk/android/widget/AutoCompletedViewAdapter;->mList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/widget/AutoCompletedViewAdapter;->mList:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/bsgamesdk/android/widget/AutoCompletedViewAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_5
.end method

.method public getFilter()Landroid/widget/Filter;
    .registers 3

    iget-object v0, p0, Lcom/bsgamesdk/android/widget/AutoCompletedViewAdapter;->b:Lcom/bsgamesdk/android/widget/AutoCompletedViewAdapter$MyFilter;

    if-nez v0, :cond_c

    new-instance v0, Lcom/bsgamesdk/android/widget/AutoCompletedViewAdapter$MyFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bsgamesdk/android/widget/AutoCompletedViewAdapter$MyFilter;-><init>(Lcom/bsgamesdk/android/widget/AutoCompletedViewAdapter;Lcom/bsgamesdk/android/widget/AutoCompletedViewAdapter$1;)V

    iput-object v0, p0, Lcom/bsgamesdk/android/widget/AutoCompletedViewAdapter;->b:Lcom/bsgamesdk/android/widget/AutoCompletedViewAdapter$MyFilter;

    :cond_c
    iget-object v0, p0, Lcom/bsgamesdk/android/widget/AutoCompletedViewAdapter;->b:Lcom/bsgamesdk/android/widget/AutoCompletedViewAdapter$MyFilter;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/bsgamesdk/android/widget/AutoCompletedViewAdapter;->mList:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/bsgamesdk/android/widget/AutoCompletedViewAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_5
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    if-nez p2, :cond_26

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bsgamesdk/android/widget/AutoCompletedViewAdapter;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v1, 0x41c80000    # 25.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    :goto_13
    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHeight(I)V

    iget-object v1, p0, Lcom/bsgamesdk/android/widget/AutoCompletedViewAdapter;->mList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0

    :cond_26
    move-object v0, p2

    goto :goto_13
.end method
