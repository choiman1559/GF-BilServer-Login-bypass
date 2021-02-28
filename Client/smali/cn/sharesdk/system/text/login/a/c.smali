.class public Lcn/sharesdk/system/text/login/a/c;
.super Ljava/lang/Object;
.source "IdentifyNumPageLayout.java"


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Lcn/sharesdk/system/text/login/utils/b;

.field private c:Lcn/sharesdk/system/text/login/utils/b;

.field private d:Lcn/sharesdk/system/text/login/utils/b;

.field private e:Lcn/sharesdk/system/text/login/utils/b;

.field private f:Lcn/sharesdk/system/text/login/utils/b;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/Button;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcn/sharesdk/system/text/login/a/c;->k:Landroid/content/Context;

    .line 43
    return-void
.end method

.method static synthetic a(Lcn/sharesdk/system/text/login/a/c;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcn/sharesdk/system/text/login/a/c;->k:Landroid/content/Context;

    return-object v0
.end method

.method private i()V
    .registers 12

    .prologue
    const/4 v5, 0x1

    const/16 v10, 0x18

    const/4 v9, -0x2

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 51
    iget-object v0, p0, Lcn/sharesdk/system/text/login/a/c;->k:Landroid/content/Context;

    invoke-static {v0}, Lcn/sharesdk/system/text/login/utils/d;->a(Landroid/content/Context;)V

    .line 52
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/sharesdk/system/text/login/a/c;->k:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/sharesdk/system/text/login/a/c;->a:Landroid/widget/LinearLayout;

    .line 53
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 54
    iget-object v1, p0, Lcn/sharesdk/system/text/login/a/c;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    iget-object v0, p0, Lcn/sharesdk/system/text/login/a/c;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 56
    iget-object v0, p0, Lcn/sharesdk/system/text/login/a/c;->a:Landroid/widget/LinearLayout;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 57
    iget-object v0, p0, Lcn/sharesdk/system/text/login/a/c;->a:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcn/sharesdk/system/text/login/a/c;->j()Lcn/sharesdk/framework/TitleLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 59
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/sharesdk/system/text/login/a/c;->k:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 60
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 61
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 63
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 64
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 65
    const/16 v1, 0x1e

    invoke-static {v1}, Lcn/sharesdk/system/text/login/utils/d;->b(I)I

    move-result v1

    .line 66
    invoke-virtual {v0, v1, v7, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 67
    iget-object v2, p0, Lcn/sharesdk/system/text/login/a/c;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 69
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcn/sharesdk/system/text/login/a/c;->k:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 70
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 71
    const/16 v4, 0x11

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 72
    invoke-virtual {v2, v7, v1, v7, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 73
    iget-object v1, p0, Lcn/sharesdk/system/text/login/a/c;->k:Landroid/content/Context;

    const-string v4, "ssdk_sms_top_identify_text"

    invoke-static {v1, v4}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 74
    if-lez v1, :cond_7a

    .line 75
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 77
    :cond_7a
    const/high16 v1, -0x1000000

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 78
    const/16 v1, 0x23

    invoke-static {v1}, Lcn/sharesdk/system/text/login/utils/d;->b(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v2, v7, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 79
    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcn/sharesdk/system/text/login/a/c;->k:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 82
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 83
    const/16 v3, 0xa

    invoke-static {v3}, Lcn/sharesdk/system/text/login/utils/d;->b(I)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 84
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    new-instance v2, Lcn/sharesdk/system/text/login/utils/b;

    iget-object v3, p0, Lcn/sharesdk/system/text/login/a/c;->k:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcn/sharesdk/system/text/login/utils/b;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcn/sharesdk/system/text/login/a/c;->b:Lcn/sharesdk/system/text/login/utils/b;

    .line 86
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v7, v9, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 87
    iget-object v3, p0, Lcn/sharesdk/system/text/login/a/c;->b:Lcn/sharesdk/system/text/login/utils/b;

    invoke-virtual {v3, v2}, Lcn/sharesdk/system/text/login/utils/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    const/16 v2, 0x14

    invoke-static {v2}, Lcn/sharesdk/system/text/login/utils/d;->b(I)I

    move-result v2

    .line 89
    iget-object v3, p0, Lcn/sharesdk/system/text/login/a/c;->b:Lcn/sharesdk/system/text/login/utils/b;

    invoke-virtual {v3, v7, v2, v7, v2}, Lcn/sharesdk/system/text/login/utils/b;->setPadding(IIII)V

    .line 90
    iget-object v3, p0, Lcn/sharesdk/system/text/login/a/c;->b:Lcn/sharesdk/system/text/login/utils/b;

    invoke-virtual {v3, v8}, Lcn/sharesdk/system/text/login/utils/b;->setBackgroundColor(I)V

    .line 91
    iget-object v3, p0, Lcn/sharesdk/system/text/login/a/c;->k:Landroid/content/Context;

    const-string v4, "ssdk_sms_phone"

    invoke-static {v3, v4}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 92
    if-lez v3, :cond_d7

    .line 93
    iget-object v4, p0, Lcn/sharesdk/system/text/login/a/c;->b:Lcn/sharesdk/system/text/login/utils/b;

    invoke-virtual {v4, v3}, Lcn/sharesdk/system/text/login/utils/b;->setText(I)V

    .line 95
    :cond_d7
    iget-object v3, p0, Lcn/sharesdk/system/text/login/a/c;->b:Lcn/sharesdk/system/text/login/utils/b;

    invoke-static {v10}, Lcn/sharesdk/system/text/login/utils/d;->b(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v7, v4}, Lcn/sharesdk/system/text/login/utils/b;->setTextSize(IF)V

    .line 96
    iget-object v3, p0, Lcn/sharesdk/system/text/login/a/c;->b:Lcn/sharesdk/system/text/login/utils/b;

    invoke-virtual {v3, v7}, Lcn/sharesdk/system/text/login/utils/b;->setFocusable(Z)V

    .line 97
    new-instance v3, Lcn/sharesdk/system/text/login/utils/b;

    iget-object v4, p0, Lcn/sharesdk/system/text/login/a/c;->k:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcn/sharesdk/system/text/login/utils/b;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcn/sharesdk/system/text/login/a/c;->c:Lcn/sharesdk/system/text/login/utils/b;

    .line 98
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x40400000    # 3.0f

    invoke-direct {v3, v7, v9, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 99
    iget-object v4, p0, Lcn/sharesdk/system/text/login/a/c;->c:Lcn/sharesdk/system/text/login/utils/b;

    invoke-virtual {v4, v3}, Lcn/sharesdk/system/text/login/utils/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    iget-object v3, p0, Lcn/sharesdk/system/text/login/a/c;->c:Lcn/sharesdk/system/text/login/utils/b;

    invoke-virtual {v3, v7, v2, v7, v2}, Lcn/sharesdk/system/text/login/utils/b;->setPadding(IIII)V

    .line 101
    iget-object v3, p0, Lcn/sharesdk/system/text/login/a/c;->c:Lcn/sharesdk/system/text/login/utils/b;

    invoke-virtual {v3, v8}, Lcn/sharesdk/system/text/login/utils/b;->setBackgroundColor(I)V

    .line 102
    iget-object v3, p0, Lcn/sharesdk/system/text/login/a/c;->c:Lcn/sharesdk/system/text/login/utils/b;

    invoke-static {v10}, Lcn/sharesdk/system/text/login/utils/d;->b(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v7, v4}, Lcn/sharesdk/system/text/login/utils/b;->setTextSize(IF)V

    .line 103
    iget-object v3, p0, Lcn/sharesdk/system/text/login/a/c;->c:Lcn/sharesdk/system/text/login/utils/b;

    invoke-virtual {v3, v7}, Lcn/sharesdk/system/text/login/utils/b;->setFocusable(Z)V

    .line 104
    iget-object v3, p0, Lcn/sharesdk/system/text/login/a/c;->b:Lcn/sharesdk/system/text/login/utils/b;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 105
    iget-object v3, p0, Lcn/sharesdk/system/text/login/a/c;->c:Lcn/sharesdk/system/text/login/utils/b;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 106
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 108
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcn/sharesdk/system/text/login/a/c;->k:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 109
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 110
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    const/16 v4, 0x1e

    invoke-static {v4}, Lcn/sharesdk/system/text/login/utils/d;->b(I)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 113
    new-instance v3, Lcn/sharesdk/system/text/login/utils/b;

    iget-object v4, p0, Lcn/sharesdk/system/text/login/a/c;->k:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcn/sharesdk/system/text/login/utils/b;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcn/sharesdk/system/text/login/a/c;->d:Lcn/sharesdk/system/text/login/utils/b;

    .line 114
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v3, v7, v9, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 115
    iget-object v4, p0, Lcn/sharesdk/system/text/login/a/c;->d:Lcn/sharesdk/system/text/login/utils/b;

    invoke-virtual {v4, v3}, Lcn/sharesdk/system/text/login/utils/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    iget-object v3, p0, Lcn/sharesdk/system/text/login/a/c;->d:Lcn/sharesdk/system/text/login/utils/b;

    invoke-virtual {v3, v7, v2, v7, v2}, Lcn/sharesdk/system/text/login/utils/b;->setPadding(IIII)V

    .line 117
    iget-object v3, p0, Lcn/sharesdk/system/text/login/a/c;->d:Lcn/sharesdk/system/text/login/utils/b;

    invoke-virtual {v3, v8}, Lcn/sharesdk/system/text/login/utils/b;->setBackgroundColor(I)V

    .line 118
    iget-object v3, p0, Lcn/sharesdk/system/text/login/a/c;->d:Lcn/sharesdk/system/text/login/utils/b;

    invoke-virtual {v3, v7}, Lcn/sharesdk/system/text/login/utils/b;->setFocusable(Z)V

    .line 119
    iget-object v3, p0, Lcn/sharesdk/system/text/login/a/c;->k:Landroid/content/Context;

    const-string v4, "ssdk_sms_code"

    invoke-static {v3, v4}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 120
    if-lez v3, :cond_16b

    .line 121
    iget-object v4, p0, Lcn/sharesdk/system/text/login/a/c;->d:Lcn/sharesdk/system/text/login/utils/b;

    invoke-virtual {v4, v3}, Lcn/sharesdk/system/text/login/utils/b;->setText(I)V

    .line 123
    :cond_16b
    iget-object v3, p0, Lcn/sharesdk/system/text/login/a/c;->d:Lcn/sharesdk/system/text/login/utils/b;

    invoke-static {v10}, Lcn/sharesdk/system/text/login/utils/d;->b(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v7, v4}, Lcn/sharesdk/system/text/login/utils/b;->setTextSize(IF)V

    .line 125
    new-instance v3, Lcn/sharesdk/system/text/login/utils/b;

    iget-object v4, p0, Lcn/sharesdk/system/text/login/a/c;->k:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcn/sharesdk/system/text/login/utils/b;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcn/sharesdk/system/text/login/a/c;->e:Lcn/sharesdk/system/text/login/utils/b;

    .line 126
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3fc00000    # 1.5f

    invoke-direct {v3, v7, v9, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 127
    iget-object v4, p0, Lcn/sharesdk/system/text/login/a/c;->e:Lcn/sharesdk/system/text/login/utils/b;

    invoke-virtual {v4, v3}, Lcn/sharesdk/system/text/login/utils/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    iget-object v3, p0, Lcn/sharesdk/system/text/login/a/c;->e:Lcn/sharesdk/system/text/login/utils/b;

    invoke-virtual {v3, v7, v2, v7, v2}, Lcn/sharesdk/system/text/login/utils/b;->setPadding(IIII)V

    .line 129
    iget-object v3, p0, Lcn/sharesdk/system/text/login/a/c;->e:Lcn/sharesdk/system/text/login/utils/b;

    invoke-virtual {v3, v8}, Lcn/sharesdk/system/text/login/utils/b;->setBackgroundColor(I)V

    .line 130
    iget-object v3, p0, Lcn/sharesdk/system/text/login/a/c;->k:Landroid/content/Context;

    const-string v4, "ssdk_sms_input_code_hint"

    invoke-static {v3, v4}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 131
    if-lez v3, :cond_1a3

    .line 132
    iget-object v4, p0, Lcn/sharesdk/system/text/login/a/c;->e:Lcn/sharesdk/system/text/login/utils/b;

    invoke-virtual {v4, v3}, Lcn/sharesdk/system/text/login/utils/b;->setHint(I)V

    .line 134
    :cond_1a3
    iget-object v3, p0, Lcn/sharesdk/system/text/login/a/c;->e:Lcn/sharesdk/system/text/login/utils/b;

    invoke-static {v10}, Lcn/sharesdk/system/text/login/utils/d;->b(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v7, v4}, Lcn/sharesdk/system/text/login/utils/b;->setTextSize(IF)V

    .line 135
    iget-object v3, p0, Lcn/sharesdk/system/text/login/a/c;->e:Lcn/sharesdk/system/text/login/utils/b;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcn/sharesdk/system/text/login/utils/b;->setInputType(I)V

    .line 136
    iget-object v3, p0, Lcn/sharesdk/system/text/login/a/c;->e:Lcn/sharesdk/system/text/login/utils/b;

    new-array v4, v5, [Landroid/text/InputFilter;

    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    const/4 v6, 0x4

    invoke-direct {v5, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v5, v4, v7

    invoke-virtual {v3, v4}, Lcn/sharesdk/system/text/login/utils/b;->setFilters([Landroid/text/InputFilter;)V

    .line 139
    new-instance v3, Lcn/sharesdk/system/text/login/utils/b;

    iget-object v4, p0, Lcn/sharesdk/system/text/login/a/c;->k:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcn/sharesdk/system/text/login/utils/b;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcn/sharesdk/system/text/login/a/c;->f:Lcn/sharesdk/system/text/login/utils/b;

    .line 140
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3fc00000    # 1.5f

    invoke-direct {v3, v7, v9, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 141
    iget-object v4, p0, Lcn/sharesdk/system/text/login/a/c;->f:Lcn/sharesdk/system/text/login/utils/b;

    const/16 v5, 0x15

    invoke-virtual {v4, v5}, Lcn/sharesdk/system/text/login/utils/b;->setGravity(I)V

    .line 142
    iget-object v4, p0, Lcn/sharesdk/system/text/login/a/c;->f:Lcn/sharesdk/system/text/login/utils/b;

    invoke-virtual {v4, v3}, Lcn/sharesdk/system/text/login/utils/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    iget-object v3, p0, Lcn/sharesdk/system/text/login/a/c;->f:Lcn/sharesdk/system/text/login/utils/b;

    invoke-virtual {v3, v7, v2, v7, v2}, Lcn/sharesdk/system/text/login/utils/b;->setPadding(IIII)V

    .line 144
    iget-object v2, p0, Lcn/sharesdk/system/text/login/a/c;->f:Lcn/sharesdk/system/text/login/utils/b;

    invoke-virtual {v2, v8}, Lcn/sharesdk/system/text/login/utils/b;->setBackgroundColor(I)V

    .line 145
    iget-object v2, p0, Lcn/sharesdk/system/text/login/a/c;->k:Landroid/content/Context;

    const-string v3, "ssdk_sms_send_again"

    invoke-static {v2, v3}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 146
    if-lez v2, :cond_1f7

    .line 147
    iget-object v3, p0, Lcn/sharesdk/system/text/login/a/c;->f:Lcn/sharesdk/system/text/login/utils/b;

    invoke-virtual {v3, v2}, Lcn/sharesdk/system/text/login/utils/b;->setText(I)V

    .line 149
    :cond_1f7
    iget-object v2, p0, Lcn/sharesdk/system/text/login/a/c;->f:Lcn/sharesdk/system/text/login/utils/b;

    invoke-static {v10}, Lcn/sharesdk/system/text/login/utils/d;->b(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v7, v3}, Lcn/sharesdk/system/text/login/utils/b;->setTextSize(IF)V

    .line 150
    iget-object v2, p0, Lcn/sharesdk/system/text/login/a/c;->f:Lcn/sharesdk/system/text/login/utils/b;

    invoke-virtual {v2, v7}, Lcn/sharesdk/system/text/login/utils/b;->setFocusable(Z)V

    .line 152
    iget-object v2, p0, Lcn/sharesdk/system/text/login/a/c;->d:Lcn/sharesdk/system/text/login/utils/b;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 153
    iget-object v2, p0, Lcn/sharesdk/system/text/login/a/c;->e:Lcn/sharesdk/system/text/login/utils/b;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 154
    iget-object v2, p0, Lcn/sharesdk/system/text/login/a/c;->f:Lcn/sharesdk/system/text/login/utils/b;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 155
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 157
    new-instance v1, Landroid/widget/Button;

    iget-object v2, p0, Lcn/sharesdk/system/text/login/a/c;->k:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/sharesdk/system/text/login/a/c;->h:Landroid/widget/Button;

    .line 158
    new-instance v1, Lcom/mob/tools/gui/RoundRectLayout;

    iget-object v2, p0, Lcn/sharesdk/system/text/login/a/c;->k:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/mob/tools/gui/RoundRectLayout;-><init>(Landroid/content/Context;)V

    .line 159
    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v1, v2}, Lcom/mob/tools/gui/RoundRectLayout;->setRound(F)V

    .line 160
    const/16 v2, 0x14

    invoke-static {v2}, Lcn/sharesdk/system/text/login/utils/d;->b(I)I

    .line 161
    iget-object v2, p0, Lcn/sharesdk/system/text/login/a/c;->h:Landroid/widget/Button;

    const v3, -0xa33ba6

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 162
    iget-object v2, p0, Lcn/sharesdk/system/text/login/a/c;->h:Landroid/widget/Button;

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setTextColor(I)V

    .line 163
    iget-object v2, p0, Lcn/sharesdk/system/text/login/a/c;->k:Landroid/content/Context;

    const-string v3, "ssdk_sms_btn_submit"

    invoke-static {v2, v3}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 164
    if-lez v2, :cond_24e

    .line 165
    iget-object v3, p0, Lcn/sharesdk/system/text/login/a/c;->h:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setText(I)V

    .line 167
    :cond_24e
    iget-object v2, p0, Lcn/sharesdk/system/text/login/a/c;->h:Landroid/widget/Button;

    invoke-static {v10}, Lcn/sharesdk/system/text/login/utils/d;->b(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v7, v3}, Landroid/widget/Button;->setTextSize(IF)V

    .line 168
    iget-object v2, p0, Lcn/sharesdk/system/text/login/a/c;->h:Landroid/widget/Button;

    new-instance v3, Lcn/sharesdk/system/text/login/a/c$1;

    invoke-direct {v3, p0}, Lcn/sharesdk/system/text/login/a/c$1;-><init>(Lcn/sharesdk/system/text/login/a/c;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 179
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 180
    const/16 v3, 0xa

    invoke-static {v3}, Lcn/sharesdk/system/text/login/utils/d;->b(I)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 181
    iget-object v3, p0, Lcn/sharesdk/system/text/login/a/c;->h:Landroid/widget/Button;

    invoke-virtual {v1, v3, v2}, Lcom/mob/tools/gui/RoundRectLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcn/sharesdk/system/text/login/a/c;->k:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/sharesdk/system/text/login/a/c;->g:Landroid/widget/TextView;

    .line 185
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 186
    iget-object v2, p0, Lcn/sharesdk/system/text/login/a/c;->g:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 187
    const/16 v2, 0x14

    invoke-static {v2}, Lcn/sharesdk/system/text/login/utils/d;->b(I)I

    move-result v2

    .line 188
    iget-object v3, p0, Lcn/sharesdk/system/text/login/a/c;->g:Landroid/widget/TextView;

    invoke-virtual {v3, v7, v2, v7, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 189
    iget-object v2, p0, Lcn/sharesdk/system/text/login/a/c;->k:Landroid/content/Context;

    const-string v3, "ssdk_sms_input_voice_code"

    invoke-static {v2, v3}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 190
    if-lez v2, :cond_2b0

    .line 191
    iget-object v3, p0, Lcn/sharesdk/system/text/login/a/c;->k:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 192
    iget-object v3, p0, Lcn/sharesdk/system/text/login/a/c;->g:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    :cond_2b0
    iget-object v2, p0, Lcn/sharesdk/system/text/login/a/c;->g:Landroid/widget/TextView;

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 195
    iget-object v2, p0, Lcn/sharesdk/system/text/login/a/c;->g:Landroid/widget/TextView;

    invoke-static {v10}, Lcn/sharesdk/system/text/login/utils/d;->b(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v7, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 196
    iget-object v2, p0, Lcn/sharesdk/system/text/login/a/c;->g:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 197
    iget-object v2, p0, Lcn/sharesdk/system/text/login/a/c;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    new-instance v1, Landroid/widget/Button;

    iget-object v2, p0, Lcn/sharesdk/system/text/login/a/c;->k:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/sharesdk/system/text/login/a/c;->i:Landroid/widget/Button;

    .line 200
    new-instance v1, Lcom/mob/tools/gui/RoundRectLayout;

    iget-object v2, p0, Lcn/sharesdk/system/text/login/a/c;->k:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/mob/tools/gui/RoundRectLayout;-><init>(Landroid/content/Context;)V

    .line 201
    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v1, v2}, Lcom/mob/tools/gui/RoundRectLayout;->setRound(F)V

    .line 202
    const/16 v2, 0x14

    invoke-static {v2}, Lcn/sharesdk/system/text/login/utils/d;->b(I)I

    .line 203
    iget-object v2, p0, Lcn/sharesdk/system/text/login/a/c;->i:Landroid/widget/Button;

    const v3, -0xa33ba6

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 204
    iget-object v2, p0, Lcn/sharesdk/system/text/login/a/c;->i:Landroid/widget/Button;

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setTextColor(I)V

    .line 205
    iget-object v2, p0, Lcn/sharesdk/system/text/login/a/c;->k:Landroid/content/Context;

    const-string v3, "ssdk_sms_btn_sende_voice"

    invoke-static {v2, v3}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 206
    if-lez v2, :cond_303

    .line 207
    iget-object v3, p0, Lcn/sharesdk/system/text/login/a/c;->i:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setText(I)V

    .line 209
    :cond_303
    iget-object v2, p0, Lcn/sharesdk/system/text/login/a/c;->i:Landroid/widget/Button;

    invoke-static {v10}, Lcn/sharesdk/system/text/login/utils/d;->b(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v7, v3}, Landroid/widget/Button;->setTextSize(IF)V

    .line 210
    iget-object v2, p0, Lcn/sharesdk/system/text/login/a/c;->i:Landroid/widget/Button;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 211
    iget-object v2, p0, Lcn/sharesdk/system/text/login/a/c;->i:Landroid/widget/Button;

    new-instance v3, Lcn/sharesdk/system/text/login/a/c$2;

    invoke-direct {v3, p0}, Lcn/sharesdk/system/text/login/a/c$2;-><init>(Lcn/sharesdk/system/text/login/a/c;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 222
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 223
    const/16 v3, 0xa

    invoke-static {v3}, Lcn/sharesdk/system/text/login/utils/d;->b(I)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 224
    iget-object v3, p0, Lcn/sharesdk/system/text/login/a/c;->i:Landroid/widget/Button;

    invoke-virtual {v1, v3, v2}, Lcom/mob/tools/gui/RoundRectLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 225
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 226
    return-void
.end method

.method private j()Lcn/sharesdk/framework/TitleLayout;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 229
    new-instance v1, Lcn/sharesdk/framework/TitleLayout;

    iget-object v0, p0, Lcn/sharesdk/system/text/login/a/c;->k:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcn/sharesdk/framework/TitleLayout;-><init>(Landroid/content/Context;)V

    .line 231
    :try_start_8
    iget-object v0, p0, Lcn/sharesdk/system/text/login/a/c;->k:Landroid/content/Context;

    const-string v2, "ssdk_auth_title_back"

    invoke-static {v0, v2}, Lcom/mob/tools/utils/ResHelper;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 232
    if-lez v0, :cond_15

    .line 233
    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/TitleLayout;->setBackgroundResource(I)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_15} :catch_6f

    .line 238
    :cond_15
    :goto_15
    invoke-virtual {v1}, Lcn/sharesdk/framework/TitleLayout;->getBtnBack()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/system/text/login/a/c;->j:Landroid/widget/ImageView;

    .line 240
    invoke-virtual {v1}, Lcn/sharesdk/framework/TitleLayout;->getBtnRight()Landroid/widget/TextView;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 241
    iget-object v0, p0, Lcn/sharesdk/system/text/login/a/c;->k:Landroid/content/Context;

    const-string v2, "ssdk_sms_login"

    invoke-static {v0, v2}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 242
    if-lez v0, :cond_35

    .line 243
    invoke-virtual {v1}, Lcn/sharesdk/framework/TitleLayout;->getTvTitle()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 246
    :cond_35
    new-instance v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcn/sharesdk/system/text/login/a/c;->k:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 247
    iget-object v2, p0, Lcn/sharesdk/system/text/login/a/c;->k:Landroid/content/Context;

    const-string v3, "ssdk_logo"

    invoke-static {v2, v3}, Lcom/mob/tools/utils/ResHelper;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 248
    if-lez v2, :cond_49

    .line 249
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 251
    :cond_49
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 252
    iget-object v2, p0, Lcn/sharesdk/system/text/login/a/c;->k:Landroid/content/Context;

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lcom/mob/tools/utils/ResHelper;->dipToPx(Landroid/content/Context;I)I

    move-result v2

    .line 253
    invoke-virtual {v0, v4, v4, v2, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 254
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 255
    new-instance v2, Lcn/sharesdk/system/text/login/a/c$3;

    invoke-direct {v2, p0}, Lcn/sharesdk/system/text/login/a/c$3;-><init>(Lcn/sharesdk/system/text/login/a/c;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/TitleLayout;->addView(Landroid/view/View;)V

    .line 274
    return-object v1

    .line 235
    :catch_6f
    move-exception v0

    .line 236
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_15
.end method


# virtual methods
.method public a()Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 46
    invoke-direct {p0}, Lcn/sharesdk/system/text/login/a/c;->i()V

    .line 47
    iget-object v0, p0, Lcn/sharesdk/system/text/login/a/c;->a:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public b()Lcn/sharesdk/system/text/login/utils/b;
    .registers 2

    .prologue
    .line 278
    iget-object v0, p0, Lcn/sharesdk/system/text/login/a/c;->c:Lcn/sharesdk/system/text/login/utils/b;

    return-object v0
.end method

.method public c()Lcn/sharesdk/system/text/login/utils/b;
    .registers 2

    .prologue
    .line 282
    iget-object v0, p0, Lcn/sharesdk/system/text/login/a/c;->e:Lcn/sharesdk/system/text/login/utils/b;

    return-object v0
.end method

.method public d()Lcn/sharesdk/system/text/login/utils/b;
    .registers 2

    .prologue
    .line 286
    iget-object v0, p0, Lcn/sharesdk/system/text/login/a/c;->f:Lcn/sharesdk/system/text/login/utils/b;

    return-object v0
.end method

.method public e()Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 290
    iget-object v0, p0, Lcn/sharesdk/system/text/login/a/c;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method public f()Landroid/widget/Button;
    .registers 2

    .prologue
    .line 294
    iget-object v0, p0, Lcn/sharesdk/system/text/login/a/c;->h:Landroid/widget/Button;

    return-object v0
.end method

.method public g()Landroid/widget/Button;
    .registers 2

    .prologue
    .line 298
    iget-object v0, p0, Lcn/sharesdk/system/text/login/a/c;->i:Landroid/widget/Button;

    return-object v0
.end method

.method public h()Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 302
    iget-object v0, p0, Lcn/sharesdk/system/text/login/a/c;->j:Landroid/widget/ImageView;

    return-object v0
.end method
