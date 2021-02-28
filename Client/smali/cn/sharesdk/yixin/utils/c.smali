.class public Lcn/sharesdk/yixin/utils/c;
.super Ljava/lang/Object;
.source "YixinCore.java"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a([B)Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 94
    const/16 v1, 0x10

    new-array v2, v1, [C

    fill-array-data v2, :array_46

    .line 96
    :try_start_8
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 97
    invoke-virtual {v1, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 98
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    .line 99
    array-length v1, v3

    mul-int/lit8 v1, v1, 0x2

    new-array v4, v1, [C

    move v1, v0

    .line 102
    :goto_1b
    array-length v5, v3

    if-ge v1, v5, :cond_35

    .line 103
    aget-byte v5, v3, v1

    .line 104
    ushr-int/lit8 v6, v5, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v2, v6

    aput-char v6, v4, v0

    .line 105
    add-int/lit8 v0, v0, 0x1

    .line 106
    and-int/lit8 v5, v5, 0xf

    aget-char v5, v2, v5

    aput-char v5, v4, v0

    .line 107
    add-int/lit8 v0, v0, 0x1

    .line 108
    add-int/lit8 v1, v1, 0x1

    .line 109
    goto :goto_1b

    .line 110
    :cond_35
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([C)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_3a} :catch_3b

    .line 114
    :goto_3a
    return-object v0

    .line 111
    :catch_3b
    move-exception v0

    .line 112
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 114
    const/4 v0, 0x0

    goto :goto_3a

    .line 94
    nop

    :array_46
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

.method private a(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 7

    .prologue
    .line 82
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 83
    if-eqz p1, :cond_a

    .line 84
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    :cond_a
    const-wide/16 v2, 0x2712

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 87
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    const-string v1, "wDERqmMcFVCpTr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 90
    invoke-direct {p0, v0}, Lcn/sharesdk/yixin/utils/c;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method private c()Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    const-string v2, "checking signature of yixin client..."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 47
    :try_start_c
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "im.yixin"

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_1b} :catch_3f

    move-result-object v2

    .line 54
    iget-object v1, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v3, v1

    .line 55
    const-string v4, "3082019f30820108a003020102020450d3f283300d06092a864886f70d010105050030133111300f060355040313086368696e6174656c3020170d3132313232313035323431395a180f32303632313230393035323431395a30133111300f060355040313086368696e6174656c30819f300d06092a864886f70d010101050003818d00308189028181009ec811f81e259d74109087d546a6b5cf0d4372a5c095c3de42db8dad608698bb9885d0afed6b1fb8188eec5a51dc086e7a9ef00a2071ec92f586a8faf9a3587a98d09a6e45bb3858f4a3ff1052140fa3ece902518bafe1935351a822eae166825b31f09fb0f25cd96fe3ee7b6b3f0d6fa20126a110f5af481097325a7f0c442b0203010001300d06092a864886f70d010105050003818100776f185197eb6f104a81269ac79d9f9aa02e570d535ea5082e9838a816eecce344fe70b222ec1a7ccb2c3d5ca9331d305f0925c2b111eebecdc42adbd34c85e1f1eb636c2589fcafe23d63ac48bbce8f0ac0ddbb5a72bbe13ee2273a18a7844365102d6395eebfef266a263c8b3ca8196bfda79375534d22b5be5a8a13c08ea8"

    move v1, v0

    .line 71
    :goto_22
    if-ge v1, v3, :cond_3e

    .line 72
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v5

    .line 73
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_48

    .line 74
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    const-string v2, "pass!"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 75
    const/4 v0, 0x1

    .line 78
    :cond_3e
    :goto_3e
    return v0

    .line 49
    :catch_3f
    move-exception v1

    .line 50
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_3e

    .line 71
    :cond_48
    add-int/lit8 v1, v1, 0x1

    goto :goto_22
.end method


# virtual methods
.method public a(Lcn/sharesdk/yixin/utils/a;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 134
    invoke-virtual {p0}, Lcn/sharesdk/yixin/utils/c;->a()Z

    move-result v0

    if-nez v0, :cond_d

    .line 135
    new-instance v0, Lcn/sharesdk/yixin/utils/YixinClientNotExistException;

    invoke-direct {v0}, Lcn/sharesdk/yixin/utils/YixinClientNotExistException;-><init>()V

    throw v0

    .line 138
    :cond_d
    if-nez p1, :cond_17

    .line 139
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "sendMsg error param req is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_17
    invoke-virtual {p1}, Lcn/sharesdk/yixin/utils/a;->b()Z

    move-result v0

    if-nez v0, :cond_42

    .line 143
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendMsg: transaction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcn/sharesdk/yixin/utils/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",checkArgs fail"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 169
    :goto_41
    return-void

    .line 147
    :cond_42
    const-string v1, "im.yixin.sdk.Intent.ACTION_MESSAGE"

    .line 148
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 149
    const-string v0, "im.yixin"

    const-string v3, "im.yixin.sdk.communication.YXEntryActivity"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 151
    invoke-virtual {p1, v0}, Lcn/sharesdk/yixin/utils/a;->b(Landroid/os/Bundle;)V

    .line 152
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "yixin://sendreq?appid="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcn/sharesdk/yixin/utils/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 154
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 155
    const-string v0, "_yxmessage_sdkVersion"

    const-wide/16 v6, 0x2712

    invoke-virtual {v2, v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 156
    const-string v0, "_yxmessage_appPackage"

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    const-string v0, "_yxmessage_content"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    const-string v0, "_yxmessage_checksum"

    invoke-direct {p0, v3, v4}, Lcn/sharesdk/yixin/utils/c;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 159
    const/high16 v0, 0x10000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 160
    const/high16 v0, 0x8000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 162
    :try_start_9c
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_a3
    .catch Ljava/lang/Throwable; {:try_start_9c .. :try_end_a3} :catch_df

    .line 168
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendToYx success: action="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ",protocolData="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",package="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", intent="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto/16 :goto_41

    .line 163
    :catch_df
    move-exception v0

    .line 164
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sendToYx failed: action="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ",protocolData="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",package="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", intent="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/Object;

    invoke-virtual {v5, v1, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 165
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto/16 :goto_41
.end method

.method public a()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 118
    invoke-direct {p0}, Lcn/sharesdk/yixin/utils/c;->c()Z

    move-result v1

    if-nez v1, :cond_8

    .line 130
    :cond_7
    :goto_7
    return v0

    .line 124
    :cond_8
    :try_start_8
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "im.yixin"

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_17} :catch_22

    move-result-object v1

    .line 130
    if-eqz v1, :cond_7

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    const/16 v2, 0x92

    if-le v1, v2, :cond_7

    const/4 v0, 0x1

    goto :goto_7

    .line 125
    :catch_22
    move-exception v1

    .line 126
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method public a(Lcn/sharesdk/yixin/utils/YixinHandlerActivity;Lcn/sharesdk/yixin/utils/d;)Z
    .registers 13

    .prologue
    const/4 v1, 0x0

    .line 172
    invoke-virtual {p1}, Lcn/sharesdk/yixin/utils/YixinHandlerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 173
    if-nez v2, :cond_8

    .line 235
    :goto_7
    return v1

    .line 177
    :cond_8
    const-string v0, "_yxmessage_content"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    if-eqz v0, :cond_18

    const-string v3, "yixin://"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_24

    .line 179
    :cond_18
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const-string v2, "handleIntent failed because !protocol.isValid()"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_7

    .line 183
    :cond_24
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 184
    const-string v4, "appid"

    invoke-virtual {v3, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 185
    invoke-virtual {v3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    .line 186
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3e

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4a

    .line 187
    :cond_3e
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const-string v2, "handleIntent failed because !protocol.isValid()"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_7

    .line 191
    :cond_4a
    const-string v5, "_yxmessage_sdkVersion"

    const-wide/16 v6, 0x0

    invoke-virtual {v2, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 192
    const-wide/16 v8, 0x1

    cmp-long v5, v6, v8

    if-gez v5, :cond_64

    .line 193
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const-string v2, "handleIntent failed because !protocol.isValid()"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_7

    .line 197
    :cond_64
    const-string v5, "_yxmessage_appPackage"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 198
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7c

    .line 199
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const-string v2, "handleIntent failed because !protocol.isValid()"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_7

    .line 203
    :cond_7c
    const-string v4, "_yxmessage_checksum"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v4

    .line 204
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v5}, Lcn/sharesdk/yixin/utils/c;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v5

    .line 205
    if-eqz v4, :cond_9f

    if-eqz v5, :cond_9f

    array-length v0, v4

    array-length v6, v5

    if-eq v0, v6, :cond_ac

    .line 206
    :cond_9f
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const-string v2, "handleIntent failed because !protocol.isValid()"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto/16 :goto_7

    :cond_ac
    move v0, v1

    .line 210
    :goto_ad
    array-length v6, v4

    if-ge v0, v6, :cond_c6

    .line 211
    aget-byte v6, v4, v0

    aget-byte v7, v5, v0

    if-eq v6, v7, :cond_c3

    .line 212
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const-string v2, "handleIntent failed because !protocol.isValid()"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto/16 :goto_7

    .line 210
    :cond_c3
    add-int/lit8 v0, v0, 0x1

    goto :goto_ad

    .line 217
    :cond_c6
    const-string v0, "_yxapi_command_type"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 218
    packed-switch v0, :pswitch_data_122

    .line 235
    :goto_cf
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 220
    :pswitch_d2
    const-string v0, "onReq"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ec

    .line 221
    new-instance v0, Lcn/sharesdk/yixin/utils/a;

    invoke-direct {v0}, Lcn/sharesdk/yixin/utils/a;-><init>()V

    .line 222
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/sharesdk/yixin/utils/a;->a(Landroid/os/Bundle;)V

    .line 223
    iget-object v0, v0, Lcn/sharesdk/yixin/utils/a;->a:Lcn/sharesdk/yixin/utils/YXMessage;

    invoke-virtual {p1, v0}, Lcn/sharesdk/yixin/utils/YixinHandlerActivity;->onReceiveMessageFromYX(Lcn/sharesdk/yixin/utils/YXMessage;)V

    goto :goto_cf

    .line 224
    :cond_ec
    const-string v0, "onResp"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_104

    .line 225
    new-instance v0, Lcn/sharesdk/yixin/utils/b;

    invoke-direct {v0}, Lcn/sharesdk/yixin/utils/b;-><init>()V

    .line 226
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/sharesdk/yixin/utils/b;->a(Landroid/os/Bundle;)V

    .line 227
    invoke-virtual {p2, v0}, Lcn/sharesdk/yixin/utils/d;->a(Lcn/sharesdk/yixin/utils/YixinResp;)V

    goto :goto_cf

    .line 229
    :cond_104
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleIntent error command passed from Yixin "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto/16 :goto_7

    .line 218
    :pswitch_data_122
    .packed-switch 0x1
        :pswitch_d2
    .end packed-switch
.end method

.method public a(Ljava/lang/String;)Z
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 22
    iput-object p1, p0, Lcn/sharesdk/yixin/utils/c;->a:Ljava/lang/String;

    .line 23
    invoke-direct {p0}, Lcn/sharesdk/yixin/utils/c;->c()Z

    move-result v1

    if-nez v1, :cond_15

    .line 24
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    const-string v2, "register app failed for wechat app signature check failed"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 40
    :goto_14
    return v0

    .line 28
    :cond_15
    const-string v1, "im.yixin.sdk.Intent.ACTION_HANDLE_APP_REG"

    .line 29
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 30
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "yixin://registerapp?appid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 31
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 32
    const-string v5, "_yxmessage_sdkVersion"

    const-wide/16 v6, 0x2712

    invoke-virtual {v2, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 33
    const-string v5, "_yxmessage_appPackage"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    const-string v5, "_yxmessage_content"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    const-string v5, "_yxmessage_checksum"

    invoke-direct {p0, v3, v4}, Lcn/sharesdk/yixin/utils/c;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 36
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "im.yixin.sdk.permission.YIXIN_SDK_MESSAGE"

    invoke-virtual {v5, v2, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 37
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "send success: action="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",protocolData="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ",package="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", intent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", perm=im.yixin.sdk.permission.YIXIN_SDK_MESSAGE"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 40
    const/4 v0, 0x1

    goto/16 :goto_14
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 239
    const/4 v0, 0x1

    return v0
.end method
