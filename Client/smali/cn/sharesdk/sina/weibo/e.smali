.class public Lcn/sharesdk/sina/weibo/e;
.super Lcom/mob/tools/FakeActivity;
.source "WebSharePage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcn/sharesdk/framework/Platform$ShareParams;

.field private d:Lcn/sharesdk/framework/authorize/AuthorizeListener;

.field private e:Lcn/sharesdk/sina/weibo/sdk/a/a;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/webkit/WebView;

.field private i:Landroid/widget/Button;

.field private j:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/mob/tools/FakeActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/sina/weibo/e;)I
    .registers 2

    .prologue
    .line 35
    iget v0, p0, Lcn/sharesdk/sina/weibo/e;->j:I

    return v0
.end method

.method static synthetic a(Lcn/sharesdk/sina/weibo/e;I)I
    .registers 2

    .prologue
    .line 35
    iput p1, p0, Lcn/sharesdk/sina/weibo/e;->j:I

    return p1
.end method

.method private a()V
    .registers 3

    .prologue
    .line 72
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/e;->e:Lcn/sharesdk/sina/weibo/sdk/a/a;

    invoke-virtual {v0}, Lcn/sharesdk/sina/weibo/sdk/a/a;->b()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/sina/weibo/e;->g:Landroid/widget/TextView;

    .line 73
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/e;->e:Lcn/sharesdk/sina/weibo/sdk/a/a;

    invoke-virtual {v0}, Lcn/sharesdk/sina/weibo/sdk/a/a;->c()Landroid/webkit/WebView;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/sina/weibo/e;->h:Landroid/webkit/WebView;

    .line 74
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/e;->e:Lcn/sharesdk/sina/weibo/sdk/a/a;

    invoke-virtual {v0}, Lcn/sharesdk/sina/weibo/sdk/a/a;->d()Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/sina/weibo/e;->f:Landroid/widget/LinearLayout;

    .line 75
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/e;->e:Lcn/sharesdk/sina/weibo/sdk/a/a;

    invoke-virtual {v0}, Lcn/sharesdk/sina/weibo/sdk/a/a;->a()Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/sina/weibo/e;->i:Landroid/widget/Button;

    .line 77
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/e;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/e;->i:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->isRemoveCookieOnAuthorize()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 81
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/e;->activity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 82
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 85
    :cond_3c
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/e;->h:Landroid/webkit/WebView;

    new-instance v1, Lcn/sharesdk/sina/weibo/e$1;

    invoke-direct {v1, p0}, Lcn/sharesdk/sina/weibo/e$1;-><init>(Lcn/sharesdk/sina/weibo/e;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 114
    invoke-direct {p0}, Lcn/sharesdk/sina/weibo/e;->b()Ljava/lang/String;

    .line 115
    return-void
.end method

.method static synthetic a(Lcn/sharesdk/sina/weibo/e;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcn/sharesdk/sina/weibo/e;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 129
    invoke-static {p1}, Lcom/mob/tools/utils/ResHelper;->urlToBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 130
    const-string v1, "code"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 131
    const-string v2, "msg"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 132
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 133
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/e;->d:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-interface {v0}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onCancel()V

    .line 139
    :goto_1b
    invoke-virtual {p0}, Lcn/sharesdk/sina/weibo/e;->finish()V

    .line 140
    return-void

    .line 134
    :cond_1f
    const-string v3, "0"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 135
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/e;->d:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-interface {v1, v0}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onComplete(Landroid/os/Bundle;)V

    goto :goto_1b

    .line 137
    :cond_2d
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/e;->d:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    goto :goto_1b
.end method

.method static synthetic b(Lcn/sharesdk/sina/weibo/e;)Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/e;->f:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private b()Ljava/lang/String;
    .registers 3

    .prologue
    .line 158
    new-instance v0, Lcn/sharesdk/sina/weibo/e$2;

    invoke-direct {v0, p0}, Lcn/sharesdk/sina/weibo/e$2;-><init>(Lcn/sharesdk/sina/weibo/e;)V

    invoke-static {v0}, Lcom/mob/tools/RxMob;->create(Lcom/mob/tools/RxMob$OnSubscribe;)Lcom/mob/tools/RxMob$Subscribable;

    move-result-object v0

    .line 164
    sget-object v1, Lcom/mob/tools/RxMob$Thread;->NEW_THREAD:Lcom/mob/tools/RxMob$Thread;

    invoke-virtual {v0, v1}, Lcom/mob/tools/RxMob$Subscribable;->subscribeOn(Lcom/mob/tools/RxMob$Thread;)Lcom/mob/tools/RxMob$Subscribable;

    .line 165
    sget-object v1, Lcom/mob/tools/RxMob$Thread;->UI_THREAD:Lcom/mob/tools/RxMob$Thread;

    invoke-virtual {v0, v1}, Lcom/mob/tools/RxMob$Subscribable;->observeOn(Lcom/mob/tools/RxMob$Thread;)Lcom/mob/tools/RxMob$Subscribable;

    .line 166
    new-instance v1, Lcn/sharesdk/sina/weibo/e$3;

    invoke-direct {v1, p0}, Lcn/sharesdk/sina/weibo/e$3;-><init>(Lcn/sharesdk/sina/weibo/e;)V

    invoke-virtual {v0, v1}, Lcom/mob/tools/RxMob$Subscribable;->subscribe(Lcom/mob/tools/RxMob$Subscriber;)V

    .line 184
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic b(Lcn/sharesdk/sina/weibo/e;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcn/sharesdk/sina/weibo/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 144
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "title"

    iget-object v3, p0, Lcn/sharesdk/sina/weibo/e;->c:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v3}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "source"

    iget-object v3, p0, Lcn/sharesdk/sina/weibo/e;->a:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "access_token"

    iget-object v3, p0, Lcn/sharesdk/sina/weibo/e;->b:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "packagename"

    iget-object v3, p0, Lcn/sharesdk/sina/weibo/e;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "picinfo"

    invoke-direct {v1, v2, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "luicode"

    const-string v3, "10000360"

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "key_hash"

    invoke-virtual {p0}, Lcn/sharesdk/sina/weibo/e;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcn/sharesdk/sina/weibo/e;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/sharesdk/sina/weibo/sdk/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "lfid"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OP_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/sharesdk/sina/weibo/e;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "version"

    const-string v3, "0041005000"

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://service.weibo.com/share/mobilesdk.php?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/mob/tools/utils/ResHelper;->encodeUrl(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 154
    return-object v0
.end method

.method static synthetic c(Lcn/sharesdk/sina/weibo/e;)Landroid/webkit/WebView;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/e;->h:Landroid/webkit/WebView;

    return-object v0
.end method

.method private c()Ljava/lang/String;
    .registers 11

    .prologue
    const/4 v6, 0x0

    .line 209
    .line 212
    :try_start_1
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/e;->c:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageData()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 213
    if-nez v0, :cond_46

    iget-object v1, p0, Lcn/sharesdk/sina/weibo/e;->c:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_46

    .line 214
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/e;->c:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/BitmapHelper;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 218
    :cond_1f
    :goto_1f
    if-eqz v0, :cond_10a

    .line 219
    new-instance v1, Lcom/sina/weibo/sdk/api/ImageObject;

    invoke-direct {v1}, Lcom/sina/weibo/sdk/api/ImageObject;-><init>()V

    .line 220
    invoke-virtual {v1, v0}, Lcom/sina/weibo/sdk/api/ImageObject;->setImageObject(Landroid/graphics/Bitmap;)V

    .line 221
    iget-object v0, v1, Lcom/sina/weibo/sdk/api/ImageObject;->imageData:[B

    if-eqz v0, :cond_10a

    iget-object v0, v1, Lcom/sina/weibo/sdk/api/ImageObject;->imageData:[B

    array-length v0, v0

    if-lez v0, :cond_10a

    .line 222
    new-instance v0, Ljava/lang/String;

    iget-object v1, v1, Lcom/sina/weibo/sdk/api/ImageObject;->imageData:[B

    invoke-static {v1}, Lcn/sharesdk/sina/weibo/sdk/a;->a([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    move-object v1, v0

    .line 226
    :goto_3e
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_63

    move-object v0, v6

    .line 259
    :cond_45
    :goto_45
    return-object v0

    .line 215
    :cond_46
    if-nez v0, :cond_1f

    iget-object v1, p0, Lcn/sharesdk/sina/weibo/e;->c:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 216
    invoke-virtual {p0}, Lcn/sharesdk/sina/weibo/e;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/sina/weibo/e;->c:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mob/tools/utils/BitmapHelper;->getBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1f

    .line 230
    :cond_63
    new-instance v0, Lcom/mob/tools/network/NetworkHelper;

    invoke-direct {v0}, Lcom/mob/tools/network/NetworkHelper;-><init>()V

    .line 231
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 232
    new-instance v3, Lcom/mob/tools/network/KVPair;

    const-string v4, "img"

    invoke-direct {v3, v4, v1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v8, 0x3e8

    div-long/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 234
    new-instance v3, Lcom/mob/tools/network/KVPair;

    const-string v4, "oauth_timestamp"

    invoke-direct {v3, v4, v1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 236
    iget-object v3, p0, Lcn/sharesdk/sina/weibo/e;->b:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9e

    .line 237
    iget-object v3, p0, Lcn/sharesdk/sina/weibo/e;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    :cond_9e
    iget-object v3, p0, Lcn/sharesdk/sina/weibo/e;->a:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_ab

    .line 240
    iget-object v3, p0, Lcn/sharesdk/sina/weibo/e;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    :cond_ab
    const-string v1, "http://service.weibo.com/share/mobilesdk_uppic.php"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/mob/tools/network/NetworkHelper;->httpPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object v0

    .line 244
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_bc

    move-object v0, v6

    .line 245
    goto :goto_45

    .line 247
    :cond_bc
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 248
    if-eqz v0, :cond_d7

    const-string v1, "code"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d7

    const-string v1, "data"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_da

    :cond_d7
    move-object v0, v6

    .line 249
    goto/16 :goto_45

    .line 251
    :cond_da
    const-string v1, "code"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 252
    const-string v2, "data"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 253
    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_fc

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_f9
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_f9} :catch_ff

    move-result v1

    if-eqz v1, :cond_45

    :cond_fc
    move-object v0, v6

    .line 256
    goto/16 :goto_45

    .line 257
    :catch_ff
    move-exception v0

    .line 258
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    move-object v0, v6

    .line 259
    goto/16 :goto_45

    :cond_10a
    move-object v1, v6

    goto/16 :goto_3e
.end method

.method static synthetic d(Lcn/sharesdk/sina/weibo/e;)Lcn/sharesdk/framework/authorize/AuthorizeListener;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/e;->d:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    return-object v0
.end method

.method static synthetic e(Lcn/sharesdk/sina/weibo/e;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 35
    invoke-direct {p0}, Lcn/sharesdk/sina/weibo/e;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcn/sharesdk/framework/Platform$ShareParams;)V
    .registers 2

    .prologue
    .line 57
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/e;->c:Lcn/sharesdk/framework/Platform$ShareParams;

    .line 58
    return-void
.end method

.method public a(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V
    .registers 2

    .prologue
    .line 61
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/e;->d:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    .line 62
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 52
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/e;->a:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lcn/sharesdk/sina/weibo/e;->b:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 118
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/e;->g:Landroid/widget/TextView;

    if-ne p1, v0, :cond_d

    .line 119
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/e;->d:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-interface {v0}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onCancel()V

    .line 120
    invoke-virtual {p0}, Lcn/sharesdk/sina/weibo/e;->finish()V

    .line 126
    :cond_c
    :goto_c
    return-void

    .line 121
    :cond_d
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/e;->i:Landroid/widget/Button;

    if-ne p1, v0, :cond_c

    .line 122
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/e;->f:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/e;->h:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 124
    invoke-direct {p0}, Lcn/sharesdk/sina/weibo/e;->b()Ljava/lang/String;

    goto :goto_c
.end method

.method public onCreate()V
    .registers 4

    .prologue
    .line 65
    new-instance v0, Lcn/sharesdk/sina/weibo/sdk/a/a;

    invoke-virtual {p0}, Lcn/sharesdk/sina/weibo/e;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/sharesdk/sina/weibo/sdk/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/sharesdk/sina/weibo/e;->e:Lcn/sharesdk/sina/weibo/sdk/a/a;

    .line 66
    invoke-virtual {p0}, Lcn/sharesdk/sina/weibo/e;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ssdk_sina_web_title"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 67
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/e;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcn/sharesdk/sina/weibo/e;->e:Lcn/sharesdk/sina/weibo/sdk/a/a;

    invoke-virtual {v2, v0}, Lcn/sharesdk/sina/weibo/sdk/a/a;->a(I)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 68
    invoke-direct {p0}, Lcn/sharesdk/sina/weibo/e;->a()V

    .line 69
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 265
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/e;->h:Landroid/webkit/WebView;

    if-eqz v0, :cond_a

    .line 266
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/e;->h:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 268
    :cond_a
    return-void
.end method

.method public onFinish()Z
    .registers 2

    .prologue
    .line 189
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/e;->d:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v0, :cond_7

    .line 190
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/sharesdk/sina/weibo/e;->d:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    .line 192
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
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/e;->d:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v0, :cond_12

    .line 199
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/e;->d:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-interface {v0}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onCancel()V

    .line 201
    :cond_12
    invoke-virtual {p0}, Lcn/sharesdk/sina/weibo/e;->finish()V

    .line 202
    const/4 v0, 0x1

    .line 204
    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method
