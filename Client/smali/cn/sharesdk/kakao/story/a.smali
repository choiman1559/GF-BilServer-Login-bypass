.class public Lcn/sharesdk/kakao/story/a;
.super Lcn/sharesdk/framework/b;
.source "KakaoStoryHelper.java"


# static fields
.field private static f:Lcn/sharesdk/kakao/story/a;


# instance fields
.field private b:Lcom/mob/tools/utils/DeviceHelper;

.field private c:Lcn/sharesdk/framework/a/a;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcn/sharesdk/framework/Platform;)V
    .registers 3

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/b;-><init>(Lcn/sharesdk/framework/Platform;)V

    .line 51
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/kakao/story/a;->b:Lcom/mob/tools/utils/DeviceHelper;

    .line 52
    invoke-static {}, Lcn/sharesdk/framework/a/a;->a()Lcn/sharesdk/framework/a/a;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/kakao/story/a;->c:Lcn/sharesdk/framework/a/a;

    .line 53
    return-void
.end method

.method public static a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/kakao/story/a;
    .registers 2

    .prologue
    .line 43
    sget-object v0, Lcn/sharesdk/kakao/story/a;->f:Lcn/sharesdk/kakao/story/a;

    if-nez v0, :cond_b

    .line 44
    new-instance v0, Lcn/sharesdk/kakao/story/a;

    invoke-direct {v0, p0}, Lcn/sharesdk/kakao/story/a;-><init>(Lcn/sharesdk/framework/Platform;)V

    sput-object v0, Lcn/sharesdk/kakao/story/a;->f:Lcn/sharesdk/kakao/story/a;

    .line 46
    :cond_b
    sget-object v0, Lcn/sharesdk/kakao/story/a;->f:Lcn/sharesdk/kakao/story/a;

    return-object v0
.end method

.method private b()Landroid/content/Intent;
    .registers 4

    .prologue
    .line 79
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.kakao.story.intent.action.CAPRI_LOGGED_IN_ACTIVITY"

    .line 80
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.category.DEFAULT"

    .line 81
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.kakao.sdk.talk.protocol.version"

    const/4 v2, 0x1

    .line 82
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.kakao.sdk.talk.appKey"

    iget-object v2, p0, Lcn/sharesdk/kakao/story/a;->d:Ljava/lang/String;

    .line 83
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.kakao.sdk.talk.redirectUri"

    iget-object v2, p0, Lcn/sharesdk/kakao/story/a;->e:Ljava/lang/String;

    .line 84
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 79
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 156
    const-string v1, "https://kapi.kakao.com/v1/api/story/profile"

    .line 158
    :try_start_7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 159
    new-instance v3, Lcom/mob/tools/network/KVPair;

    const-string v4, "Authorization"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bearer "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    const/4 v3, 0x0

    .line 162
    iget-object v4, p0, Lcn/sharesdk/kakao/story/a;->c:Lcn/sharesdk/framework/a/a;

    invoke-virtual {v4, v1, v0, v2, v3}, Lcn/sharesdk/framework/a/a;->httpGet(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object v0

    .line 163
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    .line 164
    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_38} :catch_3a

    move-result-object v0

    .line 168
    :goto_39
    return-object v0

    .line 166
    :catch_3a
    move-exception v0

    .line 167
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 168
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "error"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    goto :goto_39
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/sharesdk/framework/PlatformActionListener;)V
    .registers 9

    .prologue
    .line 132
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 133
    const-string v1, "path"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 135
    const-string v1, "text"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    const-string v1, "title"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    new-instance v1, Lcn/sharesdk/kakao/story/b;

    invoke-direct {v1}, Lcn/sharesdk/kakao/story/b;-><init>()V

    .line 139
    const-string v2, "share"

    invoke-virtual {v1, v2}, Lcn/sharesdk/kakao/story/b;->a(Ljava/lang/String;)V

    .line 140
    iget-object v2, p0, Lcn/sharesdk/kakao/story/a;->a:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v1, v2, p5}, Lcn/sharesdk/kakao/story/b;->a(Lcn/sharesdk/framework/Platform;Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 141
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcn/sharesdk/kakao/story/b;->show(Landroid/content/Context;Landroid/content/Intent;)V

    .line 142
    return-void
.end method

.method public a(Lcn/sharesdk/framework/PlatformActionListener;)V
    .registers 5

    .prologue
    .line 145
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 146
    const-string v1, "intent"

    invoke-direct {p0}, Lcn/sharesdk/kakao/story/a;->b()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 147
    new-instance v1, Lcn/sharesdk/kakao/story/b;

    invoke-direct {v1}, Lcn/sharesdk/kakao/story/b;-><init>()V

    .line 148
    iget-object v2, p0, Lcn/sharesdk/kakao/story/a;->a:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v1, v2, p1}, Lcn/sharesdk/kakao/story/b;->a(Lcn/sharesdk/framework/Platform;Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 149
    const-string v2, "auth"

    invoke-virtual {v1, v2}, Lcn/sharesdk/kakao/story/b;->a(Ljava/lang/String;)V

    .line 150
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcn/sharesdk/kakao/story/b;->show(Landroid/content/Context;Landroid/content/Intent;)V

    .line 151
    return-void
.end method

.method public a(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V
    .registers 2

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcn/sharesdk/kakao/story/a;->b(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    .line 179
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/sharesdk/framework/PlatformActionListener;)V
    .registers 12

    .prologue
    .line 90
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 91
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v1, "post"

    invoke-direct {v0, v1, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v1, "appid"

    iget-object v3, p0, Lcn/sharesdk/kakao/story/a;->b:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v3}, Lcom/mob/tools/utils/DeviceHelper;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v1, "appver"

    iget-object v3, p0, Lcn/sharesdk/kakao/story/a;->b:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v3}, Lcom/mob/tools/utils/DeviceHelper;->getAppVersionName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v1, "apiver"

    const-string v3, "1.0"

    invoke-direct {v0, v1, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 96
    iget-object v0, p0, Lcn/sharesdk/kakao/story/a;->b:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getAppName()Ljava/lang/String;

    move-result-object p2

    .line 98
    :cond_47
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v1, "appname"

    invoke-direct {v0, v1, p2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    const-string v0, ""

    .line 101
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 103
    :try_start_58
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_63

    .line 104
    const-string v3, "title"

    invoke-virtual {v1, v3, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 106
    :cond_63
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6e

    .line 107
    const-string v3, "desc"

    invoke-virtual {v1, v3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 109
    :cond_6e
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_81

    .line 110
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 111
    invoke-virtual {v3, p5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 112
    const-string v4, "imageurl"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    :cond_81
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "&urlinfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "utf-8"

    invoke-static {v1, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_9d} :catch_da

    move-result-object v0

    .line 118
    :goto_9e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "storylink://posting?"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2}, Lcom/mob/tools/utils/ResHelper;->encodeUrl(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 120
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 121
    const-string v2, "uri"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    new-instance v0, Lcn/sharesdk/kakao/story/b;

    invoke-direct {v0}, Lcn/sharesdk/kakao/story/b;-><init>()V

    .line 124
    const-string v2, "share"

    invoke-virtual {v0, v2}, Lcn/sharesdk/kakao/story/b;->a(Ljava/lang/String;)V

    .line 125
    iget-object v2, p0, Lcn/sharesdk/kakao/story/a;->a:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v0, v2, p6}, Lcn/sharesdk/kakao/story/b;->a(Lcn/sharesdk/framework/Platform;Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 126
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcn/sharesdk/kakao/story/b;->show(Landroid/content/Context;Landroid/content/Intent;)V

    .line 127
    return-void

    .line 115
    :catch_da
    move-exception v1

    .line 116
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_9e
.end method

.method public a()Z
    .registers 4

    .prologue
    .line 75
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0}, Lcn/sharesdk/kakao/story/a;->b()Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x50

    invoke-static {v0, v1, v2}, Lcn/sharesdk/kakao/utils/a;->a(Landroid/content/Context;Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public b(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 173
    iput-object p1, p0, Lcn/sharesdk/kakao/story/a;->d:Ljava/lang/String;

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "kakao"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "://oauth"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/kakao/story/a;->e:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public getAuthorizeUrl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://kauth.kakao.com/oauth/authorize?client_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/kakao/story/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&redirect_uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/kakao/story/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&response_type=code"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAuthorizeWebviewClient(Lcn/sharesdk/framework/authorize/e;)Lcn/sharesdk/framework/authorize/b;
    .registers 3
    .param p1, "webAct"    # Lcn/sharesdk/framework/authorize/e;

    .prologue
    .line 58
    new-instance v0, Lcn/sharesdk/kakao/utils/KakaoWebViewClient;

    invoke-direct {v0, p1}, Lcn/sharesdk/kakao/utils/KakaoWebViewClient;-><init>(Lcn/sharesdk/framework/authorize/e;)V

    return-object v0
.end method

.method public getRedirectUri()Ljava/lang/String;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcn/sharesdk/kakao/story/a;->e:Ljava/lang/String;

    return-object v0
.end method
