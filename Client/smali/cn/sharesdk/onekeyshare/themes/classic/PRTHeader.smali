.class public Lcn/sharesdk/onekeyshare/themes/classic/PRTHeader;
.super Landroid/widget/LinearLayout;
.source "PRTHeader.java"


# static fields
.field private static final DESIGN_AVATAR_PADDING:I = 0x18

.field private static final DESIGN_AVATAR_WIDTH:I = 0x40

.field private static final DESIGN_SCREEN_WIDTH:I = 0x2d0


# instance fields
.field private ivArrow:Lcn/sharesdk/onekeyshare/themes/classic/RotateImageView;

.field private pbRefreshing:Landroid/widget/ProgressBar;

.field private tvHeader:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-static {p1}, Lcom/mob/tools/utils/ResHelper;->getScreenSize(Landroid/content/Context;)[I

    move-result-object v8

    .line 35
    .local v8, "size":[I
    const/4 v9, 0x0

    aget v9, v8, v9

    const/4 v10, 0x1

    aget v10, v8, v10

    if-ge v9, v10, :cond_b4

    const/4 v9, 0x0

    aget v9, v8, v9

    :goto_12
    int-to-float v7, v9

    .line 36
    .local v7, "screenWidth":F
    const/high16 v9, 0x44340000    # 720.0f

    div-float v5, v7, v9

    .line 38
    .local v5, "ratio":F
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcn/sharesdk/onekeyshare/themes/classic/PRTHeader;->setOrientation(I)V

    .line 40
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 41
    .local v2, "llInner":Landroid/widget/LinearLayout;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    invoke-direct {v3, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 42
    .local v3, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v9, 0x1

    iput v9, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 43
    invoke-virtual {p0, v2, v3}, Lcn/sharesdk/onekeyshare/themes/classic/PRTHeader;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    new-instance v9, Lcn/sharesdk/onekeyshare/themes/classic/RotateImageView;

    invoke-direct {v9, p1}, Lcn/sharesdk/onekeyshare/themes/classic/RotateImageView;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcn/sharesdk/onekeyshare/themes/classic/PRTHeader;->ivArrow:Lcn/sharesdk/onekeyshare/themes/classic/RotateImageView;

    .line 46
    const-string v9, "ssdk_oks_ptr_ptr"

    invoke-static {p1, v9}, Lcom/mob/tools/utils/ResHelper;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    .line 47
    .local v6, "resId":I
    if-lez v6, :cond_41

    .line 48
    iget-object v9, p0, Lcn/sharesdk/onekeyshare/themes/classic/PRTHeader;->ivArrow:Lcn/sharesdk/onekeyshare/themes/classic/RotateImageView;

    invoke-virtual {v9, v6}, Lcn/sharesdk/onekeyshare/themes/classic/RotateImageView;->setImageResource(I)V

    .line 50
    :cond_41
    const/high16 v9, 0x42800000    # 64.0f

    mul-float/2addr v9, v5

    float-to-int v1, v9

    .line 51
    .local v1, "avatarWidth":I
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .end local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v3, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 52
    .restart local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v9, 0x10

    iput v9, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 53
    const/high16 v9, 0x41c00000    # 24.0f

    mul-float/2addr v9, v5

    float-to-int v0, v9

    .line 54
    .local v0, "avataPadding":I
    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 55
    iget-object v9, p0, Lcn/sharesdk/onekeyshare/themes/classic/PRTHeader;->ivArrow:Lcn/sharesdk/onekeyshare/themes/classic/RotateImageView;

    invoke-virtual {v2, v9, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    new-instance v9, Landroid/widget/ProgressBar;

    invoke-direct {v9, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcn/sharesdk/onekeyshare/themes/classic/PRTHeader;->pbRefreshing:Landroid/widget/ProgressBar;

    .line 58
    const-string v9, "ssdk_oks_classic_progressbar"

    invoke-static {p1, v9}, Lcom/mob/tools/utils/ResHelper;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 60
    .local v4, "pbdrawable":Landroid/graphics/drawable/Drawable;
    iget-object v9, p0, Lcn/sharesdk/onekeyshare/themes/classic/PRTHeader;->pbRefreshing:Landroid/widget/ProgressBar;

    invoke-virtual {v9, v4}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 61
    iget-object v9, p0, Lcn/sharesdk/onekeyshare/themes/classic/PRTHeader;->pbRefreshing:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v9, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    iget-object v9, p0, Lcn/sharesdk/onekeyshare/themes/classic/PRTHeader;->pbRefreshing:Landroid/widget/ProgressBar;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 64
    new-instance v9, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/themes/classic/PRTHeader;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcn/sharesdk/onekeyshare/themes/classic/PRTHeader;->tvHeader:Landroid/widget/TextView;

    .line 65
    iget-object v9, p0, Lcn/sharesdk/onekeyshare/themes/classic/PRTHeader;->tvHeader:Landroid/widget/TextView;

    const/4 v10, 0x2

    const/high16 v11, 0x41900000    # 18.0f

    invoke-virtual {v9, v10, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 66
    iget-object v9, p0, Lcn/sharesdk/onekeyshare/themes/classic/PRTHeader;->tvHeader:Landroid/widget/TextView;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, v0, v10, v0, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 67
    iget-object v9, p0, Lcn/sharesdk/onekeyshare/themes/classic/PRTHeader;->tvHeader:Landroid/widget/TextView;

    const v10, -0xf644f9

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 68
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .end local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v9, -0x2

    const/4 v10, -0x2

    invoke-direct {v3, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 69
    .restart local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v9, 0x10

    iput v9, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 70
    iget-object v9, p0, Lcn/sharesdk/onekeyshare/themes/classic/PRTHeader;->tvHeader:Landroid/widget/TextView;

    invoke-virtual {v2, v9, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    return-void

    .line 35
    .end local v0    # "avataPadding":I
    .end local v1    # "avatarWidth":I
    .end local v2    # "llInner":Landroid/widget/LinearLayout;
    .end local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v4    # "pbdrawable":Landroid/graphics/drawable/Drawable;
    .end local v5    # "ratio":F
    .end local v6    # "resId":I
    .end local v7    # "screenWidth":F
    :cond_b4
    const/4 v9, 0x1

    aget v9, v8, v9

    goto/16 :goto_12
.end method


# virtual methods
.method public onPullDown(I)V
    .registers 7
    .param p1, "percent"    # I

    .prologue
    const/16 v4, 0x64

    .line 74
    if-le p1, v4, :cond_2d

    .line 75
    add-int/lit8 v2, p1, -0x64

    mul-int/lit16 v2, v2, 0xb4

    div-int/lit8 v0, v2, 0x14

    .line 76
    .local v0, "degree":I
    const/16 v2, 0xb4

    if-le v0, v2, :cond_10

    .line 77
    const/16 v0, 0xb4

    .line 79
    :cond_10
    if-gez v0, :cond_13

    .line 80
    const/4 v0, 0x0

    .line 82
    :cond_13
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/themes/classic/PRTHeader;->ivArrow:Lcn/sharesdk/onekeyshare/themes/classic/RotateImageView;

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Lcn/sharesdk/onekeyshare/themes/classic/RotateImageView;->setRotation(F)V

    .line 87
    .end local v0    # "degree":I
    :goto_19
    if-ge p1, v4, :cond_34

    .line 88
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/themes/classic/PRTHeader;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "ssdk_oks_pull_to_refresh"

    invoke-static {v2, v3}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 89
    .local v1, "resId":I
    if-lez v1, :cond_2c

    .line 90
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/themes/classic/PRTHeader;->tvHeader:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 98
    :cond_2c
    :goto_2c
    return-void

    .line 84
    .end local v1    # "resId":I
    :cond_2d
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/themes/classic/PRTHeader;->ivArrow:Lcn/sharesdk/onekeyshare/themes/classic/RotateImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcn/sharesdk/onekeyshare/themes/classic/RotateImageView;->setRotation(F)V

    goto :goto_19

    .line 93
    :cond_34
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/themes/classic/PRTHeader;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "ssdk_oks_release_to_refresh"

    invoke-static {v2, v3}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 94
    .restart local v1    # "resId":I
    if-lez v1, :cond_2c

    .line 95
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/themes/classic/PRTHeader;->tvHeader:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2c
.end method

.method public onRequest()V
    .registers 4

    .prologue
    .line 101
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/PRTHeader;->ivArrow:Lcn/sharesdk/onekeyshare/themes/classic/RotateImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcn/sharesdk/onekeyshare/themes/classic/RotateImageView;->setVisibility(I)V

    .line 102
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/PRTHeader;->pbRefreshing:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 103
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/themes/classic/PRTHeader;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "ssdk_oks_refreshing"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 104
    .local v0, "resId":I
    if-lez v0, :cond_1e

    .line 105
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/PRTHeader;->tvHeader:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 107
    :cond_1e
    return-void
.end method

.method public reverse()V
    .registers 3

    .prologue
    .line 110
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/PRTHeader;->pbRefreshing:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/PRTHeader;->ivArrow:Lcn/sharesdk/onekeyshare/themes/classic/RotateImageView;

    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {v0, v1}, Lcn/sharesdk/onekeyshare/themes/classic/RotateImageView;->setRotation(F)V

    .line 112
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/PRTHeader;->ivArrow:Lcn/sharesdk/onekeyshare/themes/classic/RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/sharesdk/onekeyshare/themes/classic/RotateImageView;->setVisibility(I)V

    .line 113
    return-void
.end method
