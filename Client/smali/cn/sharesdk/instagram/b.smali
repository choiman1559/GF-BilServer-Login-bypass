.class public Lcn/sharesdk/instagram/b;
.super Lcn/sharesdk/framework/b;
.source "InstagramImpl.java"


# static fields
.field private static b:Lcn/sharesdk/instagram/b;


# instance fields
.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:[Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcn/sharesdk/framework/Platform;)V
    .registers 5

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/b;-><init>(Lcn/sharesdk/framework/Platform;)V

    .line 42
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "follower_list"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcn/sharesdk/instagram/b;->f:[Ljava/lang/String;

    .line 54
    return-void
.end method

.method public static a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/instagram/b;
    .registers 2

    .prologue
    .line 46
    sget-object v0, Lcn/sharesdk/instagram/b;->b:Lcn/sharesdk/instagram/b;

    if-nez v0, :cond_b

    .line 47
    new-instance v0, Lcn/sharesdk/instagram/b;

    invoke-direct {v0, p0}, Lcn/sharesdk/instagram/b;-><init>(Lcn/sharesdk/framework/Platform;)V

    sput-object v0, Lcn/sharesdk/instagram/b;->b:Lcn/sharesdk/instagram/b;

    .line 49
    :cond_b
    sget-object v0, Lcn/sharesdk/instagram/b;->b:Lcn/sharesdk/instagram/b;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 252
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    move-object v0, v3

    .line 274
    :goto_9
    return-object v0

    .line 256
    :cond_a
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v4, v0, [Ljava/lang/String;

    .line 258
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_15
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mob/tools/network/KVPair;

    .line 259
    const-string v6, "%s=%s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, v0, Lcom/mob/tools/network/KVPair;->name:Ljava/lang/String;

    aput-object v8, v7, v2

    const/4 v8, 0x1

    iget-object v0, v0, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    aput-object v0, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    .line 260
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 261
    goto :goto_15

    .line 264
    :cond_39
    invoke-static {v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 265
    array-length v0, v4

    :goto_3d
    if-ge v2, v0, :cond_5b

    aget-object v1, v4, v2

    .line 266
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 265
    add-int/lit8 v2, v2, 0x1

    goto :goto_3d

    .line 270
    :cond_5b
    :try_start_5b
    const-string v0, "utf-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const-string v1, "utf-8"

    invoke-virtual {p3, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcn/sharesdk/instagram/b;->a([B[B)Ljava/lang/String;
    :try_end_6a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5b .. :try_end_6a} :catch_6c

    move-result-object v0

    goto :goto_9

    .line 271
    :catch_6c
    move-exception v0

    .line 272
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    move-object v0, v3

    .line 274
    goto :goto_9
.end method

.method private a([B[B)Ljava/lang/String;
    .registers 5

    .prologue
    .line 279
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "HmacSHA256"

    invoke-direct {v0, p2, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 280
    const-string v1, "HmacSHA256"

    invoke-static {v1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    .line 281
    invoke-virtual {v1, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 282
    invoke-virtual {v1, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/sharesdk/instagram/b;->a([B)Ljava/lang/String;
    :try_end_17
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_17} :catch_19
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_17} :catch_23

    move-result-object v0

    .line 288
    :goto_18
    return-object v0

    .line 283
    :catch_19
    move-exception v0

    .line 284
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 288
    :goto_21
    const/4 v0, 0x0

    goto :goto_18

    .line 285
    :catch_23
    move-exception v0

    .line 286
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_21
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcn/sharesdk/framework/PlatformActionListener;)V
    .registers 9

    .prologue
    const/16 v4, 0x9

    .line 305
    iget-object v0, p0, Lcn/sharesdk/instagram/b;->a:Lcn/sharesdk/framework/Platform;

    invoke-static {v0}, Lcn/sharesdk/instagram/b;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/instagram/b;

    move-result-object v0

    .line 306
    invoke-virtual {v0}, Lcn/sharesdk/instagram/b;->a()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 307
    :cond_14
    if-eqz p3, :cond_20

    .line 308
    iget-object v0, p0, Lcn/sharesdk/instagram/b;->a:Lcn/sharesdk/framework/Platform;

    new-instance v1, Lcn/sharesdk/instagram/InstagramClientNotExistException;

    invoke-direct {v1}, Lcn/sharesdk/instagram/InstagramClientNotExistException;-><init>()V

    invoke-interface {p3, v0, v4, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 347
    :cond_20
    :goto_20
    return-void

    .line 311
    :cond_21
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 312
    const-string v0, "mp4"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_38

    const-string v0, "mkv"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b2

    .line 313
    :cond_38
    const-string v0, "video/*"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 317
    :goto_3d
    const-string v0, "com.instagram.android"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 318
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4d

    .line 319
    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 322
    :cond_4d
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v0, v2, :cond_b8

    .line 323
    invoke-static {}, Ljava/net/URLConnection;->getFileNameMap()Ljava/net/FileNameMap;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/net/FileNameMap;->getContentTypeFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 324
    if-eqz v0, :cond_63

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_75

    :cond_63
    const-string v2, "mp4"

    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_73

    const-string v2, "mkv"

    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_75

    .line 325
    :cond_73
    const-string v0, "video/*"

    .line 327
    :cond_75
    if-eqz v0, :cond_7d

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_7f

    .line 328
    :cond_7d
    const-string v0, "image/*"

    .line 330
    :cond_7f
    const-string v2, "android.intent.extra.STREAM"

    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p2, v0}, Lcom/mob/tools/utils/ResHelper;->getMediaUri(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 336
    :goto_8c
    const/high16 v0, 0x10000000

    :try_start_8e
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 337
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 338
    if-eqz p3, :cond_20

    .line 339
    iget-object v0, p0, Lcn/sharesdk/instagram/b;->a:Lcn/sharesdk/framework/Platform;

    const/16 v1, 0x9

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p3, v0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    :try_end_a6
    .catch Ljava/lang/Throwable; {:try_start_8e .. :try_end_a6} :catch_a8

    goto/16 :goto_20

    .line 341
    :catch_a8
    move-exception v0

    .line 342
    if-eqz p3, :cond_20

    .line 343
    iget-object v1, p0, Lcn/sharesdk/instagram/b;->a:Lcn/sharesdk/framework/Platform;

    invoke-interface {p3, v1, v4, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto/16 :goto_20

    .line 315
    :cond_b2
    const-string v0, "image/*"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3d

    .line 332
    :cond_b8
    const-string v0, "android.intent.extra.STREAM"

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_8c
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 96
    const-string v0, "https://api.instagram.com/oauth/access_token"

    .line 97
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 98
    new-instance v2, Lcom/mob/tools/network/KVPair;

    const-string v3, "client_id"

    iget-object v4, p0, Lcn/sharesdk/instagram/b;->c:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    new-instance v2, Lcom/mob/tools/network/KVPair;

    const-string v3, "client_secret"

    iget-object v4, p0, Lcn/sharesdk/instagram/b;->d:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    new-instance v2, Lcom/mob/tools/network/KVPair;

    const-string v3, "grant_type"

    const-string v4, "authorization_code"

    invoke-direct {v2, v3, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    new-instance v2, Lcom/mob/tools/network/KVPair;

    const-string v3, "redirect_uri"

    iget-object v4, p0, Lcn/sharesdk/instagram/b;->e:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    new-instance v2, Lcom/mob/tools/network/KVPair;

    const-string v3, "code"

    invoke-direct {v2, v3, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    invoke-static {}, Lcn/sharesdk/framework/a/a;->a()Lcn/sharesdk/framework/a/a;

    move-result-object v2

    const-string v3, "/oauth/authorize"

    invoke-virtual {p0}, Lcn/sharesdk/instagram/b;->c()I

    move-result v4

    invoke-virtual {v2, v0, v1, v3, v4}, Lcn/sharesdk/framework/a/a;->b(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a([B)Ljava/lang/String;
    .registers 7

    .prologue
    .line 292
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 294
    const/4 v0, 0x0

    :goto_6
    if-eqz p1, :cond_25

    array-length v2, p1

    if-ge v0, v2, :cond_25

    .line 295
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 296
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1f

    .line 297
    const/16 v3, 0x30

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 299
    :cond_1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 301
    :cond_25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V
    .registers 2

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Lcn/sharesdk/instagram/b;->b(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    .line 93
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 57
    iput-object p1, p0, Lcn/sharesdk/instagram/b;->c:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Lcn/sharesdk/instagram/b;->d:Ljava/lang/String;

    .line 59
    iput-object p3, p0, Lcn/sharesdk/instagram/b;->e:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/sharesdk/framework/PlatformActionListener;)V
    .registers 10

    .prologue
    const/16 v4, 0x9

    .line 161
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 162
    invoke-direct {p0, p3, p1, p4}, Lcn/sharesdk/instagram/b;->a(Ljava/lang/String;Ljava/lang/String;Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 180
    :cond_b
    :goto_b
    return-void

    .line 163
    :cond_c
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_57

    .line 165
    :try_start_12
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/mob/tools/utils/BitmapHelper;->downloadBitmap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 166
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_46

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 167
    invoke-direct {p0, p3, v0, p4}, Lcn/sharesdk/instagram/b;->a(Ljava/lang/String;Ljava/lang/String;Lcn/sharesdk/framework/PlatformActionListener;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_2e} :catch_2f

    goto :goto_b

    .line 171
    :catch_2f
    move-exception v0

    .line 172
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 173
    if-eqz p4, :cond_b

    .line 174
    iget-object v0, p0, Lcn/sharesdk/instagram/b;->a:Lcn/sharesdk/framework/Platform;

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "both imagePath and imageUrl are null"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p4, v0, v4, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_b

    .line 168
    :cond_46
    if-eqz p4, :cond_b

    .line 169
    :try_start_48
    iget-object v0, p0, Lcn/sharesdk/instagram/b;->a:Lcn/sharesdk/framework/Platform;

    const/16 v1, 0x9

    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "both imagePath and imageUrl are null"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p4, v0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_56} :catch_2f

    goto :goto_b

    .line 177
    :cond_57
    if-eqz p4, :cond_b

    .line 178
    iget-object v0, p0, Lcn/sharesdk/instagram/b;->a:Lcn/sharesdk/framework/Platform;

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "both imagePath and imageUrl are null"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p4, v0, v4, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_b
.end method

.method public a([Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 63
    if-eqz p1, :cond_7

    array-length v0, p1

    if-lez v0, :cond_7

    .line 64
    iput-object p1, p0, Lcn/sharesdk/instagram/b;->f:[Ljava/lang/String;

    .line 66
    :cond_7
    return-void
.end method

.method public a()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 147
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 148
    const-string v2, "com.instagram.android"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    const-string v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 151
    if-eqz v1, :cond_21

    const/4 v0, 0x1

    :cond_21
    return v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 107
    iput-object p1, p0, Lcn/sharesdk/instagram/b;->g:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public c(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 7
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://api.instagram.com/v1/users/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 113
    new-instance v2, Lcom/mob/tools/network/KVPair;

    const-string v3, "access_token"

    iget-object v4, p0, Lcn/sharesdk/instagram/b;->g:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/users/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/sharesdk/instagram/b;->d:Ljava/lang/String;

    invoke-direct {p0, v2, v1, v3}, Lcn/sharesdk/instagram/b;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 116
    new-instance v3, Lcom/mob/tools/network/KVPair;

    const-string v4, "sig"

    invoke-direct {v3, v4, v2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    invoke-static {}, Lcn/sharesdk/framework/a/a;->a()Lcn/sharesdk/framework/a/a;

    move-result-object v2

    const-string v3, "/v1/users"

    invoke-virtual {p0}, Lcn/sharesdk/instagram/b;->c()I

    move-result v4

    invoke-virtual {v2, v0, v1, v3, v4}, Lcn/sharesdk/framework/a/a;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 119
    if-eqz v1, :cond_63

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_6b

    .line 120
    :cond_63
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "response is empty"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_6b
    new-instance v0, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v0}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    .line 124
    if-eqz v2, :cond_7c

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v0

    if-gtz v0, :cond_84

    .line 125
    :cond_7c
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "response is empty"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_84
    const-string v0, "meta"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 130
    if-eqz v0, :cond_94

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v3

    if-gtz v3, :cond_9a

    .line 131
    :cond_94
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_9a
    const/16 v3, 0xc8

    const-string v4, "code"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v3, v0, :cond_b0

    .line 135
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_b0
    const-string v0, "data"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 140
    if-eqz v0, :cond_c0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-gtz v0, :cond_c6

    .line 141
    :cond_c0
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_c6
    return-object v2
.end method

.method public d(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 7
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://api.instagram.com/v1/users/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/follows"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 185
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 186
    new-instance v2, Lcom/mob/tools/network/KVPair;

    const-string v3, "access_token"

    iget-object v4, p0, Lcn/sharesdk/instagram/b;->g:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/users/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/follows"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/sharesdk/instagram/b;->d:Ljava/lang/String;

    invoke-direct {p0, v2, v1, v3}, Lcn/sharesdk/instagram/b;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 189
    new-instance v3, Lcom/mob/tools/network/KVPair;

    const-string v4, "sig"

    invoke-direct {v3, v4, v2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    invoke-static {}, Lcn/sharesdk/framework/a/a;->a()Lcn/sharesdk/framework/a/a;

    move-result-object v2

    const-string v3, "/v1/users/follows"

    invoke-virtual {p0}, Lcn/sharesdk/instagram/b;->c()I

    move-result v4

    invoke-virtual {v2, v0, v1, v3, v4}, Lcn/sharesdk/framework/a/a;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 192
    if-eqz v1, :cond_69

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_71

    .line 193
    :cond_69
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "response is empty"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_71
    new-instance v0, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v0}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    .line 197
    if-eqz v2, :cond_82

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v0

    if-gtz v0, :cond_8a

    .line 198
    :cond_82
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "response is empty"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_8a
    const-string v0, "meta"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 203
    if-eqz v0, :cond_9a

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v3

    if-gtz v3, :cond_a0

    .line 204
    :cond_9a
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_a0
    const/16 v3, 0xc8

    const-string v4, "code"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v3, v0, :cond_b6

    .line 208
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_b6
    return-object v2
.end method

.method public e(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 7
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://api.instagram.com/v1/users/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/followed-by"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 217
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 218
    new-instance v2, Lcom/mob/tools/network/KVPair;

    const-string v3, "access_token"

    iget-object v4, p0, Lcn/sharesdk/instagram/b;->g:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/users/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/followed-by"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/sharesdk/instagram/b;->d:Ljava/lang/String;

    invoke-direct {p0, v2, v1, v3}, Lcn/sharesdk/instagram/b;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 221
    new-instance v3, Lcom/mob/tools/network/KVPair;

    const-string v4, "sig"

    invoke-direct {v3, v4, v2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    invoke-static {}, Lcn/sharesdk/framework/a/a;->a()Lcn/sharesdk/framework/a/a;

    move-result-object v2

    const-string v3, "/v1/users/followed-by"

    invoke-virtual {p0}, Lcn/sharesdk/instagram/b;->c()I

    move-result v4

    invoke-virtual {v2, v0, v1, v3, v4}, Lcn/sharesdk/framework/a/a;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 224
    if-eqz v1, :cond_69

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_71

    .line 225
    :cond_69
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "response is empty"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_71
    new-instance v0, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v0}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    .line 229
    if-eqz v2, :cond_82

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v0

    if-gtz v0, :cond_8a

    .line 230
    :cond_82
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "response is empty"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_8a
    const-string v0, "meta"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 235
    if-eqz v0, :cond_9a

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v3

    if-gtz v3, :cond_a0

    .line 236
    :cond_9a
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_a0
    const/16 v3, 0xc8

    const-string v4, "code"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v3, v0, :cond_b6

    .line 240
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_b6
    return-object v2
.end method

.method public getAuthorizeUrl()Ljava/lang/String;
    .registers 5

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    const-string v1, "https://instagram.com/oauth/authorize/?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    const-string v1, "client_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/sharesdk/instagram/b;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    const-string v1, "&redirect_uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcn/sharesdk/instagram/b;->getRedirectUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    const-string v1, "&response_type=code"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    iget-object v1, p0, Lcn/sharesdk/instagram/b;->f:[Ljava/lang/String;

    if-eqz v1, :cond_41

    iget-object v1, p0, Lcn/sharesdk/instagram/b;->f:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_41

    .line 80
    const-string v1, "&scope="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "+"

    iget-object v3, p0, Lcn/sharesdk/instagram/b;->f:[Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    :cond_41
    const-string v1, "/oauth/authorize"

    invoke-virtual {p0}, Lcn/sharesdk/instagram/b;->c()I

    move-result v2

    invoke-static {v1, v2}, Lcn/sharesdk/framework/ShareSDK;->logApiEvent(Ljava/lang/String;I)V

    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAuthorizeWebviewClient(Lcn/sharesdk/framework/authorize/e;)Lcn/sharesdk/framework/authorize/b;
    .registers 3
    .param p1, "webAct"    # Lcn/sharesdk/framework/authorize/e;

    .prologue
    .line 70
    new-instance v0, Lcn/sharesdk/instagram/a;

    invoke-direct {v0, p1}, Lcn/sharesdk/instagram/a;-><init>(Lcn/sharesdk/framework/authorize/e;)V

    return-object v0
.end method

.method public getRedirectUri()Ljava/lang/String;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lcn/sharesdk/instagram/b;->e:Ljava/lang/String;

    return-object v0
.end method
