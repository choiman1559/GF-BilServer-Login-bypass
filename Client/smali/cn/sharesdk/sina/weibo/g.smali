.class public Lcn/sharesdk/sina/weibo/g;
.super Ljava/lang/Object;
.source "WeiboAppManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/sharesdk/sina/weibo/g$a;
    }
.end annotation


# static fields
.field private static final a:Landroid/net/Uri;

.field private static b:Lcn/sharesdk/sina/weibo/g;

.field private static c:Lcn/sharesdk/sina/weibo/g$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const-string v0, "content://com.sina.weibo.sdkProvider/query/package"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcn/sharesdk/sina/weibo/g;->a:Landroid/net/Uri;

    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcn/sharesdk/sina/weibo/g;->c:Lcn/sharesdk/sina/weibo/g$a;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    return-void
.end method

.method public static declared-synchronized a()Lcn/sharesdk/sina/weibo/g;
    .registers 2

    .prologue
    .line 79
    const-class v1, Lcn/sharesdk/sina/weibo/g;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcn/sharesdk/sina/weibo/g;->b:Lcn/sharesdk/sina/weibo/g;

    if-nez v0, :cond_e

    .line 80
    new-instance v0, Lcn/sharesdk/sina/weibo/g;

    invoke-direct {v0}, Lcn/sharesdk/sina/weibo/g;-><init>()V

    sput-object v0, Lcn/sharesdk/sina/weibo/g;->b:Lcn/sharesdk/sina/weibo/g;

    .line 82
    :cond_e
    sget-object v0, Lcn/sharesdk/sina/weibo/g;->b:Lcn/sharesdk/sina/weibo/g;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 79
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 241
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 251
    :goto_7
    return v0

    .line 246
    :cond_8
    :try_start_8
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_15} :catch_1f

    move-result-object v0

    .line 251
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const-string v1, "18da2bf10352443a00a5e046d9fca6bd"

    invoke-static {v0, v1}, Lcn/sharesdk/sina/weibo/g;->a([Landroid/content/pm/Signature;Ljava/lang/String;)Z

    move-result v0

    goto :goto_7

    .line 247
    :catch_1f
    move-exception v1

    goto :goto_7
.end method

.method private static a([Landroid/content/pm/Signature;Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 255
    if-eqz p0, :cond_5

    if-nez p1, :cond_6

    .line 268
    :cond_5
    :goto_5
    return v0

    .line 259
    :cond_6
    array-length v2, p0

    move v1, v0

    .line 260
    :goto_8
    if-ge v1, v2, :cond_5

    .line 261
    aget-object v3, p0, v1

    .line 262
    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v3

    invoke-static {v3}, Lcom/mob/tools/utils/Data;->MD5([B)Ljava/lang/String;

    move-result-object v3

    .line 263
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 264
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    const-string v2, "check pass"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 265
    const/4 v0, 0x1

    goto :goto_5

    .line 260
    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_8
.end method

.method private b(Ljava/lang/String;)Lcn/sharesdk/sina/weibo/g$a;
    .registers 11

    .prologue
    const/4 v8, -0x1

    const/4 v0, 0x0

    const/4 v7, 0x0

    .line 199
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 237
    :cond_9
    :goto_9
    return-object v0

    .line 204
    :cond_a
    :try_start_a
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    .line 206
    const/16 v2, 0x1000

    new-array v3, v2, [B

    .line 208
    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "weibo_for_sdk.json"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_20
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_20} :catch_f7
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_20} :catch_b4
    .catchall {:try_start_a .. :try_end_20} :catchall_db

    move-result-object v2

    .line 209
    :try_start_21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 211
    :goto_26
    const/4 v4, 0x0

    const/16 v5, 0x1000

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-eq v4, v8, :cond_5d

    .line 212
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v5, v3, v6, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_38
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_21 .. :try_end_38} :catch_39
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_38} :catch_f5
    .catchall {:try_start_21 .. :try_end_38} :catchall_f3

    goto :goto_26

    .line 224
    :catch_39
    move-exception v1

    .line 225
    :goto_3a
    :try_start_3a
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v1, v4}, Lcom/mob/tools/log/NLog;->e(Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_48
    .catchall {:try_start_3a .. :try_end_48} :catchall_f3

    .line 229
    if-eqz v2, :cond_9

    .line 231
    :try_start_4a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_4e

    goto :goto_9

    .line 232
    :catch_4e
    move-exception v1

    .line 233
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Lcom/mob/tools/log/NLog;->e(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_9

    .line 214
    :cond_5d
    :try_start_5d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6d

    invoke-static {p1}, Lcn/sharesdk/sina/weibo/g;->a(Ljava/lang/String;)Z
    :try_end_6a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5d .. :try_end_6a} :catch_39
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_6a} :catch_f5
    .catchall {:try_start_5d .. :try_end_6a} :catchall_f3

    move-result v3

    if-nez v3, :cond_82

    .line 229
    :cond_6d
    if-eqz v2, :cond_9

    .line 231
    :try_start_6f
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_72} :catch_73

    goto :goto_9

    .line 232
    :catch_73
    move-exception v1

    .line 233
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Lcom/mob/tools/log/NLog;->e(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_9

    .line 217
    :cond_82
    :try_start_82
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 218
    const-string v1, "support_api"

    const/4 v4, -0x1

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 220
    new-instance v1, Lcn/sharesdk/sina/weibo/g$a;

    invoke-direct {v1}, Lcn/sharesdk/sina/weibo/g$a;-><init>()V

    .line 221
    invoke-static {v1, p1}, Lcn/sharesdk/sina/weibo/g$a;->a(Lcn/sharesdk/sina/weibo/g$a;Ljava/lang/String;)V

    .line 222
    invoke-static {v1, v3}, Lcn/sharesdk/sina/weibo/g$a;->a(Lcn/sharesdk/sina/weibo/g$a;I)V
    :try_end_9d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_82 .. :try_end_9d} :catch_39
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_9d} :catch_f5
    .catchall {:try_start_82 .. :try_end_9d} :catchall_f3

    .line 229
    if-eqz v2, :cond_a2

    .line 231
    :try_start_9f
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_a2} :catch_a5

    :cond_a2
    :goto_a2
    move-object v0, v1

    .line 223
    goto/16 :goto_9

    .line 232
    :catch_a5
    move-exception v0

    .line 233
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Lcom/mob/tools/log/NLog;->e(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_a2

    .line 226
    :catch_b4
    move-exception v1

    move-object v2, v0

    .line 227
    :goto_b6
    :try_start_b6
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v1, v4}, Lcom/mob/tools/log/NLog;->e(Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_c4
    .catchall {:try_start_b6 .. :try_end_c4} :catchall_f3

    .line 229
    if-eqz v2, :cond_9

    .line 231
    :try_start_c6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_c9
    .catch Ljava/io/IOException; {:try_start_c6 .. :try_end_c9} :catch_cb

    goto/16 :goto_9

    .line 232
    :catch_cb
    move-exception v1

    .line 233
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Lcom/mob/tools/log/NLog;->e(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto/16 :goto_9

    .line 229
    :catchall_db
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_de
    if-eqz v2, :cond_e3

    .line 231
    :try_start_e0
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_e3
    .catch Ljava/io/IOException; {:try_start_e0 .. :try_end_e3} :catch_e4

    .line 234
    :cond_e3
    :goto_e3
    throw v0

    .line 232
    :catch_e4
    move-exception v1

    .line 233
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Lcom/mob/tools/log/NLog;->e(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_e3

    .line 229
    :catchall_f3
    move-exception v0

    goto :goto_de

    .line 226
    :catch_f5
    move-exception v1

    goto :goto_b6

    .line 224
    :catch_f7
    move-exception v1

    move-object v2, v0

    goto/16 :goto_3a
.end method

.method private c()Lcn/sharesdk/sina/weibo/g$a;
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 105
    invoke-direct {p0}, Lcn/sharesdk/sina/weibo/g;->d()Lcn/sharesdk/sina/weibo/g$a;

    move-result-object v0

    .line 106
    invoke-direct {p0}, Lcn/sharesdk/sina/weibo/g;->e()Lcn/sharesdk/sina/weibo/g$a;

    move-result-object v1

    .line 108
    if-eqz v0, :cond_1e

    move v4, v2

    .line 109
    :goto_d
    if-eqz v1, :cond_20

    .line 110
    :goto_f
    if-eqz v4, :cond_24

    if-eqz v2, :cond_24

    .line 111
    invoke-virtual {v0}, Lcn/sharesdk/sina/weibo/g$a;->b()I

    move-result v2

    invoke-virtual {v1}, Lcn/sharesdk/sina/weibo/g$a;->b()I

    move-result v3

    if-lt v2, v3, :cond_22

    .line 122
    :cond_1d
    :goto_1d
    return-object v0

    :cond_1e
    move v4, v3

    .line 108
    goto :goto_d

    :cond_20
    move v2, v3

    .line 109
    goto :goto_f

    :cond_22
    move-object v0, v1

    .line 114
    goto :goto_1d

    .line 116
    :cond_24
    if-nez v4, :cond_1d

    .line 119
    if-eqz v2, :cond_2a

    move-object v0, v1

    .line 120
    goto :goto_1d

    .line 122
    :cond_2a
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method private d()Lcn/sharesdk/sina/weibo/g$a;
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 126
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 129
    :try_start_9
    sget-object v1, Lcn/sharesdk/sina/weibo/g;->a:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_12} :catch_75
    .catchall {:try_start_9 .. :try_end_12} :catchall_8b

    move-result-object v1

    .line 130
    if-nez v1, :cond_1c

    .line 161
    if-eqz v1, :cond_1a

    .line 162
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1a
    move-object v0, v6

    .line 167
    :cond_1b
    :goto_1b
    return-object v0

    .line 133
    :cond_1c
    :try_start_1c
    const-string v0, "support_api"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 134
    const-string v0, "package"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 135
    const-string v0, "sso_activity"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 136
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 137
    const/4 v0, -0x1

    .line 138
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_38} :catch_95
    .catchall {:try_start_1c .. :try_end_38} :catchall_93

    move-result-object v2

    .line 140
    :try_start_39
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3c
    .catch Ljava/lang/NumberFormatException; {:try_start_39 .. :try_end_3c} :catch_64
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3c} :catch_95
    .catchall {:try_start_39 .. :try_end_3c} :catchall_93

    move-result v0

    move v2, v0

    .line 145
    :goto_3e
    :try_start_3e
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 147
    if-lez v4, :cond_47

    .line 148
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 151
    :cond_47
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6e

    invoke-static {v3}, Lcn/sharesdk/sina/weibo/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 152
    new-instance v0, Lcn/sharesdk/sina/weibo/g$a;

    invoke-direct {v0}, Lcn/sharesdk/sina/weibo/g$a;-><init>()V

    .line 153
    invoke-static {v0, v3}, Lcn/sharesdk/sina/weibo/g$a;->a(Lcn/sharesdk/sina/weibo/g$a;Ljava/lang/String;)V

    .line 154
    invoke-static {v0, v2}, Lcn/sharesdk/sina/weibo/g$a;->a(Lcn/sharesdk/sina/weibo/g$a;I)V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_5e} :catch_95
    .catchall {:try_start_3e .. :try_end_5e} :catchall_93

    .line 161
    if-eqz v1, :cond_1b

    .line 162
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1b

    .line 141
    :catch_64
    move-exception v2

    .line 142
    :try_start_65
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_6c} :catch_95
    .catchall {:try_start_65 .. :try_end_6c} :catchall_93

    move v2, v0

    goto :goto_3e

    .line 161
    :cond_6e
    if-eqz v1, :cond_73

    .line 162
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_73
    :goto_73
    move-object v0, v6

    .line 167
    goto :goto_1b

    .line 158
    :catch_75
    move-exception v0

    move-object v1, v6

    .line 159
    :goto_77
    :try_start_77
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Lcom/mob/tools/log/NLog;->e(Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_85
    .catchall {:try_start_77 .. :try_end_85} :catchall_93

    .line 161
    if-eqz v1, :cond_73

    .line 162
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_73

    .line 161
    :catchall_8b
    move-exception v0

    move-object v1, v6

    :goto_8d
    if-eqz v1, :cond_92

    .line 162
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 163
    :cond_92
    throw v0

    .line 161
    :catchall_93
    move-exception v0

    goto :goto_8d

    .line 158
    :catch_95
    move-exception v0

    goto :goto_77
.end method

.method private e()Lcn/sharesdk/sina/weibo/g$a;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 171
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sina.weibo.action.sdkidentity"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 172
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 174
    if-eqz v0, :cond_22

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 195
    :cond_22
    return-object v1

    .line 178
    :cond_23
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 179
    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v3, :cond_63

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_63

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 182
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_63

    .line 183
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 184
    invoke-direct {p0, v0}, Lcn/sharesdk/sina/weibo/g;->b(Ljava/lang/String;)Lcn/sharesdk/sina/weibo/g$a;

    move-result-object v0

    .line 185
    if-eqz v0, :cond_63

    .line 186
    if-nez v1, :cond_59

    :cond_57
    :goto_57
    move-object v1, v0

    .line 194
    goto :goto_27

    .line 188
    :cond_59
    invoke-virtual {v1}, Lcn/sharesdk/sina/weibo/g$a;->b()I

    move-result v3

    .line 189
    invoke-virtual {v0}, Lcn/sharesdk/sina/weibo/g$a;->b()I

    move-result v4

    if-lt v3, v4, :cond_57

    :cond_63
    move-object v0, v1

    goto :goto_57
.end method


# virtual methods
.method public declared-synchronized b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 86
    monitor-enter p0

    :try_start_1
    sget-object v0, Lcn/sharesdk/sina/weibo/g;->c:Lcn/sharesdk/sina/weibo/g$a;

    if-nez v0, :cond_b

    .line 87
    invoke-direct {p0}, Lcn/sharesdk/sina/weibo/g;->c()Lcn/sharesdk/sina/weibo/g$a;

    move-result-object v0

    sput-object v0, Lcn/sharesdk/sina/weibo/g;->c:Lcn/sharesdk/sina/weibo/g$a;

    .line 89
    :cond_b
    sget-object v0, Lcn/sharesdk/sina/weibo/g;->c:Lcn/sharesdk/sina/weibo/g$a;

    invoke-virtual {v0}, Lcn/sharesdk/sina/weibo/g$a;->a()Ljava/lang/String;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_13

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 86
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method
