.class public Lcn/sharesdk/system/text/login/gui/CountryListView;
.super Lcom/mob/tools/gui/RoundRectLayout;
.source "CountryListView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private a:Lcn/sharesdk/system/text/login/gui/GroupListView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/LinearLayout;

.field private d:Lcn/sharesdk/system/text/login/gui/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/RoundRectLayout;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-direct {p0, p1}, Lcn/sharesdk/system/text/login/gui/CountryListView;->a(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/mob/tools/gui/RoundRectLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    invoke-direct {p0, p1}, Lcn/sharesdk/system/text/login/gui/CountryListView;->a(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/mob/tools/gui/RoundRectLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    invoke-direct {p0, p1}, Lcn/sharesdk/system/text/login/gui/CountryListView;->a(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 10

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x2

    const/high16 v5, 0x41f00000    # 30.0f

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 46
    invoke-static {p1}, Lcn/sharesdk/system/text/login/utils/d;->a(Landroid/content/Context;)V

    .line 48
    new-instance v0, Lcn/sharesdk/system/text/login/gui/GroupListView;

    invoke-direct {v0, p1}, Lcn/sharesdk/system/text/login/gui/GroupListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/sharesdk/system/text/login/gui/CountryListView;->a:Lcn/sharesdk/system/text/login/gui/GroupListView;

    .line 49
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/CountryListView;->a:Lcn/sharesdk/system/text/login/gui/GroupListView;

    invoke-static {v7}, Lcn/sharesdk/system/text/login/utils/d;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/sharesdk/system/text/login/gui/GroupListView;->a(I)V

    .line 50
    const-string v0, "ssdk_country_cl_divider"

    invoke-static {p1, v0}, Lcom/mob/tools/utils/ResHelper;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 51
    if-lez v0, :cond_2e

    .line 52
    iget-object v1, p0, Lcn/sharesdk/system/text/login/gui/CountryListView;->a:Lcn/sharesdk/system/text/login/gui/GroupListView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/sharesdk/system/text/login/gui/GroupListView;->a(Landroid/graphics/drawable/Drawable;)V

    .line 54
    :cond_2e
    new-instance v0, Lcn/sharesdk/system/text/login/gui/a;

    iget-object v1, p0, Lcn/sharesdk/system/text/login/gui/CountryListView;->a:Lcn/sharesdk/system/text/login/gui/GroupListView;

    invoke-direct {v0, v1}, Lcn/sharesdk/system/text/login/gui/a;-><init>(Lcn/sharesdk/system/text/login/gui/GroupListView;)V

    iput-object v0, p0, Lcn/sharesdk/system/text/login/gui/CountryListView;->d:Lcn/sharesdk/system/text/login/gui/a;

    .line 55
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/CountryListView;->a:Lcn/sharesdk/system/text/login/gui/GroupListView;

    iget-object v1, p0, Lcn/sharesdk/system/text/login/gui/CountryListView;->d:Lcn/sharesdk/system/text/login/gui/a;

    invoke-virtual {v0, v1}, Lcn/sharesdk/system/text/login/gui/GroupListView;->a(Lcn/sharesdk/system/text/login/gui/GroupListView$a;)V

    .line 56
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 58
    const/16 v1, 0xc

    invoke-static {v1}, Lcn/sharesdk/system/text/login/utils/d;->b(I)I

    move-result v1

    .line 59
    invoke-virtual {v0, v1, v3, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 60
    iget-object v1, p0, Lcn/sharesdk/system/text/login/gui/CountryListView;->a:Lcn/sharesdk/system/text/login/gui/GroupListView;

    invoke-virtual {p0, v1, v0}, Lcn/sharesdk/system/text/login/gui/CountryListView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/sharesdk/system/text/login/gui/CountryListView;->b:Landroid/widget/TextView;

    .line 63
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/CountryListView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 64
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/CountryListView;->b:Landroid/widget/TextView;

    const/high16 v1, -0x51000000

    invoke-static {v5, v1}, Lcn/sharesdk/system/text/login/utils/e;->a(FI)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 65
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/CountryListView;->b:Landroid/widget/TextView;

    const/16 v1, 0x50

    invoke-static {v1}, Lcn/sharesdk/system/text/login/utils/d;->b(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 66
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/CountryListView;->b:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 67
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/CountryListView;->b:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 68
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/CountryListView;->b:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 69
    const/16 v0, 0x78

    invoke-static {v0}, Lcn/sharesdk/system/text/login/utils/d;->b(I)I

    move-result v0

    .line 70
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 71
    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 72
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/CountryListView;->b:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/system/text/login/gui/CountryListView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/sharesdk/system/text/login/gui/CountryListView;->c:Landroid/widget/LinearLayout;

    .line 75
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/CountryListView;->c:Landroid/widget/LinearLayout;

    invoke-static {v5, v3}, Lcn/sharesdk/system/text/login/utils/e;->a(FI)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 76
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/CountryListView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 77
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/CountryListView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 78
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 80
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 81
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 82
    const/4 v1, 0x7

    invoke-static {v1}, Lcn/sharesdk/system/text/login/utils/d;->b(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 84
    iget-object v1, p0, Lcn/sharesdk/system/text/login/gui/CountryListView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1, v0}, Lcn/sharesdk/system/text/login/gui/CountryListView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    invoke-direct {p0, p1}, Lcn/sharesdk/system/text/login/gui/CountryListView;->b(Landroid/content/Context;)V

    .line 87
    return-void
.end method

.method private b(Landroid/content/Context;)V
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 90
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/CountryListView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 91
    invoke-static {p1}, Lcn/sharesdk/system/text/login/utils/d;->a(Landroid/content/Context;)V

    .line 93
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/CountryListView;->d:Lcn/sharesdk/system/text/login/gui/a;

    invoke-virtual {v0}, Lcn/sharesdk/system/text/login/gui/a;->a()I

    move-result v2

    .line 94
    const/4 v0, 0x6

    invoke-static {v0}, Lcn/sharesdk/system/text/login/utils/d;->b(I)I

    move-result v3

    .line 95
    const/4 v0, 0x4

    invoke-static {v0}, Lcn/sharesdk/system/text/login/utils/d;->b(I)I

    move-result v4

    move v0, v1

    .line 96
    :goto_1a
    if-ge v0, v2, :cond_44

    .line 97
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 98
    iget-object v6, p0, Lcn/sharesdk/system/text/login/gui/CountryListView;->d:Lcn/sharesdk/system/text/login/gui/a;

    invoke-virtual {v6, v0}, Lcn/sharesdk/system/text/login/gui/a;->b(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    const/16 v6, 0x12

    invoke-static {v6}, Lcn/sharesdk/system/text/login/utils/d;->b(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v1, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 100
    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 101
    invoke-virtual {v5, v3, v4, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 102
    iget-object v6, p0, Lcn/sharesdk/system/text/login/gui/CountryListView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 104
    :cond_44
    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;FF)V
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 133
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    move v1, v2

    :goto_6
    if-ge v1, v3, :cond_45

    .line 134
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 135
    invoke-virtual {v0}, Landroid/widget/TextView;->getLeft()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, p2, v4

    if-ltz v4, :cond_46

    invoke-virtual {v0}, Landroid/widget/TextView;->getRight()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, p2, v4

    if-gtz v4, :cond_46

    .line 136
    invoke-virtual {v0}, Landroid/widget/TextView;->getTop()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, p3, v4

    if-ltz v4, :cond_46

    invoke-virtual {v0}, Landroid/widget/TextView;->getBottom()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, p3, v4

    if-gtz v4, :cond_46

    .line 137
    iget-object v3, p0, Lcn/sharesdk/system/text/login/gui/CountryListView;->a:Lcn/sharesdk/system/text/login/gui/GroupListView;

    invoke-virtual {v3, v1}, Lcn/sharesdk/system/text/login/gui/GroupListView;->b(I)V

    .line 138
    iget-object v1, p0, Lcn/sharesdk/system/text/login/gui/CountryListView;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 139
    iget-object v1, p0, Lcn/sharesdk/system/text/login/gui/CountryListView;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    :cond_45
    return-void

    .line 133
    :cond_46
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6
.end method

.method public a(Lcn/sharesdk/system/text/login/gui/GroupListView$OnItemClickListener;)V
    .registers 3

    .prologue
    .line 165
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/CountryListView;->a:Lcn/sharesdk/system/text/login/gui/GroupListView;

    invoke-virtual {v0, p1}, Lcn/sharesdk/system/text/login/gui/GroupListView;->a(Lcn/sharesdk/system/text/login/gui/GroupListView$OnItemClickListener;)V

    .line 166
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 150
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/CountryListView;->d:Lcn/sharesdk/system/text/login/gui/a;

    invoke-virtual {v0, p1}, Lcn/sharesdk/system/text/login/gui/a;->a(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/CountryListView;->d:Lcn/sharesdk/system/text/login/gui/a;

    invoke-virtual {v0}, Lcn/sharesdk/system/text/login/gui/a;->c()V

    .line 152
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/CountryListView;->d:Lcn/sharesdk/system/text/login/gui/a;

    invoke-virtual {v0}, Lcn/sharesdk/system/text/login/gui/a;->a()I

    move-result v0

    if-nez v0, :cond_21

    .line 153
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/CountryListView;->c:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 157
    :goto_19
    invoke-virtual {p0}, Lcn/sharesdk/system/text/login/gui/CountryListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/sharesdk/system/text/login/gui/CountryListView;->b(Landroid/content/Context;)V

    .line 158
    return-void

    .line 155
    :cond_21
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/CountryListView;->c:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_19
.end method

.method public a(II)[Ljava/lang/String;
    .registers 4

    .prologue
    .line 174
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/CountryListView;->d:Lcn/sharesdk/system/text/login/gui/a;

    invoke-virtual {v0, p1, p2}, Lcn/sharesdk/system/text/login/gui/a;->a(II)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v1, 0x41f00000    # 30.0f

    .line 108
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_40

    .line 128
    .end local p1    # "v":Landroid/view/View;
    :goto_9
    const/4 v0, 0x1

    return v0

    .line 110
    .restart local p1    # "v":Landroid/view/View;
    :pswitch_b
    const/high16 v0, -0x51000000

    invoke-static {v1, v0}, Lcn/sharesdk/system/text/login/utils/e;->a(FI)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 111
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 112
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 113
    check-cast p1, Landroid/view/ViewGroup;

    .line 114
    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p0, p1, v0, v1}, Lcn/sharesdk/system/text/login/gui/CountryListView;->a(Landroid/view/ViewGroup;FF)V

    goto :goto_9

    .line 117
    .restart local p1    # "v":Landroid/view/View;
    :pswitch_22
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 118
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 119
    check-cast p1, Landroid/view/ViewGroup;

    .line 120
    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p0, p1, v0, v1}, Lcn/sharesdk/system/text/login/gui/CountryListView;->a(Landroid/view/ViewGroup;FF)V

    goto :goto_9

    .line 124
    .restart local p1    # "v":Landroid/view/View;
    :pswitch_30
    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcn/sharesdk/system/text/login/utils/e;->a(FI)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 125
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/CountryListView;->b:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_9

    .line 108
    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_b
        :pswitch_30
        :pswitch_22
        :pswitch_30
    .end packed-switch
.end method
