.class public Lcn/sharesdk/onekeyshare/themes/classic/FriendListItem;
.super Landroid/widget/LinearLayout;
.source "FriendListItem.java"


# static fields
.field private static final DESIGN_AVATAR_PADDING:I = 0x18

.field private static final DESIGN_AVATAR_WIDTH:I = 0x40

.field private static final DESIGN_ITEM_HEIGHT:I = 0x60

.field private static final DESIGN_ITEM_PADDING:I = 0x14


# instance fields
.field private aivIcon:Lcom/mob/tools/gui/AsyncImageView;

.field private bmChd:Landroid/graphics/Bitmap;

.field private bmUnch:Landroid/graphics/Bitmap;

.field private ivCheck:Landroid/widget/ImageView;

.field private tvName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;F)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ratio"    # F

    .prologue
    const/16 v9, 0x10

    const/4 v6, 0x0

    const/4 v8, -0x2

    .line 41
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 42
    const/high16 v5, 0x41a00000    # 20.0f

    mul-float/2addr v5, p2

    float-to-int v2, v5

    .line 43
    .local v2, "itemPadding":I
    invoke-virtual {p0, v2, v6, v2, v6}, Lcn/sharesdk/onekeyshare/themes/classic/FriendListItem;->setPadding(IIII)V

    .line 44
    const/high16 v5, 0x42c00000    # 96.0f

    mul-float/2addr v5, p2

    float-to-int v5, v5

    invoke-virtual {p0, v5}, Lcn/sharesdk/onekeyshare/themes/classic/FriendListItem;->setMinimumHeight(I)V

    .line 45
    const/4 v5, -0x1

    invoke-virtual {p0, v5}, Lcn/sharesdk/onekeyshare/themes/classic/FriendListItem;->setBackgroundColor(I)V

    .line 47
    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListItem;->ivCheck:Landroid/widget/ImageView;

    .line 48
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 50
    .local v3, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iput v9, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 51
    iget-object v5, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListItem;->ivCheck:Landroid/widget/ImageView;

    invoke-virtual {p0, v5, v3}, Lcn/sharesdk/onekeyshare/themes/classic/FriendListItem;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    new-instance v5, Lcom/mob/tools/gui/AsyncImageView;

    invoke-direct {v5, p1}, Lcom/mob/tools/gui/AsyncImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListItem;->aivIcon:Lcom/mob/tools/gui/AsyncImageView;

    .line 54
    const/high16 v5, 0x42800000    # 64.0f

    mul-float/2addr v5, p2

    float-to-int v1, v5

    .line 55
    .local v1, "avatarWidth":I
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .end local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v3, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 56
    .restart local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    iput v9, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 57
    const/high16 v5, 0x41c00000    # 24.0f

    mul-float/2addr v5, p2

    float-to-int v0, v5

    .line 58
    .local v0, "avatarMargin":I
    invoke-virtual {v3, v0, v6, v0, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 59
    iget-object v5, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListItem;->aivIcon:Lcom/mob/tools/gui/AsyncImageView;

    invoke-virtual {p0, v5, v3}, Lcn/sharesdk/onekeyshare/themes/classic/FriendListItem;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListItem;->tvName:Landroid/widget/TextView;

    .line 62
    iget-object v5, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListItem;->tvName:Landroid/widget/TextView;

    const/high16 v6, -0x1000000

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 63
    iget-object v5, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListItem;->tvName:Landroid/widget/TextView;

    const/4 v6, 0x2

    const/high16 v7, 0x41900000    # 18.0f

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 64
    iget-object v5, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListItem;->tvName:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->setSingleLine()V

    .line 65
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .end local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v3, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 66
    .restart local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    iput v9, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 67
    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 68
    iget-object v5, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListItem;->tvName:Landroid/widget/TextView;

    invoke-virtual {p0, v5, v3}, Lcn/sharesdk/onekeyshare/themes/classic/FriendListItem;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    const-string v5, "ssdk_oks_classic_check_checked"

    invoke-static {p1, v5}, Lcom/mob/tools/utils/ResHelper;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 71
    .local v4, "resId":I
    if-lez v4, :cond_87

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListItem;->bmChd:Landroid/graphics/Bitmap;

    .line 74
    :cond_87
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/themes/classic/FriendListItem;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "ssdk_oks_classic_check_default"

    invoke-static {v5, v6}, Lcom/mob/tools/utils/ResHelper;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 75
    if-lez v4, :cond_9d

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListItem;->bmUnch:Landroid/graphics/Bitmap;

    .line 78
    :cond_9d
    return-void
.end method


# virtual methods
.method public update(Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;Z)V
    .registers 7
    .param p1, "following"    # Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;
    .param p2, "fling"    # Z

    .prologue
    const/4 v3, 0x0

    .line 81
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListItem;->tvName:Landroid/widget/TextView;

    iget-object v2, p1, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;->screenName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListItem;->ivCheck:Landroid/widget/ImageView;

    iget-boolean v1, p1, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;->checked:Z

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListItem;->bmChd:Landroid/graphics/Bitmap;

    :goto_10
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 83
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListItem;->aivIcon:Lcom/mob/tools/gui/AsyncImageView;

    if-eqz v1, :cond_2c

    .line 84
    if-eqz p2, :cond_37

    .line 85
    iget-object v1, p1, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;->icon:Ljava/lang/String;

    invoke-static {v1}, Lcom/mob/tools/gui/BitmapProcessor;->getBitmapFromCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 86
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_30

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_30

    .line 87
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListItem;->aivIcon:Lcom/mob/tools/gui/AsyncImageView;

    invoke-virtual {v1, v0}, Lcom/mob/tools/gui/AsyncImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 95
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    :cond_2c
    :goto_2c
    return-void

    .line 82
    :cond_2d
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListItem;->bmUnch:Landroid/graphics/Bitmap;

    goto :goto_10

    .line 89
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    :cond_30
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListItem;->aivIcon:Lcom/mob/tools/gui/AsyncImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/gui/AsyncImageView;->execute(Ljava/lang/String;I)V

    goto :goto_2c

    .line 92
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    :cond_37
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListItem;->aivIcon:Lcom/mob/tools/gui/AsyncImageView;

    iget-object v2, p1, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;->icon:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/gui/AsyncImageView;->execute(Ljava/lang/String;I)V

    goto :goto_2c
.end method
