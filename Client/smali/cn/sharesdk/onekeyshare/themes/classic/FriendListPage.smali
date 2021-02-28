.class public abstract Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;
.super Lcn/sharesdk/onekeyshare/OnekeySharePage;
.source "FriendListPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/sharesdk/onekeyshare/OnekeySharePage;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# static fields
.field private static final DESIGN_LEFT_PADDING:I = 0x28


# instance fields
.field private adapter:Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;

.field private checkNum:I

.field private lastPosition:I

.field private llPage:Landroid/widget/LinearLayout;

.field private platform:Lcn/sharesdk/framework/Platform;

.field private rlTitle:Landroid/widget/RelativeLayout;

.field private tvCancel:Landroid/widget/TextView;

.field private tvConfirm:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;)V
    .registers 3
    .param p1, "impl"    # Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcn/sharesdk/onekeyshare/OnekeySharePage;-><init>(Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;)V

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->lastPosition:I

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->checkNum:I

    .line 50
    return-void
.end method

.method private initTitle(Landroid/widget/RelativeLayout;F)V
    .registers 14
    .param p1, "rlTitle"    # Landroid/widget/RelativeLayout;
    .param p2, "ratio"    # F

    .prologue
    const/16 v10, 0x11

    const/4 v9, 0x2

    const/4 v8, -0x1

    const/4 v7, -0x2

    const/4 v6, 0x0

    .line 106
    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->activity:Landroid/app/Activity;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->tvCancel:Landroid/widget/TextView;

    .line 107
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->tvCancel:Landroid/widget/TextView;

    const v5, -0xc4c4c5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 108
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->tvCancel:Landroid/widget/TextView;

    const/high16 v5, 0x41900000    # 18.0f

    invoke-virtual {v4, v9, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 109
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->tvCancel:Landroid/widget/TextView;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 110
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->activity:Landroid/app/Activity;

    const-string v5, "ssdk_oks_cancel"

    invoke-static {v4, v5}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 111
    .local v2, "resId":I
    if-lez v2, :cond_32

    .line 112
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->tvCancel:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(I)V

    .line 114
    :cond_32
    const/high16 v4, 0x42200000    # 40.0f

    mul-float/2addr v4, p2

    float-to-int v1, v4

    .line 115
    .local v1, "padding":I
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->tvCancel:Landroid/widget/TextView;

    invoke-virtual {v4, v1, v6, v1, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 116
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 117
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->tvCancel:Landroid/widget/TextView;

    invoke-virtual {p1, v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->tvCancel:Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->activity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 121
    .local v3, "tvTitle":Landroid/widget/TextView;
    const v4, -0xc4c4c5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 122
    const/high16 v4, 0x41b00000    # 22.0f

    invoke-virtual {v3, v9, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 123
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 124
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->activity:Landroid/app/Activity;

    const-string v5, "ssdk_oks_contacts"

    invoke-static {v4, v5}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 125
    if-lez v2, :cond_6c

    .line 126
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(I)V

    .line 128
    :cond_6c
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v0, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 129
    .restart local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xd

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 130
    invoke-virtual {p1, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->activity:Landroid/app/Activity;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->tvConfirm:Landroid/widget/TextView;

    .line 133
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->tvConfirm:Landroid/widget/TextView;

    const v5, -0x92ef

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 134
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->tvConfirm:Landroid/widget/TextView;

    const/high16 v5, 0x41900000    # 18.0f

    invoke-virtual {v4, v9, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 135
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->tvConfirm:Landroid/widget/TextView;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 136
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->activity:Landroid/app/Activity;

    const-string v5, "ssdk_oks_confirm"

    invoke-static {v4, v5}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 137
    if-lez v2, :cond_a5

    .line 138
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->tvConfirm:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(I)V

    .line 140
    :cond_a5
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->tvConfirm:Landroid/widget/TextView;

    invoke-virtual {v4, v1, v6, v1, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 141
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v0, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 142
    .restart local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 143
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->tvConfirm:Landroid/widget/TextView;

    invoke-virtual {p1, v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->tvConfirm:Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    return-void
.end method

.method private updateConfirmView()V
    .registers 6

    .prologue
    .line 188
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->activity:Landroid/app/Activity;

    const-string v3, "ssdk_oks_confirm"

    invoke-static {v2, v3}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 189
    .local v1, "resId":I
    const-string v0, "Confirm"

    .line 190
    .local v0, "confirm":Ljava/lang/String;
    if-lez v1, :cond_18

    .line 191
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 193
    :cond_18
    iget v2, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->checkNum:I

    if-nez v2, :cond_22

    .line 194
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->tvConfirm:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    :cond_21
    :goto_21
    return-void

    .line 195
    :cond_22
    iget v2, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->checkNum:I

    if-lez v2, :cond_21

    .line 196
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->tvConfirm:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->checkNum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_21
.end method


# virtual methods
.method protected abstract getDesignTitleHeight()I
.end method

.method protected abstract getRatio()F
.end method

.method public onClick(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 148
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->tvCancel:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 149
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->finish()V

    .line 164
    :goto_b
    return-void

    .line 151
    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .local v2, "selected":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->adapter:Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;

    invoke-virtual {v4}, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->getCount()I

    move-result v3

    .local v3, "size":I
    :goto_18
    if-lt v0, v3, :cond_32

    .line 158
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 159
    .local v1, "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "selected"

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    const-string v4, "platform"

    iget-object v5, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->platform:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    invoke-virtual {p0, v1}, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->setResult(Ljava/util/HashMap;)V

    .line 162
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->finish()V

    goto :goto_b

    .line 153
    .end local v1    # "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_32
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->adapter:Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;

    invoke-virtual {v4, v0}, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->getItem(I)Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;

    move-result-object v4

    iget-boolean v4, v4, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;->checked:Z

    if-eqz v4, :cond_47

    .line 154
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->adapter:Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;

    invoke-virtual {v4, v0}, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->getItem(I)Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;

    move-result-object v4

    iget-object v4, v4, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;->atName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    :cond_47
    add-int/lit8 v0, v0, 0x1

    goto :goto_18
.end method

.method public onCreate()V
    .registers 16

    .prologue
    const/4 v14, 0x1

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v13, -0x1

    .line 57
    iget-object v9, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->activity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v9

    new-instance v11, Landroid/graphics/drawable/ColorDrawable;

    const v12, -0xc0c0d

    invoke-direct {v11, v12}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v9, v11}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 59
    new-instance v9, Landroid/widget/LinearLayout;

    iget-object v11, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->activity:Landroid/app/Activity;

    invoke-direct {v9, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->llPage:Landroid/widget/LinearLayout;

    .line 60
    iget-object v9, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->llPage:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v14}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 61
    iget-object v9, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->activity:Landroid/app/Activity;

    iget-object v11, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->llPage:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v11}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 63
    new-instance v9, Landroid/widget/RelativeLayout;

    iget-object v11, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->activity:Landroid/app/Activity;

    invoke-direct {v9, v11}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->rlTitle:Landroid/widget/RelativeLayout;

    .line 64
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->getRatio()F

    move-result v7

    .line 65
    .local v7, "ratio":F
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->getDesignTitleHeight()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v7

    float-to-int v8, v9

    .line 66
    .local v8, "titleHeight":I
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v13, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 68
    .local v3, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v9, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->llPage:Landroid/widget/LinearLayout;

    iget-object v11, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->rlTitle:Landroid/widget/RelativeLayout;

    invoke-virtual {v9, v11, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    iget-object v9, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->rlTitle:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v9, v7}, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->initTitle(Landroid/widget/RelativeLayout;F)V

    .line 71
    new-instance v2, Landroid/view/View;

    iget-object v9, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->activity:Landroid/app/Activity;

    invoke-direct {v2, v9}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 72
    .local v2, "line":Landroid/view/View;
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 73
    cmpg-float v9, v7, v10

    if-gez v9, :cond_ba

    move v9, v10

    :goto_5d
    float-to-int v9, v9

    .line 72
    invoke-direct {v6, v13, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 74
    .local v6, "lpline":Landroid/widget/LinearLayout$LayoutParams;
    const v9, -0x252627

    invoke-virtual {v2, v9}, Landroid/view/View;->setBackgroundColor(I)V

    .line 75
    iget-object v9, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->llPage:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v0, v9}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 78
    .local v0, "flPage":Landroid/widget/FrameLayout;
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 79
    const/4 v9, -0x2

    .line 78
    invoke-direct {v4, v13, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 80
    .local v4, "lpFl":Landroid/widget/LinearLayout$LayoutParams;
    iput v10, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 81
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    iget-object v9, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->llPage:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 85
    new-instance v1, Lcom/mob/tools/gui/PullToRequestView;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v1, v9}, Lcom/mob/tools/gui/PullToRequestView;-><init>(Landroid/content/Context;)V

    .line 86
    .local v1, "followList":Lcom/mob/tools/gui/PullToRequestView;
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v13, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 88
    .local v5, "lpLv":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v1, v5}, Lcom/mob/tools/gui/PullToRequestView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 91
    new-instance v9, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;

    invoke-direct {v9, p0, v1}, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;-><init>(Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;Lcom/mob/tools/gui/PullToRequestView;)V

    iput-object v9, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->adapter:Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;

    .line 92
    iget-object v9, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->adapter:Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;

    iget-object v10, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->platform:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v9, v10}, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->setPlatform(Lcn/sharesdk/framework/Platform;)V

    .line 93
    iget-object v9, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->adapter:Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;

    invoke-virtual {v9, v7}, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->setRatio(F)V

    .line 94
    iget-object v9, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->adapter:Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;

    invoke-virtual {v9, p0}, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 95
    iget-object v9, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->adapter:Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;

    invoke-virtual {v1, v9}, Lcom/mob/tools/gui/PullToRequestView;->setAdapter(Lcom/mob/tools/gui/PullToRequestAdatper;)V

    .line 98
    invoke-virtual {v1, v14}, Lcom/mob/tools/gui/PullToRequestView;->performPullingDown(Z)V

    .line 99
    return-void

    .end local v0    # "flPage":Landroid/widget/FrameLayout;
    .end local v1    # "followList":Lcom/mob/tools/gui/PullToRequestView;
    .end local v4    # "lpFl":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "lpLv":Landroid/widget/FrameLayout$LayoutParams;
    .end local v6    # "lpline":Landroid/widget/LinearLayout$LayoutParams;
    :cond_ba
    move v9, v7

    .line 73
    goto :goto_5d
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 11
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v2, 0x0

    .line 167
    const-string v3, "FacebookMessenger"

    iget-object v4, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->platform:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v4}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 168
    iget v3, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->lastPosition:I

    if-ltz v3, :cond_1d

    .line 169
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->adapter:Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;

    iget v4, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->lastPosition:I

    invoke-virtual {v3, v4}, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->getItem(I)Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;

    move-result-object v1

    .line 170
    .local v1, "lastFollwing":Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;
    iput-boolean v2, v1, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;->checked:Z

    .line 172
    .end local v1    # "lastFollwing":Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;
    :cond_1d
    iput p3, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->lastPosition:I

    .line 174
    :cond_1f
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->adapter:Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;

    invoke-virtual {v3, p3}, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->getItem(I)Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;

    move-result-object v0

    .line 175
    .local v0, "following":Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;
    iget-boolean v3, v0, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;->checked:Z

    if-eqz v3, :cond_3e

    :goto_29
    iput-boolean v2, v0, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;->checked:Z

    .line 177
    iget-boolean v2, v0, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;->checked:Z

    if-eqz v2, :cond_40

    .line 178
    iget v2, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->checkNum:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->checkNum:I

    .line 183
    :goto_35
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->updateConfirmView()V

    .line 184
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->adapter:Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;

    invoke-virtual {v2}, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->notifyDataSetChanged()V

    .line 185
    return-void

    .line 175
    :cond_3e
    const/4 v2, 0x1

    goto :goto_29

    .line 180
    :cond_40
    iget v2, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->checkNum:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->checkNum:I

    goto :goto_35
.end method

.method public setPlatform(Lcn/sharesdk/framework/Platform;)V
    .registers 2
    .param p1, "platform"    # Lcn/sharesdk/framework/Platform;

    .prologue
    .line 53
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->platform:Lcn/sharesdk/framework/Platform;

    .line 54
    return-void
.end method
