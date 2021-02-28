.class public Lcn/sharesdk/framework/TitleLayout;
.super Landroid/widget/LinearLayout;
.source "TitleLayout.java"


# instance fields
.field private btnBack:Landroid/widget/ImageView;

.field private btnRight:Landroid/widget/TextView;

.field private tvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 26
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/TitleLayout;->init(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/TitleLayout;->init(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x2

    const/4 v3, -0x1

    .line 35
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/sharesdk/framework/TitleLayout;->btnBack:Landroid/widget/ImageView;

    .line 36
    iget-object v0, p0, Lcn/sharesdk/framework/TitleLayout;->btnBack:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 37
    const-string v0, "ssdk_back_arr"

    invoke-static {p1, v0}, Lcom/mob/tools/utils/ResHelper;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 38
    if-lez v0, :cond_1e

    .line 39
    iget-object v1, p0, Lcn/sharesdk/framework/TitleLayout;->btnBack:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 41
    :cond_1e
    iget-object v0, p0, Lcn/sharesdk/framework/TitleLayout;->btnBack:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 42
    const/16 v0, 0x30

    invoke-static {p1, v0}, Lcom/mob/tools/utils/ResHelper;->dipToPx(Landroid/content/Context;I)I

    move-result v0

    .line 43
    iget-object v1, p0, Lcn/sharesdk/framework/TitleLayout;->btnBack:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    iget-object v0, p0, Lcn/sharesdk/framework/TitleLayout;->btnBack:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcn/sharesdk/framework/TitleLayout;->addView(Landroid/view/View;)V

    .line 46
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 47
    const/4 v1, 0x2

    invoke-static {p1, v1}, Lcom/mob/tools/utils/ResHelper;->dipToPx(Landroid/content/Context;I)I

    move-result v1

    .line 48
    const-string v2, "ssdk_title_div"

    invoke-static {p1, v2}, Lcom/mob/tools/utils/ResHelper;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 49
    if-lez v2, :cond_4f

    .line 50
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 52
    :cond_4f
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    invoke-virtual {p0, v0}, Lcn/sharesdk/framework/TitleLayout;->addView(Landroid/view/View;)V

    .line 55
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/sharesdk/framework/TitleLayout;->tvTitle:Landroid/widget/TextView;

    .line 56
    const/16 v0, 0x17

    invoke-static {p1, v0}, Lcom/mob/tools/utils/ResHelper;->dipToPx(Landroid/content/Context;I)I

    move-result v0

    .line 57
    iget-object v2, p0, Lcn/sharesdk/framework/TitleLayout;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v5, v0, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 58
    iget-object v0, p0, Lcn/sharesdk/framework/TitleLayout;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 59
    iget-object v0, p0, Lcn/sharesdk/framework/TitleLayout;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 60
    iget-object v0, p0, Lcn/sharesdk/framework/TitleLayout;->tvTitle:Landroid/widget/TextView;

    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v0, v6, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 61
    iget-object v0, p0, Lcn/sharesdk/framework/TitleLayout;->tvTitle:Landroid/widget/TextView;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 62
    iget-object v0, p0, Lcn/sharesdk/framework/TitleLayout;->tvTitle:Landroid/widget/TextView;

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 63
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 65
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 66
    iget-object v2, p0, Lcn/sharesdk/framework/TitleLayout;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    iget-object v0, p0, Lcn/sharesdk/framework/TitleLayout;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcn/sharesdk/framework/TitleLayout;->addView(Landroid/view/View;)V

    .line 69
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 70
    const-string v2, "ssdk_title_div"

    invoke-static {p1, v2}, Lcom/mob/tools/utils/ResHelper;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 71
    if-lez v2, :cond_ae

    .line 72
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 74
    :cond_ae
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    invoke-virtual {p0, v0}, Lcn/sharesdk/framework/TitleLayout;->addView(Landroid/view/View;)V

    .line 77
    new-instance v1, Lcn/sharesdk/framework/TitleLayout$1;

    invoke-direct {v1, p0, p1, v0}, Lcn/sharesdk/framework/TitleLayout$1;-><init>(Lcn/sharesdk/framework/TitleLayout;Landroid/content/Context;Landroid/widget/ImageView;)V

    iput-object v1, p0, Lcn/sharesdk/framework/TitleLayout;->btnRight:Landroid/widget/TextView;

    .line 83
    iget-object v0, p0, Lcn/sharesdk/framework/TitleLayout;->btnRight:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 84
    iget-object v0, p0, Lcn/sharesdk/framework/TitleLayout;->btnRight:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 85
    const/16 v0, 0x32

    invoke-static {p1, v0}, Lcom/mob/tools/utils/ResHelper;->dipToPx(Landroid/content/Context;I)I

    move-result v0

    .line 86
    iget-object v1, p0, Lcn/sharesdk/framework/TitleLayout;->btnRight:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 87
    iget-object v0, p0, Lcn/sharesdk/framework/TitleLayout;->btnRight:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 88
    iget-object v0, p0, Lcn/sharesdk/framework/TitleLayout;->btnRight:Landroid/widget/TextView;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {v0, v6, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 89
    iget-object v0, p0, Lcn/sharesdk/framework/TitleLayout;->btnRight:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 90
    iget-object v0, p0, Lcn/sharesdk/framework/TitleLayout;->btnRight:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    iget-object v0, p0, Lcn/sharesdk/framework/TitleLayout;->btnRight:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcn/sharesdk/framework/TitleLayout;->addView(Landroid/view/View;)V

    .line 93
    return-void
.end method


# virtual methods
.method public getBtnBack()Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcn/sharesdk/framework/TitleLayout;->btnBack:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getBtnRight()Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lcn/sharesdk/framework/TitleLayout;->btnRight:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTvTitle()Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcn/sharesdk/framework/TitleLayout;->tvTitle:Landroid/widget/TextView;

    return-object v0
.end method
