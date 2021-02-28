.class public Lcn/sharesdk/wechat/utils/g;
.super Ljava/lang/Object;
.source "WXAuthHelper.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcn/sharesdk/framework/a/a;

.field private d:Lcn/sharesdk/framework/Platform;

.field private e:I


# direct methods
.method public constructor <init>(Lcn/sharesdk/framework/Platform;I)V
    .registers 4

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcn/sharesdk/wechat/utils/g;->d:Lcn/sharesdk/framework/Platform;

    .line 35
    iput p2, p0, Lcn/sharesdk/wechat/utils/g;->e:I

    .line 36
    invoke-static {}, Lcn/sharesdk/framework/a/a;->a()Lcn/sharesdk/framework/a/a;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/utils/g;->c:Lcn/sharesdk/framework/a/a;

    .line 37
    return-void
.end method

.method static synthetic a(Lcn/sharesdk/wechat/utils/g;)Lcn/sharesdk/framework/Platform;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/g;->d:Lcn/sharesdk/framework/Platform;

    return-object v0
.end method

.method static synthetic a(Lcn/sharesdk/wechat/utils/g;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcn/sharesdk/wechat/utils/g;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 244
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wechat getAuthorizeToken ==>>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 245
    new-instance v0, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v0}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v0, p1}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 246
    const-string v1, "access_token"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 247
    const-string v2, "refresh_token"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 248
    const-string v3, "expires_in"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 249
    const-string v4, "openid"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 258
    iget-object v4, p0, Lcn/sharesdk/wechat/utils/g;->d:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v4}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v4

    const-string v5, "openid"

    invoke-virtual {v4, v5, v0}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/g;->d:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcn/sharesdk/framework/PlatformDb;->putExpiresIn(J)V

    .line 260
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/g;->d:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/PlatformDb;->putToken(Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/g;->d:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    const-string v1, "refresh_token"

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    return-void
.end method

.method private a(Ljava/lang/String;Lcn/sharesdk/framework/authorize/AuthorizeListener;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 103
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAuthorizeToken ==>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 104
    new-instance v0, Lcn/sharesdk/wechat/utils/g$1;

    invoke-direct {v0, p0, p1, p2}, Lcn/sharesdk/wechat/utils/g$1;-><init>(Lcn/sharesdk/wechat/utils/g;Ljava/lang/String;Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    .line 138
    invoke-virtual {v0}, Lcn/sharesdk/wechat/utils/g$1;->start()V

    .line 139
    return-void
.end method

.method static synthetic b(Lcn/sharesdk/wechat/utils/g;)I
    .registers 2

    .prologue
    .line 19
    iget v0, p0, Lcn/sharesdk/wechat/utils/g;->e:I

    return v0
.end method

.method static synthetic c(Lcn/sharesdk/wechat/utils/g;)Lcn/sharesdk/framework/a/a;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/g;->c:Lcn/sharesdk/framework/a/a;

    return-object v0
.end method

.method static synthetic d(Lcn/sharesdk/wechat/utils/g;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/g;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcn/sharesdk/wechat/utils/g;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/g;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;Lcn/sharesdk/framework/authorize/AuthorizeListener;)V
    .registers 5

    .prologue
    .line 74
    const-string v0, "_wxapi_sendauth_resp_url"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 76
    if-eqz p2, :cond_12

    .line 77
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    .line 99
    :cond_12
    :goto_12
    return-void

    .line 83
    :cond_13
    const-string v1, "://oauth?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 84
    if-ltz v1, :cond_21

    .line 85
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 87
    :cond_21
    invoke-static {v0}, Lcom/mob/tools/utils/ResHelper;->urlToBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 88
    const-string v1, "code"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    :try_start_2b
    invoke-direct {p0, v0, p2}, Lcn/sharesdk/wechat/utils/g;->a(Ljava/lang/String;Lcn/sharesdk/framework/authorize/AuthorizeListener;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2e} :catch_2f

    goto :goto_12

    .line 92
    :catch_2f
    move-exception v0

    .line 93
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 94
    if-eqz p2, :cond_12

    .line 95
    invoke-interface {p2, v0}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    goto :goto_12
.end method

.method public a(Lcn/sharesdk/framework/PlatformActionListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 174
    new-instance v0, Lcn/sharesdk/wechat/utils/g$2;

    invoke-direct {v0, p0, p1}, Lcn/sharesdk/wechat/utils/g$2;-><init>(Lcn/sharesdk/wechat/utils/g;Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 240
    invoke-virtual {v0}, Lcn/sharesdk/wechat/utils/g$2;->start()V

    .line 241
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 40
    iput-object p1, p0, Lcn/sharesdk/wechat/utils/g;->a:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcn/sharesdk/wechat/utils/g;->b:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public a()Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 143
    iget-object v1, p0, Lcn/sharesdk/wechat/utils/g;->d:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v1

    const-string v2, "refresh_token"

    invoke-virtual {v1, v2}, Lcn/sharesdk/framework/PlatformDb;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 144
    iget-object v2, p0, Lcn/sharesdk/wechat/utils/g;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1b

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 168
    :cond_1b
    :goto_1b
    return v0

    .line 148
    :cond_1c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 149
    new-instance v3, Lcom/mob/tools/network/KVPair;

    const-string v4, "appid"

    iget-object v5, p0, Lcn/sharesdk/wechat/utils/g;->a:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    new-instance v3, Lcom/mob/tools/network/KVPair;

    const-string v4, "refresh_token"

    invoke-direct {v3, v4, v1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v3, "grant_type"

    const-string v4, "refresh_token"

    invoke-direct {v1, v3, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    const-string v1, "https://api.weixin.qq.com/sns/oauth2/refresh_token"

    .line 156
    :try_start_45
    iget-object v3, p0, Lcn/sharesdk/wechat/utils/g;->c:Lcn/sharesdk/framework/a/a;

    const-string v4, "/sns/oauth2/refresh_token"

    iget v5, p0, Lcn/sharesdk/wechat/utils/g;->e:I

    invoke-virtual {v3, v1, v2, v4, v5}, Lcn/sharesdk/framework/a/a;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 157
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 160
    const-string v2, "errcode"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 163
    invoke-direct {p0, v1}, Lcn/sharesdk/wechat/utils/g;->a(Ljava/lang/String;)V
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_60} :catch_62

    .line 168
    const/4 v0, 0x1

    goto :goto_1b

    .line 164
    :catch_62
    move-exception v1

    .line 165
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_1b
.end method
