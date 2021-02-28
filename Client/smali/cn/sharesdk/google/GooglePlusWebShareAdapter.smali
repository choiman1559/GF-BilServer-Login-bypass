.class public Lcn/sharesdk/google/GooglePlusWebShareAdapter;
.super Ljava/lang/Object;
.source "GooglePlusWebShareAdapter.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private noTitle:Z

.field private rlBody:Landroid/widget/RelativeLayout;

.field private title:Lcn/sharesdk/framework/TitleLayout;

.field private webview:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcn/sharesdk/google/GooglePlusWebShareAdapter;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public getBodyView()Landroid/widget/RelativeLayout;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcn/sharesdk/google/GooglePlusWebShareAdapter;->rlBody:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getTitleLayout()Lcn/sharesdk/framework/TitleLayout;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcn/sharesdk/google/GooglePlusWebShareAdapter;->title:Lcn/sharesdk/framework/TitleLayout;

    return-object v0
.end method

.method public getWebBody()Landroid/webkit/WebView;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcn/sharesdk/google/GooglePlusWebShareAdapter;->webview:Landroid/webkit/WebView;

    return-object v0
.end method

.method isNotitle()Z
    .registers 2

    .prologue
    .line 55
    iget-boolean v0, p0, Lcn/sharesdk/google/GooglePlusWebShareAdapter;->noTitle:Z

    return v0
.end method

.method public onCreate()V
    .registers 1

    .prologue
    .line 69
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 74
    return-void
.end method

.method public onFinish()Z
    .registers 2

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 82
    return-void
.end method

.method public onRestart()V
    .registers 1

    .prologue
    .line 94
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 86
    return-void
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 78
    return-void
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 90
    return-void
.end method

.method setActivity(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 24
    iput-object p1, p0, Lcn/sharesdk/google/GooglePlusWebShareAdapter;->activity:Landroid/app/Activity;

    .line 25
    return-void
.end method

.method setBodyView(Landroid/widget/RelativeLayout;)V
    .registers 2
    .param p1, "rlBody"    # Landroid/widget/RelativeLayout;

    .prologue
    .line 59
    iput-object p1, p0, Lcn/sharesdk/google/GooglePlusWebShareAdapter;->rlBody:Landroid/widget/RelativeLayout;

    .line 60
    return-void
.end method

.method setNotitle(Z)V
    .registers 2
    .param p1, "noTitle"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lcn/sharesdk/google/GooglePlusWebShareAdapter;->noTitle:Z

    .line 52
    return-void
.end method

.method setTitleView(Lcn/sharesdk/framework/TitleLayout;)V
    .registers 2
    .param p1, "title"    # Lcn/sharesdk/framework/TitleLayout;

    .prologue
    .line 33
    iput-object p1, p0, Lcn/sharesdk/google/GooglePlusWebShareAdapter;->title:Lcn/sharesdk/framework/TitleLayout;

    .line 34
    return-void
.end method

.method setWebView(Landroid/webkit/WebView;)V
    .registers 2
    .param p1, "webview"    # Landroid/webkit/WebView;

    .prologue
    .line 42
    iput-object p1, p0, Lcn/sharesdk/google/GooglePlusWebShareAdapter;->webview:Landroid/webkit/WebView;

    .line 43
    return-void
.end method
