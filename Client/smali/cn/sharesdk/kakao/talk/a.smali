.class public Lcn/sharesdk/kakao/talk/a;
.super Lcn/sharesdk/framework/b;
.source "KakaoTalkHelper.java"


# static fields
.field private static e:Lcn/sharesdk/kakao/talk/a;


# instance fields
.field private b:Lcom/mob/tools/utils/DeviceHelper;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcn/sharesdk/framework/Platform;)V
    .registers 3

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/b;-><init>(Lcn/sharesdk/framework/Platform;)V

    .line 50
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/kakao/talk/a;->b:Lcom/mob/tools/utils/DeviceHelper;

    .line 51
    return-void
.end method

.method public static a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/kakao/talk/a;
    .registers 2

    .prologue
    .line 42
    sget-object v0, Lcn/sharesdk/kakao/talk/a;->e:Lcn/sharesdk/kakao/talk/a;

    if-nez v0, :cond_b

    .line 43
    new-instance v0, Lcn/sharesdk/kakao/talk/a;

    invoke-direct {v0, p0}, Lcn/sharesdk/kakao/talk/a;-><init>(Lcn/sharesdk/framework/Platform;)V

    sput-object v0, Lcn/sharesdk/kakao/talk/a;->e:Lcn/sharesdk/kakao/talk/a;

    .line 45
    :cond_b
    sget-object v0, Lcn/sharesdk/kakao/talk/a;->e:Lcn/sharesdk/kakao/talk/a;

    return-object v0
.end method

.method private b()Landroid/content/Intent;
    .registers 4

    .prologue
    .line 82
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.kakao.talk.intent.action.CAPRI_LOGGED_IN_ACTIVITY"

    .line 83
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.category.DEFAULT"

    .line 84
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.kakao.sdk.talk.protocol.version"

    const/4 v2, 0x1

    .line 85
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.kakao.sdk.talk.appKey"

    iget-object v2, p0, Lcn/sharesdk/kakao/talk/a;->c:Ljava/lang/String;

    .line 86
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.kakao.sdk.talk.redirectUri"

    iget-object v2, p0, Lcn/sharesdk/kakao/talk/a;->d:Ljava/lang/String;

    .line 87
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.kakao.sdk.talk.kaHeader"

    .line 88
    invoke-static {}, Lcn/sharesdk/kakao/utils/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 82
    return-object v0
.end method

.method private d()Ljava/lang/String;
    .registers 4

    .prologue
    .line 164
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 166
    :try_start_5
    const-string v1, "KA"

    invoke-static {}, Lcn/sharesdk/kakao/utils/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 167
    const-string v1, "appPkg"

    iget-object v2, p0, Lcn/sharesdk/kakao/talk/a;->b:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v2}, Lcom/mob/tools/utils/DeviceHelper;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 168
    const-string v1, "keyHash"

    invoke-static {}, Lcn/sharesdk/kakao/utils/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_22
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_22} :catch_27

    .line 173
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_26
    return-object v0

    .line 169
    :catch_27
    move-exception v0

    .line 170
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 171
    const-string v0, ""

    goto :goto_26
.end method


# virtual methods
.method public a(Lcn/sharesdk/framework/PlatformActionListener;)V
    .registers 5

    .prologue
    .line 181
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 182
    const-string v1, "intent"

    invoke-direct {p0}, Lcn/sharesdk/kakao/talk/a;->b()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 183
    new-instance v1, Lcn/sharesdk/kakao/talk/b;

    invoke-direct {v1}, Lcn/sharesdk/kakao/talk/b;-><init>()V

    .line 184
    iget-object v2, p0, Lcn/sharesdk/kakao/talk/a;->a:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v1, v2, p1}, Lcn/sharesdk/kakao/talk/b;->a(Lcn/sharesdk/framework/Platform;Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 185
    const-string v2, "auth"

    invoke-virtual {v1, v2}, Lcn/sharesdk/kakao/talk/b;->a(Ljava/lang/String;)V

    .line 186
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcn/sharesdk/kakao/talk/b;->show(Landroid/content/Context;Landroid/content/Intent;)V

    .line 187
    return-void
.end method

.method public a(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V
    .registers 2

    .prologue
    .line 190
    invoke-virtual {p0, p1}, Lcn/sharesdk/kakao/talk/a;->b(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    .line 191
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 70
    iput-object p1, p0, Lcn/sharesdk/kakao/talk/a;->c:Ljava/lang/String;

    .line 71
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

    iput-object v0, p0, Lcn/sharesdk/kakao/talk/a;->d:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/sharesdk/framework/PlatformActionListener;)V
    .registers 13

    .prologue
    .line 103
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 104
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v1, "linkver"

    const-string v3, "3.5"

    invoke-direct {v0, v1, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v1, "apiver"

    const-string v3, "3.0"

    invoke-direct {v0, v1, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v1, "appkey"

    iget-object v3, p0, Lcn/sharesdk/kakao/talk/a;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v1, "appver"

    iget-object v3, p0, Lcn/sharesdk/kakao/talk/a;->b:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v3}, Lcom/mob/tools/utils/DeviceHelper;->getAppVersionName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v1, "extras"

    invoke-direct {p0}, Lcn/sharesdk/kakao/talk/a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    const-string v0, ""

    .line 111
    :try_start_49
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 112
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_68

    .line 113
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 114
    const-string v4, "objtype"

    const-string v5, "label"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    const-string v4, "text"

    invoke-virtual {v3, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 116
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 119
    :cond_68
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_90

    .line 120
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 121
    const-string v4, "objtype"

    const-string v5, "image"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 122
    const-string v4, "src"

    invoke-virtual {v3, v4, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 123
    const-string v4, "height"

    const/16 v5, 0x12c

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 124
    const-string v4, "width"

    const/16 v5, 0x12c

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 125
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 127
    :cond_90
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c6

    .line 128
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 129
    const-string v4, "objtype"

    const-string v5, "link"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 130
    const-string v4, "text"

    iget-object v5, p0, Lcn/sharesdk/kakao/talk/a;->b:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v5}, Lcom/mob/tools/utils/DeviceHelper;->getAppName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 131
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 132
    const-string v5, "type"

    const-string v6, "web"

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 133
    const-string v5, "url"

    invoke-virtual {v4, v5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 134
    const-string v5, "action"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 135
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 137
    :cond_c6
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_f1

    .line 138
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 139
    const-string v4, "objtype"

    const-string v5, "button"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 140
    const-string v4, "text"

    invoke-virtual {v3, v4, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 141
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 142
    const-string v5, "type"

    const-string v6, "app"

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 143
    const-string v5, "action"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 144
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 146
    :cond_f1
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "UTF-8"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_102
    .catch Lorg/json/JSONException; {:try_start_49 .. :try_end_102} :catch_145
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_49 .. :try_end_102} :catch_14e

    move-result-object v0

    .line 153
    :goto_103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "kakaolink://send?"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2}, Lcom/mob/tools/utils/ResHelper;->encodeUrl(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&objs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 154
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 155
    const-string v2, "uri"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    new-instance v0, Lcn/sharesdk/kakao/talk/b;

    invoke-direct {v0}, Lcn/sharesdk/kakao/talk/b;-><init>()V

    .line 158
    iget-object v2, p0, Lcn/sharesdk/kakao/talk/a;->a:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v0, v2, p5}, Lcn/sharesdk/kakao/talk/b;->a(Lcn/sharesdk/framework/Platform;Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 159
    const-string v2, "share"

    invoke-virtual {v0, v2}, Lcn/sharesdk/kakao/talk/b;->a(Ljava/lang/String;)V

    .line 160
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcn/sharesdk/kakao/talk/b;->show(Landroid/content/Context;Landroid/content/Intent;)V

    .line 161
    return-void

    .line 147
    :catch_145
    move-exception v1

    .line 148
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_103

    .line 149
    :catch_14e
    move-exception v1

    .line 150
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_103
.end method

.method public a()Z
    .registers 4

    .prologue
    .line 78
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0}, Lcn/sharesdk/kakao/talk/a;->b()Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x8b

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

.method public getAuthorizeUrl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://kauth.kakao.com/oauth/authorize?client_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/kakao/talk/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&redirect_uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/kakao/talk/a;->d:Ljava/lang/String;

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
    .line 56
    new-instance v0, Lcn/sharesdk/kakao/utils/KakaoWebViewClient;

    invoke-direct {v0, p1}, Lcn/sharesdk/kakao/utils/KakaoWebViewClient;-><init>(Lcn/sharesdk/framework/authorize/e;)V

    return-object v0
.end method

.method public getRedirectUri()Ljava/lang/String;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcn/sharesdk/kakao/talk/a;->d:Ljava/lang/String;

    return-object v0
.end method
