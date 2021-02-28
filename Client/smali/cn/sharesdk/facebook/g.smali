.class public Lcn/sharesdk/facebook/g;
.super Lcom/mob/tools/FakeActivity;
.source "WebShareActivity.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcn/sharesdk/framework/PlatformActionListener;

.field private c:Lcn/sharesdk/facebook/a;

.field private d:Lcn/sharesdk/framework/authorize/RegisterView;

.field private e:Landroid/webkit/WebView;

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/mob/tools/FakeActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/facebook/g;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcn/sharesdk/facebook/g;->b:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic a(Lcn/sharesdk/facebook/g;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcn/sharesdk/facebook/g;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b()Lcn/sharesdk/facebook/a;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 57
    :try_start_1
    iget-object v0, p0, Lcn/sharesdk/facebook/g;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, p0, Lcn/sharesdk/facebook/g;->activity:Landroid/app/Activity;

    .line 58
    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/16 v3, 0x80

    .line 57
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 59
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "FBWebShareAdapter"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    if-eqz v0, :cond_23

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_25

    :cond_23
    move-object v0, v1

    .line 74
    :goto_24
    return-object v0

    .line 64
    :cond_25
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 66
    instance-of v2, v0, Lcn/sharesdk/facebook/a;

    if-nez v2, :cond_33

    move-object v0, v1

    .line 67
    goto :goto_24

    .line 70
    :cond_33
    check-cast v0, Lcn/sharesdk/facebook/a;
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_35} :catch_36

    goto :goto_24

    .line 71
    :catch_36
    move-exception v0

    .line 72
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 74
    goto :goto_24
.end method

.method private b(Ljava/lang/String;)V
    .registers 10

    .prologue
    const/16 v7, 0x9

    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 154
    if-nez p1, :cond_32

    const-string v0, ""

    .line 155
    :goto_9
    invoke-static {p1}, Lcom/mob/tools/utils/ResHelper;->urlToBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 156
    if-nez v1, :cond_38

    .line 157
    iput-boolean v4, p0, Lcn/sharesdk/facebook/g;->f:Z

    .line 158
    invoke-virtual {p0}, Lcn/sharesdk/facebook/g;->finish()V

    .line 159
    iget-object v1, p0, Lcn/sharesdk/facebook/g;->b:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v2, Ljava/lang/Throwable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to parse callback uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v5, v6, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 189
    :goto_31
    return-void

    .line 154
    :cond_32
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_9

    .line 163
    :cond_38
    const-string v0, "post_id"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 165
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4e

    .line 166
    const-string v3, "post_id"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    :cond_4e
    const-string v0, "error_code"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5e

    const-string v0, "error"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_92

    .line 170
    :cond_5e
    iget-object v0, p0, Lcn/sharesdk/facebook/g;->b:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_7d

    .line 171
    const-string v0, "error_code"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    const-string v2, "error_code"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_83

    const-string v2, "4201"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_83

    .line 174
    iget-object v0, p0, Lcn/sharesdk/facebook/g;->b:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v0, v5, v7}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 181
    :cond_7d
    :goto_7d
    iput-boolean v4, p0, Lcn/sharesdk/facebook/g;->f:Z

    .line 182
    invoke-virtual {p0}, Lcn/sharesdk/facebook/g;->finish()V

    goto :goto_31

    .line 176
    :cond_83
    invoke-static {v1}, Lcom/mob/tools/utils/ResHelper;->encodeUrl(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 177
    iget-object v1, p0, Lcn/sharesdk/facebook/g;->b:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v5, v7, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_7d

    .line 186
    :cond_92
    iput-boolean v4, p0, Lcn/sharesdk/facebook/g;->g:Z

    .line 187
    invoke-virtual {p0}, Lcn/sharesdk/facebook/g;->finish()V

    .line 188
    iget-object v0, p0, Lcn/sharesdk/facebook/g;->b:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v0, v5, v6, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    goto :goto_31
.end method


# virtual methods
.method protected a()Lcn/sharesdk/framework/authorize/RegisterView;
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 108
    new-instance v0, Lcn/sharesdk/framework/authorize/RegisterView;

    iget-object v1, p0, Lcn/sharesdk/facebook/g;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcn/sharesdk/framework/authorize/RegisterView;-><init>(Landroid/content/Context;)V

    .line 109
    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/RegisterView;->c()Lcn/sharesdk/framework/TitleLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcn/sharesdk/framework/TitleLayout;->getChildCount()I

    move-result v1

    .line 110
    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/RegisterView;->c()Lcn/sharesdk/framework/TitleLayout;

    move-result-object v2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v2, v1}, Lcn/sharesdk/framework/TitleLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 111
    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/RegisterView;->a()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcn/sharesdk/facebook/g$1;

    invoke-direct {v2, p0}, Lcn/sharesdk/facebook/g$1;-><init>(Lcn/sharesdk/facebook/g;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/RegisterView;->b()Landroid/webkit/WebView;

    move-result-object v1

    iput-object v1, p0, Lcn/sharesdk/facebook/g;->e:Landroid/webkit/WebView;

    .line 128
    iget-object v1, p0, Lcn/sharesdk/facebook/g;->e:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 129
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 130
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 131
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 132
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 133
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 134
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 135
    iget-object v2, p0, Lcn/sharesdk/facebook/g;->activity:Landroid/app/Activity;

    const-string v3, "database"

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 136
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 137
    iget-object v1, p0, Lcn/sharesdk/facebook/g;->e:Landroid/webkit/WebView;

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 138
    iget-object v1, p0, Lcn/sharesdk/facebook/g;->e:Landroid/webkit/WebView;

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 139
    iget-object v1, p0, Lcn/sharesdk/facebook/g;->e:Landroid/webkit/WebView;

    new-instance v2, Lcn/sharesdk/facebook/g$2;

    invoke-direct {v2, p0}, Lcn/sharesdk/facebook/g$2;-><init>(Lcn/sharesdk/facebook/g;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 148
    return-object v0
.end method

.method public a(Lcn/sharesdk/framework/PlatformActionListener;)V
    .registers 2

    .prologue
    .line 40
    iput-object p1, p0, Lcn/sharesdk/facebook/g;->b:Lcn/sharesdk/framework/PlatformActionListener;

    .line 41
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 36
    iput-object p1, p0, Lcn/sharesdk/facebook/g;->a:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public onCreate()V
    .registers 6

    .prologue
    .line 78
    invoke-virtual {p0}, Lcn/sharesdk/facebook/g;->a()Lcn/sharesdk/framework/authorize/RegisterView;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/facebook/g;->d:Lcn/sharesdk/framework/authorize/RegisterView;

    .line 80
    :try_start_6
    invoke-virtual {p0}, Lcn/sharesdk/facebook/g;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ssdk_share_to_facebook"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 81
    if-lez v0, :cond_1f

    .line 82
    iget-object v1, p0, Lcn/sharesdk/facebook/g;->d:Lcn/sharesdk/framework/authorize/RegisterView;

    invoke-virtual {v1}, Lcn/sharesdk/framework/authorize/RegisterView;->c()Lcn/sharesdk/framework/TitleLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcn/sharesdk/framework/TitleLayout;->getTvTitle()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_1f} :catch_76

    .line 89
    :cond_1f
    :goto_1f
    iget-object v0, p0, Lcn/sharesdk/facebook/g;->c:Lcn/sharesdk/facebook/a;

    iget-object v1, p0, Lcn/sharesdk/facebook/g;->d:Lcn/sharesdk/framework/authorize/RegisterView;

    invoke-virtual {v1}, Lcn/sharesdk/framework/authorize/RegisterView;->d()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/sharesdk/facebook/a;->a(Landroid/widget/RelativeLayout;)V

    .line 90
    iget-object v0, p0, Lcn/sharesdk/facebook/g;->c:Lcn/sharesdk/facebook/a;

    iget-object v1, p0, Lcn/sharesdk/facebook/g;->d:Lcn/sharesdk/framework/authorize/RegisterView;

    invoke-virtual {v1}, Lcn/sharesdk/framework/authorize/RegisterView;->b()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/sharesdk/facebook/a;->a(Landroid/webkit/WebView;)V

    .line 91
    iget-object v0, p0, Lcn/sharesdk/facebook/g;->c:Lcn/sharesdk/facebook/a;

    iget-object v1, p0, Lcn/sharesdk/facebook/g;->d:Lcn/sharesdk/framework/authorize/RegisterView;

    invoke-virtual {v1}, Lcn/sharesdk/framework/authorize/RegisterView;->c()Lcn/sharesdk/framework/TitleLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/sharesdk/facebook/a;->a(Lcn/sharesdk/framework/TitleLayout;)V

    .line 92
    iget-object v0, p0, Lcn/sharesdk/facebook/g;->c:Lcn/sharesdk/facebook/a;

    invoke-virtual {v0}, Lcn/sharesdk/facebook/a;->a()V

    .line 93
    invoke-virtual {p0}, Lcn/sharesdk/facebook/g;->disableScreenCapture()Z

    .line 94
    iget-object v0, p0, Lcn/sharesdk/facebook/g;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcn/sharesdk/facebook/g;->d:Lcn/sharesdk/framework/authorize/RegisterView;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 96
    iget-object v0, p0, Lcn/sharesdk/facebook/g;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    .line 97
    const-string v1, "none"

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getDetailNetworkTypeForStatic()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/sharesdk/facebook/g;->f:Z

    .line 99
    invoke-virtual {p0}, Lcn/sharesdk/facebook/g;->finish()V

    .line 100
    iget-object v0, p0, Lcn/sharesdk/facebook/g;->b:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Throwable;

    const-string v4, "failed to load webpage, network disconnected."

    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2, v3}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 105
    :goto_75
    return-void

    .line 84
    :catch_76
    move-exception v0

    .line 85
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 86
    iget-object v0, p0, Lcn/sharesdk/facebook/g;->d:Lcn/sharesdk/framework/authorize/RegisterView;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/RegisterView;->c()Lcn/sharesdk/framework/TitleLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/TitleLayout;->setVisibility(I)V

    goto :goto_1f

    .line 104
    :cond_8a
    iget-object v0, p0, Lcn/sharesdk/facebook/g;->d:Lcn/sharesdk/framework/authorize/RegisterView;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/RegisterView;->b()Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/facebook/g;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_75
.end method

.method public onDestroy()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 222
    iget-boolean v0, p0, Lcn/sharesdk/facebook/g;->f:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcn/sharesdk/facebook/g;->g:Z

    if-nez v0, :cond_f

    .line 223
    iget-object v0, p0, Lcn/sharesdk/facebook/g;->b:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 225
    :cond_f
    iget-object v0, p0, Lcn/sharesdk/facebook/g;->e:Landroid/webkit/WebView;

    if-eqz v0, :cond_18

    .line 226
    iget-object v0, p0, Lcn/sharesdk/facebook/g;->e:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 228
    :cond_18
    iget-object v0, p0, Lcn/sharesdk/facebook/g;->c:Lcn/sharesdk/facebook/a;

    if-eqz v0, :cond_21

    .line 229
    iget-object v0, p0, Lcn/sharesdk/facebook/g;->c:Lcn/sharesdk/facebook/a;

    invoke-virtual {v0}, Lcn/sharesdk/facebook/a;->b()V

    .line 231
    :cond_21
    return-void
.end method

.method public onFinish()Z
    .registers 2

    .prologue
    .line 234
    iget-object v0, p0, Lcn/sharesdk/facebook/g;->c:Lcn/sharesdk/facebook/a;

    if-eqz v0, :cond_b

    .line 235
    iget-object v0, p0, Lcn/sharesdk/facebook/g;->c:Lcn/sharesdk/facebook/a;

    invoke-virtual {v0}, Lcn/sharesdk/facebook/a;->h()Z

    move-result v0

    .line 237
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
    .line 198
    iget-object v0, p0, Lcn/sharesdk/facebook/g;->c:Lcn/sharesdk/facebook/a;

    if-eqz v0, :cond_9

    .line 199
    iget-object v0, p0, Lcn/sharesdk/facebook/g;->c:Lcn/sharesdk/facebook/a;

    invoke-virtual {v0}, Lcn/sharesdk/facebook/a;->d()V

    .line 201
    :cond_9
    return-void
.end method

.method public onRestart()V
    .registers 2

    .prologue
    .line 216
    iget-object v0, p0, Lcn/sharesdk/facebook/g;->c:Lcn/sharesdk/facebook/a;

    if-eqz v0, :cond_9

    .line 217
    iget-object v0, p0, Lcn/sharesdk/facebook/g;->c:Lcn/sharesdk/facebook/a;

    invoke-virtual {v0}, Lcn/sharesdk/facebook/a;->g()V

    .line 219
    :cond_9
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 204
    iget-object v0, p0, Lcn/sharesdk/facebook/g;->c:Lcn/sharesdk/facebook/a;

    if-eqz v0, :cond_9

    .line 205
    iget-object v0, p0, Lcn/sharesdk/facebook/g;->c:Lcn/sharesdk/facebook/a;

    invoke-virtual {v0}, Lcn/sharesdk/facebook/a;->e()V

    .line 207
    :cond_9
    return-void
.end method

.method public onStart()V
    .registers 2

    .prologue
    .line 192
    iget-object v0, p0, Lcn/sharesdk/facebook/g;->c:Lcn/sharesdk/facebook/a;

    if-eqz v0, :cond_9

    .line 193
    iget-object v0, p0, Lcn/sharesdk/facebook/g;->c:Lcn/sharesdk/facebook/a;

    invoke-virtual {v0}, Lcn/sharesdk/facebook/a;->c()V

    .line 195
    :cond_9
    return-void
.end method

.method public onStop()V
    .registers 2

    .prologue
    .line 210
    iget-object v0, p0, Lcn/sharesdk/facebook/g;->c:Lcn/sharesdk/facebook/a;

    if-eqz v0, :cond_9

    .line 211
    iget-object v0, p0, Lcn/sharesdk/facebook/g;->c:Lcn/sharesdk/facebook/a;

    invoke-virtual {v0}, Lcn/sharesdk/facebook/a;->f()V

    .line 213
    :cond_9
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/mob/tools/FakeActivity;->setActivity(Landroid/app/Activity;)V

    .line 46
    iget-object v0, p0, Lcn/sharesdk/facebook/g;->c:Lcn/sharesdk/facebook/a;

    if-nez v0, :cond_18

    .line 47
    invoke-direct {p0}, Lcn/sharesdk/facebook/g;->b()Lcn/sharesdk/facebook/a;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/facebook/g;->c:Lcn/sharesdk/facebook/a;

    .line 48
    iget-object v0, p0, Lcn/sharesdk/facebook/g;->c:Lcn/sharesdk/facebook/a;

    if-nez v0, :cond_18

    .line 49
    new-instance v0, Lcn/sharesdk/facebook/a;

    invoke-direct {v0}, Lcn/sharesdk/facebook/a;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/facebook/g;->c:Lcn/sharesdk/facebook/a;

    .line 52
    :cond_18
    iget-object v0, p0, Lcn/sharesdk/facebook/g;->c:Lcn/sharesdk/facebook/a;

    invoke-virtual {v0, p1}, Lcn/sharesdk/facebook/a;->a(Landroid/app/Activity;)V

    .line 53
    return-void
.end method
