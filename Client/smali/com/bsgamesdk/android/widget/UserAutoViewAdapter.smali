.class public Lcom/bsgamesdk/android/widget/UserAutoViewAdapter;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bsgamesdk/android/widget/UserAutoViewAdapter$ViewHolder;,
        Lcom/bsgamesdk/android/widget/UserAutoViewAdapter$DelOnClickListener;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/bsgamesdk/android/widget/UserAutoViewAdapter$DelOnClickListener;

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

    iput-object p1, p0, Lcom/bsgamesdk/android/widget/UserAutoViewAdapter;->a:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bsgamesdk/android/widget/UserAutoViewAdapter;->mList:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/bsgamesdk/android/widget/UserAutoViewAdapter;)Lcom/bsgamesdk/android/widget/UserAutoViewAdapter$DelOnClickListener;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/widget/UserAutoViewAdapter;->b:Lcom/bsgamesdk/android/widget/UserAutoViewAdapter$DelOnClickListener;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/widget/UserAutoViewAdapter;->mList:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/bsgamesdk/android/widget/UserAutoViewAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_5
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/bsgamesdk/android/widget/UserAutoViewAdapter;->mList:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/bsgamesdk/android/widget/UserAutoViewAdapter;->mList:Ljava/util/List;

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

    iget-object v0, p0, Lcom/bsgamesdk/android/widget/UserAutoViewAdapter;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/bsgamesdk/android/utils/f$e;->l:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/bsgamesdk/android/widget/UserAutoViewAdapter$ViewHolder;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/bsgamesdk/android/widget/UserAutoViewAdapter$ViewHolder;-><init>(Lcom/bsgamesdk/android/widget/UserAutoViewAdapter$1;)V

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->aH:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/bsgamesdk/android/widget/UserAutoViewAdapter$ViewHolder;->a:Landroid/widget/TextView;

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->aI:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, v1, Lcom/bsgamesdk/android/widget/UserAutoViewAdapter$ViewHolder;->b:Landroid/widget/ImageButton;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_2c
    iget-object v2, v1, Lcom/bsgamesdk/android/widget/UserAutoViewAdapter$ViewHolder;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bsgamesdk/android/widget/UserAutoViewAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/bsgamesdk/android/widget/UserAutoViewAdapter$ViewHolder;->b:Landroid/widget/ImageButton;

    new-instance v1, Lcom/bsgamesdk/android/widget/UserAutoViewAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/bsgamesdk/android/widget/UserAutoViewAdapter$1;-><init>(Lcom/bsgamesdk/android/widget/UserAutoViewAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2

    :cond_44
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bsgamesdk/android/widget/UserAutoViewAdapter$ViewHolder;

    move-object v1, v0

    goto :goto_2c
.end method

.method public setDelOnClickListener(Lcom/bsgamesdk/android/widget/UserAutoViewAdapter$DelOnClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/bsgamesdk/android/widget/UserAutoViewAdapter;->b:Lcom/bsgamesdk/android/widget/UserAutoViewAdapter$DelOnClickListener;

    return-void
.end method
