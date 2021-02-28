.class public Lcom/bsgamesdk/android/widget/AreaAutoViewAdapter;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bsgamesdk/android/widget/AreaAutoViewAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field public mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bsgamesdk/android/model/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/bsgamesdk/android/widget/AreaAutoViewAdapter;->a:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bsgamesdk/android/widget/AreaAutoViewAdapter;->mList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/widget/AreaAutoViewAdapter;->mList:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/bsgamesdk/android/widget/AreaAutoViewAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_5
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/bsgamesdk/android/widget/AreaAutoViewAdapter;->mList:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/bsgamesdk/android/widget/AreaAutoViewAdapter;->mList:Ljava/util/List;

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
    .registers 7

    if-nez p2, :cond_44

    iget-object v0, p0, Lcom/bsgamesdk/android/widget/AreaAutoViewAdapter;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/bsgamesdk/android/utils/f$e;->l:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/bsgamesdk/android/widget/AreaAutoViewAdapter$ViewHolder;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/bsgamesdk/android/widget/AreaAutoViewAdapter$ViewHolder;-><init>(Lcom/bsgamesdk/android/widget/AreaAutoViewAdapter$1;)V

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->aH:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/bsgamesdk/android/widget/AreaAutoViewAdapter$ViewHolder;->a:Landroid/widget/TextView;

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->aI:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, v1, Lcom/bsgamesdk/android/widget/AreaAutoViewAdapter$ViewHolder;->b:Landroid/widget/ImageButton;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_2c
    iget-object v2, v1, Lcom/bsgamesdk/android/widget/AreaAutoViewAdapter$ViewHolder;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bsgamesdk/android/widget/AreaAutoViewAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bsgamesdk/android/model/d;

    invoke-virtual {v0}, Lcom/bsgamesdk/android/model/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/bsgamesdk/android/widget/AreaAutoViewAdapter$ViewHolder;->b:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-object p2

    :cond_44
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bsgamesdk/android/widget/AreaAutoViewAdapter$ViewHolder;

    move-object v1, v0

    goto :goto_2c
.end method
