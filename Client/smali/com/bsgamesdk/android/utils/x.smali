.class public Lcom/bsgamesdk/android/utils/x;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Lcom/bsgamesdk/android/widget/AreaAutoViewAdapter;

.field private c:Landroid/widget/PopupWindow;

.field private d:Landroid/content/Context;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bsgamesdk/android/utils/x;->d:Landroid/content/Context;

    iput-object p2, p0, Lcom/bsgamesdk/android/utils/x;->a:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/bsgamesdk/android/utils/x;->e:Landroid/view/View;

    iput-object p4, p0, Lcom/bsgamesdk/android/utils/x;->g:Landroid/view/View;

    iput-object p5, p0, Lcom/bsgamesdk/android/utils/x;->f:Landroid/view/View;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/widget/ImageView;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bsgamesdk/android/utils/x;->d:Landroid/content/Context;

    iput-object p2, p0, Lcom/bsgamesdk/android/utils/x;->a:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/bsgamesdk/android/utils/x;->e:Landroid/view/View;

    iput-object p4, p0, Lcom/bsgamesdk/android/utils/x;->g:Landroid/view/View;

    iput-object p5, p0, Lcom/bsgamesdk/android/utils/x;->f:Landroid/view/View;

    iput-object p6, p0, Lcom/bsgamesdk/android/utils/x;->h:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic a(Lcom/bsgamesdk/android/utils/x;)Lcom/bsgamesdk/android/widget/AreaAutoViewAdapter;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/utils/x;->b:Lcom/bsgamesdk/android/widget/AreaAutoViewAdapter;

    return-object v0
.end method

.method static synthetic b(Lcom/bsgamesdk/android/utils/x;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/utils/x;->a:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lcom/bsgamesdk/android/utils/x;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/utils/x;->h:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic d(Lcom/bsgamesdk/android/utils/x;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/utils/x;->d:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 10

    const/4 v8, 0x1

    const-wide/high16 v6, 0x3fe8000000000000L    # 0.75

    iget-object v0, p0, Lcom/bsgamesdk/android/utils/x;->c:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/bsgamesdk/android/utils/x;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_10

    :goto_f
    return-void

    :cond_10
    iget-object v0, p0, Lcom/bsgamesdk/android/utils/x;->c:Landroid/widget/PopupWindow;

    if-nez v0, :cond_82

    iget-object v0, p0, Lcom/bsgamesdk/android/utils/x;->d:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/bsgamesdk/android/utils/f$e;->m:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->aJ:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    new-instance v2, Lcom/bsgamesdk/android/utils/x$1;

    invoke-direct {v2, p0}, Lcom/bsgamesdk/android/utils/x$1;-><init>(Lcom/bsgamesdk/android/utils/x;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v2, Lcom/bsgamesdk/android/widget/AreaAutoViewAdapter;

    iget-object v3, p0, Lcom/bsgamesdk/android/utils/x;->d:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/bsgamesdk/android/widget/AreaAutoViewAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/bsgamesdk/android/utils/x;->b:Lcom/bsgamesdk/android/widget/AreaAutoViewAdapter;

    iget-object v2, p0, Lcom/bsgamesdk/android/utils/x;->b:Lcom/bsgamesdk/android/widget/AreaAutoViewAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/utils/x;->b:Lcom/bsgamesdk/android/widget/AreaAutoViewAdapter;

    iget-object v0, v0, Lcom/bsgamesdk/android/widget/AreaAutoViewAdapter;->mList:Ljava/util/List;

    sget-object v2, Lcom/bsgamesdk/android/utils/b;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/bsgamesdk/android/utils/x;->b:Lcom/bsgamesdk/android/widget/AreaAutoViewAdapter;

    invoke-virtual {v0}, Lcom/bsgamesdk/android/widget/AreaAutoViewAdapter;->notifyDataSetChanged()V

    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/bsgamesdk/android/utils/x;->f:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/bsgamesdk/android/utils/x;->g:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-double v4, v3

    mul-double/2addr v4, v6

    double-to-int v3, v4

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/bsgamesdk/android/utils/x;->c:Landroid/widget/PopupWindow;

    iget-object v0, p0, Lcom/bsgamesdk/android/utils/x;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v8}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v0, p0, Lcom/bsgamesdk/android/utils/x;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v8}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Lcom/bsgamesdk/android/utils/x;->c:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/utils/x;->c:Landroid/widget/PopupWindow;

    new-instance v1, Lcom/bsgamesdk/android/utils/x$2;

    invoke-direct {v1, p0}, Lcom/bsgamesdk/android/utils/x$2;-><init>(Lcom/bsgamesdk/android/utils/x;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    :cond_82
    iget-object v0, p0, Lcom/bsgamesdk/android/utils/x;->c:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/bsgamesdk/android/utils/x;->f:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/utils/x;->c:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/bsgamesdk/android/utils/x;->g:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-double v2, v1

    mul-double/2addr v2, v6

    double-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/utils/x;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->update()V

    iget-object v0, p0, Lcom/bsgamesdk/android/utils/x;->c:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/bsgamesdk/android/utils/x;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    goto/16 :goto_f
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/utils/x;->c:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/bsgamesdk/android/utils/x;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_9
    return-void
.end method

.method public c()V
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/utils/x;->c:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bsgamesdk/android/utils/x;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bsgamesdk/android/utils/x;->c:Landroid/widget/PopupWindow;

    :cond_c
    return-void
.end method
