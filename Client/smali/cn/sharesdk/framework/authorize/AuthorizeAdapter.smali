.class public Lcn/sharesdk/framework/authorize/AuthorizeAdapter;
.super Ljava/lang/Object;
.source "AuthorizeAdapter.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private noTitle:Z

.field private platform:Ljava/lang/String;

.field private popUpAnimationDisable:Z

.field private rlBody:Landroid/widget/RelativeLayout;

.field private title:Lcn/sharesdk/framework/TitleLayout;

.field private webview:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected disablePopUpAnimation()V
    .registers 2

    .prologue
    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;->popUpAnimationDisable:Z

    .line 112
    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public getBodyView()Landroid/widget/RelativeLayout;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;->rlBody:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getPlatformName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;->platform:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleLayout()Lcn/sharesdk/framework/TitleLayout;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;->title:Lcn/sharesdk/framework/TitleLayout;

    return-object v0
.end method

.method public getWebBody()Landroid/webkit/WebView;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;->webview:Landroid/webkit/WebView;

    return-object v0
.end method

.method public hideShareSDKLogo()V
    .registers 3

    .prologue
    .line 149
    invoke-virtual {p0}, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;->getTitleLayout()Lcn/sharesdk/framework/TitleLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcn/sharesdk/framework/TitleLayout;->getChildCount()I

    move-result v0

    .line 150
    invoke-virtual {p0}, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;->getTitleLayout()Lcn/sharesdk/framework/TitleLayout;

    move-result-object v1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/TitleLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 151
    return-void
.end method

.method isNotitle()Z
    .registers 2

    .prologue
    .line 59
    iget-boolean v0, p0, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;->noTitle:Z

    return v0
.end method

.method isPopUpAnimationDisable()Z
    .registers 2

    .prologue
    .line 115
    iget-boolean v0, p0, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;->popUpAnimationDisable:Z

    return v0
.end method

.method public onCreate()V
    .registers 1

    .prologue
    .line 81
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 98
    return-void
.end method

.method public onFinish()Z
    .registers 2

    .prologue
    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyEvent(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 126
    return-void
.end method

.method public onResize(IIII)V
    .registers 5
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 93
    return-void
.end method

.method public onRestart()V
    .registers 1

    .prologue
    .line 141
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 131
    return-void
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 121
    return-void
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 136
    return-void
.end method

.method setActivity(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 28
    iput-object p1, p0, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;->activity:Landroid/app/Activity;

    .line 29
    return-void
.end method

.method setBodyView(Landroid/widget/RelativeLayout;)V
    .registers 2
    .param p1, "rlBody"    # Landroid/widget/RelativeLayout;

    .prologue
    .line 71
    iput-object p1, p0, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;->rlBody:Landroid/widget/RelativeLayout;

    .line 72
    return-void
.end method

.method setNotitle(Z)V
    .registers 2
    .param p1, "noTitle"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;->noTitle:Z

    .line 56
    return-void
.end method

.method setPlatformName(Ljava/lang/String;)V
    .registers 2
    .param p1, "platform"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;->platform:Ljava/lang/String;

    .line 64
    return-void
.end method

.method setTitleView(Lcn/sharesdk/framework/TitleLayout;)V
    .registers 2
    .param p1, "title"    # Lcn/sharesdk/framework/TitleLayout;

    .prologue
    .line 37
    iput-object p1, p0, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;->title:Lcn/sharesdk/framework/TitleLayout;

    .line 38
    return-void
.end method

.method setWebView(Landroid/webkit/WebView;)V
    .registers 2
    .param p1, "webview"    # Landroid/webkit/WebView;

    .prologue
    .line 46
    iput-object p1, p0, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;->webview:Landroid/webkit/WebView;

    .line 47
    return-void
.end method
