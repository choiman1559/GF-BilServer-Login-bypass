.class public Lcn/sharesdk/system/text/login/a/d;
.super Ljava/lang/Object;
.source "InputPhoneNumPageLayout.java"


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Lcn/sharesdk/system/text/login/utils/b;

.field private c:Lcn/sharesdk/system/text/login/utils/b;

.field private d:Lcn/sharesdk/system/text/login/utils/b;

.field private e:Lcn/sharesdk/system/text/login/utils/b;

.field private f:Lcn/sharesdk/system/text/login/utils/b;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcn/sharesdk/system/text/login/a/d;->i:Landroid/content/Context;

    .line 39
    return-void
.end method

.method static synthetic a(Lcn/sharesdk/system/text/login/a/d;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcn/sharesdk/system/text/login/a/d;->i:Landroid/content/Context;

    return-object v0
.end method

.method private h()V
    .registers 12

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    const/16 v9, 0x18

    const/4 v8, -0x2

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 48
    iget-object v0, p0, Lcn/sharesdk/system/text/login/a/d;->i:Landroid/content/Context;

    invoke-static {v0}, Lcn/sharesdk/system/text/login/utils/d;->a(Landroid/content/Context;)V

    .line 49
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/sharesdk/system/text/login/a/d;->i:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/sharesdk/system/text/login/a/d;->a:Landroid/widget/LinearLayout;

    .line 50
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 51
    iget-object v1, p0, Lcn/sharesdk/system/text/login/a/d;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    iget-object v0, p0, Lcn/sharesdk/system/text/login/a/d;->a:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 54
    iget-object v0, p0, Lcn/sharesdk/system/text/login/a/d;->a:Landroid/widget/LinearLayout;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 55
    iget-object v0, p0, Lcn/sharesdk/system/text/login/a/d;->a:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcn/sharesdk/system/text/login/a/d;->i()Lcn/sharesdk/framework/TitleLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 57
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/sharesdk/system/text/login/a/d;->i:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 58
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 59
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 60
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 62
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 63
    const/16 v1, 0x1e

    invoke-static {v1}, Lcn/sharesdk/system/text/login/utils/d;->b(I)I

    move-result v1

    .line 64
    invoke-virtual {v0, v1, v6, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 65
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 66
    iget-object v2, p0, Lcn/sharesdk/system/text/login/a/d;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 68
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcn/sharesdk/system/text/login/a/d;->i:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 69
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 70
    const/16 v4, 0x11

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 71
    invoke-virtual {v2, v6, v1, v6, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 72
    iget-object v1, p0, Lcn/sharesdk/system/text/login/a/d;->i:Landroid/content/Context;

    const-string v4, "ssdk_sms_top_text"

    invoke-static {v1, v4}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 73
    if-lez v1, :cond_81

    .line 74
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 76
    :cond_81
    const v1, -0xd5d4d0

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 77
    const/16 v1, 0x20

    invoke-static {v1}, Lcn/sharesdk/system/text/login/utils/d;->b(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v2, v6, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 78
    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcn/sharesdk/system/text/login/a/d;->i:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 82
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 83
    const/16 v3, 0xa

    invoke-static {v3}, Lcn/sharesdk/system/text/login/utils/d;->b(I)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 84
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    new-instance v2, Lcn/sharesdk/system/text/login/utils/b;

    iget-object v3, p0, Lcn/sharesdk/system/text/login/a/d;->i:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcn/sharesdk/system/text/login/utils/b;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcn/sharesdk/system/text/login/a/d;->b:Lcn/sharesdk/system/text/login/utils/b;

    .line 86
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v6, v8, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 87
    const/16 v3, 0x14

    invoke-static {v3}, Lcn/sharesdk/system/text/login/utils/d;->b(I)I

    move-result v3

    .line 88
    iget-object v4, p0, Lcn/sharesdk/system/text/login/a/d;->b:Lcn/sharesdk/system/text/login/utils/b;

    invoke-virtual {v4, v6, v3, v6, v3}, Lcn/sharesdk/system/text/login/utils/b;->setPadding(IIII)V

    .line 89
    iget-object v4, p0, Lcn/sharesdk/system/text/login/a/d;->b:Lcn/sharesdk/system/text/login/utils/b;

    invoke-virtual {v4, v2}, Lcn/sharesdk/system/text/login/utils/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    iget-object v2, p0, Lcn/sharesdk/system/text/login/a/d;->b:Lcn/sharesdk/system/text/login/utils/b;

    invoke-virtual {v2, v6}, Lcn/sharesdk/system/text/login/utils/b;->setFocusable(Z)V

    .line 91
    iget-object v2, p0, Lcn/sharesdk/system/text/login/a/d;->b:Lcn/sharesdk/system/text/login/utils/b;

    invoke-virtual {v2, v7}, Lcn/sharesdk/system/text/login/utils/b;->setBackgroundColor(I)V

    .line 92
    iget-object v2, p0, Lcn/sharesdk/system/text/login/a/d;->i:Landroid/content/Context;

    const-string v4, "ssdk_sms_zone"

    invoke-static {v2, v4}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 93
    if-lez v2, :cond_e2

    .line 94
    iget-object v4, p0, Lcn/sharesdk/system/text/login/a/d;->b:Lcn/sharesdk/system/text/login/utils/b;

    invoke-virtual {v4, v2}, Lcn/sharesdk/system/text/login/utils/b;->setText(I)V

    .line 96
    :cond_e2
    iget-object v2, p0, Lcn/sharesdk/system/text/login/a/d;->b:Lcn/sharesdk/system/text/login/utils/b;

    invoke-static {v9}, Lcn/sharesdk/system/text/login/utils/d;->b(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v6, v4}, Lcn/sharesdk/system/text/login/utils/b;->setTextSize(IF)V

    .line 97
    new-instance v2, Lcn/sharesdk/system/text/login/utils/b;

    iget-object v4, p0, Lcn/sharesdk/system/text/login/a/d;->i:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcn/sharesdk/system/text/login/utils/b;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcn/sharesdk/system/text/login/a/d;->c:Lcn/sharesdk/system/text/login/utils/b;

    .line 98
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x40000000    # 2.0f

    invoke-direct {v2, v6, v8, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 99
    iget-object v4, p0, Lcn/sharesdk/system/text/login/a/d;->c:Lcn/sharesdk/system/text/login/utils/b;

    invoke-virtual {v4, v2}, Lcn/sharesdk/system/text/login/utils/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    iget-object v2, p0, Lcn/sharesdk/system/text/login/a/d;->c:Lcn/sharesdk/system/text/login/utils/b;

    invoke-virtual {v2, v6, v3, v6, v3}, Lcn/sharesdk/system/text/login/utils/b;->setPadding(IIII)V

    .line 101
    iget-object v2, p0, Lcn/sharesdk/system/text/login/a/d;->c:Lcn/sharesdk/system/text/login/utils/b;

    invoke-virtual {v2, v6}, Lcn/sharesdk/system/text/login/utils/b;->setFocusable(Z)V

    .line 102
    iget-object v2, p0, Lcn/sharesdk/system/text/login/a/d;->c:Lcn/sharesdk/system/text/login/utils/b;

    invoke-virtual {v2, v7}, Lcn/sharesdk/system/text/login/utils/b;->setBackgroundColor(I)V

    .line 103
    iget-object v2, p0, Lcn/sharesdk/system/text/login/a/d;->i:Landroid/content/Context;

    const-string v4, "ssdk_sms_china"

    invoke-static {v2, v4}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 104
    if-lez v2, :cond_11f

    .line 105
    iget-object v4, p0, Lcn/sharesdk/system/text/login/a/d;->c:Lcn/sharesdk/system/text/login/utils/b;

    invoke-virtual {v4, v2}, Lcn/sharesdk/system/text/login/utils/b;->setText(I)V

    .line 107
    :cond_11f
    iget-object v2, p0, Lcn/sharesdk/system/text/login/a/d;->c:Lcn/sharesdk/system/text/login/utils/b;

    const v4, -0x973aa1

    invoke-virtual {v2, v4}, Lcn/sharesdk/system/text/login/utils/b;->setTextColor(I)V

    .line 108
    iget-object v2, p0, Lcn/sharesdk/system/text/login/a/d;->c:Lcn/sharesdk/system/text/login/utils/b;

    invoke-static {v9}, Lcn/sharesdk/system/text/login/utils/d;->b(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v6, v4}, Lcn/sharesdk/system/text/login/utils/b;->setTextSize(IF)V

    .line 110
    new-instance v2, Lcn/sharesdk/system/text/login/utils/b;

    iget-object v4, p0, Lcn/sharesdk/system/text/login/a/d;->i:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcn/sharesdk/system/text/login/utils/b;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcn/sharesdk/system/text/login/a/d;->d:Lcn/sharesdk/system/text/login/utils/b;

    .line 111
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v6, v8, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 112
    iget-object v4, p0, Lcn/sharesdk/system/text/login/a/d;->d:Lcn/sharesdk/system/text/login/utils/b;

    const/16 v5, 0x15

    invoke-virtual {v4, v5}, Lcn/sharesdk/system/text/login/utils/b;->setGravity(I)V

    .line 113
    iget-object v4, p0, Lcn/sharesdk/system/text/login/a/d;->d:Lcn/sharesdk/system/text/login/utils/b;

    invoke-virtual {v4, v2}, Lcn/sharesdk/system/text/login/utils/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    iget-object v2, p0, Lcn/sharesdk/system/text/login/a/d;->d:Lcn/sharesdk/system/text/login/utils/b;

    invoke-virtual {v2, v6, v3, v6, v3}, Lcn/sharesdk/system/text/login/utils/b;->setPadding(IIII)V

    .line 115
    iget-object v2, p0, Lcn/sharesdk/system/text/login/a/d;->d:Lcn/sharesdk/system/text/login/utils/b;

    invoke-virtual {v2, v6}, Lcn/sharesdk/system/text/login/utils/b;->setFocusable(Z)V

    .line 116
    iget-object v2, p0, Lcn/sharesdk/system/text/login/a/d;->d:Lcn/sharesdk/system/text/login/utils/b;

    invoke-virtual {v2, v7}, Lcn/sharesdk/system/text/login/utils/b;->setBackgroundColor(I)V

    .line 117
    iget-object v2, p0, Lcn/sharesdk/system/text/login/a/d;->d:Lcn/sharesdk/system/text/login/utils/b;

    const-string v4, ">"

    invoke-virtual {v2, v4}, Lcn/sharesdk/system/text/login/utils/b;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v2, p0, Lcn/sharesdk/system/text/login/a/d;->d:Lcn/sharesdk/system/text/login/utils/b;

    const v4, -0x777778

    invoke-virtual {v2, v4}, Lcn/sharesdk/system/text/login/utils/b;->setTextColor(I)V

    .line 119
    iget-object v2, p0, Lcn/sharesdk/system/text/login/a/d;->d:Lcn/sharesdk/system/text/login/utils/b;

    invoke-static {v9}, Lcn/sharesdk/system/text/login/utils/d;->b(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v6, v4}, Lcn/sharesdk/system/text/login/utils/b;->setTextSize(IF)V

    .line 120
    iget-object v2, p0, Lcn/sharesdk/system/text/login/a/d;->b:Lcn/sharesdk/system/text/login/utils/b;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 121
    iget-object v2, p0, Lcn/sharesdk/system/text/login/a/d;->c:Lcn/sharesdk/system/text/login/utils/b;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 122
    iget-object v2, p0, Lcn/sharesdk/system/text/login/a/d;->d:Lcn/sharesdk/system/text/login/utils/b;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 123
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 126
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcn/sharesdk/system/text/login/a/d;->i:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 127
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 128
    const/16 v4, 0x1e

    invoke-static {v4}, Lcn/sharesdk/system/text/login/utils/d;->b(I)I

    move-result v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 129
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    new-instance v2, Lcn/sharesdk/system/text/login/utils/b;

    iget-object v4, p0, Lcn/sharesdk/system/text/login/a/d;->i:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcn/sharesdk/system/text/login/utils/b;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcn/sharesdk/system/text/login/a/d;->e:Lcn/sharesdk/system/text/login/utils/b;

    .line 131
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v6, v8, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 132
    iget-object v4, p0, Lcn/sharesdk/system/text/login/a/d;->e:Lcn/sharesdk/system/text/login/utils/b;

    invoke-virtual {v4, v2}, Lcn/sharesdk/system/text/login/utils/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    iget-object v2, p0, Lcn/sharesdk/system/text/login/a/d;->e:Lcn/sharesdk/system/text/login/utils/b;

    invoke-virtual {v2, v6, v3, v6, v3}, Lcn/sharesdk/system/text/login/utils/b;->setPadding(IIII)V

    .line 134
    iget-object v2, p0, Lcn/sharesdk/system/text/login/a/d;->e:Lcn/sharesdk/system/text/login/utils/b;

    invoke-virtual {v2, v7}, Lcn/sharesdk/system/text/login/utils/b;->setBackgroundColor(I)V

    .line 135
    iget-object v2, p0, Lcn/sharesdk/system/text/login/a/d;->e:Lcn/sharesdk/system/text/login/utils/b;

    const-string v4, "+86"

    invoke-virtual {v2, v4}, Lcn/sharesdk/system/text/login/utils/b;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v2, p0, Lcn/sharesdk/system/text/login/a/d;->e:Lcn/sharesdk/system/text/login/utils/b;

    invoke-static {v9}, Lcn/sharesdk/system/text/login/utils/d;->b(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v6, v4}, Lcn/sharesdk/system/text/login/utils/b;->setTextSize(IF)V

    .line 137
    iget-object v2, p0, Lcn/sharesdk/system/text/login/a/d;->e:Lcn/sharesdk/system/text/login/utils/b;

    invoke-virtual {v2, v6}, Lcn/sharesdk/system/text/login/utils/b;->setFocusable(Z)V

    .line 138
    new-instance v2, Lcn/sharesdk/system/text/login/utils/b;

    iget-object v4, p0, Lcn/sharesdk/system/text/login/a/d;->i:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcn/sharesdk/system/text/login/utils/b;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcn/sharesdk/system/text/login/a/d;->f:Lcn/sharesdk/system/text/login/utils/b;

    .line 139
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x40400000    # 3.0f

    invoke-direct {v2, v6, v8, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 140
    iget-object v4, p0, Lcn/sharesdk/system/text/login/a/d;->f:Lcn/sharesdk/system/text/login/utils/b;

    invoke-virtual {v4, v2}, Lcn/sharesdk/system/text/login/utils/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    iget-object v2, p0, Lcn/sharesdk/system/text/login/a/d;->f:Lcn/sharesdk/system/text/login/utils/b;

    invoke-virtual {v2, v6, v3, v6, v3}, Lcn/sharesdk/system/text/login/utils/b;->setPadding(IIII)V

    .line 142
    iget-object v2, p0, Lcn/sharesdk/system/text/login/a/d;->f:Lcn/sharesdk/system/text/login/utils/b;

    invoke-virtual {v2, v7}, Lcn/sharesdk/system/text/login/utils/b;->setBackgroundColor(I)V

    .line 143
    iget-object v2, p0, Lcn/sharesdk/system/text/login/a/d;->i:Landroid/content/Context;

    const-string v3, "ssdk_sms_input_phone_hint"

    invoke-static {v2, v3}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 144
    if-lez v2, :cond_1fd

    .line 145
    iget-object v3, p0, Lcn/sharesdk/system/text/login/a/d;->f:Lcn/sharesdk/system/text/login/utils/b;

    invoke-virtual {v3, v2}, Lcn/sharesdk/system/text/login/utils/b;->setHint(I)V

    .line 147
    :cond_1fd
    iget-object v2, p0, Lcn/sharesdk/system/text/login/a/d;->f:Lcn/sharesdk/system/text/login/utils/b;

    invoke-static {v9}, Lcn/sharesdk/system/text/login/utils/d;->b(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v6, v3}, Lcn/sharesdk/system/text/login/utils/b;->setTextSize(IF)V

    .line 148
    iget-object v2, p0, Lcn/sharesdk/system/text/login/a/d;->f:Lcn/sharesdk/system/text/login/utils/b;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcn/sharesdk/system/text/login/utils/b;->setInputType(I)V

    .line 149
    iget-object v2, p0, Lcn/sharesdk/system/text/login/a/d;->e:Lcn/sharesdk/system/text/login/utils/b;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 150
    iget-object v2, p0, Lcn/sharesdk/system/text/login/a/d;->f:Lcn/sharesdk/system/text/login/utils/b;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 151
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 153
    new-instance v1, Landroid/widget/Button;

    iget-object v2, p0, Lcn/sharesdk/system/text/login/a/d;->i:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/sharesdk/system/text/login/a/d;->g:Landroid/widget/Button;

    .line 154
    new-instance v1, Lcom/mob/tools/gui/RoundRectLayout;

    iget-object v2, p0, Lcn/sharesdk/system/text/login/a/d;->i:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/mob/tools/gui/RoundRectLayout;-><init>(Landroid/content/Context;)V

    .line 155
    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v1, v2}, Lcom/mob/tools/gui/RoundRectLayout;->setRound(F)V

    .line 156
    iget-object v2, p0, Lcn/sharesdk/system/text/login/a/d;->g:Landroid/widget/Button;

    const v3, -0xa33ba6

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 157
    iget-object v2, p0, Lcn/sharesdk/system/text/login/a/d;->g:Landroid/widget/Button;

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setTextColor(I)V

    .line 158
    iget-object v2, p0, Lcn/sharesdk/system/text/login/a/d;->g:Landroid/widget/Button;

    invoke-static {v9}, Lcn/sharesdk/system/text/login/utils/d;->b(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v6, v3}, Landroid/widget/Button;->setTextSize(IF)V

    .line 159
    iget-object v2, p0, Lcn/sharesdk/system/text/login/a/d;->i:Landroid/content/Context;

    const-string v3, "ssdk_sms_btn_next"

    invoke-static {v2, v3}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 160
    if-lez v2, :cond_255

    .line 161
    iget-object v3, p0, Lcn/sharesdk/system/text/login/a/d;->g:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setText(I)V

    .line 163
    :cond_255
    iget-object v2, p0, Lcn/sharesdk/system/text/login/a/d;->g:Landroid/widget/Button;

    new-instance v3, Lcn/sharesdk/system/text/login/a/d$1;

    invoke-direct {v3, p0}, Lcn/sharesdk/system/text/login/a/d$1;-><init>(Lcn/sharesdk/system/text/login/a/d;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 174
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 175
    const/16 v3, 0xa

    invoke-static {v3}, Lcn/sharesdk/system/text/login/utils/d;->b(I)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 177
    iget-object v3, p0, Lcn/sharesdk/system/text/login/a/d;->g:Landroid/widget/Button;

    invoke-virtual {v1, v3, v2}, Lcom/mob/tools/gui/RoundRectLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    return-void
.end method

.method private i()Lcn/sharesdk/framework/TitleLayout;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 182
    new-instance v1, Lcn/sharesdk/framework/TitleLayout;

    iget-object v0, p0, Lcn/sharesdk/system/text/login/a/d;->i:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcn/sharesdk/framework/TitleLayout;-><init>(Landroid/content/Context;)V

    .line 184
    :try_start_8
    iget-object v0, p0, Lcn/sharesdk/system/text/login/a/d;->i:Landroid/content/Context;

    const-string v2, "ssdk_auth_title_back"

    invoke-static {v0, v2}, Lcom/mob/tools/utils/ResHelper;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 185
    if-lez v0, :cond_15

    .line 186
    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/TitleLayout;->setBackgroundResource(I)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_15} :catch_6f

    .line 191
    :cond_15
    :goto_15
    invoke-virtual {v1}, Lcn/sharesdk/framework/TitleLayout;->getBtnBack()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/system/text/login/a/d;->h:Landroid/widget/ImageView;

    .line 192
    invoke-virtual {v1}, Lcn/sharesdk/framework/TitleLayout;->getBtnRight()Landroid/widget/TextView;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 193
    iget-object v0, p0, Lcn/sharesdk/system/text/login/a/d;->i:Landroid/content/Context;

    const-string v2, "ssdk_sms_login"

    invoke-static {v0, v2}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 194
    if-lez v0, :cond_35

    .line 195
    invoke-virtual {v1}, Lcn/sharesdk/framework/TitleLayout;->getTvTitle()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 198
    :cond_35
    new-instance v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcn/sharesdk/system/text/login/a/d;->i:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 199
    iget-object v2, p0, Lcn/sharesdk/system/text/login/a/d;->i:Landroid/content/Context;

    const-string v3, "ssdk_logo"

    invoke-static {v2, v3}, Lcom/mob/tools/utils/ResHelper;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 200
    if-lez v2, :cond_49

    .line 201
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 203
    :cond_49
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 204
    iget-object v2, p0, Lcn/sharesdk/system/text/login/a/d;->i:Landroid/content/Context;

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lcom/mob/tools/utils/ResHelper;->dipToPx(Landroid/content/Context;I)I

    move-result v2

    .line 205
    invoke-virtual {v0, v4, v4, v2, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 206
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    new-instance v2, Lcn/sharesdk/system/text/login/a/d$2;

    invoke-direct {v2, p0}, Lcn/sharesdk/system/text/login/a/d$2;-><init>(Lcn/sharesdk/system/text/login/a/d;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/TitleLayout;->addView(Landroid/view/View;)V

    .line 226
    return-object v1

    .line 188
    :catch_6f
    move-exception v0

    .line 189
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_15
.end method


# virtual methods
.method public a()Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 42
    invoke-direct {p0}, Lcn/sharesdk/system/text/login/a/d;->h()V

    .line 43
    iget-object v0, p0, Lcn/sharesdk/system/text/login/a/d;->a:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public b()Lcn/sharesdk/system/text/login/utils/b;
    .registers 2

    .prologue
    .line 230
    iget-object v0, p0, Lcn/sharesdk/system/text/login/a/d;->c:Lcn/sharesdk/system/text/login/utils/b;

    return-object v0
.end method

.method public c()Lcn/sharesdk/system/text/login/utils/b;
    .registers 2

    .prologue
    .line 234
    iget-object v0, p0, Lcn/sharesdk/system/text/login/a/d;->d:Lcn/sharesdk/system/text/login/utils/b;

    return-object v0
.end method

.method public d()Lcn/sharesdk/system/text/login/utils/b;
    .registers 2

    .prologue
    .line 238
    iget-object v0, p0, Lcn/sharesdk/system/text/login/a/d;->e:Lcn/sharesdk/system/text/login/utils/b;

    return-object v0
.end method

.method public e()Lcn/sharesdk/system/text/login/utils/b;
    .registers 2

    .prologue
    .line 242
    iget-object v0, p0, Lcn/sharesdk/system/text/login/a/d;->f:Lcn/sharesdk/system/text/login/utils/b;

    return-object v0
.end method

.method public f()Landroid/widget/Button;
    .registers 2

    .prologue
    .line 246
    iget-object v0, p0, Lcn/sharesdk/system/text/login/a/d;->g:Landroid/widget/Button;

    return-object v0
.end method

.method public g()Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 250
    iget-object v0, p0, Lcn/sharesdk/system/text/login/a/d;->h:Landroid/widget/ImageView;

    return-object v0
.end method
