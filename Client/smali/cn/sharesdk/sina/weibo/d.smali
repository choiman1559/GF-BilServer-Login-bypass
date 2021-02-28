.class public Lcn/sharesdk/sina/weibo/d;
.super Lcom/mob/tools/FakeActivity;
.source "WebAuthPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcn/sharesdk/framework/authorize/AuthorizeListener;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Lcn/sharesdk/sina/weibo/sdk/a/a;

.field private g:Landroid/widget/LinearLayout;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/webkit/WebView;

.field private j:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/mob/tools/FakeActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/sina/weibo/d;)I
    .registers 2

    .prologue
    .line 32
    iget v0, p0, Lcn/sharesdk/sina/weibo/d;->e:I

    return v0
.end method

.method static synthetic a(Lcn/sharesdk/sina/weibo/d;I)I
    .registers 2

    .prologue
    .line 32
    iput p1, p0, Lcn/sharesdk/sina/weibo/d;->e:I

    return p1
.end method

.method private a()V
    .registers 3

    .prologue
    .line 69
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/d;->f:Lcn/sharesdk/sina/weibo/sdk/a/a;

    invoke-virtual {v0}, Lcn/sharesdk/sina/weibo/sdk/a/a;->b()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/sina/weibo/d;->h:Landroid/widget/TextView;

    .line 70
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/d;->f:Lcn/sharesdk/sina/weibo/sdk/a/a;

    invoke-virtual {v0}, Lcn/sharesdk/sina/weibo/sdk/a/a;->c()Landroid/webkit/WebView;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/sina/weibo/d;->i:Landroid/webkit/WebView;

    .line 71
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/d;->f:Lcn/sharesdk/sina/weibo/sdk/a/a;

    invoke-virtual {v0}, Lcn/sharesdk/sina/weibo/sdk/a/a;->d()Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/sina/weibo/d;->g:Landroid/widget/LinearLayout;

    .line 72
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/d;->f:Lcn/sharesdk/sina/weibo/sdk/a/a;

    invoke-virtual {v0}, Lcn/sharesdk/sina/weibo/sdk/a/a;->a()Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/sina/weibo/d;->j:Landroid/widget/Button;

    .line 74
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/d;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/d;->j:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->isRemoveCookieOnAuthorize()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 78
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/d;->activity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 79
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 82
    :cond_3c
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/d;->i:Landroid/webkit/WebView;

    new-instance v1, Lcn/sharesdk/sina/weibo/d$1;

    invoke-direct {v1, p0}, Lcn/sharesdk/sina/weibo/d$1;-><init>(Lcn/sharesdk/sina/weibo/d;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 111
    invoke-direct {p0}, Lcn/sharesdk/sina/weibo/d;->c()Ljava/lang/String;

    .line 112
    return-void
.end method

.method static synthetic a(Lcn/sharesdk/sina/weibo/d;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcn/sharesdk/sina/weibo/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 147
    invoke-static {p1}, Lcom/mob/tools/utils/ResHelper;->urlToBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 148
    const-string v0, "access_token"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 149
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/d;->a:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-interface {v0, v1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onComplete(Landroid/os/Bundle;)V

    .line 163
    :cond_11
    :goto_11
    invoke-virtual {p0}, Lcn/sharesdk/sina/weibo/d;->finish()V

    .line 164
    return-void

    .line 150
    :cond_15
    const-string v0, "error"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 151
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 153
    :try_start_22
    const-string v3, "error_uri:"

    const-string v0, "error_uri"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8b

    const-string v0, "error_uri"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_32
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 154
    const-string v3, "error:"

    const-string v0, "error"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8e

    const-string v0, "error"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_45
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 155
    const-string v3, "error_description:"

    const-string v0, "error_description"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_91

    const-string v0, "error_description"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_58
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 156
    const-string v3, "error_code:"

    const-string v0, "error_code"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_94

    const-string v0, "error_code"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_6b
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 157
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/d;->a:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    new-instance v1, Ljava/lang/Throwable;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V
    :try_end_7c
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_7c} :catch_7d

    goto :goto_11

    .line 158
    :catch_7d
    move-exception v0

    .line 159
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->e(Ljava/lang/Throwable;)I

    .line 160
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/d;->a:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-interface {v1, v0}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    goto :goto_11

    .line 153
    :cond_8b
    :try_start_8b
    const-string v0, ""

    goto :goto_32

    .line 154
    :cond_8e
    const-string v0, ""

    goto :goto_45

    .line 155
    :cond_91
    const-string v0, ""

    goto :goto_58

    .line 156
    :cond_94
    const-string v0, ""
    :try_end_96
    .catch Ljava/lang/Throwable; {:try_start_8b .. :try_end_96} :catch_7d

    goto :goto_6b
.end method

.method static synthetic b(Lcn/sharesdk/sina/weibo/d;)Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/d;->g:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private b()Ljava/lang/String;
    .registers 6

    .prologue
    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 127
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "client_id"

    iget-object v3, p0, Lcn/sharesdk/sina/weibo/d;->b:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "response_type"

    const-string v3, "code"

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "redirect_uri"

    iget-object v3, p0, Lcn/sharesdk/sina/weibo/d;->c:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "packagename"

    iget-object v3, p0, Lcn/sharesdk/sina/weibo/d;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "response_type"

    const-string v3, "code"

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "luicode"

    const-string v3, "10000360"

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/d;->d:Ljava/lang/String;

    if-eqz v1, :cond_75

    iget-object v1, p0, Lcn/sharesdk/sina/weibo/d;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_75

    .line 134
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "trans_token"

    iget-object v3, p0, Lcn/sharesdk/sina/weibo/d;->d:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "trans_access_token"

    iget-object v3, p0, Lcn/sharesdk/sina/weibo/d;->d:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    :cond_75
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "key_hash"

    invoke-virtual {p0}, Lcn/sharesdk/sina/weibo/d;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcn/sharesdk/sina/weibo/d;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/sharesdk/sina/weibo/sdk/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "version"

    const-string v3, "0041005000"

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "scope"

    const-string v3, "email,direct_messages_read,direct_messages_write,friendships_groups_read,friendships_groups_write,statuses_to_me_read,follow_app_official_microblog,invitation_write"

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "display"

    const-string v3, "mobile"

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://open.weibo.cn/oauth2/authorize?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/mob/tools/utils/ResHelper;->encodeUrl(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 143
    return-object v0
.end method

.method static synthetic c(Lcn/sharesdk/sina/weibo/d;)Landroid/webkit/WebView;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/d;->i:Landroid/webkit/WebView;

    return-object v0
.end method

.method private c()Ljava/lang/String;
    .registers 3

    .prologue
    .line 175
    new-instance v0, Lcn/sharesdk/sina/weibo/d$2;

    invoke-direct {v0, p0}, Lcn/sharesdk/sina/weibo/d$2;-><init>(Lcn/sharesdk/sina/weibo/d;)V

    invoke-static {v0}, Lcom/mob/tools/RxMob;->create(Lcom/mob/tools/RxMob$OnSubscribe;)Lcom/mob/tools/RxMob$Subscribable;

    move-result-object v0

    .line 181
    sget-object v1, Lcom/mob/tools/RxMob$Thread;->UI_THREAD:Lcom/mob/tools/RxMob$Thread;

    invoke-virtual {v0, v1}, Lcom/mob/tools/RxMob$Subscribable;->subscribeOn(Lcom/mob/tools/RxMob$Thread;)Lcom/mob/tools/RxMob$Subscribable;

    .line 182
    sget-object v1, Lcom/mob/tools/RxMob$Thread;->UI_THREAD:Lcom/mob/tools/RxMob$Thread;

    invoke-virtual {v0, v1}, Lcom/mob/tools/RxMob$Subscribable;->observeOn(Lcom/mob/tools/RxMob$Thread;)Lcom/mob/tools/RxMob$Subscribable;

    .line 183
    new-instance v1, Lcn/sharesdk/sina/weibo/d$3;

    invoke-direct {v1, p0}, Lcn/sharesdk/sina/weibo/d$3;-><init>(Lcn/sharesdk/sina/weibo/d;)V

    invoke-virtual {v0, v1}, Lcom/mob/tools/RxMob$Subscribable;->subscribe(Lcom/mob/tools/RxMob$Subscriber;)V

    .line 193
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic d(Lcn/sharesdk/sina/weibo/d;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcn/sharesdk/sina/weibo/d;)Lcn/sharesdk/framework/authorize/AuthorizeListener;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/d;->a:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    return-object v0
.end method

.method static synthetic f(Lcn/sharesdk/sina/weibo/d;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 32
    invoke-direct {p0}, Lcn/sharesdk/sina/weibo/d;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V
    .registers 2

    .prologue
    .line 58
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/d;->a:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    .line 59
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 52
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/d;->b:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lcn/sharesdk/sina/weibo/d;->c:Ljava/lang/String;

    .line 54
    iput-object p3, p0, Lcn/sharesdk/sina/weibo/d;->d:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 115
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/d;->h:Landroid/widget/TextView;

    if-ne p1, v0, :cond_d

    .line 116
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/d;->a:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-interface {v0}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onCancel()V

    .line 117
    invoke-virtual {p0}, Lcn/sharesdk/sina/weibo/d;->finish()V

    .line 123
    :cond_c
    :goto_c
    return-void

    .line 118
    :cond_d
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/d;->j:Landroid/widget/Button;

    if-ne p1, v0, :cond_c

    .line 119
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/d;->g:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/d;->i:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 121
    invoke-direct {p0}, Lcn/sharesdk/sina/weibo/d;->c()Ljava/lang/String;

    goto :goto_c
.end method

.method public onCreate()V
    .registers 4

    .prologue
    .line 62
    new-instance v0, Lcn/sharesdk/sina/weibo/sdk/a/a;

    invoke-virtual {p0}, Lcn/sharesdk/sina/weibo/d;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/sharesdk/sina/weibo/sdk/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/sharesdk/sina/weibo/d;->f:Lcn/sharesdk/sina/weibo/sdk/a/a;

    .line 63
    invoke-virtual {p0}, Lcn/sharesdk/sina/weibo/d;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ssdk_sina_web_login_title"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 64
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/d;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcn/sharesdk/sina/weibo/d;->f:Lcn/sharesdk/sina/weibo/sdk/a/a;

    invoke-virtual {v2, v0}, Lcn/sharesdk/sina/weibo/sdk/a/a;->a(I)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 65
    invoke-direct {p0}, Lcn/sharesdk/sina/weibo/d;->a()V

    .line 66
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 210
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/d;->i:Landroid/webkit/WebView;

    if-eqz v0, :cond_a

    .line 211
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/d;->i:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 213
    :cond_a
    return-void
.end method

.method public onFinish()Z
    .registers 2

    .prologue
    .line 168
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/d;->a:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v0, :cond_7

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/sharesdk/sina/weibo/d;->a:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    .line 171
    :cond_7
    invoke-super {p0}, Lcom/mob/tools/FakeActivity;->onFinish()Z

    move-result v0

    return v0
.end method

.method public onKeyEvent(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 197
    const/4 v0, 0x4

    if-ne p1, v0, :cond_17

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_17

    .line 198
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/d;->a:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v0, :cond_12

    .line 199
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/d;->a:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-interface {v0}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onCancel()V

    .line 201
    :cond_12
    invoke-virtual {p0}, Lcn/sharesdk/sina/weibo/d;->finish()V

    .line 202
    const/4 v0, 0x1

    .line 204
    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method
