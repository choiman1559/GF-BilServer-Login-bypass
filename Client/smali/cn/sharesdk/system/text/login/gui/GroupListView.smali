.class public Lcn/sharesdk/system/text/login/gui/GroupListView;
.super Landroid/widget/RelativeLayout;
.source "GroupListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/sharesdk/system/text/login/gui/GroupListView$OnItemClickListener;,
        Lcn/sharesdk/system/text/login/gui/GroupListView$a;,
        Lcn/sharesdk/system/text/login/gui/GroupListView$b;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Lcn/sharesdk/system/text/login/gui/GroupListView$b;

.field private c:Lcn/sharesdk/system/text/login/gui/GroupListView$a;

.field private d:Landroid/view/View;

.field private e:I

.field private f:I

.field private g:Landroid/widget/AbsListView$OnScrollListener;

.field private h:Lcn/sharesdk/system/text/login/gui/GroupListView$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 30
    invoke-direct {p0, p1}, Lcn/sharesdk/system/text/login/gui/GroupListView;->a(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    invoke-direct {p0, p1}, Lcn/sharesdk/system/text/login/gui/GroupListView;->a(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    invoke-direct {p0, p1}, Lcn/sharesdk/system/text/login/gui/GroupListView;->a(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method static synthetic a(Lcn/sharesdk/system/text/login/gui/GroupListView;I)I
    .registers 2

    .prologue
    .line 18
    iput p1, p0, Lcn/sharesdk/system/text/login/gui/GroupListView;->e:I

    return p1
.end method

.method static synthetic a(Lcn/sharesdk/system/text/login/gui/GroupListView;)Landroid/widget/AbsListView$OnScrollListener;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/GroupListView;->g:Landroid/widget/AbsListView$OnScrollListener;

    return-object v0
.end method

.method private a()V
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/GroupListView;->b:Lcn/sharesdk/system/text/login/gui/GroupListView$b;

    invoke-virtual {v0}, Lcn/sharesdk/system/text/login/gui/GroupListView$b;->notifyDataSetChanged()V

    .line 104
    invoke-direct {p0}, Lcn/sharesdk/system/text/login/gui/GroupListView;->b()V

    .line 105
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 44
    new-instance v0, Landroid/widget/ListView;

    invoke-direct {v0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/sharesdk/system/text/login/gui/GroupListView;->a:Landroid/widget/ListView;

    .line 45
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/GroupListView;->a:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 46
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/GroupListView;->a:Landroid/widget/ListView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 47
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/GroupListView;->a:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 48
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/GroupListView;->a:Landroid/widget/ListView;

    new-instance v1, Lcn/sharesdk/system/text/login/gui/GroupListView$1;

    invoke-direct {v1, p0}, Lcn/sharesdk/system/text/login/gui/GroupListView$1;-><init>(Lcn/sharesdk/system/text/login/gui/GroupListView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 69
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/GroupListView;->a:Landroid/widget/ListView;

    new-instance v1, Lcn/sharesdk/system/text/login/gui/GroupListView$2;

    invoke-direct {v1, p0}, Lcn/sharesdk/system/text/login/gui/GroupListView$2;-><init>(Lcn/sharesdk/system/text/login/gui/GroupListView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 78
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/GroupListView;->a:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/GroupListView;->a:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcn/sharesdk/system/text/login/gui/GroupListView;->addView(Landroid/view/View;)V

    .line 81
    return-void
.end method

.method static synthetic b(Lcn/sharesdk/system/text/login/gui/GroupListView;)Landroid/view/View;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/GroupListView;->d:Landroid/view/View;

    return-object v0
.end method

.method private b()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 108
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/GroupListView;->d:Landroid/view/View;

    if-eqz v0, :cond_a

    .line 109
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/GroupListView;->d:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcn/sharesdk/system/text/login/gui/GroupListView;->removeView(Landroid/view/View;)V

    .line 111
    :cond_a
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/GroupListView;->b:Lcn/sharesdk/system/text/login/gui/GroupListView$b;

    invoke-virtual {v0}, Lcn/sharesdk/system/text/login/gui/GroupListView$b;->getCount()I

    move-result v0

    if-nez v0, :cond_13

    .line 126
    :goto_12
    return-void

    .line 114
    :cond_13
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/GroupListView;->b:Lcn/sharesdk/system/text/login/gui/GroupListView$b;

    iget v1, p0, Lcn/sharesdk/system/text/login/gui/GroupListView;->e:I

    invoke-virtual {v0, v1}, Lcn/sharesdk/system/text/login/gui/GroupListView$b;->a(I)I

    move-result v0

    .line 115
    iget-object v1, p0, Lcn/sharesdk/system/text/login/gui/GroupListView;->b:Lcn/sharesdk/system/text/login/gui/GroupListView$b;

    invoke-static {v1}, Lcn/sharesdk/system/text/login/gui/GroupListView$b;->a(Lcn/sharesdk/system/text/login/gui/GroupListView$b;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 116
    iget-object v1, p0, Lcn/sharesdk/system/text/login/gui/GroupListView;->b:Lcn/sharesdk/system/text/login/gui/GroupListView$b;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p0}, Lcn/sharesdk/system/text/login/gui/GroupListView$b;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/system/text/login/gui/GroupListView;->d:Landroid/view/View;

    .line 117
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 119
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 120
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 121
    iget-object v1, p0, Lcn/sharesdk/system/text/login/gui/GroupListView;->d:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Lcn/sharesdk/system/text/login/gui/GroupListView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/GroupListView;->d:Landroid/view/View;

    invoke-virtual {v0, v3, v3}, Landroid/view/View;->measure(II)V

    .line 124
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/GroupListView;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcn/sharesdk/system/text/login/gui/GroupListView;->f:I

    .line 125
    invoke-direct {p0}, Lcn/sharesdk/system/text/login/gui/GroupListView;->c()V

    goto :goto_12
.end method

.method private c()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 139
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/GroupListView;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 140
    iget-object v1, p0, Lcn/sharesdk/system/text/login/gui/GroupListView;->b:Lcn/sharesdk/system/text/login/gui/GroupListView$b;

    iget v2, p0, Lcn/sharesdk/system/text/login/gui/GroupListView;->e:I

    invoke-virtual {v1, v2}, Lcn/sharesdk/system/text/login/gui/GroupListView$b;->c(I)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 142
    iget-object v1, p0, Lcn/sharesdk/system/text/login/gui/GroupListView;->b:Lcn/sharesdk/system/text/login/gui/GroupListView$b;

    iget v2, p0, Lcn/sharesdk/system/text/login/gui/GroupListView;->e:I

    invoke-virtual {v1, v2}, Lcn/sharesdk/system/text/login/gui/GroupListView$b;->a(I)I

    move-result v1

    .line 143
    iget-object v2, p0, Lcn/sharesdk/system/text/login/gui/GroupListView;->c:Lcn/sharesdk/system/text/login/gui/GroupListView$a;

    invoke-virtual {v2, v1}, Lcn/sharesdk/system/text/login/gui/GroupListView$a;->b(I)Ljava/lang/String;

    move-result-object v1

    .line 144
    iget-object v2, p0, Lcn/sharesdk/system/text/login/gui/GroupListView;->c:Lcn/sharesdk/system/text/login/gui/GroupListView$a;

    iget-object v3, p0, Lcn/sharesdk/system/text/login/gui/GroupListView;->d:Landroid/view/View;

    invoke-virtual {v2, v3, v1}, Lcn/sharesdk/system/text/login/gui/GroupListView$a;->a(Landroid/view/View;Ljava/lang/String;)V

    .line 145
    iget-object v1, p0, Lcn/sharesdk/system/text/login/gui/GroupListView;->a:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 146
    iget v2, p0, Lcn/sharesdk/system/text/login/gui/GroupListView;->f:I

    if-ge v1, v2, :cond_43

    .line 147
    iget v2, p0, Lcn/sharesdk/system/text/login/gui/GroupListView;->f:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v4, v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 148
    iget-object v1, p0, Lcn/sharesdk/system/text/login/gui/GroupListView;->d:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    :cond_42
    :goto_42
    return-void

    .line 152
    :cond_43
    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 153
    iget-object v1, p0, Lcn/sharesdk/system/text/login/gui/GroupListView;->d:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/GroupListView;->b:Lcn/sharesdk/system/text/login/gui/GroupListView$b;

    iget v1, p0, Lcn/sharesdk/system/text/login/gui/GroupListView;->e:I

    invoke-virtual {v0, v1}, Lcn/sharesdk/system/text/login/gui/GroupListView$b;->b(I)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 157
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/GroupListView;->b:Lcn/sharesdk/system/text/login/gui/GroupListView$b;

    iget v1, p0, Lcn/sharesdk/system/text/login/gui/GroupListView;->e:I

    invoke-virtual {v0, v1}, Lcn/sharesdk/system/text/login/gui/GroupListView$b;->a(I)I

    move-result v0

    .line 158
    iget-object v1, p0, Lcn/sharesdk/system/text/login/gui/GroupListView;->c:Lcn/sharesdk/system/text/login/gui/GroupListView$a;

    invoke-virtual {v1, v0}, Lcn/sharesdk/system/text/login/gui/GroupListView$a;->b(I)Ljava/lang/String;

    move-result-object v0

    .line 159
    iget-object v1, p0, Lcn/sharesdk/system/text/login/gui/GroupListView;->c:Lcn/sharesdk/system/text/login/gui/GroupListView$a;

    iget-object v2, p0, Lcn/sharesdk/system/text/login/gui/GroupListView;->d:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Lcn/sharesdk/system/text/login/gui/GroupListView$a;->a(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_42
.end method

.method static synthetic c(Lcn/sharesdk/system/text/login/gui/GroupListView;)V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcn/sharesdk/system/text/login/gui/GroupListView;->c()V

    return-void
.end method

.method static synthetic d(Lcn/sharesdk/system/text/login/gui/GroupListView;)Lcn/sharesdk/system/text/login/gui/GroupListView$OnItemClickListener;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/GroupListView;->h:Lcn/sharesdk/system/text/login/gui/GroupListView$OnItemClickListener;

    return-object v0
.end method

.method static synthetic e(Lcn/sharesdk/system/text/login/gui/GroupListView;)Lcn/sharesdk/system/text/login/gui/GroupListView$b;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/GroupListView;->b:Lcn/sharesdk/system/text/login/gui/GroupListView$b;

    return-object v0
.end method

.method static synthetic f(Lcn/sharesdk/system/text/login/gui/GroupListView;)V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcn/sharesdk/system/text/login/gui/GroupListView;->a()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 3

    .prologue
    .line 84
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/GroupListView;->a:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 85
    return-void
.end method

.method public a(II)V
    .registers 5

    .prologue
    .line 133
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/GroupListView;->b:Lcn/sharesdk/system/text/login/gui/GroupListView$b;

    invoke-static {v0}, Lcn/sharesdk/system/text/login/gui/GroupListView$b;->a(Lcn/sharesdk/system/text/login/gui/GroupListView$b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 134
    add-int/2addr v0, p2

    add-int/lit8 v0, v0, 0x1

    .line 135
    iget-object v1, p0, Lcn/sharesdk/system/text/login/gui/GroupListView;->a:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 136
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .prologue
    .line 88
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/GroupListView;->a:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 89
    return-void
.end method

.method public a(Lcn/sharesdk/system/text/login/gui/GroupListView$OnItemClickListener;)V
    .registers 2

    .prologue
    .line 168
    iput-object p1, p0, Lcn/sharesdk/system/text/login/gui/GroupListView;->h:Lcn/sharesdk/system/text/login/gui/GroupListView$OnItemClickListener;

    .line 169
    return-void
.end method

.method public a(Lcn/sharesdk/system/text/login/gui/GroupListView$a;)V
    .registers 4

    .prologue
    .line 92
    iput-object p1, p0, Lcn/sharesdk/system/text/login/gui/GroupListView;->c:Lcn/sharesdk/system/text/login/gui/GroupListView$a;

    .line 93
    new-instance v0, Lcn/sharesdk/system/text/login/gui/GroupListView$b;

    invoke-direct {v0, p1}, Lcn/sharesdk/system/text/login/gui/GroupListView$b;-><init>(Lcn/sharesdk/system/text/login/gui/GroupListView$a;)V

    iput-object v0, p0, Lcn/sharesdk/system/text/login/gui/GroupListView;->b:Lcn/sharesdk/system/text/login/gui/GroupListView$b;

    .line 94
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/GroupListView;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcn/sharesdk/system/text/login/gui/GroupListView;->b:Lcn/sharesdk/system/text/login/gui/GroupListView$b;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 95
    invoke-direct {p0}, Lcn/sharesdk/system/text/login/gui/GroupListView;->b()V

    .line 96
    return-void
.end method

.method public b(I)V
    .registers 3

    .prologue
    .line 129
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcn/sharesdk/system/text/login/gui/GroupListView;->a(II)V

    .line 130
    return-void
.end method
