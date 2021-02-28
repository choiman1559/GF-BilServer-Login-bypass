.class public Lcn/sharesdk/framework/authorize/e;
.super Lcn/sharesdk/framework/authorize/a;
.source "WebAuthorizeActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcn/sharesdk/framework/authorize/ResizeLayout$OnResizeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/sharesdk/framework/authorize/e$a;
    }
.end annotation


# instance fields
.field protected b:Lcn/sharesdk/framework/authorize/AuthorizeListener;

.field private c:Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

.field private d:Lcn/sharesdk/framework/authorize/RegisterView;

.field private e:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcn/sharesdk/framework/authorize/a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/framework/authorize/e;)Landroid/app/Activity;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/e;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic b(Lcn/sharesdk/framework/authorize/e;)Landroid/app/Activity;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/e;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method private c()Lcn/sharesdk/framework/authorize/AuthorizeAdapter;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 62
    :try_start_1
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/e;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, p0, Lcn/sharesdk/framework/authorize/e;->activity:Landroid/app/Activity;

    .line 63
    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/16 v3, 0x80

    .line 62
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 64
    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_1f

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_21

    :cond_1f
    move-object v0, v1

    .line 87
    :goto_20
    return-object v0

    .line 68
    :cond_21
    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "AuthorizeAdapter"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_31

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_43

    .line 71
    :cond_31
    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "Adapter"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    if-eqz v0, :cond_41

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_43

    :cond_41
    move-object v0, v1

    .line 73
    goto :goto_20

    .line 77
    :cond_43
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 79
    instance-of v2, v0, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    if-nez v2, :cond_51

    move-object v0, v1

    .line 80
    goto :goto_20

    .line 83
    :cond_51
    check-cast v0, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_53} :catch_54

    goto :goto_20

    .line 84
    :catch_54
    move-exception v0

    .line 85
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 87
    goto :goto_20
.end method


# virtual methods
.method public OnResize(IIII)V
    .registers 6
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 235
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/e;->c:Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    if-eqz v0, :cond_9

    .line 236
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/e;->c:Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;->onResize(IIII)V

    .line 238
    :cond_9
    return-void
.end method

.method public a(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V
    .registers 2

    .prologue
    .line 46
    iput-object p1, p0, Lcn/sharesdk/framework/authorize/e;->b:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    .line 47
    return-void
.end method

.method protected b()Lcn/sharesdk/framework/authorize/RegisterView;
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 130
    new-instance v1, Lcn/sharesdk/framework/authorize/RegisterView;

    iget-object v0, p0, Lcn/sharesdk/framework/authorize/e;->activity:Landroid/app/Activity;

    invoke-direct {v1, v0}, Lcn/sharesdk/framework/authorize/RegisterView;-><init>(Landroid/content/Context;)V

    .line 131
    invoke-virtual {v1}, Lcn/sharesdk/framework/authorize/RegisterView;->a()Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcn/sharesdk/framework/authorize/e$1;

    invoke-direct {v2, p0}, Lcn/sharesdk/framework/authorize/e$1;-><init>(Lcn/sharesdk/framework/authorize/e;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    invoke-virtual {v1}, Lcn/sharesdk/framework/authorize/RegisterView;->b()Landroid/webkit/WebView;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/framework/authorize/e;->e:Landroid/webkit/WebView;

    .line 153
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/e;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 154
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 155
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 156
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 157
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/e;->e:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 158
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/e;->e:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 162
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/e;->a:Lcn/sharesdk/framework/authorize/AuthorizeHelper;

    invoke-interface {v0, p0}, Lcn/sharesdk/framework/authorize/AuthorizeHelper;->getAuthorizeWebviewClient(Lcn/sharesdk/framework/authorize/e;)Lcn/sharesdk/framework/authorize/b;

    move-result-object v2

    .line 163
    const-string v0, ""

    .line 164
    if-eqz v2, :cond_46

    .line 165
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 167
    :cond_46
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_54

    const-string v3, "GooglePlusAuthorizeWebviewClient"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6a

    .line 168
    :cond_54
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_62

    const-string v3, "GooglePlus"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6a

    :cond_62
    const-string v3, "YoutubeAuthorizeWebviewClient"

    .line 169
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c1

    .line 170
    :cond_6a
    const-string v0, "Mozilla/5.0 (Linux; Android 5.1; m2 note Build/LMY47D) "

    .line 171
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "AppleWebKit/537.36 (KHTML, like Gecko) "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 172
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "Version/4.0 "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 173
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "Chrome/40.0.2214.127 "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 174
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "Mobile Safari/537.36"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 175
    iget-object v3, p0, Lcn/sharesdk/framework/authorize/e;->e:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 177
    :cond_c1
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/e;->e:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 178
    new-instance v0, Lcn/sharesdk/framework/authorize/e$2;

    invoke-direct {v0, p0}, Lcn/sharesdk/framework/authorize/e$2;-><init>(Lcn/sharesdk/framework/authorize/e;)V

    .line 202
    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/e$2;->start()V

    .line 203
    return-object v1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 207
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_88

    .line 231
    :cond_5
    :goto_5
    const/4 v0, 0x0

    return v0

    .line 209
    :pswitch_7
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_40

    .line 210
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/e;->a:Lcn/sharesdk/framework/authorize/AuthorizeHelper;

    invoke-interface {v0}, Lcn/sharesdk/framework/authorize/AuthorizeHelper;->getAuthorizeListener()Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object v0

    .line 211
    if-eqz v0, :cond_5

    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Network error (platform: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/sharesdk/framework/authorize/e;->a:Lcn/sharesdk/framework/authorize/AuthorizeHelper;

    invoke-interface {v2}, Lcn/sharesdk/framework/authorize/AuthorizeHelper;->getPlatform()Lcn/sharesdk/framework/Platform;

    move-result-object v2

    invoke-virtual {v2}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 213
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 216
    :cond_40
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 217
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_81

    .line 218
    invoke-virtual {p0}, Lcn/sharesdk/framework/authorize/e;->finish()V

    .line 219
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/e;->a:Lcn/sharesdk/framework/authorize/AuthorizeHelper;

    invoke-interface {v0}, Lcn/sharesdk/framework/authorize/AuthorizeHelper;->getAuthorizeListener()Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object v0

    .line 220
    if-eqz v0, :cond_5

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Authorize URL is empty (platform: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/sharesdk/framework/authorize/e;->a:Lcn/sharesdk/framework/authorize/AuthorizeHelper;

    invoke-interface {v2}, Lcn/sharesdk/framework/authorize/AuthorizeHelper;->getPlatform()Lcn/sharesdk/framework/Platform;

    move-result-object v2

    invoke-virtual {v2}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 222
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 227
    :cond_81
    iget-object v1, p0, Lcn/sharesdk/framework/authorize/e;->e:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 207
    :pswitch_data_88
    .packed-switch 0x2
        :pswitch_7
    .end packed-switch
.end method

.method public onCreate()V
    .registers 10

    .prologue
    const/4 v5, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    .line 92
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/e;->d:Lcn/sharesdk/framework/authorize/RegisterView;

    if-nez v0, :cond_80

    .line 93
    invoke-virtual {p0}, Lcn/sharesdk/framework/authorize/e;->b()Lcn/sharesdk/framework/authorize/RegisterView;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/framework/authorize/e;->d:Lcn/sharesdk/framework/authorize/RegisterView;

    .line 94
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/e;->d:Lcn/sharesdk/framework/authorize/RegisterView;

    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/authorize/RegisterView;->a(Lcn/sharesdk/framework/authorize/ResizeLayout$OnResizeListener;)V

    .line 95
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/e;->d:Lcn/sharesdk/framework/authorize/RegisterView;

    iget-object v3, p0, Lcn/sharesdk/framework/authorize/e;->c:Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    invoke-virtual {v3}, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;->isNotitle()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcn/sharesdk/framework/authorize/RegisterView;->a(Z)V

    .line 96
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/e;->c:Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    iget-object v3, p0, Lcn/sharesdk/framework/authorize/e;->d:Lcn/sharesdk/framework/authorize/RegisterView;

    invoke-virtual {v3}, Lcn/sharesdk/framework/authorize/RegisterView;->d()Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;->setBodyView(Landroid/widget/RelativeLayout;)V

    .line 97
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/e;->c:Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    iget-object v3, p0, Lcn/sharesdk/framework/authorize/e;->d:Lcn/sharesdk/framework/authorize/RegisterView;

    invoke-virtual {v3}, Lcn/sharesdk/framework/authorize/RegisterView;->b()Landroid/webkit/WebView;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;->setWebView(Landroid/webkit/WebView;)V

    .line 98
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/e;->d:Lcn/sharesdk/framework/authorize/RegisterView;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/RegisterView;->c()Lcn/sharesdk/framework/TitleLayout;

    move-result-object v3

    .line 99
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/e;->c:Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    invoke-virtual {v0, v3}, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;->setTitleView(Lcn/sharesdk/framework/TitleLayout;)V

    .line 100
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/e;->a:Lcn/sharesdk/framework/authorize/AuthorizeHelper;

    invoke-interface {v0}, Lcn/sharesdk/framework/authorize/AuthorizeHelper;->getPlatform()Lcn/sharesdk/framework/Platform;

    move-result-object v0

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v0

    .line 101
    iget-object v4, p0, Lcn/sharesdk/framework/authorize/e;->c:Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    iget-object v7, p0, Lcn/sharesdk/framework/authorize/e;->a:Lcn/sharesdk/framework/authorize/AuthorizeHelper;

    invoke-interface {v7}, Lcn/sharesdk/framework/authorize/AuthorizeHelper;->getPlatform()Lcn/sharesdk/framework/Platform;

    move-result-object v7

    invoke-virtual {v7}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;->setPlatformName(Ljava/lang/String;)V

    .line 103
    :try_start_5a
    invoke-virtual {p0}, Lcn/sharesdk/framework/authorize/e;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ssdk_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 104
    invoke-virtual {v3}, Lcn/sharesdk/framework/TitleLayout;->getTvTitle()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(I)V
    :try_end_80
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_80} :catch_b8

    .line 116
    :cond_80
    :goto_80
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/e;->c:Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;->onCreate()V

    .line 117
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/e;->c:Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    if-eqz v0, :cond_ad

    iget-object v0, p0, Lcn/sharesdk/framework/authorize/e;->c:Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;->isPopUpAnimationDisable()Z

    move-result v0

    if-nez v0, :cond_ad

    .line 118
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 121
    const-wide/16 v2, 0x226

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 122
    new-instance v1, Lcn/sharesdk/framework/authorize/e$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcn/sharesdk/framework/authorize/e$a;-><init>(Lcn/sharesdk/framework/authorize/e$1;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 123
    iget-object v1, p0, Lcn/sharesdk/framework/authorize/e;->d:Lcn/sharesdk/framework/authorize/RegisterView;

    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/authorize/RegisterView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 125
    :cond_ad
    invoke-virtual {p0}, Lcn/sharesdk/framework/authorize/e;->disableScreenCapture()Z

    .line 126
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/e;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcn/sharesdk/framework/authorize/e;->d:Lcn/sharesdk/framework/authorize/RegisterView;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 127
    return-void

    .line 105
    :catch_b8
    move-exception v0

    .line 108
    :try_start_b9
    invoke-virtual {p0}, Lcn/sharesdk/framework/authorize/e;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v7, "ssdk_weibo_oauth_regiseter"

    .line 107
    invoke-static {v4, v7}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 109
    invoke-virtual {v3}, Lcn/sharesdk/framework/TitleLayout;->getTvTitle()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V
    :try_end_ca
    .catch Ljava/lang/Throwable; {:try_start_b9 .. :try_end_ca} :catch_cb

    goto :goto_80

    .line 110
    :catch_cb
    move-exception v3

    .line 111
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_80
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 302
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/e;->c:Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    if-eqz v0, :cond_9

    .line 303
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/e;->c:Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;->onDestroy()V

    .line 305
    :cond_9
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/e;->e:Landroid/webkit/WebView;

    if-eqz v0, :cond_13

    .line 306
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/e;->e:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 308
    :cond_13
    return-void
.end method

.method public onFinish()Z
    .registers 2

    .prologue
    .line 287
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/e;->c:Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    if-eqz v0, :cond_b

    .line 288
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/e;->c:Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;->onFinish()Z

    move-result v0

    .line 298
    :goto_a
    return v0

    .line 290
    :cond_b
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/e;->e:Landroid/webkit/WebView;

    if-eqz v0, :cond_19

    .line 291
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/e;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 292
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/e;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 294
    :cond_19
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/e;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_2c

    .line 295
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/e;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 296
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 298
    :cond_2c
    invoke-super {p0}, Lcn/sharesdk/framework/authorize/a;->onFinish()Z

    move-result v0

    goto :goto_a
.end method

.method public onKeyEvent(ILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 241
    const/4 v0, 0x0

    .line 242
    iget-object v1, p0, Lcn/sharesdk/framework/authorize/e;->c:Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    if-eqz v1, :cond_b

    .line 243
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/e;->c:Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    invoke-virtual {v0, p1, p2}, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;->onKeyEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 245
    :cond_b
    if-nez v0, :cond_21

    const/4 v1, 0x4

    if-ne p1, v1, :cond_21

    .line 246
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_21

    .line 247
    iget-object v1, p0, Lcn/sharesdk/framework/authorize/e;->a:Lcn/sharesdk/framework/authorize/AuthorizeHelper;

    invoke-interface {v1}, Lcn/sharesdk/framework/authorize/AuthorizeHelper;->getAuthorizeListener()Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object v1

    .line 248
    if-eqz v1, :cond_21

    .line 249
    invoke-interface {v1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onCancel()V

    .line 252
    :cond_21
    if-eqz v0, :cond_25

    const/4 v0, 0x1

    :goto_24
    return v0

    :cond_25
    invoke-super {p0, p1, p2}, Lcn/sharesdk/framework/authorize/a;->onKeyEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_24
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 262
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/e;->c:Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    if-eqz v0, :cond_9

    .line 263
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/e;->c:Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;->onPause()V

    .line 265
    :cond_9
    return-void
.end method

.method public onRestart()V
    .registers 2

    .prologue
    .line 280
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/e;->c:Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    if-eqz v0, :cond_9

    .line 281
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/e;->c:Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;->onRestart()V

    .line 283
    :cond_9
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 268
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/e;->c:Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    if-eqz v0, :cond_9

    .line 269
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/e;->c:Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;->onResume()V

    .line 271
    :cond_9
    return-void
.end method

.method public onStart()V
    .registers 2

    .prologue
    .line 256
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/e;->c:Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    if-eqz v0, :cond_9

    .line 257
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/e;->c:Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;->onStart()V

    .line 259
    :cond_9
    return-void
.end method

.method public onStop()V
    .registers 2

    .prologue
    .line 274
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/e;->c:Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    if-eqz v0, :cond_9

    .line 275
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/e;->c:Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;->onStop()V

    .line 277
    :cond_9
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcn/sharesdk/framework/authorize/a;->setActivity(Landroid/app/Activity;)V

    .line 51
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/e;->c:Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    if-nez v0, :cond_18

    .line 52
    invoke-direct {p0}, Lcn/sharesdk/framework/authorize/e;->c()Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/framework/authorize/e;->c:Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    .line 53
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/e;->c:Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    if-nez v0, :cond_18

    .line 54
    new-instance v0, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    invoke-direct {v0}, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/framework/authorize/e;->c:Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    .line 57
    :cond_18
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/e;->c:Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;->setActivity(Landroid/app/Activity;)V

    .line 58
    return-void
.end method
