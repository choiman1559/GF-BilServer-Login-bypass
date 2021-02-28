.class public Lcn/sharesdk/google/WebShareActivity;
.super Lcom/mob/tools/FakeActivity;
.source "WebShareActivity.java"


# instance fields
.field private adapter:Lcn/sharesdk/google/GooglePlusWebShareAdapter;

.field private pa:Lcn/sharesdk/framework/PlatformActionListener;

.field private resultFailed:Z

.field private resultOk:Z

.field private rv:Lcn/sharesdk/framework/authorize/RegisterView;

.field private scheme:Ljava/lang/String;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/mob/tools/FakeActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcn/sharesdk/google/WebShareActivity;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2
    .param p0, "x0"    # Lcn/sharesdk/google/WebShareActivity;

    .prologue
    .line 21
    iget-object v0, p0, Lcn/sharesdk/google/WebShareActivity;->pa:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method private getAdapter()Lcn/sharesdk/google/GooglePlusWebShareAdapter;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 52
    :try_start_1
    iget-object v0, p0, Lcn/sharesdk/google/WebShareActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, p0, Lcn/sharesdk/google/WebShareActivity;->activity:Landroid/app/Activity;

    .line 53
    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/16 v3, 0x80

    .line 52
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 54
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "GooglePlusWebShareAdapter"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    if-eqz v0, :cond_23

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_25

    :cond_23
    move-object v0, v1

    .line 69
    :goto_24
    return-object v0

    .line 59
    :cond_25
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 61
    instance-of v2, v0, Lcn/sharesdk/google/GooglePlusWebShareAdapter;

    if-nez v2, :cond_33

    move-object v0, v1

    .line 62
    goto :goto_24

    .line 65
    :cond_33
    check-cast v0, Lcn/sharesdk/google/GooglePlusWebShareAdapter;
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_35} :catch_36

    goto :goto_24

    .line 66
    :catch_36
    move-exception v0

    .line 67
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 69
    goto :goto_24
.end method


# virtual methods
.method protected getBodyView()Lcn/sharesdk/framework/authorize/RegisterView;
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 103
    new-instance v0, Lcn/sharesdk/framework/authorize/RegisterView;

    iget-object v1, p0, Lcn/sharesdk/google/WebShareActivity;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcn/sharesdk/framework/authorize/RegisterView;-><init>(Landroid/content/Context;)V

    .line 104
    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/RegisterView;->c()Lcn/sharesdk/framework/TitleLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcn/sharesdk/framework/TitleLayout;->getChildCount()I

    move-result v1

    .line 105
    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/RegisterView;->c()Lcn/sharesdk/framework/TitleLayout;

    move-result-object v2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v2, v1}, Lcn/sharesdk/framework/TitleLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 106
    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/RegisterView;->a()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcn/sharesdk/google/WebShareActivity$1;

    invoke-direct {v2, p0}, Lcn/sharesdk/google/WebShareActivity$1;-><init>(Lcn/sharesdk/google/WebShareActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/RegisterView;->b()Landroid/webkit/WebView;

    move-result-object v1

    iput-object v1, p0, Lcn/sharesdk/google/WebShareActivity;->webView:Landroid/webkit/WebView;

    .line 123
    iget-object v1, p0, Lcn/sharesdk/google/WebShareActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 124
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 125
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 126
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 127
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 128
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 129
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 130
    const-string v2, "Mozilla/5.0 Google (windows nt 6.1;wow64) applewebkit/537.36 (khtml,like gecko) chrome/55.0.2883.87 safari/547.36"

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 131
    iget-object v2, p0, Lcn/sharesdk/google/WebShareActivity;->activity:Landroid/app/Activity;

    const-string v3, "database"

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 132
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 133
    iget-object v1, p0, Lcn/sharesdk/google/WebShareActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 134
    iget-object v1, p0, Lcn/sharesdk/google/WebShareActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 141
    iget-object v1, p0, Lcn/sharesdk/google/WebShareActivity;->webView:Landroid/webkit/WebView;

    new-instance v2, Lcn/sharesdk/google/WebShareActivity$2;

    invoke-direct {v2, p0}, Lcn/sharesdk/google/WebShareActivity$2;-><init>(Lcn/sharesdk/google/WebShareActivity;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 146
    return-object v0
.end method

.method public onCreate()V
    .registers 6

    .prologue
    .line 73
    invoke-virtual {p0}, Lcn/sharesdk/google/WebShareActivity;->getBodyView()Lcn/sharesdk/framework/authorize/RegisterView;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/google/WebShareActivity;->rv:Lcn/sharesdk/framework/authorize/RegisterView;

    .line 75
    :try_start_6
    invoke-virtual {p0}, Lcn/sharesdk/google/WebShareActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ssdk_share_to_googleplus"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 76
    if-lez v0, :cond_1f

    .line 77
    iget-object v1, p0, Lcn/sharesdk/google/WebShareActivity;->rv:Lcn/sharesdk/framework/authorize/RegisterView;

    invoke-virtual {v1}, Lcn/sharesdk/framework/authorize/RegisterView;->c()Lcn/sharesdk/framework/TitleLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcn/sharesdk/framework/TitleLayout;->getTvTitle()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_1f} :catch_76

    .line 84
    :cond_1f
    :goto_1f
    iget-object v0, p0, Lcn/sharesdk/google/WebShareActivity;->adapter:Lcn/sharesdk/google/GooglePlusWebShareAdapter;

    iget-object v1, p0, Lcn/sharesdk/google/WebShareActivity;->rv:Lcn/sharesdk/framework/authorize/RegisterView;

    invoke-virtual {v1}, Lcn/sharesdk/framework/authorize/RegisterView;->d()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/sharesdk/google/GooglePlusWebShareAdapter;->setBodyView(Landroid/widget/RelativeLayout;)V

    .line 85
    iget-object v0, p0, Lcn/sharesdk/google/WebShareActivity;->adapter:Lcn/sharesdk/google/GooglePlusWebShareAdapter;

    iget-object v1, p0, Lcn/sharesdk/google/WebShareActivity;->rv:Lcn/sharesdk/framework/authorize/RegisterView;

    invoke-virtual {v1}, Lcn/sharesdk/framework/authorize/RegisterView;->b()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/sharesdk/google/GooglePlusWebShareAdapter;->setWebView(Landroid/webkit/WebView;)V

    .line 86
    iget-object v0, p0, Lcn/sharesdk/google/WebShareActivity;->adapter:Lcn/sharesdk/google/GooglePlusWebShareAdapter;

    iget-object v1, p0, Lcn/sharesdk/google/WebShareActivity;->rv:Lcn/sharesdk/framework/authorize/RegisterView;

    invoke-virtual {v1}, Lcn/sharesdk/framework/authorize/RegisterView;->c()Lcn/sharesdk/framework/TitleLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/sharesdk/google/GooglePlusWebShareAdapter;->setTitleView(Lcn/sharesdk/framework/TitleLayout;)V

    .line 87
    iget-object v0, p0, Lcn/sharesdk/google/WebShareActivity;->adapter:Lcn/sharesdk/google/GooglePlusWebShareAdapter;

    invoke-virtual {v0}, Lcn/sharesdk/google/GooglePlusWebShareAdapter;->onCreate()V

    .line 88
    invoke-virtual {p0}, Lcn/sharesdk/google/WebShareActivity;->disableScreenCapture()Z

    .line 89
    iget-object v0, p0, Lcn/sharesdk/google/WebShareActivity;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcn/sharesdk/google/WebShareActivity;->rv:Lcn/sharesdk/framework/authorize/RegisterView;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 91
    iget-object v0, p0, Lcn/sharesdk/google/WebShareActivity;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    .line 92
    const-string v1, "none"

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getDetailNetworkTypeForStatic()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/sharesdk/google/WebShareActivity;->resultFailed:Z

    .line 94
    invoke-virtual {p0}, Lcn/sharesdk/google/WebShareActivity;->finish()V

    .line 95
    iget-object v0, p0, Lcn/sharesdk/google/WebShareActivity;->pa:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Throwable;

    const-string v4, "failed to load webpage, network disconnected."

    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2, v3}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 100
    :goto_75
    return-void

    .line 79
    :catch_76
    move-exception v0

    .line 80
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 81
    iget-object v0, p0, Lcn/sharesdk/google/WebShareActivity;->rv:Lcn/sharesdk/framework/authorize/RegisterView;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/RegisterView;->c()Lcn/sharesdk/framework/TitleLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/TitleLayout;->setVisibility(I)V

    goto :goto_1f

    .line 99
    :cond_8a
    iget-object v0, p0, Lcn/sharesdk/google/WebShareActivity;->rv:Lcn/sharesdk/framework/authorize/RegisterView;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/RegisterView;->b()Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/google/WebShareActivity;->scheme:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_75
.end method

.method public onDestroy()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 180
    iget-boolean v0, p0, Lcn/sharesdk/google/WebShareActivity;->resultFailed:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcn/sharesdk/google/WebShareActivity;->resultOk:Z

    if-nez v0, :cond_10

    .line 181
    iget-object v0, p0, Lcn/sharesdk/google/WebShareActivity;->pa:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v1, 0x9

    invoke-interface {v0, v2, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    .line 183
    :cond_10
    iget-object v0, p0, Lcn/sharesdk/google/WebShareActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1a

    .line 184
    iget-object v0, p0, Lcn/sharesdk/google/WebShareActivity;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 186
    :cond_1a
    iget-object v0, p0, Lcn/sharesdk/google/WebShareActivity;->adapter:Lcn/sharesdk/google/GooglePlusWebShareAdapter;

    if-eqz v0, :cond_23

    .line 187
    iget-object v0, p0, Lcn/sharesdk/google/WebShareActivity;->adapter:Lcn/sharesdk/google/GooglePlusWebShareAdapter;

    invoke-virtual {v0}, Lcn/sharesdk/google/GooglePlusWebShareAdapter;->onDestroy()V

    .line 189
    :cond_23
    return-void
.end method

.method public onFinish()Z
    .registers 2

    .prologue
    .line 192
    iget-object v0, p0, Lcn/sharesdk/google/WebShareActivity;->adapter:Lcn/sharesdk/google/GooglePlusWebShareAdapter;

    if-eqz v0, :cond_b

    .line 193
    iget-object v0, p0, Lcn/sharesdk/google/WebShareActivity;->adapter:Lcn/sharesdk/google/GooglePlusWebShareAdapter;

    invoke-virtual {v0}, Lcn/sharesdk/google/GooglePlusWebShareAdapter;->onFinish()Z

    move-result v0

    .line 195
    :goto_a
    return v0

    :cond_b
    invoke-super {p0}, Lcom/mob/tools/FakeActivity;->onFinish()Z

    move-result v0

    goto :goto_a
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 156
    iget-object v0, p0, Lcn/sharesdk/google/WebShareActivity;->adapter:Lcn/sharesdk/google/GooglePlusWebShareAdapter;

    if-eqz v0, :cond_9

    .line 157
    iget-object v0, p0, Lcn/sharesdk/google/WebShareActivity;->adapter:Lcn/sharesdk/google/GooglePlusWebShareAdapter;

    invoke-virtual {v0}, Lcn/sharesdk/google/GooglePlusWebShareAdapter;->onPause()V

    .line 159
    :cond_9
    return-void
.end method

.method public onRestart()V
    .registers 2

    .prologue
    .line 174
    iget-object v0, p0, Lcn/sharesdk/google/WebShareActivity;->adapter:Lcn/sharesdk/google/GooglePlusWebShareAdapter;

    if-eqz v0, :cond_9

    .line 175
    iget-object v0, p0, Lcn/sharesdk/google/WebShareActivity;->adapter:Lcn/sharesdk/google/GooglePlusWebShareAdapter;

    invoke-virtual {v0}, Lcn/sharesdk/google/GooglePlusWebShareAdapter;->onRestart()V

    .line 177
    :cond_9
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 162
    iget-object v0, p0, Lcn/sharesdk/google/WebShareActivity;->adapter:Lcn/sharesdk/google/GooglePlusWebShareAdapter;

    if-eqz v0, :cond_9

    .line 163
    iget-object v0, p0, Lcn/sharesdk/google/WebShareActivity;->adapter:Lcn/sharesdk/google/GooglePlusWebShareAdapter;

    invoke-virtual {v0}, Lcn/sharesdk/google/GooglePlusWebShareAdapter;->onResume()V

    .line 165
    :cond_9
    return-void
.end method

.method public onStart()V
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, Lcn/sharesdk/google/WebShareActivity;->adapter:Lcn/sharesdk/google/GooglePlusWebShareAdapter;

    if-eqz v0, :cond_9

    .line 151
    iget-object v0, p0, Lcn/sharesdk/google/WebShareActivity;->adapter:Lcn/sharesdk/google/GooglePlusWebShareAdapter;

    invoke-virtual {v0}, Lcn/sharesdk/google/GooglePlusWebShareAdapter;->onStart()V

    .line 153
    :cond_9
    return-void
.end method

.method public onStop()V
    .registers 2

    .prologue
    .line 168
    iget-object v0, p0, Lcn/sharesdk/google/WebShareActivity;->adapter:Lcn/sharesdk/google/GooglePlusWebShareAdapter;

    if-eqz v0, :cond_9

    .line 169
    iget-object v0, p0, Lcn/sharesdk/google/WebShareActivity;->adapter:Lcn/sharesdk/google/GooglePlusWebShareAdapter;

    invoke-virtual {v0}, Lcn/sharesdk/google/GooglePlusWebShareAdapter;->onStop()V

    .line 171
    :cond_9
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/mob/tools/FakeActivity;->setActivity(Landroid/app/Activity;)V

    .line 41
    iget-object v0, p0, Lcn/sharesdk/google/WebShareActivity;->adapter:Lcn/sharesdk/google/GooglePlusWebShareAdapter;

    if-nez v0, :cond_18

    .line 42
    invoke-direct {p0}, Lcn/sharesdk/google/WebShareActivity;->getAdapter()Lcn/sharesdk/google/GooglePlusWebShareAdapter;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/google/WebShareActivity;->adapter:Lcn/sharesdk/google/GooglePlusWebShareAdapter;

    .line 43
    iget-object v0, p0, Lcn/sharesdk/google/WebShareActivity;->adapter:Lcn/sharesdk/google/GooglePlusWebShareAdapter;

    if-nez v0, :cond_18

    .line 44
    new-instance v0, Lcn/sharesdk/google/GooglePlusWebShareAdapter;

    invoke-direct {v0}, Lcn/sharesdk/google/GooglePlusWebShareAdapter;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/google/WebShareActivity;->adapter:Lcn/sharesdk/google/GooglePlusWebShareAdapter;

    .line 47
    :cond_18
    iget-object v0, p0, Lcn/sharesdk/google/WebShareActivity;->adapter:Lcn/sharesdk/google/GooglePlusWebShareAdapter;

    invoke-virtual {v0, p1}, Lcn/sharesdk/google/GooglePlusWebShareAdapter;->setActivity(Landroid/app/Activity;)V

    .line 48
    return-void
.end method

.method public setScheme(Ljava/lang/String;)V
    .registers 2
    .param p1, "scheme"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcn/sharesdk/google/WebShareActivity;->scheme:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setSharedCallback(Lcn/sharesdk/framework/PlatformActionListener;)V
    .registers 2
    .param p1, "pa"    # Lcn/sharesdk/framework/PlatformActionListener;

    .prologue
    .line 35
    iput-object p1, p0, Lcn/sharesdk/google/WebShareActivity;->pa:Lcn/sharesdk/framework/PlatformActionListener;

    .line 36
    return-void
.end method
