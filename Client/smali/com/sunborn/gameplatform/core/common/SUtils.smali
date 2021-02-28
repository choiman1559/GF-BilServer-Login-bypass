.class public Lcom/sunborn/gameplatform/core/common/SUtils;
.super Ljava/lang/Object;
.source "SUtils.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static mFonts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private static mMacAddress:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const-class v0, Lcom/sunborn/gameplatform/core/common/SUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sunborn/gameplatform/core/common/SUtils;->TAG:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sunborn/gameplatform/core/common/SUtils;->mFonts:Ljava/util/HashMap;

    .line 79
    const-string v0, "02:00:00:00:00:00"

    sput-object v0, Lcom/sunborn/gameplatform/core/common/SUtils;->mMacAddress:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static convertToJsonString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 5
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 88
    instance-of v2, p0, Ljava/util/HashMap;

    if-eqz v2, :cond_22

    move-object v1, p0

    .line 89
    check-cast v1, Ljava/util/HashMap;

    .line 90
    .local v1, "jsonMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "game_channel_id"

    invoke-static {}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->getInstance()Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;

    move-result-object v3

    iget-object v3, v3, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->game_channel_id:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v2, "channel_id"

    invoke-static {}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->getInstance()Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;

    move-result-object v3

    iget-object v3, v3, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->platform_channel_id:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    invoke-static {v1}, Lcom/sunborn/gameplatform/core/common/SUtils;->convertToJsonStringWithOut(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 96
    .end local v1    # "jsonMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_21
    return-object v2

    .line 94
    :cond_22
    new-instance v2, Lcom/google/gson/GsonBuilder;

    invoke-direct {v2}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/google/gson/GsonBuilder;->serializeNulls()Lcom/google/gson/GsonBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    .line 95
    .local v0, "gson":Lcom/google/gson/Gson;
    invoke-virtual {v0}, Lcom/google/gson/Gson;->serializeNulls()Z

    .line 96
    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_21
.end method

.method public static convertToJsonStringWithOut(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 99
    new-instance v1, Lcom/google/gson/GsonBuilder;

    invoke-direct {v1}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->serializeNulls()Lcom/google/gson/GsonBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    .line 100
    .local v0, "gson":Lcom/google/gson/Gson;
    invoke-virtual {v0}, Lcom/google/gson/Gson;->serializeNulls()Z

    .line 101
    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getCurrentTimeStamp()Ljava/lang/String;
    .registers 4

    .prologue
    .line 146
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFont(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 182
    sget-object v3, Lcom/sunborn/gameplatform/core/common/SUtils;->mFonts:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 183
    sget-object v2, Lcom/sunborn/gameplatform/core/common/SUtils;->mFonts:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Typeface;

    .line 195
    :cond_11
    :goto_11
    return-object v2

    .line 185
    :cond_12
    if-eqz p0, :cond_11

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_11

    .line 188
    :try_start_1c
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "%s/%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "fonts"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 187
    invoke-static {v3, v4}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 189
    .local v1, "typeface":Landroid/graphics/Typeface;
    sget-object v3, Lcom/sunborn/gameplatform/core/common/SUtils;->mFonts:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_3a} :catch_3c

    move-object v2, v1

    .line 190
    goto :goto_11

    .line 191
    .end local v1    # "typeface":Landroid/graphics/Typeface;
    :catch_3c
    move-exception v0

    .line 192
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_11
.end method

.method public static getMACAddress()Ljava/lang/String;
    .registers 1

    .prologue
    .line 128
    sget-object v0, Lcom/sunborn/gameplatform/core/common/SUtils;->mMacAddress:Ljava/lang/String;

    return-object v0
.end method

.method public static final getMD5(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x10

    .line 50
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 51
    .local v4, "unencodedPassword":[B
    const/4 v3, 0x0

    .line 54
    .local v3, "md":Ljava/security/MessageDigest;
    :try_start_7
    const-string v6, "MD5"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_3a

    move-result-object v3

    .line 59
    invoke-virtual {v3}, Ljava/security/MessageDigest;->reset()V

    .line 60
    invoke-virtual {v3, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 61
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 62
    .local v1, "encodedPassword":[B
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 64
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1d
    array-length v6, v1

    if-ge v2, v6, :cond_3c

    .line 65
    aget-byte v6, v1, v2

    and-int/lit16 v6, v6, 0xff

    if-ge v6, v8, :cond_2b

    .line 66
    const-string v6, "0"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    :cond_2b
    aget-byte v6, v1, v2

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    invoke-static {v6, v7, v8}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 55
    .end local v0    # "buf":Ljava/lang/StringBuffer;
    .end local v1    # "encodedPassword":[B
    .end local v2    # "i":I
    :catch_3a
    move-exception v5

    .line 72
    .end local p0    # "string":Ljava/lang/String;
    :goto_3b
    return-object p0

    .restart local v0    # "buf":Ljava/lang/StringBuffer;
    .restart local v1    # "encodedPassword":[B
    .restart local v2    # "i":I
    .restart local p0    # "string":Ljava/lang/String;
    :cond_3c
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3b
.end method

.method public static getMataData(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "mActivity"    # Landroid/app/Activity;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 132
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 133
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_13} :catch_15

    move-result-object v0

    .line 137
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :goto_14
    return-object v0

    .line 135
    :catch_15
    move-exception v2

    .line 136
    .local v2, "var4":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 137
    const-string v0, ""

    goto :goto_14
.end method

.method public static getRequestMD5Sign(Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 153
    invoke-static {p0}, Lcom/sunborn/gameplatform/core/common/SUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 154
    const-string v4, ""

    .line 172
    :cond_8
    :goto_8
    return-object v4

    .line 156
    :cond_9
    const/4 v3, 0x0

    .line 158
    .local v3, "md5":Ljava/security/MessageDigest;
    :try_start_a
    const-string v6, "MD5"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 159
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 160
    .local v1, "bytes":[B
    const-string v4, ""

    .line 161
    .local v4, "result":Ljava/lang/String;
    array-length v7, v1

    const/4 v6, 0x0

    :goto_1c
    if-ge v6, v7, :cond_8

    aget-byte v0, v1, v6

    .line 162
    .local v0, "b":B
    and-int/lit16 v8, v0, 0xff

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 163
    .local v5, "temp":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_40

    .line 164
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "0"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 166
    :cond_40
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_50
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_a .. :try_end_50} :catch_54

    move-result-object v4

    .line 161
    add-int/lit8 v6, v6, 0x1

    goto :goto_1c

    .line 169
    .end local v0    # "b":B
    .end local v1    # "bytes":[B
    .end local v4    # "result":Ljava/lang/String;
    .end local v5    # "temp":Ljava/lang/String;
    :catch_54
    move-exception v2

    .line 170
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 172
    const-string v4, ""

    goto :goto_8
.end method

.method public static initMACAddress(Landroid/content/Context;)V
    .registers 4
    .param p0, "ctx"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission",
            "HardwareIds"
        }
    .end annotation

    .prologue
    const/16 v2, 0x18

    .line 110
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_2b

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v2, :cond_2b

    .line 111
    invoke-static {p0}, Lcom/sunborn/gameplatform/core/common/MacUitl;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sunborn/gameplatform/core/common/SUtils;->mMacAddress:Ljava/lang/String;

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMacAddress6.0\u53ca\u4ee5\u4e0a\u30017.0\u4ee5\u4e0b "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sunborn/gameplatform/core/common/SUtils;->mMacAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lohanry/android/framework/tools/Logger;->debug(Ljava/lang/String;)V

    .line 120
    :goto_2a
    return-void

    .line 113
    :cond_2b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_4e

    .line 114
    invoke-static {}, Lcom/sunborn/gameplatform/core/common/MacUitl;->getMachineHardwareAddress()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sunborn/gameplatform/core/common/SUtils;->mMacAddress:Ljava/lang/String;

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMacAddress7.0\u53ca\u4ee5\u4e0a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sunborn/gameplatform/core/common/SUtils;->mMacAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lohanry/android/framework/tools/Logger;->debug(Ljava/lang/String;)V

    goto :goto_2a

    .line 117
    :cond_4e
    invoke-static {p0}, Lcom/sunborn/gameplatform/core/common/MacUitl;->getMacAddress0(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sunborn/gameplatform/core/common/SUtils;->mMacAddress:Ljava/lang/String;

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMacAddress6.0\u4ee5\u4e0b :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sunborn/gameplatform/core/common/SUtils;->mMacAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lohanry/android/framework/tools/Logger;->debug(Ljava/lang/String;)V

    goto :goto_2a
.end method

.method public static isNullOrEmpty(Ljava/lang/String;)Z
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 175
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static final openURL(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 36
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 37
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 39
    .local v0, "content_url":Landroid/net/Uri;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 40
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 41
    return-void
.end method

.method public static final openWebView(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 47
    return-void
.end method

.method public static final showToast(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 33
    return-void
.end method

.method public static text2html(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 201
    if-nez p0, :cond_5

    const-string v0, ""

    .line 202
    :goto_4
    return-object v0

    :cond_5
    const-string v0, "\n"

    const-string v1, "<br>"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method
