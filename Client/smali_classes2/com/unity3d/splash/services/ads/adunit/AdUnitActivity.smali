.class public Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;
.super Landroid/app/Activity;


# static fields
.field public static final EXTRA_ACTIVITY_ID:Ljava/lang/String; = "activityId"

.field public static final EXTRA_DISPLAY_CUTOUT_MODE:Ljava/lang/String; = "displayCutoutMode"

.field public static final EXTRA_KEEP_SCREEN_ON:Ljava/lang/String; = "keepScreenOn"

.field public static final EXTRA_KEY_EVENT_LIST:Ljava/lang/String; = "keyEvents"

.field public static final EXTRA_ORIENTATION:Ljava/lang/String; = "orientation"

.field public static final EXTRA_SYSTEM_UI_VISIBILITY:Ljava/lang/String; = "systemUiVisibility"

.field public static final EXTRA_VIEWS:Ljava/lang/String; = "views"


# instance fields
.field private _activityId:I

.field private _displayCutoutMode:I

.field _keepScreenOn:Z

.field private _keyEventList:Ljava/util/ArrayList;

.field protected _layout:Lcom/unity3d/splash/services/ads/adunit/AdUnitRelativeLayout;

.field private _orientation:I

.field private _systemUiVisibility:I

.field private _viewHandlers:Ljava/util/Map;

.field private _views:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->_orientation:I

    return-void
.end method

.method private createViewHandler(Ljava/lang/String;)Lcom/unity3d/splash/services/ads/adunit/IAdUnitViewHandler;
    .registers 9

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v0

    if-eqz v0, :cond_56

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getConfiguration()Lcom/unity3d/splash/services/core/configuration/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/unity3d/splash/services/core/configuration/Configuration;->getModuleConfigurationList()[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v0, 0x0

    move v2, v0

    :goto_16
    if-ge v2, v5, :cond_56

    aget-object v0, v4, v2

    invoke-virtual {v3, v0}, Lcom/unity3d/splash/services/core/configuration/Configuration;->getModuleConfiguration(Ljava/lang/String;)Lcom/unity3d/splash/services/core/configuration/IModuleConfiguration;

    move-result-object v0

    instance-of v6, v0, Lcom/unity3d/splash/services/ads/configuration/IAdsModuleConfiguration;

    if-eqz v6, :cond_52

    check-cast v0, Lcom/unity3d/splash/services/ads/configuration/IAdsModuleConfiguration;

    invoke-interface {v0}, Lcom/unity3d/splash/services/ads/configuration/IAdsModuleConfiguration;->getAdUnitViewHandlers()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_52

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_52

    :try_start_30
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/splash/services/ads/adunit/IAdUnitViewHandler;
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_3c} :catch_3d

    :goto_3c
    return-object v0

    :catch_3d
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Error creating view: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->error(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_3c

    :cond_52
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_16

    :cond_56
    move-object v0, v1

    goto :goto_3c
.end method

.method private handleViewPlacement(Landroid/view/View;)Z
    .registers 6

    const/4 v3, -0x1

    const/4 v0, 0x0

    if-nez p1, :cond_d

    invoke-virtual {p0}, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->finish()V

    const-string v1, "Could not place view because it is null, finishing activity"

    invoke-static {v1}, Lcom/unity3d/splash/services/core/log/DeviceLog;->error(Ljava/lang/String;)V

    :goto_c
    return v0

    :cond_d
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_26

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->_layout:Lcom/unity3d/splash/services/ads/adunit/AdUnitRelativeLayout;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->_layout:Lcom/unity3d/splash/services/ads/adunit/AdUnitRelativeLayout;

    invoke-virtual {v0, p1}, Lcom/unity3d/splash/services/ads/adunit/AdUnitRelativeLayout;->bringChildToFront(Landroid/view/View;)V

    :goto_24
    const/4 v0, 0x1

    goto :goto_c

    :cond_26
    invoke-static {p1}, Lcom/unity3d/splash/services/core/misc/ViewUtilities;->removeViewFromParent(Landroid/view/View;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->_layout:Lcom/unity3d/splash/services/ads/adunit/AdUnitRelativeLayout;

    invoke-virtual {v0, p1, v1}, Lcom/unity3d/splash/services/ads/adunit/AdUnitRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_24
.end method


# virtual methods
.method protected createLayout()V
    .registers 4

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->_layout:Lcom/unity3d/splash/services/ads/adunit/AdUnitRelativeLayout;

    if-eqz v0, :cond_6

    :goto_5
    return-void

    :cond_6
    new-instance v0, Lcom/unity3d/splash/services/ads/adunit/AdUnitRelativeLayout;

    invoke-direct {v0, p0}, Lcom/unity3d/splash/services/ads/adunit/AdUnitRelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->_layout:Lcom/unity3d/splash/services/ads/adunit/AdUnitRelativeLayout;

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->_layout:Lcom/unity3d/splash/services/ads/adunit/AdUnitRelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/unity3d/splash/services/ads/adunit/AdUnitRelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->_layout:Lcom/unity3d/splash/services/ads/adunit/AdUnitRelativeLayout;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v2, -0x1000000

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-static {v0, v1}, Lcom/unity3d/splash/services/core/misc/ViewUtilities;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_5
.end method

.method public getLayout()Lcom/unity3d/splash/services/ads/adunit/AdUnitRelativeLayout;
    .registers 2

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->_layout:Lcom/unity3d/splash/services/ads/adunit/AdUnitRelativeLayout;

    return-object v0
.end method

.method public getViewFrame(Ljava/lang/String;)Ljava/util/Map;
    .registers 7

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->getViewHandler(Ljava/lang/String;)Lcom/unity3d/splash/services/ads/adunit/IAdUnitViewHandler;

    move-result-object v1

    const-string v2, "adunit"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_50

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->_layout:Lcom/unity3d/splash/services/ads/adunit/AdUnitRelativeLayout;

    invoke-virtual {v0}, Lcom/unity3d/splash/services/ads/adunit/AdUnitRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "x"

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "y"

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "width"

    iget-object v2, p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->_layout:Lcom/unity3d/splash/services/ads/adunit/AdUnitRelativeLayout;

    invoke-virtual {v2}, Lcom/unity3d/splash/services/ads/adunit/AdUnitRelativeLayout;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "height"

    iget-object v2, p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->_layout:Lcom/unity3d/splash/services/ads/adunit/AdUnitRelativeLayout;

    invoke-virtual {v2}, Lcom/unity3d/splash/services/ads/adunit/AdUnitRelativeLayout;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    :cond_4f
    :goto_4f
    return-object v0

    :cond_50
    if-eqz v1, :cond_96

    invoke-interface {v1}, Lcom/unity3d/splash/services/ads/adunit/IAdUnitViewHandler;->getView()Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    :goto_57
    if-eqz v2, :cond_4f

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v3, "x"

    iget v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "y"

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "width"

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "height"

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    goto :goto_4f

    :cond_96
    move-object v2, v0

    goto :goto_57
.end method

.method public getViewHandler(Ljava/lang/String;)Lcom/unity3d/splash/services/ads/adunit/IAdUnitViewHandler;
    .registers 4

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->_viewHandlers:Ljava/util/Map;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->_viewHandlers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->_viewHandlers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/splash/services/ads/adunit/IAdUnitViewHandler;

    :cond_14
    :goto_14
    return-object v0

    :cond_15
    invoke-direct {p0, p1}, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->createViewHandler(Ljava/lang/String;)Lcom/unity3d/splash/services/ads/adunit/IAdUnitViewHandler;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v1, p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->_viewHandlers:Ljava/util/Map;

    if-nez v1, :cond_26

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->_viewHandlers:Ljava/util/Map;

    :cond_26
    iget-object v1, p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->_viewHandlers:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14
.end method

.method public getViews()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->_views:[Ljava/lang/String;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v0

    if-nez v0, :cond_14

    const-string v0, "Unity Ads web app is null, closing Unity Ads activity from onCreate"

    invoke-static {v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->error(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->finish()V

    :goto_13
    return-void

    :cond_14
    invoke-static {p0}, Lcom/unity3d/splash/services/ads/api/AdUnit;->setAdUnitActivity(Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;)V

    invoke-static {p0}, Lcom/unity3d/splash/services/core/api/Intent;->setActiveActivity(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->createLayout()V

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->_layout:Lcom/unity3d/splash/services/ads/adunit/AdUnitRelativeLayout;

    invoke-static {v0}, Lcom/unity3d/splash/services/core/misc/ViewUtilities;->removeViewFromParent(Landroid/view/View;)V

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->_layout:Lcom/unity3d/splash/services/ads/adunit/AdUnitRelativeLayout;

    iget-object v1, p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->_layout:Lcom/unity3d/splash/services/ads/adunit/AdUnitRelativeLayout;

    invoke-virtual {v1}, Lcom/unity3d/splash/services/ads/adunit/AdUnitRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-nez p1, :cond_d0

    invoke-virtual {p0}, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "views"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->_views:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "keyEvents"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->_keyEventList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "orientation"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-virtual {p0}, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "orientation"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->_orientation:I

    :cond_5f
    invoke-virtual {p0}, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "systemUiVisibility"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_77

    invoke-virtual {p0}, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "systemUiVisibility"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->_systemUiVisibility:I

    :cond_77
    invoke-virtual {p0}, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "activityId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8f

    invoke-virtual {p0}, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "activityId"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->_activityId:I

    :cond_8f
    invoke-virtual {p0}, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "displayCutoutMode"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a7

    invoke-virtual {p0}, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "displayCutoutMode"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->_displayCutoutMode:I

    :cond_a7
    sget-object v0, Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;->ON_CREATE:Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;

    :goto_a9
    iget v1, p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->_orientation:I

    invoke-virtual {p0, v1}, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->setOrientation(I)V

    iget v1, p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->_systemUiVisibility:I

    invoke-virtual {p0, v1}, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->setSystemUiVisibility(I)Z

    iget v1, p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->_displayCutoutMode:I

    invoke-virtual {p0, v1}, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->setLayoutInDisplayCutoutMode(I)V

    iget-object v1, p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->_views:[Ljava/lang/String;

    if-eqz v1, :cond_110

    iget-object v3, p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->_views:[Ljava/lang/String;

    array-length v4, v3

    move v1, v2

    :goto_c0
    if-ge v1, v4, :cond_110

    aget-object v5, v3, v1

    invoke-virtual {p0, v5}, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->getViewHandler(Ljava/lang/String;)Lcom/unity3d/splash/services/ads/adunit/IAdUnitViewHandler;

    move-result-object v5

    if-eqz v5, :cond_cd

    invoke-interface {v5, p0, p1}, Lcom/unity3d/splash/services/ads/adunit/IAdUnitViewHandler;->onCreate(Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;Landroid/os/Bundle;)V

    :cond_cd
    add-int/lit8 v1, v1, 0x1

    goto :goto_c0

    :cond_d0
    const-string v0, "views"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->_views:[Ljava/lang/String;

    const-string v0, "orientation"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->_orientation:I

    const-string v0, "systemUiVisibility"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->_systemUiVisibility:I

    const-string v0, "keyEvents"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->_keyEventList:Ljava/util/ArrayList;

    const-string v0, "keepScreenOn"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->_keepScreenOn:Z

    const-string v0, "activityId"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->_activityId:I

    const-string v0, "displayCutoutMode"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->_displayCutoutMode:I

    iget-boolean v0, p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->_keepScreenOn:Z

    invoke-virtual {p0, v0}, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->setKeepScreenOn(Z)Z

    sget-object v0, Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;->ON_RESTORE:Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;

    goto :goto_a9

    :cond_110
    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v1

    sget-object v3, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->ADUNIT:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->_activityId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v1, v3, v0, v4}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto/16 :goto_13
.end method

.method protected onDestroy()V
    .registers 7

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v0

    if-nez v0, :cond_18

    invoke-virtual {p0}, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "Unity Ads web app is null, closing Unity Ads activity from onDestroy"

    invoke-static {v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->error(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->finish()V

    :cond_17
    :goto_17
    return-void

    :cond_18
    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v0

    sget-object v1, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->ADUNIT:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;->ON_DESTROY:Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->isFinishing()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->_activityId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->_viewHandlers:Ljava/util/Map;

    if-eqz v0, :cond_64

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->_viewHandlers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_48
    :goto_48
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_48

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/splash/services/ads/adunit/IAdUnitViewHandler;

    invoke-interface {v0, p0}, Lcom/unity3d/splash/services/ads/adunit/IAdUnitViewHandler;->onDestroy(Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;)V

    goto :goto_48

    :cond_64
    invoke-static {}, Lcom/unity3d/splash/services/ads/api/AdUnit;->getCurrentAdUnitActivityId()I

    move-result v0

    iget v1, p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->_activityId:I

    if-ne v0, v1, :cond_70

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/unity3d/splash/services/ads/api/AdUnit;->setAdUnitActivity(Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;)V

    :cond_70
    invoke-static {p0}, Lcom/unity3d/splash/services/core/api/Intent;->removeActiveActivity(Landroid/app/Activity;)V

    goto :goto_17
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->_keyEventList:Ljava/util/ArrayList;

    if-eqz v2, :cond_50

    iget-object v2, p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->_keyEventList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v2

    sget-object v3, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->ADUNIT:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v4, Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;->KEY_DOWN:Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v1, 0x2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v1, 0x3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v1, 0x4

    iget v6, p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->_activityId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v2, v3, v4, v5}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :goto_4f
    return v0

    :cond_50
    move v0, v1

    goto :goto_4f
.end method

.method protected onPause()V
    .registers 7

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v0

    if-nez v0, :cond_18

    invoke-virtual {p0}, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "Unity Ads web app is null, closing Unity Ads activity from onPause"

    invoke-static {v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->error(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->finish()V

    :cond_17
    :goto_17
    return-void

    :cond_18
    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getWebView()Lcom/unity3d/splash/services/core/webview/WebView;

    move-result-object v0

    if-nez v0, :cond_51

    const-string v0, "Unity Ads web view is null, from onPause"

    invoke-static {v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->warning(Ljava/lang/String;)V

    :cond_27
    :goto_27
    iget-object v0, p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->_viewHandlers:Ljava/util/Map;

    if-eqz v0, :cond_63

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->_viewHandlers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_35
    :goto_35
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_63

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_35

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/splash/services/ads/adunit/IAdUnitViewHandler;

    invoke-interface {v0, p0}, Lcom/unity3d/splash/services/ads/adunit/IAdUnitViewHandler;->onPause(Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;)V

    goto :goto_35

    :cond_51
    invoke-virtual {p0}, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getWebView()Lcom/unity3d/splash/services/core/webview/WebView;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/splash/services/core/misc/ViewUtilities;->removeViewFromParent(Landroid/view/View;)V

    goto :goto_27

    :cond_63
    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v0

    sget-object v1, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->ADUNIT:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;->ON_PAUSE:Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->isFinishing()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->_activityId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto :goto_17
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 14

    const/4 v9, 0x1

    const/4 v1, 0x0

    :try_start_2
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    array-length v4, p2

    move v0, v1

    :goto_e
    if-ge v0, v4, :cond_18

    aget-object v5, p2, v0

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_18
    array-length v4, p3

    move v0, v1

    :goto_1a
    if-ge v0, v4, :cond_24

    aget v5, p3, v0

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_24
    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v0

    sget-object v4, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->PERMISSIONS:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v5, Lcom/unity3d/splash/services/ads/adunit/PermissionsEvent;->PERMISSIONS_RESULT:Lcom/unity3d/splash/services/ads/adunit/PermissionsEvent;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v2, v6, v7

    const/4 v2, 0x2

    aput-object v3, v6, v2

    invoke-virtual {v0, v4, v5, v6}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_3f} :catch_40

    :goto_3f
    return-void

    :catch_40
    move-exception v0

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v2

    sget-object v3, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->PERMISSIONS:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v4, Lcom/unity3d/splash/services/ads/adunit/PermissionsEvent;->PERMISSIONS_ERROR:Lcom/unity3d/splash/services/ads/adunit/PermissionsEvent;

    new-array v5, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-virtual {v2, v3, v4, v5}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto :goto_3f
.end method

.method protected onResume()V
    .registers 7

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v0

    if-nez v0, :cond_18

    invoke-virtual {p0}, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "Unity Ads web app is null, closing Unity Ads activity from onResume"

    invoke-static {v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->error(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->finish()V

    :cond_17
    :goto_17
    return-void

    :cond_18
    iget-object v0, p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->_views:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->setViews([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->_viewHandlers:Ljava/util/Map;

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->_viewHandlers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2b
    :goto_2b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2b

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/splash/services/ads/adunit/IAdUnitViewHandler;

    invoke-interface {v0, p0}, Lcom/unity3d/splash/services/ads/adunit/IAdUnitViewHandler;->onResume(Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;)V

    goto :goto_2b

    :cond_47
    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v0

    sget-object v1, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->ADUNIT:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;->ON_RESUME:Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->_activityId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto :goto_17
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "orientation"

    iget v1, p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->_orientation:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "systemUiVisibility"

    iget v1, p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->_systemUiVisibility:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "keyEvents"

    iget-object v1, p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->_keyEventList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v0, "keepScreenOn"

    iget-boolean v1, p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->_keepScreenOn:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "views"

    iget-object v1, p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->_views:[Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "activityId"

    iget v1, p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->_activityId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method protected onStart()V
    .registers 7

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v0

    if-nez v0, :cond_18

    invoke-virtual {p0}, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "Unity Ads web app is null, closing Unity Ads activity from onStart"

    invoke-static {v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->error(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->finish()V

    :cond_17
    :goto_17
    return-void

    :cond_18
    iget-object v0, p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->_viewHandlers:Ljava/util/Map;

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->_viewHandlers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_26
    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_26

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/splash/services/ads/adunit/IAdUnitViewHandler;

    invoke-interface {v0, p0}, Lcom/unity3d/splash/services/ads/adunit/IAdUnitViewHandler;->onStart(Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;)V

    goto :goto_26

    :cond_42
    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v0

    sget-object v1, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->ADUNIT:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;->ON_START:Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->_activityId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto :goto_17
.end method

.method protected onStop()V
    .registers 7

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v0

    if-nez v0, :cond_18

    invoke-virtual {p0}, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "Unity Ads web app is null, closing Unity Ads activity from onStop"

    invoke-static {v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->error(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->finish()V

    :cond_17
    :goto_17
    return-void

    :cond_18
    iget-object v0, p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->_viewHandlers:Ljava/util/Map;

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->_viewHandlers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_26
    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_26

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/splash/services/ads/adunit/IAdUnitViewHandler;

    invoke-interface {v0, p0}, Lcom/unity3d/splash/services/ads/adunit/IAdUnitViewHandler;->onStop(Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;)V

    goto :goto_26

    :cond_42
    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v0

    sget-object v1, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->ADUNIT:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;->ON_STOP:Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->_activityId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto :goto_17
.end method

.method public onWindowFocusChanged(Z)V
    .registers 8

    const/4 v3, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_1d

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v0

    sget-object v1, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->ADUNIT:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;->ON_FOCUS_GAINED:Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->_activityId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :goto_19
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    return-void

    :cond_1d
    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v0

    sget-object v1, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->ADUNIT:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;->ON_FOCUS_LOST:Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->_activityId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto :goto_19
.end method

.method public setKeepScreenOn(Z)Z
    .registers 4

    const/16 v1, 0x80

    iput-boolean p1, p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->_keepScreenOn:Z

    invoke-virtual {p0}, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    if-eqz p1, :cond_17

    invoke-virtual {p0}, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    :goto_15
    const/4 v0, 0x1

    goto :goto_b

    :cond_17
    invoke-virtual {p0}, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_15
.end method

.method public setKeyEventList(Ljava/util/ArrayList;)V
    .registers 2

    iput-object p1, p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->_keyEventList:Ljava/util/ArrayList;

    return-void
.end method

.method public setLayoutInDisplayCutoutMode(I)V
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    iput p1, p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->_displayCutoutMode:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_25

    invoke-virtual {p0}, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    :try_start_18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "layoutInDisplayCutoutMode"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_25
    .catch Ljava/lang/IllegalAccessException; {:try_start_18 .. :try_end_25} :catch_26
    .catch Ljava/lang/NoSuchFieldException; {:try_start_18 .. :try_end_25} :catch_31

    :cond_25
    :goto_25
    return-void

    :catch_26
    move-exception v0

    const-string v1, "Error setting layoutInDisplayCutoutMode"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/unity3d/splash/services/core/log/DeviceLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_25

    :catch_31
    move-exception v0

    const-string v1, "Error getting layoutInDisplayCutoutMode"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/unity3d/splash/services/core/log/DeviceLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_25
.end method

.method public setOrientation(I)V
    .registers 2

    iput p1, p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->_orientation:I

    invoke-virtual {p0, p1}, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->setRequestedOrientation(I)V

    return-void
.end method

.method public setSystemUiVisibility(I)Z
    .registers 5

    const/4 v0, 0x0

    iput p1, p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->_systemUiVisibility:I

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_15

    :try_start_9
    invoke-virtual {p0}, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setSystemUiVisibility(I)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_14} :catch_16

    const/4 v0, 0x1

    :cond_15
    :goto_15
    return v0

    :catch_16
    move-exception v1

    const-string v2, "Error while setting SystemUIVisibility"

    invoke-static {v2, v1}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_15
.end method

.method public setViewFrame(Ljava/lang/String;IIII)V
    .registers 10

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->getViewHandler(Ljava/lang/String;)Lcom/unity3d/splash/services/ads/adunit/IAdUnitViewHandler;

    move-result-object v1

    const/4 v0, 0x0

    const-string v2, "adunit"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, p4, p5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p2, p3, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object v2, p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->_layout:Lcom/unity3d/splash/services/ads/adunit/AdUnitRelativeLayout;

    invoke-virtual {v2, v1}, Lcom/unity3d/splash/services/ads/adunit/AdUnitRelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1b
    :goto_1b
    if-eqz v0, :cond_28

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, p4, p5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p2, p3, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_28
    return-void

    :cond_29
    if-eqz v1, :cond_1b

    invoke-interface {v1}, Lcom/unity3d/splash/services/ads/adunit/IAdUnitViewHandler;->getView()Landroid/view/View;

    move-result-object v0

    goto :goto_1b
.end method

.method public setViews([Ljava/lang/String;)V
    .registers 6

    const/4 v1, 0x0

    if-nez p1, :cond_5

    new-array p1, v1, [Ljava/lang/String;

    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->_views:[Ljava/lang/String;

    if-nez v2, :cond_16

    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->_views:[Ljava/lang/String;

    :cond_16
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->_views:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_28
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->getViewHandler(Ljava/lang/String;)Lcom/unity3d/splash/services/ads/adunit/IAdUnitViewHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/unity3d/splash/services/ads/adunit/IAdUnitViewHandler;->destroy()Z

    goto :goto_28

    :cond_3c
    iput-object p1, p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->_views:[Ljava/lang/String;

    array-length v2, p1

    move v0, v1

    :goto_40
    if-ge v0, v2, :cond_57

    aget-object v1, p1, v0

    if-eqz v1, :cond_58

    invoke-virtual {p0, v1}, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->getViewHandler(Ljava/lang/String;)Lcom/unity3d/splash/services/ads/adunit/IAdUnitViewHandler;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/unity3d/splash/services/ads/adunit/IAdUnitViewHandler;->create(Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;)Z

    invoke-interface {v1}, Lcom/unity3d/splash/services/ads/adunit/IAdUnitViewHandler;->getView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;->handleViewPlacement(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_58

    :cond_57
    return-void

    :cond_58
    add-int/lit8 v0, v0, 0x1

    goto :goto_40
.end method
