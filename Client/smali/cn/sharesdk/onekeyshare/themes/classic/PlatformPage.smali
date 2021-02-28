.class public abstract Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;
.super Lcn/sharesdk/onekeyshare/OnekeySharePage;
.source "PlatformPage.java"


# instance fields
.field private animHide:Landroid/view/animation/Animation;

.field private animShow:Landroid/view/animation/Animation;

.field private beforeFinish:Ljava/lang/Runnable;

.field private finished:Z

.field private impl:Lcn/sharesdk/onekeyshare/themes/classic/ClassicTheme;

.field private llPanel:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;)V
    .registers 3
    .param p1, "impl"    # Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcn/sharesdk/onekeyshare/OnekeySharePage;-><init>(Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;)V

    .line 47
    invoke-static {p1}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/sharesdk/onekeyshare/themes/classic/ClassicTheme;

    iput-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->impl:Lcn/sharesdk/onekeyshare/themes/classic/ClassicTheme;

    .line 48
    return-void
.end method

.method static synthetic access$0(Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;)Z
    .registers 2

    .prologue
    .line 1
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->isSilent()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;Lcn/sharesdk/framework/Platform;)Z
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->isUseClientToShare(Lcn/sharesdk/framework/Platform;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2(Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;Lcn/sharesdk/framework/Platform;)V
    .registers 2

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->shareSilently(Lcn/sharesdk/framework/Platform;)V

    return-void
.end method

.method static synthetic access$3(Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/framework/Platform$ShareParams;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->formateShareData(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/framework/Platform$ShareParams;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4(Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;)Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;
    .registers 2

    .prologue
    .line 1
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->getCustomizeCallback()Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5(Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;)Lcn/sharesdk/onekeyshare/themes/classic/ClassicTheme;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->impl:Lcn/sharesdk/onekeyshare/themes/classic/ClassicTheme;

    return-object v0
.end method

.method static synthetic access$6(Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;)Landroid/app/Activity;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$7(Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;)Ljava/lang/Runnable;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->beforeFinish:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$8(Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;Ljava/lang/Runnable;)V
    .registers 2

    .prologue
    .line 37
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->beforeFinish:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$9(Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;Z)V
    .registers 2

    .prologue
    .line 43
    iput-boolean p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->finished:Z

    return-void
.end method

.method private initAnims()V
    .registers 10

    .prologue
    .line 153
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .line 154
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 155
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 156
    const/4 v5, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    .line 157
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 153
    iput-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->animShow:Landroid/view/animation/Animation;

    .line 158
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->animShow:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 160
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .line 161
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 162
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 163
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 164
    const/4 v7, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 160
    iput-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->animHide:Landroid/view/animation/Animation;

    .line 165
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->animHide:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 166
    return-void
.end method


# virtual methods
.method protected collectCells()Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v0, "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->getPlatformList()[Lcn/sharesdk/framework/Platform;

    move-result-object v4

    .line 98
    .local v4, "platforms":[Lcn/sharesdk/framework/Platform;
    if-nez v4, :cond_e

    .line 99
    new-array v4, v5, [Lcn/sharesdk/framework/Platform;

    .line 101
    :cond_e
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->getHiddenPlatforms()Ljava/util/HashMap;

    move-result-object v2

    .line 102
    .local v2, "hides":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v2, :cond_19

    .line 103
    new-instance v2, Ljava/util/HashMap;

    .end local v2    # "hides":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 105
    .restart local v2    # "hides":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_19
    array-length v6, v4

    :goto_1a
    if-lt v5, v6, :cond_2c

    .line 111
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->getCustomerLogos()Ljava/util/ArrayList;

    move-result-object v1

    .line 112
    .local v1, "customers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/sharesdk/onekeyshare/CustomerLogo;>;"
    if-eqz v1, :cond_2b

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2b

    .line 113
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 116
    :cond_2b
    return-object v0

    .line 105
    .end local v1    # "customers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/sharesdk/onekeyshare/CustomerLogo;>;"
    :cond_2c
    aget-object v3, v4, v5

    .line 106
    .local v3, "p":Lcn/sharesdk/framework/Platform;
    invoke-virtual {v3}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3b

    .line 107
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_3b
    add-int/lit8 v5, v5, 0x1

    goto :goto_1a
.end method

.method protected abstract newAdapter(Ljava/util/ArrayList;)Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;"
        }
    .end annotation
.end method

.method public onCreate()V
    .registers 15

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v11, -0x2

    const/4 v10, -0x1

    .line 51
    iget-object v7, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->activity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v7

    new-instance v8, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v9, 0x4c000000    # 3.3554432E7f

    invoke-direct {v8, v9}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v7, v8}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 52
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->initAnims()V

    .line 54
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->activity:Landroid/app/Activity;

    invoke-direct {v2, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 55
    .local v2, "llPage":Landroid/widget/LinearLayout;
    invoke-virtual {v2, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 56
    iget-object v7, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->activity:Landroid/app/Activity;

    invoke-virtual {v7, v2}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 58
    new-instance v6, Landroid/widget/TextView;

    iget-object v7, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->activity:Landroid/app/Activity;

    invoke-direct {v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 59
    .local v6, "vTop":Landroid/widget/TextView;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 61
    .local v3, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v7, 0x3f800000    # 1.0f

    iput v7, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 62
    new-instance v7, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage$1;

    invoke-direct {v7, p0}, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage$1;-><init>(Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    invoke-virtual {v2, v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    new-instance v7, Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->activity:Landroid/app/Activity;

    invoke-direct {v7, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->llPanel:Landroid/widget/LinearLayout;

    .line 70
    iget-object v7, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->llPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 71
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .end local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v3, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 73
    .restart local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v7, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->llPanel:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->animShow:Landroid/view/animation/Animation;

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 74
    iget-object v7, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->llPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    new-instance v4, Lcom/mob/tools/gui/MobViewPager;

    iget-object v7, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->activity:Landroid/app/Activity;

    invoke-direct {v4, v7}, Lcom/mob/tools/gui/MobViewPager;-><init>(Landroid/content/Context;)V

    .line 77
    .local v4, "mvp":Lcom/mob/tools/gui/MobViewPager;
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->collectCells()Ljava/util/ArrayList;

    move-result-object v1

    .line 78
    .local v1, "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-virtual {p0, v1}, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->newAdapter(Ljava/util/ArrayList;)Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;

    move-result-object v0

    .line 79
    .local v0, "adapter":Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .end local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0}, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->getPanelHeight()I

    move-result v7

    invoke-direct {v3, v10, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 80
    .restart local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v7, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->llPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    new-instance v5, Lcn/sharesdk/onekeyshare/themes/classic/IndicatorView;

    iget-object v7, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->activity:Landroid/app/Activity;

    invoke-direct {v5, v7}, Lcn/sharesdk/onekeyshare/themes/classic/IndicatorView;-><init>(Landroid/content/Context;)V

    .line 83
    .local v5, "vInd":Lcn/sharesdk/onekeyshare/themes/classic/IndicatorView;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .end local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0}, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->getBottomHeight()I

    move-result v7

    invoke-direct {v3, v10, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 84
    .restart local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v7, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->llPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    invoke-virtual {v0}, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->getCount()I

    move-result v7

    invoke-virtual {v5, v7}, Lcn/sharesdk/onekeyshare/themes/classic/IndicatorView;->setScreenCount(I)V

    .line 87
    invoke-virtual {v5, v12, v12}, Lcn/sharesdk/onekeyshare/themes/classic/IndicatorView;->onScreenChange(II)V

    .line 88
    invoke-virtual {v0, v5}, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->setIndicator(Lcn/sharesdk/onekeyshare/themes/classic/IndicatorView;)V

    .line 89
    invoke-virtual {v4, v0}, Lcom/mob/tools/gui/MobViewPager;->setAdapter(Lcom/mob/tools/gui/ViewPagerAdapter;)V

    .line 90
    return-void
.end method

.method public onFinish()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 169
    iget-boolean v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->finished:Z

    if-eqz v1, :cond_8

    .line 170
    iput-boolean v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->finished:Z

    .line 199
    :goto_7
    return v0

    .line 174
    :cond_8
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->animHide:Landroid/view/animation/Animation;

    new-instance v1, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage$4;

    invoke-direct {v1, p0}, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage$4;-><init>(Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 196
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->llPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 197
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->llPanel:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->animHide:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 198
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->llPanel:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 199
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public final performCustomLogoClick(Landroid/view/View;Lcn/sharesdk/onekeyshare/CustomerLogo;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "logo"    # Lcn/sharesdk/onekeyshare/CustomerLogo;

    .prologue
    .line 144
    new-instance v0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage$3;

    invoke-direct {v0, p0, p2, p1}, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage$3;-><init>(Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;Lcn/sharesdk/onekeyshare/CustomerLogo;Landroid/view/View;)V

    iput-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->beforeFinish:Ljava/lang/Runnable;

    .line 149
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->finish()V

    .line 150
    return-void
.end method

.method public final showEditPage(Lcn/sharesdk/framework/Platform;)V
    .registers 3
    .param p1, "platform"    # Lcn/sharesdk/framework/Platform;

    .prologue
    .line 120
    new-instance v0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage$2;

    invoke-direct {v0, p0, p1}, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage$2;-><init>(Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;Lcn/sharesdk/framework/Platform;)V

    iput-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->beforeFinish:Ljava/lang/Runnable;

    .line 140
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->finish()V

    .line 141
    return-void
.end method
