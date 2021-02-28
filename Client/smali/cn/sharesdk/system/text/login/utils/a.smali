.class public Lcn/sharesdk/system/text/login/utils/a;
.super Landroid/app/Dialog;
.source "CommDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/Button;

.field private j:Landroid/widget/Button;

.field private k:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 43
    return-void
.end method

.method private c()V
    .registers 9

    .prologue
    const v7, -0xd68a02

    const/16 v4, 0x11

    const/4 v3, -0x2

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 90
    invoke-virtual {p0}, Lcn/sharesdk/system/text/login/utils/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/sharesdk/system/text/login/utils/d;->a(Landroid/content/Context;)V

    .line 91
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcn/sharesdk/system/text/login/utils/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/sharesdk/system/text/login/utils/a;->f:Landroid/widget/LinearLayout;

    .line 92
    iget-object v0, p0, Lcn/sharesdk/system/text/login/utils/a;->f:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 93
    iget-object v0, p0, Lcn/sharesdk/system/text/login/utils/a;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 94
    iget-object v0, p0, Lcn/sharesdk/system/text/login/utils/a;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 95
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcn/sharesdk/system/text/login/utils/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/ResHelper;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x3

    invoke-direct {v1, v0, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 96
    const/16 v0, 0x14

    invoke-static {v0}, Lcn/sharesdk/system/text/login/utils/d;->b(I)I

    move-result v0

    .line 97
    iget-object v2, p0, Lcn/sharesdk/system/text/login/utils/a;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    iget v1, p0, Lcn/sharesdk/system/text/login/utils/a;->b:I

    if-eqz v1, :cond_a1

    .line 99
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/sharesdk/system/text/login/utils/a;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/sharesdk/system/text/login/utils/a;->g:Landroid/widget/TextView;

    .line 100
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 102
    mul-int/lit8 v0, v0, 0x2

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 103
    iget-object v0, p0, Lcn/sharesdk/system/text/login/utils/a;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    const/16 v0, 0x14

    invoke-static {v0}, Lcn/sharesdk/system/text/login/utils/d;->b(I)I

    move-result v0

    .line 105
    iget-object v1, p0, Lcn/sharesdk/system/text/login/utils/a;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 106
    iget-object v1, p0, Lcn/sharesdk/system/text/login/utils/a;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 107
    iget-object v1, p0, Lcn/sharesdk/system/text/login/utils/a;->g:Landroid/widget/TextView;

    iget v2, p0, Lcn/sharesdk/system/text/login/utils/a;->b:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 108
    iget-object v1, p0, Lcn/sharesdk/system/text/login/utils/a;->g:Landroid/widget/TextView;

    const v2, -0xcccccd

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 109
    iget-object v1, p0, Lcn/sharesdk/system/text/login/utils/a;->g:Landroid/widget/TextView;

    const/16 v2, 0x1a

    invoke-static {v2}, Lcn/sharesdk/system/text/login/utils/d;->b(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 110
    iget-object v1, p0, Lcn/sharesdk/system/text/login/utils/a;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 111
    iget-object v1, p0, Lcn/sharesdk/system/text/login/utils/a;->g:Landroid/widget/TextView;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 112
    iget-object v1, p0, Lcn/sharesdk/system/text/login/utils/a;->f:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcn/sharesdk/system/text/login/utils/a;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 115
    :cond_a1
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/sharesdk/system/text/login/utils/a;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/sharesdk/system/text/login/utils/a;->h:Landroid/widget/TextView;

    .line 116
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 118
    mul-int/lit8 v2, v0, 0x2

    invoke-virtual {v1, v5, v0, v5, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 119
    iget v2, p0, Lcn/sharesdk/system/text/login/utils/a;->b:I

    if-nez v2, :cond_c1

    .line 120
    mul-int/lit8 v2, v0, 0x2

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {v1, v5, v2, v5, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 123
    :cond_c1
    iget-object v0, p0, Lcn/sharesdk/system/text/login/utils/a;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    iget-object v0, p0, Lcn/sharesdk/system/text/login/utils/a;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 125
    iget-object v0, p0, Lcn/sharesdk/system/text/login/utils/a;->h:Landroid/widget/TextView;

    iget v1, p0, Lcn/sharesdk/system/text/login/utils/a;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 126
    iget-object v0, p0, Lcn/sharesdk/system/text/login/utils/a;->h:Landroid/widget/TextView;

    const v1, -0xcccccd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 127
    iget-object v0, p0, Lcn/sharesdk/system/text/login/utils/a;->h:Landroid/widget/TextView;

    const/16 v1, 0x16

    invoke-static {v1}, Lcn/sharesdk/system/text/login/utils/d;->b(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v5, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 128
    iget-object v0, p0, Lcn/sharesdk/system/text/login/utils/a;->f:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/sharesdk/system/text/login/utils/a;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 130
    iget v0, p0, Lcn/sharesdk/system/text/login/utils/a;->c:I

    if-nez v0, :cond_f9

    iget v0, p0, Lcn/sharesdk/system/text/login/utils/a;->d:I

    if-nez v0, :cond_f9

    iget v0, p0, Lcn/sharesdk/system/text/login/utils/a;->e:I

    if-eqz v0, :cond_11a

    .line 131
    :cond_f9
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcn/sharesdk/system/text/login/utils/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 132
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x2

    .line 133
    invoke-static {v2}, Lcn/sharesdk/system/text/login/utils/d;->b(I)I

    move-result v2

    invoke-direct {v1, v6, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 134
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    const v1, -0x353536

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 136
    iget-object v1, p0, Lcn/sharesdk/system/text/login/utils/a;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 139
    :cond_11a
    iget v0, p0, Lcn/sharesdk/system/text/login/utils/a;->c:I

    if-eqz v0, :cond_176

    .line 140
    new-instance v0, Landroid/widget/Button;

    invoke-virtual {p0}, Lcn/sharesdk/system/text/login/utils/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/sharesdk/system/text/login/utils/a;->i:Landroid/widget/Button;

    .line 141
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v6, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 142
    iget-object v1, p0, Lcn/sharesdk/system/text/login/utils/a;->i:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    const/16 v1, 0x14

    invoke-static {v1}, Lcn/sharesdk/system/text/login/utils/d;->b(I)I

    move-result v1

    .line 144
    iget-object v2, p0, Lcn/sharesdk/system/text/login/utils/a;->i:Landroid/widget/Button;

    invoke-virtual {v2, v5, v1, v5, v1}, Landroid/widget/Button;->setPadding(IIII)V

    .line 145
    iget-object v1, p0, Lcn/sharesdk/system/text/login/utils/a;->i:Landroid/widget/Button;

    iget v2, p0, Lcn/sharesdk/system/text/login/utils/a;->c:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 146
    iget-object v1, p0, Lcn/sharesdk/system/text/login/utils/a;->i:Landroid/widget/Button;

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setTextColor(I)V

    .line 147
    iget-object v1, p0, Lcn/sharesdk/system/text/login/utils/a;->i:Landroid/widget/Button;

    const/16 v2, 0x18

    invoke-static {v2}, Lcn/sharesdk/system/text/login/utils/d;->b(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v5, v2}, Landroid/widget/Button;->setTextSize(IF)V

    .line 148
    iget-object v1, p0, Lcn/sharesdk/system/text/login/utils/a;->i:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 149
    iget-object v1, p0, Lcn/sharesdk/system/text/login/utils/a;->i:Landroid/widget/Button;

    new-instance v2, Lcn/sharesdk/system/text/login/utils/a$1;

    invoke-direct {v2, p0}, Lcn/sharesdk/system/text/login/utils/a$1;-><init>(Lcn/sharesdk/system/text/login/utils/a;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 160
    iget-object v1, p0, Lcn/sharesdk/system/text/login/utils/a;->i:Landroid/widget/Button;

    new-instance v2, Lcn/sharesdk/system/text/login/utils/a$2;

    invoke-direct {v2, p0}, Lcn/sharesdk/system/text/login/utils/a$2;-><init>(Lcn/sharesdk/system/text/login/utils/a;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object v1, p0, Lcn/sharesdk/system/text/login/utils/a;->f:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcn/sharesdk/system/text/login/utils/a;->i:Landroid/widget/Button;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    :cond_176
    iget v0, p0, Lcn/sharesdk/system/text/login/utils/a;->e:I

    if-eqz v0, :cond_289

    iget v0, p0, Lcn/sharesdk/system/text/login/utils/a;->d:I

    if-eqz v0, :cond_289

    .line 169
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcn/sharesdk/system/text/login/utils/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 170
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 171
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 172
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    new-instance v1, Landroid/widget/Button;

    invoke-virtual {p0}, Lcn/sharesdk/system/text/login/utils/a;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/sharesdk/system/text/login/utils/a;->k:Landroid/widget/Button;

    .line 175
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v2, 0x50

    invoke-static {v2}, Lcn/sharesdk/system/text/login/utils/d;->b(I)I

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v5, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 176
    const/4 v2, 0x1

    invoke-static {v2}, Lcn/sharesdk/system/text/login/utils/d;->b(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 177
    iget-object v2, p0, Lcn/sharesdk/system/text/login/utils/a;->k:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    const/16 v1, 0xc

    invoke-static {v1}, Lcn/sharesdk/system/text/login/utils/d;->b(I)I

    move-result v1

    .line 179
    iget-object v2, p0, Lcn/sharesdk/system/text/login/utils/a;->k:Landroid/widget/Button;

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/Button;->setPadding(IIII)V

    .line 180
    iget-object v2, p0, Lcn/sharesdk/system/text/login/utils/a;->k:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 181
    iget-object v2, p0, Lcn/sharesdk/system/text/login/utils/a;->k:Landroid/widget/Button;

    iget v3, p0, Lcn/sharesdk/system/text/login/utils/a;->d:I

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 182
    iget-object v2, p0, Lcn/sharesdk/system/text/login/utils/a;->k:Landroid/widget/Button;

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setTextColor(I)V

    .line 183
    iget-object v2, p0, Lcn/sharesdk/system/text/login/utils/a;->k:Landroid/widget/Button;

    const/16 v3, 0x18

    invoke-static {v3}, Lcn/sharesdk/system/text/login/utils/d;->b(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v5, v3}, Landroid/widget/Button;->setTextSize(IF)V

    .line 184
    iget-object v2, p0, Lcn/sharesdk/system/text/login/utils/a;->k:Landroid/widget/Button;

    new-instance v3, Lcn/sharesdk/system/text/login/utils/a$3;

    invoke-direct {v3, p0}, Lcn/sharesdk/system/text/login/utils/a$3;-><init>(Lcn/sharesdk/system/text/login/utils/a;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 195
    iget-object v2, p0, Lcn/sharesdk/system/text/login/utils/a;->k:Landroid/widget/Button;

    new-instance v3, Lcn/sharesdk/system/text/login/utils/a$4;

    invoke-direct {v3, p0}, Lcn/sharesdk/system/text/login/utils/a$4;-><init>(Lcn/sharesdk/system/text/login/utils/a;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    iget-object v2, p0, Lcn/sharesdk/system/text/login/utils/a;->k:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 202
    new-instance v2, Landroid/view/View;

    invoke-virtual {p0}, Lcn/sharesdk/system/text/login/utils/a;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 203
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x2

    invoke-static {v4}, Lcn/sharesdk/system/text/login/utils/d;->b(I)I

    move-result v4

    invoke-direct {v3, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 205
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    const v3, -0x353536

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 207
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 209
    new-instance v2, Landroid/widget/Button;

    invoke-virtual {p0}, Lcn/sharesdk/system/text/login/utils/a;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcn/sharesdk/system/text/login/utils/a;->j:Landroid/widget/Button;

    .line 210
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v3, 0x50

    invoke-static {v3}, Lcn/sharesdk/system/text/login/utils/d;->b(I)I

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v5, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 211
    const/4 v3, 0x1

    invoke-static {v3}, Lcn/sharesdk/system/text/login/utils/d;->b(I)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 212
    iget-object v3, p0, Lcn/sharesdk/system/text/login/utils/a;->j:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 213
    iget-object v2, p0, Lcn/sharesdk/system/text/login/utils/a;->j:Landroid/widget/Button;

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/Button;->setPadding(IIII)V

    .line 214
    iget-object v1, p0, Lcn/sharesdk/system/text/login/utils/a;->j:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 215
    iget-object v1, p0, Lcn/sharesdk/system/text/login/utils/a;->j:Landroid/widget/Button;

    invoke-virtual {p0}, Lcn/sharesdk/system/text/login/utils/a;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "btn_right"

    invoke-static {v2, v3}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setId(I)V

    .line 216
    iget-object v1, p0, Lcn/sharesdk/system/text/login/utils/a;->j:Landroid/widget/Button;

    iget v2, p0, Lcn/sharesdk/system/text/login/utils/a;->e:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 217
    iget-object v1, p0, Lcn/sharesdk/system/text/login/utils/a;->j:Landroid/widget/Button;

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setTextColor(I)V

    .line 218
    iget-object v1, p0, Lcn/sharesdk/system/text/login/utils/a;->j:Landroid/widget/Button;

    const/16 v2, 0x18

    invoke-static {v2}, Lcn/sharesdk/system/text/login/utils/d;->b(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v5, v2}, Landroid/widget/Button;->setTextSize(IF)V

    .line 219
    iget-object v1, p0, Lcn/sharesdk/system/text/login/utils/a;->j:Landroid/widget/Button;

    new-instance v2, Lcn/sharesdk/system/text/login/utils/a$5;

    invoke-direct {v2, p0}, Lcn/sharesdk/system/text/login/utils/a$5;-><init>(Lcn/sharesdk/system/text/login/utils/a;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    iget-object v1, p0, Lcn/sharesdk/system/text/login/utils/a;->j:Landroid/widget/Button;

    new-instance v2, Lcn/sharesdk/system/text/login/utils/a$6;

    invoke-direct {v2, p0}, Lcn/sharesdk/system/text/login/utils/a$6;-><init>(Lcn/sharesdk/system/text/login/utils/a;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 235
    iget-object v1, p0, Lcn/sharesdk/system/text/login/utils/a;->j:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 237
    iget-object v1, p0, Lcn/sharesdk/system/text/login/utils/a;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 239
    :cond_289
    return-void
.end method


# virtual methods
.method public a()Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcn/sharesdk/system/text/login/utils/a;->h:Landroid/widget/TextView;

    return-object v0
.end method

.method public a(I)V
    .registers 2

    .prologue
    .line 47
    iput p1, p0, Lcn/sharesdk/system/text/login/utils/a;->b:I

    .line 48
    return-void
.end method

.method public b()Landroid/widget/Button;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcn/sharesdk/system/text/login/utils/a;->j:Landroid/widget/Button;

    return-object v0
.end method

.method public b(I)V
    .registers 2

    .prologue
    .line 52
    iput p1, p0, Lcn/sharesdk/system/text/login/utils/a;->a:I

    .line 53
    return-void
.end method

.method public c(I)V
    .registers 2

    .prologue
    .line 57
    iput p1, p0, Lcn/sharesdk/system/text/login/utils/a;->c:I

    .line 58
    return-void
.end method

.method public d(I)V
    .registers 2

    .prologue
    .line 62
    iput p1, p0, Lcn/sharesdk/system/text/login/utils/a;->d:I

    .line 63
    return-void
.end method

.method public e(I)V
    .registers 2

    .prologue
    .line 67
    iput p1, p0, Lcn/sharesdk/system/text/login/utils/a;->e:I

    .line 68
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 249
    iget-object v0, p0, Lcn/sharesdk/system/text/login/utils/a;->i:Landroid/widget/Button;

    if-eq v0, p1, :cond_8

    iget-object v0, p0, Lcn/sharesdk/system/text/login/utils/a;->k:Landroid/widget/Button;

    if-ne v0, p1, :cond_b

    .line 250
    :cond_8
    invoke-virtual {p0}, Lcn/sharesdk/system/text/login/utils/a;->dismiss()V

    .line 252
    :cond_b
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 80
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/sharesdk/system/text/login/utils/a;->requestWindowFeature(I)Z

    .line 81
    invoke-virtual {p0}, Lcn/sharesdk/system/text/login/utils/a;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 82
    invoke-direct {p0}, Lcn/sharesdk/system/text/login/utils/a;->c()V

    .line 83
    new-instance v0, Lcom/mob/tools/gui/RoundRectLayout;

    invoke-virtual {p0}, Lcn/sharesdk/system/text/login/utils/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mob/tools/gui/RoundRectLayout;-><init>(Landroid/content/Context;)V

    .line 84
    const/high16 v1, 0x41f00000    # 30.0f

    invoke-virtual {v0, v1}, Lcom/mob/tools/gui/RoundRectLayout;->setRound(F)V

    .line 85
    iget-object v1, p0, Lcn/sharesdk/system/text/login/utils/a;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/mob/tools/gui/RoundRectLayout;->addView(Landroid/view/View;)V

    .line 86
    invoke-virtual {p0, v0}, Lcn/sharesdk/system/text/login/utils/a;->setContentView(Landroid/view/View;)V

    .line 87
    return-void
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 243
    invoke-super {p0, p1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 244
    return-void
.end method
