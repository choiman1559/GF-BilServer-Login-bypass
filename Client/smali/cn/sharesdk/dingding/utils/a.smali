.class public Lcn/sharesdk/dingding/utils/a;
.super Ljava/lang/Object;
.source "DingdingCore.java"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(I)Landroid/content/Intent;
    .registers 3

    .prologue
    .line 158
    if-nez p1, :cond_7

    .line 159
    invoke-direct {p0}, Lcn/sharesdk/dingding/utils/a;->c()Landroid/content/Intent;

    move-result-object v0

    .line 163
    :goto_6
    return-object v0

    .line 160
    :cond_7
    const/4 v0, 0x1

    if-ne p1, v0, :cond_f

    .line 161
    invoke-direct {p0}, Lcn/sharesdk/dingding/utils/a;->d()Landroid/content/Intent;

    move-result-object v0

    goto :goto_6

    .line 163
    :cond_f
    invoke-direct {p0}, Lcn/sharesdk/dingding/utils/a;->c()Landroid/content/Intent;

    move-result-object v0

    goto :goto_6
.end method

.method public static final a([B)Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 84
    const/16 v1, 0x10

    new-array v2, v1, [C

    fill-array-data v2, :array_44

    .line 86
    :try_start_8
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 87
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 89
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    array-length v4, v3

    mul-int/lit8 v1, v4, 0x2

    new-array v5, v1, [C

    move v1, v0

    .line 91
    :goto_1b
    if-ge v0, v4, :cond_34

    .line 92
    aget-byte v6, v3, v0

    .line 93
    ushr-int/lit8 v7, v6, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-char v7, v2, v7

    aput-char v7, v5, v1

    .line 94
    add-int/lit8 v1, v1, 0x1

    .line 95
    and-int/lit8 v6, v6, 0xf

    aget-char v6, v2, v6

    aput-char v6, v5, v1

    .line 96
    add-int/lit8 v1, v1, 0x1

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 98
    :cond_34
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([C)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_39} :catch_3a

    .line 102
    :goto_39
    return-object v0

    .line 99
    :catch_3a
    move-exception v0

    .line 100
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 102
    const/4 v0, 0x0

    goto :goto_39

    .line 84
    :array_44
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 53
    invoke-static {p0}, Lcn/sharesdk/dingding/utils/a;->c(Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v1

    .line 54
    if-eqz v1, :cond_9

    array-length v0, v1

    if-nez v0, :cond_b

    .line 55
    :cond_9
    const/4 v0, 0x0

    .line 62
    :goto_a
    return-object v0

    .line 57
    :cond_b
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 58
    const/4 v0, 0x0

    :goto_11
    array-length v3, v1

    if-ge v0, v3, :cond_24

    .line 59
    aget-object v3, v1, v0

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v3

    invoke-static {v3}, Lcn/sharesdk/dingding/utils/a;->a([B)Ljava/lang/String;

    move-result-object v3

    .line 60
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 62
    :cond_24
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method private b()Z
    .registers 4

    .prologue
    .line 47
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const-string v1, "checking signature of dingding client..."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 48
    const-string v0, "com.alibaba.android.rimet"

    invoke-static {v0}, Lcn/sharesdk/dingding/utils/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    const-string v1, "d2cef93010963d9273440efe6a05dd8d"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private c()Landroid/content/Intent;
    .registers 2

    .prologue
    .line 167
    const-string v0, "dingtalk://qr.dingtalk.com/im/forward.html"

    invoke-direct {p0, v0}, Lcn/sharesdk/dingding/utils/a;->d(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private static c(Ljava/lang/String;)[Landroid/content/pm/Signature;
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 67
    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    .line 80
    :cond_9
    :goto_9
    return-object v0

    .line 70
    :cond_a
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 72
    const/16 v2, 0x40

    :try_start_14
    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_17
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_14 .. :try_end_17} :catch_1d

    move-result-object v1

    .line 73
    if-eqz v1, :cond_9

    .line 80
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    goto :goto_9

    .line 76
    :catch_1d
    move-exception v1

    .line 77
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method private d()Landroid/content/Intent;
    .registers 2

    .prologue
    .line 171
    const-string v0, "dingtalk://qr.dingtalk.com/ding/create"

    invoke-direct {p0, v0}, Lcn/sharesdk/dingding/utils/a;->d(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private d(Ljava/lang/String;)Landroid/content/Intent;
    .registers 5

    .prologue
    .line 175
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object v0
.end method


# virtual methods
.method public a()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 108
    :try_start_1
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.alibaba.android.rimet"

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 110
    if-eqz v1, :cond_1a

    invoke-direct {p0}, Lcn/sharesdk/dingding/utils/a;->b()Z
    :try_end_16
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_16} :catch_1b

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v0, 0x1

    .line 114
    :cond_1a
    :goto_1a
    return v0

    .line 111
    :catch_1b
    move-exception v1

    .line 112
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_1a
.end method

.method public a(Lcn/sharesdk/dingding/utils/DingdingHandlerActivity;Lcn/sharesdk/dingding/utils/b;)Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 179
    invoke-virtual {p1}, Lcn/sharesdk/dingding/utils/DingdingHandlerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 180
    if-nez v2, :cond_9

    .line 205
    :cond_8
    :goto_8
    return v0

    .line 183
    :cond_9
    const-string v3, "android.intent.ding.EXTRA_MESSAGE_APP_PACKAGE_NAME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 184
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_8

    if-eqz p2, :cond_8

    .line 185
    const-string v3, "android.intent.ding.EXTRA_COMMAND_TYPE"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    packed-switch v3, :pswitch_data_60

    goto :goto_8

    .line 187
    :pswitch_23
    new-instance v0, Lcn/sharesdk/dingding/utils/f;

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v0, v2}, Lcn/sharesdk/dingding/utils/f;-><init>(Landroid/os/Bundle;)V

    .line 188
    invoke-virtual {p2, v0}, Lcn/sharesdk/dingding/utils/b;->a(Lcn/sharesdk/dingding/utils/DingdingResp;)V

    move v0, v1

    .line 189
    goto :goto_8

    .line 191
    :pswitch_31
    new-instance v0, Lcn/sharesdk/dingding/utils/f;

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v0, v2}, Lcn/sharesdk/dingding/utils/f;-><init>(Landroid/os/Bundle;)V

    .line 192
    invoke-virtual {p2, v0}, Lcn/sharesdk/dingding/utils/b;->a(Lcn/sharesdk/dingding/utils/DingdingResp;)V

    move v0, v1

    .line 193
    goto :goto_8

    .line 195
    :pswitch_3f
    new-instance v0, Lcn/sharesdk/dingding/utils/e;

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v0, v2}, Lcn/sharesdk/dingding/utils/e;-><init>(Landroid/os/Bundle;)V

    .line 196
    iget-object v0, v0, Lcn/sharesdk/dingding/utils/e;->b:Lcn/sharesdk/dingding/utils/DDMediaMessage;

    invoke-virtual {p1, v0}, Lcn/sharesdk/dingding/utils/DingdingHandlerActivity;->onGetMessageFromDingdingReq(Lcn/sharesdk/dingding/utils/DDMediaMessage;)V

    move v0, v1

    .line 197
    goto :goto_8

    .line 199
    :pswitch_4f
    new-instance v0, Lcn/sharesdk/dingding/utils/e;

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v0, v2}, Lcn/sharesdk/dingding/utils/e;-><init>(Landroid/os/Bundle;)V

    .line 200
    iget-object v0, v0, Lcn/sharesdk/dingding/utils/e;->b:Lcn/sharesdk/dingding/utils/DDMediaMessage;

    invoke-virtual {p1, v0}, Lcn/sharesdk/dingding/utils/DingdingHandlerActivity;->onShowMessageFromDingdingReq(Lcn/sharesdk/dingding/utils/DDMediaMessage;)V

    move v0, v1

    .line 201
    goto :goto_8

    .line 185
    nop

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_23
        :pswitch_31
        :pswitch_3f
        :pswitch_4f
    .end packed-switch
.end method

.method public a(Lcn/sharesdk/dingding/utils/d;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 118
    invoke-virtual {p0}, Lcn/sharesdk/dingding/utils/a;->a()Z

    move-result v0

    if-nez v0, :cond_c

    .line 119
    new-instance v0, Lcn/sharesdk/dingding/utils/DingdingClientNotExistException;

    invoke-direct {v0}, Lcn/sharesdk/dingding/utils/DingdingClientNotExistException;-><init>()V

    throw v0

    .line 122
    :cond_c
    if-nez p1, :cond_16

    .line 123
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "sendMsg error param req is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_16
    invoke-virtual {p1}, Lcn/sharesdk/dingding/utils/d;->b()Z

    move-result v0

    if-nez v0, :cond_24

    .line 127
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "sendReq checkArgs fail"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    move-object v0, p1

    .line 130
    check-cast v0, Lcn/sharesdk/dingding/utils/e;

    iget v0, v0, Lcn/sharesdk/dingding/utils/e;->c:I

    invoke-direct {p0, v0}, Lcn/sharesdk/dingding/utils/a;->a(I)Landroid/content/Intent;

    move-result-object v0

    .line 131
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 132
    invoke-virtual {p1, v1}, Lcn/sharesdk/dingding/utils/d;->a(Landroid/os/Bundle;)V

    .line 133
    if-eqz v1, :cond_3a

    .line 134
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 137
    :cond_3a
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 138
    invoke-static {v1}, Lcn/sharesdk/dingding/utils/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 139
    const-string v3, "android.intent.ding.EXTRA_MESSAGE_SDK_VERSION"

    const v4, 0x1337b55

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 140
    const-string v3, "android.intent.ding.EXTRA_MESSAGE_APP_PACKAGE_NAME"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    const-string v1, "android.intent.ding.EXTRA_ACTION_TYPE"

    const-string v3, "outShare"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    const-string v1, "android.intent.ding.EXTRA_MESSAGE_APP_SIGNATURE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    const-string v1, "android.intent.ding.EXTRA_MESSAGE_APP_ID"

    iget-object v2, p0, Lcn/sharesdk/dingding/utils/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 146
    :try_start_6b
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_72} :catch_91

    .line 152
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendToDd success:intent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 153
    const/4 v0, 0x1

    return v0

    .line 147
    :catch_91
    move-exception v0

    .line 148
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 149
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "startActivity  fail"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/lang/String;)Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 26
    iput-object p1, p0, Lcn/sharesdk/dingding/utils/a;->a:Ljava/lang/String;

    .line 27
    invoke-direct {p0}, Lcn/sharesdk/dingding/utils/a;->b()Z

    move-result v1

    if-nez v1, :cond_15

    .line 28
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    const-string v2, "register app failed for dingding app signature check failed"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 43
    :goto_14
    return v0

    .line 32
    :cond_15
    const-string v0, "com.dd.plugin.openapi.Intent.ACTION_HANDLE_APP_REGISTER"

    .line 34
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 36
    const-string v2, "android.intent.ding.EXTRA_MESSAGE_SDK_VERSION"

    const v3, 0x1337b55

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 37
    const-string v2, "android.intent.ding.EXTRA_MESSAGE_APP_PACKAGE_NAME"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    const-string v2, "android.intent.ding.EXTRA_CALLBACK_MESSAGE_CONTENT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dd://registerapp?appid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    invoke-static {v0}, Lcn/sharesdk/dingding/utils/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    const-string v2, "android.intent.ding.EXTRA_MESSAGE_APP_SIGNATURE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "com.alibaba.android.rimet.permission.MM_MESSAGE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 43
    const/4 v0, 0x1

    goto :goto_14
.end method
