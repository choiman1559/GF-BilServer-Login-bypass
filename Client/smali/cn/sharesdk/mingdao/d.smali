.class public Lcn/sharesdk/mingdao/d;
.super Lcom/mob/tools/FakeActivity;
.source "ShareActivity.java"


# instance fields
.field private a:Z

.field private b:Lcn/sharesdk/framework/PlatformActionListener;

.field private c:Lcn/sharesdk/framework/authorize/RegisterView;

.field private d:Landroid/webkit/WebView;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/mob/tools/FakeActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/mingdao/d;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcn/sharesdk/mingdao/d;->b:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic a(Lcn/sharesdk/mingdao/d;Z)Z
    .registers 2

    .prologue
    .line 24
    iput-boolean p1, p0, Lcn/sharesdk/mingdao/d;->f:Z

    return p1
.end method

.method private b()V
    .registers 6

    .prologue
    const/4 v2, 0x1

    .line 52
    invoke-virtual {p0}, Lcn/sharesdk/mingdao/d;->a()Lcn/sharesdk/framework/authorize/RegisterView;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/mingdao/d;->c:Lcn/sharesdk/framework/authorize/RegisterView;

    .line 54
    :try_start_7
    invoke-virtual {p0}, Lcn/sharesdk/mingdao/d;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ssdk_share_to_mingdao"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 55
    if-lez v0, :cond_20

    .line 56
    iget-object v1, p0, Lcn/sharesdk/mingdao/d;->c:Lcn/sharesdk/framework/authorize/RegisterView;

    invoke-virtual {v1}, Lcn/sharesdk/framework/authorize/RegisterView;->c()Lcn/sharesdk/framework/TitleLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcn/sharesdk/framework/TitleLayout;->getTvTitle()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_20} :catch_4d

    .line 62
    :cond_20
    :goto_20
    iget-object v0, p0, Lcn/sharesdk/mingdao/d;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcn/sharesdk/mingdao/d;->c:Lcn/sharesdk/framework/authorize/RegisterView;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 64
    iget-object v0, p0, Lcn/sharesdk/mingdao/d;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    .line 65
    const-string v1, "none"

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getDetailNetworkTypeForStatic()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 66
    iput-boolean v2, p0, Lcn/sharesdk/mingdao/d;->g:Z

    .line 67
    invoke-virtual {p0}, Lcn/sharesdk/mingdao/d;->finish()V

    .line 68
    iget-object v0, p0, Lcn/sharesdk/mingdao/d;->b:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Throwable;

    const-string v4, "failed to load webpage, network disconnected."

    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2, v3}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 103
    :goto_4c
    return-void

    .line 58
    :catch_4d
    move-exception v0

    .line 59
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 60
    iget-object v0, p0, Lcn/sharesdk/mingdao/d;->c:Lcn/sharesdk/framework/authorize/RegisterView;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/RegisterView;->c()Lcn/sharesdk/framework/TitleLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/TitleLayout;->setVisibility(I)V

    goto :goto_20

    .line 71
    :cond_61
    iget-object v0, p0, Lcn/sharesdk/mingdao/d;->c:Lcn/sharesdk/framework/authorize/RegisterView;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/RegisterView;->b()Landroid/webkit/WebView;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 73
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 74
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 75
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 76
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 77
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 78
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 79
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 80
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 81
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 83
    new-instance v1, Lcn/sharesdk/mingdao/d$1;

    invoke-direct {v1, p0}, Lcn/sharesdk/mingdao/d$1;-><init>(Lcn/sharesdk/mingdao/d;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 102
    iget-object v1, p0, Lcn/sharesdk/mingdao/d;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_4c
.end method


# virtual methods
.method protected a()Lcn/sharesdk/framework/authorize/RegisterView;
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 106
    new-instance v0, Lcn/sharesdk/framework/authorize/RegisterView;

    iget-object v1, p0, Lcn/sharesdk/mingdao/d;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcn/sharesdk/framework/authorize/RegisterView;-><init>(Landroid/content/Context;)V

    .line 107
    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/RegisterView;->c()Lcn/sharesdk/framework/TitleLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcn/sharesdk/framework/TitleLayout;->getChildCount()I

    move-result v1

    .line 108
    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/RegisterView;->c()Lcn/sharesdk/framework/TitleLayout;

    move-result-object v2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v2, v1}, Lcn/sharesdk/framework/TitleLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 109
    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/RegisterView;->a()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcn/sharesdk/mingdao/d$2;

    invoke-direct {v2, p0}, Lcn/sharesdk/mingdao/d$2;-><init>(Lcn/sharesdk/mingdao/d;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/RegisterView;->b()Landroid/webkit/WebView;

    move-result-object v1

    iput-object v1, p0, Lcn/sharesdk/mingdao/d;->d:Landroid/webkit/WebView;

    .line 127
    iget-object v1, p0, Lcn/sharesdk/mingdao/d;->d:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 128
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 129
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 130
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 131
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 132
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 133
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 134
    iget-object v2, p0, Lcn/sharesdk/mingdao/d;->activity:Landroid/app/Activity;

    const-string v3, "database"

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 135
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 136
    iget-object v1, p0, Lcn/sharesdk/mingdao/d;->d:Landroid/webkit/WebView;

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 137
    iget-object v1, p0, Lcn/sharesdk/mingdao/d;->d:Landroid/webkit/WebView;

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 138
    return-object v0
.end method

.method public a(Lcn/sharesdk/framework/PlatformActionListener;)V
    .registers 2

    .prologue
    .line 40
    iput-object p1, p0, Lcn/sharesdk/mingdao/d;->b:Lcn/sharesdk/framework/PlatformActionListener;

    .line 41
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .registers 3

    .prologue
    .line 35
    iput-object p1, p0, Lcn/sharesdk/mingdao/d;->e:Ljava/lang/String;

    .line 36
    iput-boolean p2, p0, Lcn/sharesdk/mingdao/d;->a:Z

    .line 37
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 10
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 151
    invoke-virtual {p0}, Lcn/sharesdk/mingdao/d;->finish()V

    .line 152
    const/4 v0, -0x1

    if-ne p2, v0, :cond_84

    .line 153
    if-nez p3, :cond_1a

    .line 154
    iget-object v0, p0, Lcn/sharesdk/mingdao/d;->b:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_1a

    .line 155
    iget-object v0, p0, Lcn/sharesdk/mingdao/d;->b:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "response is empty"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v5, v4, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 159
    :cond_1a
    const-string v0, "key_error_code"

    invoke-virtual {p3, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 160
    if-nez v0, :cond_48

    .line 161
    const-string v0, "key_response"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 162
    if-nez v0, :cond_38

    .line 163
    iget-object v1, p0, Lcn/sharesdk/mingdao/d;->b:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_39

    .line 164
    iget-object v0, p0, Lcn/sharesdk/mingdao/d;->b:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v5, v4, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    .line 183
    :cond_38
    :goto_38
    return-void

    .line 166
    :cond_39
    iget-object v1, p0, Lcn/sharesdk/mingdao/d;->b:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v2, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v2}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v2, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    invoke-interface {v1, v5, v4, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    goto :goto_38

    .line 170
    :cond_48
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 171
    const-string v2, "key_error_code"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    const-string v0, "key_error_msg"

    const-string v2, "key_error_msg"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    const-string v0, "key_error_detail"

    const-string v2, "key_error_detail"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    iget-object v0, p0, Lcn/sharesdk/mingdao/d;->b:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_38

    .line 175
    iget-object v0, p0, Lcn/sharesdk/mingdao/d;->b:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v2, Ljava/lang/Throwable;

    new-instance v3, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v3}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v3, v1}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v5, v4, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_38

    .line 179
    :cond_84
    iget-object v0, p0, Lcn/sharesdk/mingdao/d;->b:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_38

    .line 180
    iget-object v0, p0, Lcn/sharesdk/mingdao/d;->b:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v0, v5, v4}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    goto :goto_38
.end method

.method public onCreate()V
    .registers 2

    .prologue
    .line 44
    iget-boolean v0, p0, Lcn/sharesdk/mingdao/d;->a:Z

    if-eqz v0, :cond_5

    .line 49
    :goto_4
    return-void

    .line 47
    :cond_5
    invoke-direct {p0}, Lcn/sharesdk/mingdao/d;->b()V

    goto :goto_4
.end method

.method public onDestroy()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 142
    iget-boolean v0, p0, Lcn/sharesdk/mingdao/d;->g:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcn/sharesdk/mingdao/d;->f:Z

    if-nez v0, :cond_f

    .line 143
    iget-object v0, p0, Lcn/sharesdk/mingdao/d;->b:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 145
    :cond_f
    iget-object v0, p0, Lcn/sharesdk/mingdao/d;->d:Landroid/webkit/WebView;

    if-eqz v0, :cond_18

    .line 146
    iget-object v0, p0, Lcn/sharesdk/mingdao/d;->d:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 148
    :cond_18
    return-void
.end method

.method public onKeyEvent(ILandroid/view/KeyEvent;)Z
    .registers 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    .line 186
    packed-switch p1, :pswitch_data_18

    .line 195
    :cond_4
    :goto_4
    return v3

    .line 188
    :pswitch_5
    iget-boolean v0, p0, Lcn/sharesdk/mingdao/d;->f:Z

    if-eqz v0, :cond_4

    .line 189
    iget-object v0, p0, Lcn/sharesdk/mingdao/d;->b:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v1, v3, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    .line 190
    invoke-virtual {p0}, Lcn/sharesdk/mingdao/d;->finish()V

    goto :goto_4

    .line 186
    :pswitch_data_18
    .packed-switch 0x4
        :pswitch_5
    .end packed-switch
.end method
