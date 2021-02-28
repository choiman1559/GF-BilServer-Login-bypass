.class public Lcn/sharesdk/system/text/login/a/b;
.super Ljava/lang/Object;
.source "CountryTitleLayout.java"


# direct methods
.method static a(Landroid/content/Context;Z)Landroid/widget/LinearLayout;
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, -0x1

    .line 24
    invoke-static {p0}, Lcn/sharesdk/system/text/login/utils/d;->a(Landroid/content/Context;)V

    .line 27
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v4, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 29
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 30
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 31
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 33
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 34
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 35
    invoke-static {v3}, Lcn/sharesdk/system/text/login/utils/d;->b(I)I

    move-result v3

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 36
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    const v2, -0xbab5b5

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 38
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 40
    if-eqz p1, :cond_51

    .line 41
    invoke-static {v1, p0}, Lcn/sharesdk/system/text/login/a/b;->b(Landroid/widget/LinearLayout;Landroid/content/Context;)V

    .line 46
    :goto_35
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 47
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x2

    .line 48
    invoke-static {v3}, Lcn/sharesdk/system/text/login/utils/d;->b(I)I

    move-result v3

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 49
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    const v2, -0xe5e3e3

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 51
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 53
    return-object v1

    .line 43
    :cond_51
    invoke-static {v1, p0}, Lcn/sharesdk/system/text/login/a/b;->a(Landroid/widget/LinearLayout;Landroid/content/Context;)V

    goto :goto_35
.end method

.method private static a(Landroid/widget/LinearLayout;Landroid/content/Context;)V
    .registers 12

    .prologue
    const/4 v2, -0x1

    const/16 v9, 0x10

    const/16 v8, 0xe

    const/4 v7, 0x0

    const/4 v6, -0x2

    .line 58
    const/16 v0, 0x4a

    invoke-static {v0}, Lcn/sharesdk/system/text/login/utils/d;->a(I)I

    move-result v0

    .line 60
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 61
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 62
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    const v1, -0xcfcac9

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 65
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 67
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 68
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    const-string v1, "ssdk_sms_id_ll_back"

    invoke-static {p1, v1}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setId(I)V

    .line 70
    invoke-static {v8}, Lcn/sharesdk/system/text/login/utils/d;->a(I)I

    move-result v1

    const/16 v3, 0x1a

    invoke-static {v3}, Lcn/sharesdk/system/text/login/utils/d;->a(I)I

    move-result v3

    invoke-virtual {v2, v1, v7, v3, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 72
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v3, 0xf

    invoke-static {v3}, Lcn/sharesdk/system/text/login/utils/d;->a(I)I

    move-result v3

    const/16 v4, 0x19

    invoke-static {v4}, Lcn/sharesdk/system/text/login/utils/d;->a(I)I

    move-result v4

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 73
    iput v9, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 74
    invoke-static {v8}, Lcn/sharesdk/system/text/login/utils/d;->a(I)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 75
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 76
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    const-string v1, "ssdk_country_back_arrow"

    invoke-static {p1, v1}, Lcom/mob/tools/utils/ResHelper;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 78
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 80
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v4, 0x1e

    invoke-static {v4}, Lcn/sharesdk/system/text/login/utils/d;->a(I)I

    move-result v4

    const/16 v5, 0x2c

    invoke-static {v5}, Lcn/sharesdk/system/text/login/utils/d;->a(I)I

    move-result v5

    invoke-direct {v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 81
    iput v9, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 82
    invoke-static {v8}, Lcn/sharesdk/system/text/login/utils/d;->a(I)I

    move-result v4

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 83
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 84
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    const-string v1, "ssdk_country_sharesdk_icon"

    invoke-static {p1, v1}, Lcom/mob/tools/utils/ResHelper;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 86
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 88
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 89
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 91
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 93
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 95
    iput v9, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 96
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 97
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    const-string v1, "ssdk_sms_id_tv_title"

    invoke-static {p1, v1}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setId(I)V

    .line 99
    const v1, -0x303031

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 100
    const/16 v1, 0x20

    invoke-static {v1}, Lcn/sharesdk/system/text/login/utils/d;->a(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v2, v7, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 101
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 103
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 104
    return-void
.end method

.method private static b(Landroid/widget/LinearLayout;Landroid/content/Context;)V
    .registers 13

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    const/16 v9, 0xe

    const/4 v8, -0x2

    const/16 v7, 0x10

    const/4 v6, 0x0

    .line 108
    const/16 v0, 0x4a

    invoke-static {v0}, Lcn/sharesdk/system/text/login/utils/d;->a(I)I

    move-result v0

    .line 109
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 110
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 111
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    const v1, -0xcfcac9

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 113
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 115
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v8, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 117
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 118
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    const-string v1, "ssdk_sms_id_ll_back"

    invoke-static {p1, v1}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setId(I)V

    .line 120
    invoke-static {v9}, Lcn/sharesdk/system/text/login/utils/d;->a(I)I

    move-result v1

    const/16 v3, 0x1a

    invoke-static {v3}, Lcn/sharesdk/system/text/login/utils/d;->a(I)I

    move-result v3

    invoke-virtual {v2, v1, v6, v3, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 122
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v3, 0xf

    invoke-static {v3}, Lcn/sharesdk/system/text/login/utils/d;->a(I)I

    move-result v3

    const/16 v4, 0x19

    invoke-static {v4}, Lcn/sharesdk/system/text/login/utils/d;->a(I)I

    move-result v4

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 123
    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 124
    invoke-static {v9}, Lcn/sharesdk/system/text/login/utils/d;->b(I)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 125
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 126
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    const-string v1, "ssdk_country_back_arrow"

    invoke-static {p1, v1}, Lcom/mob/tools/utils/ResHelper;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 128
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 130
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v4, 0x1e

    invoke-static {v4}, Lcn/sharesdk/system/text/login/utils/d;->a(I)I

    move-result v4

    const/16 v5, 0x2c

    invoke-static {v5}, Lcn/sharesdk/system/text/login/utils/d;->a(I)I

    move-result v5

    invoke-direct {v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 131
    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 132
    invoke-static {v9}, Lcn/sharesdk/system/text/login/utils/d;->a(I)I

    move-result v4

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 133
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 134
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    const-string v1, "ssdk_country_sharesdk_icon"

    invoke-static {p1, v1}, Lcom/mob/tools/utils/ResHelper;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 136
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 138
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 139
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 141
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 143
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v8, v2, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 145
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 146
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    const-string v1, "ssdk_sms_id_llTitle"

    invoke-static {p1, v1}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setId(I)V

    .line 148
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 150
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v8, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 151
    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 152
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 153
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    const-string v1, "ssdk_sms_id_tv_title"

    invoke-static {p1, v1}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setId(I)V

    .line 155
    const-string v1, "ssdk_sms_choose_country"

    invoke-static {p1, v1}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 156
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(I)V

    .line 157
    const v1, -0x303031

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 158
    const/16 v1, 0x20

    invoke-static {v1}, Lcn/sharesdk/system/text/login/utils/d;->a(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v3, v6, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 159
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 161
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v3, 0x46

    invoke-static {v3}, Lcn/sharesdk/system/text/login/utils/d;->a(I)I

    move-result v3

    invoke-direct {v1, v3, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 163
    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 164
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 165
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    const-string v1, "ssdk_sms_id_ivSearch"

    invoke-static {p1, v1}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 167
    const-string v1, "ssdk_country_search_icon"

    invoke-static {p1, v1}, Lcom/mob/tools/utils/ResHelper;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 168
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 169
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 170
    const/16 v1, 0xf

    invoke-static {v1}, Lcn/sharesdk/system/text/login/utils/d;->a(I)I

    move-result v1

    const/16 v4, 0xf

    invoke-static {v4}, Lcn/sharesdk/system/text/login/utils/d;->a(I)I

    move-result v4

    invoke-virtual {v3, v1, v6, v4, v6}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 171
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 173
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v8, v8, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 175
    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 176
    const/16 v2, 0x12

    invoke-static {v2}, Lcn/sharesdk/system/text/login/utils/d;->a(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 177
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 178
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    const-string v1, "ssdk_sms_id_llSearch"

    invoke-static {p1, v1}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setId(I)V

    .line 180
    const-string v1, "ssdk_input_bg_focus"

    invoke-static {p1, v1}, Lcom/mob/tools/utils/ResHelper;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 181
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 182
    invoke-static {v9}, Lcn/sharesdk/system/text/login/utils/d;->a(I)I

    move-result v1

    invoke-static {v9}, Lcn/sharesdk/system/text/login/utils/d;->a(I)I

    move-result v3

    invoke-virtual {v2, v1, v6, v3, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 183
    const/16 v1, 0x8

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 184
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 186
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v3, 0x24

    invoke-static {v3}, Lcn/sharesdk/system/text/login/utils/d;->a(I)I

    move-result v3

    const/16 v4, 0x24

    invoke-static {v4}, Lcn/sharesdk/system/text/login/utils/d;->a(I)I

    move-result v4

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 187
    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 188
    const/16 v3, 0x8

    invoke-static {v3}, Lcn/sharesdk/system/text/login/utils/d;->a(I)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 189
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 190
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    const-string v1, "ssdk_country_search_icon"

    invoke-static {p1, v1}, Lcom/mob/tools/utils/ResHelper;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 192
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 193
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 194
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 196
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v8, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 197
    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 198
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 199
    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    const-string v1, "ssdk_sms_id_et_put_identify"

    invoke-static {p1, v1}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setId(I)V

    .line 201
    const-string v1, "ssdk_sms_country_search"

    invoke-static {p1, v1}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 202
    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 203
    const/4 v1, -0x1

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 204
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 205
    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 206
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 208
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v3, 0x1e

    invoke-static {v3}, Lcn/sharesdk/system/text/login/utils/d;->a(I)I

    move-result v3

    const/16 v4, 0x1e

    invoke-static {v4}, Lcn/sharesdk/system/text/login/utils/d;->a(I)I

    move-result v4

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 209
    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 210
    const/4 v3, 0x5

    invoke-static {v3}, Lcn/sharesdk/system/text/login/utils/d;->b(I)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 211
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 212
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 213
    const-string v1, "ssdk_sms_id_iv_clear"

    invoke-static {p1, v1}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 214
    const-string v1, "ssdk_country_clear_search"

    invoke-static {p1, v1}, Lcom/mob/tools/utils/ResHelper;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 215
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 216
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 217
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 219
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 220
    return-void
.end method
