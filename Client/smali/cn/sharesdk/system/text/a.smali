.class public Lcn/sharesdk/system/text/a;
.super Ljava/lang/Object;
.source "Helper.java"


# static fields
.field private static a:Lcn/sharesdk/system/text/a;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Landroid/content/Intent;
    .registers 9

    .prologue
    .line 191
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND_MSG"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 192
    const-string v0, "address"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 194
    const-string v0, "android.intent.extra.SUBJECT"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    const-string v0, "subject"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    const-string v0, "sms_body"

    invoke-virtual {v1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    const-string v0, "text/plain"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    invoke-virtual {p4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 199
    invoke-static {}, Ljava/net/URLConnection;->getFileNameMap()Ljava/net/FileNameMap;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/net/FileNameMap;->getContentTypeFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 200
    if-eqz v0, :cond_39

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_4b

    .line 201
    :cond_39
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 202
    const-string v2, "png"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 203
    const-string v0, "image/png"

    .line 212
    :cond_4b
    :goto_4b
    const-string v2, "android.intent.extra.STREAM"

    invoke-static {p4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 213
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    return-object v1

    .line 204
    :cond_58
    const-string v2, "jpg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_68

    const-string v2, "jpeg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 205
    :cond_68
    const-string v0, "image/jpeg"

    goto :goto_4b

    .line 206
    :cond_6b
    const-string v2, "gif"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 207
    const-string v0, "image/gif"

    goto :goto_4b

    .line 209
    :cond_76
    const-string v0, "*/*"

    goto :goto_4b
.end method

.method public static a()Lcn/sharesdk/system/text/a;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lcn/sharesdk/system/text/a;->a:Lcn/sharesdk/system/text/a;

    if-nez v0, :cond_b

    .line 32
    new-instance v0, Lcn/sharesdk/system/text/a;

    invoke-direct {v0}, Lcn/sharesdk/system/text/a;-><init>()V

    sput-object v0, Lcn/sharesdk/system/text/a;->a:Lcn/sharesdk/system/text/a;

    .line 34
    :cond_b
    sget-object v0, Lcn/sharesdk/system/text/a;->a:Lcn/sharesdk/system/text/a;

    return-object v0
.end method

.method private a(Ljava/io/File;)Ljava/io/File;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 160
    .line 161
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x41dfffffffc00000L    # 2.147483647E9

    div-double/2addr v0, v2

    .line 162
    sub-double/2addr v0, v8

    .line 164
    :cond_e
    const-string v2, "mms_tmp_file.jpg"

    .line 165
    new-instance v3, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 166
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 167
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 169
    :cond_22
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 171
    add-double/2addr v0, v8

    .line 172
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v2, v4

    invoke-static {p1, v2}, Lcom/mob/tools/utils/BitmapHelper;->getBitmap(Ljava/io/File;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 173
    if-eqz v2, :cond_37

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 174
    :cond_37
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to compress image file"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_3f
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 178
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v2, v5, v6, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 179
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 180
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 182
    if-eqz v2, :cond_5c

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_5c

    .line 183
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 185
    :cond_5c
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/32 v6, 0x7fffffff

    cmp-long v2, v4, v6

    if-gtz v2, :cond_e

    .line 187
    return-object v3
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Landroid/content/Intent;
    .registers 10

    .prologue
    .line 218
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    const-string v2, "mms://"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 219
    const-string v0, "address"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 221
    if-eqz p2, :cond_23

    .line 222
    const-string v0, "android.intent.extra.SUBJECT"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    const-string v0, "subject"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    :cond_23
    if-eqz p3, :cond_34

    .line 226
    const-string v0, "sms_body"

    invoke-virtual {v1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {v1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    const-string v0, "text/plain"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    :cond_34
    invoke-virtual {p4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 231
    invoke-static {}, Ljava/net/URLConnection;->getFileNameMap()Ljava/net/FileNameMap;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/net/FileNameMap;->getContentTypeFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 232
    if-eqz v0, :cond_48

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_5a

    .line 233
    :cond_48
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 234
    const-string v2, "mp4"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 235
    const-string v0, "video/mp4"

    .line 241
    :cond_5a
    :goto_5a
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_78

    .line 242
    const-string v2, "android.intent.extra.STREAM"

    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mob/tools/utils/ResHelper;->pathToContentUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 247
    :goto_71
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    return-object v1

    .line 237
    :cond_75
    const-string v0, "video/*"

    goto :goto_5a

    .line 244
    :cond_78
    const-string v2, "android.intent.extra.STREAM"

    invoke-static {p4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_71
.end method

.method private b()Ljava/lang/String;
    .registers 6

    .prologue
    .line 294
    .line 295
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2e

    .line 297
    :try_start_6
    const-string v0, "Telephony.Sms"

    const-string v1, "android.provider.Telephony$Sms"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ReflectHelper;->importClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 298
    const-string v0, "Telephony.Sms"

    const-string v1, "getDefaultSmsPackage"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/mob/tools/utils/ReflectHelper;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_21} :catch_22

    .line 306
    :goto_21
    return-object v0

    .line 299
    :catch_22
    move-exception v0

    move-object v1, v0

    .line 300
    const-string v0, "com.android.mms"

    .line 301
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_21

    .line 304
    :cond_2e
    const-string v0, "com.android.mms"

    goto :goto_21
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Landroid/content/Intent;
    .registers 10

    .prologue
    .line 252
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    const-string v2, "mms://"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 253
    const-string v0, "address"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 255
    if-eqz p2, :cond_23

    .line 256
    const-string v0, "android.intent.extra.SUBJECT"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    const-string v0, "subject"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    :cond_23
    if-eqz p3, :cond_34

    .line 260
    const-string v0, "sms_body"

    invoke-virtual {v1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {v1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 262
    const-string v0, "text/plain"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 264
    :cond_34
    invoke-virtual {p4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 265
    invoke-static {}, Ljava/net/URLConnection;->getFileNameMap()Ljava/net/FileNameMap;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/net/FileNameMap;->getContentTypeFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 266
    if-eqz v0, :cond_48

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_5a

    .line 267
    :cond_48
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 268
    const-string v2, "png"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_75

    .line 269
    const-string v0, "image/png"

    .line 279
    :cond_5a
    :goto_5a
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_96

    .line 280
    const-string v2, "android.intent.extra.STREAM"

    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mob/tools/utils/ResHelper;->pathToContentUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 285
    :goto_71
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 286
    return-object v1

    .line 270
    :cond_75
    const-string v2, "jpg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_85

    const-string v2, "jpeg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_88

    .line 271
    :cond_85
    const-string v0, "image/jpeg"

    goto :goto_5a

    .line 272
    :cond_88
    const-string v2, "gif"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_93

    .line 273
    const-string v0, "image/gif"

    goto :goto_5a

    .line 275
    :cond_93
    const-string v0, "*/*"

    goto :goto_5a

    .line 282
    :cond_96
    const-string v2, "android.intent.extra.STREAM"

    invoke-static {p4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_71
.end method


# virtual methods
.method public a(Lcn/sharesdk/system/text/login/LoginActionListener;[Ljava/lang/String;)V
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 310
    .line 311
    new-instance v1, Lcn/sharesdk/system/text/login/gui/d;

    invoke-direct {v1}, Lcn/sharesdk/system/text/login/gui/d;-><init>()V

    .line 312
    invoke-virtual {v1, p1}, Lcn/sharesdk/system/text/login/gui/d;->a(Lcn/sharesdk/system/text/login/LoginActionListener;)V

    .line 313
    if-eqz p2, :cond_15

    aget-object v2, p2, v0

    if-eqz v2, :cond_15

    .line 314
    aget-object v0, p2, v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 316
    :cond_15
    invoke-virtual {v1, v0}, Lcn/sharesdk/system/text/login/gui/d;->a(Z)V

    .line 317
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/sharesdk/system/text/login/gui/d;->a(Landroid/content/Context;)V

    .line 318
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/sharesdk/system/text/ActionListener;)V
    .registers 12

    .prologue
    .line 38
    .line 39
    if-eqz p4, :cond_d

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4b

    .line 41
    :cond_d
    :try_start_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "smsto:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 42
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 43
    invoke-direct {p0}, Lcn/sharesdk/system/text/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    const-string v0, "sms_body"

    invoke-virtual {v1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 46
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_43} :catch_44

    .line 95
    :cond_43
    :goto_43
    return-void

    .line 48
    :catch_44
    move-exception v0

    .line 50
    if-eqz p5, :cond_43

    .line 51
    invoke-interface {p5, v0}, Lcn/sharesdk/system/text/ActionListener;->onError(Ljava/lang/Throwable;)V

    goto :goto_43

    .line 55
    :cond_4b
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 56
    const-wide/32 v2, 0x7fffffff

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gtz v1, :cond_5f

    .line 58
    :try_start_5b
    invoke-direct {p0, v0}, Lcn/sharesdk/system/text/a;->a(Ljava/io/File;)Ljava/io/File;
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_5e} :catch_93

    move-result-object v0

    .line 68
    :cond_5f
    :try_start_5f
    invoke-direct {p0, p1, p2, p3, v0}, Lcn/sharesdk/system/text/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Landroid/content/Intent;

    move-result-object v1

    .line 69
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_6a
    .catch Ljava/lang/Throwable; {:try_start_5f .. :try_end_6a} :catch_6b

    goto :goto_43

    .line 71
    :catch_6b
    move-exception v1

    .line 74
    :try_start_6c
    invoke-direct {p0, p1, p2, p3, v0}, Lcn/sharesdk/system/text/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Landroid/content/Intent;

    move-result-object v1

    .line 76
    invoke-direct {p0}, Lcn/sharesdk/system/text/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_7e
    .catch Ljava/lang/Throwable; {:try_start_6c .. :try_end_7e} :catch_7f

    goto :goto_43

    .line 79
    :catch_7f
    move-exception v1

    .line 82
    :try_start_80
    invoke-direct {p0, p1, p2, p3, v0}, Lcn/sharesdk/system/text/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Landroid/content/Intent;

    move-result-object v0

    .line 83
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_8b
    .catch Ljava/lang/Throwable; {:try_start_80 .. :try_end_8b} :catch_8c

    goto :goto_43

    .line 85
    :catch_8c
    move-exception v0

    .line 87
    if-eqz p5, :cond_43

    .line 88
    invoke-interface {p5, v0}, Lcn/sharesdk/system/text/ActionListener;->onError(Ljava/lang/Throwable;)V

    goto :goto_43

    .line 59
    :catch_93
    move-exception v0

    .line 60
    if-eqz p5, :cond_43

    .line 61
    invoke-interface {p5, v0}, Lcn/sharesdk/system/text/ActionListener;->onError(Ljava/lang/Throwable;)V

    goto :goto_43
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/sharesdk/system/text/ActionListener;)V
    .registers 12

    .prologue
    .line 100
    .line 101
    if-eqz p4, :cond_d

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4b

    .line 103
    :cond_d
    :try_start_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "smsto:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 104
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 105
    invoke-direct {p0}, Lcn/sharesdk/system/text/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    const-string v0, "sms_body"

    invoke-virtual {v1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 108
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_43} :catch_44

    .line 157
    :cond_43
    :goto_43
    return-void

    .line 110
    :catch_44
    move-exception v0

    .line 112
    if-eqz p5, :cond_43

    .line 113
    invoke-interface {p5, v0}, Lcn/sharesdk/system/text/ActionListener;->onError(Ljava/lang/Throwable;)V

    goto :goto_43

    .line 117
    :cond_4b
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 118
    const-wide/32 v2, 0x7fffffff

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gtz v1, :cond_5f

    .line 120
    :try_start_5b
    invoke-direct {p0, v0}, Lcn/sharesdk/system/text/a;->a(Ljava/io/File;)Ljava/io/File;
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_5e} :catch_93

    move-result-object v0

    .line 130
    :cond_5f
    :try_start_5f
    invoke-direct {p0, p1, p2, p3, v0}, Lcn/sharesdk/system/text/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Landroid/content/Intent;

    move-result-object v1

    .line 131
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_6a
    .catch Ljava/lang/Throwable; {:try_start_5f .. :try_end_6a} :catch_6b

    goto :goto_43

    .line 133
    :catch_6b
    move-exception v1

    .line 136
    :try_start_6c
    invoke-direct {p0, p1, p2, p3, v0}, Lcn/sharesdk/system/text/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Landroid/content/Intent;

    move-result-object v1

    .line 138
    invoke-direct {p0}, Lcn/sharesdk/system/text/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_7e
    .catch Ljava/lang/Throwable; {:try_start_6c .. :try_end_7e} :catch_7f

    goto :goto_43

    .line 141
    :catch_7f
    move-exception v1

    .line 144
    :try_start_80
    invoke-direct {p0, p1, p2, p3, v0}, Lcn/sharesdk/system/text/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Landroid/content/Intent;

    move-result-object v0

    .line 145
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_8b
    .catch Ljava/lang/Throwable; {:try_start_80 .. :try_end_8b} :catch_8c

    goto :goto_43

    .line 147
    :catch_8c
    move-exception v0

    .line 149
    if-eqz p5, :cond_43

    .line 150
    invoke-interface {p5, v0}, Lcn/sharesdk/system/text/ActionListener;->onError(Ljava/lang/Throwable;)V

    goto :goto_43

    .line 121
    :catch_93
    move-exception v0

    .line 122
    if-eqz p5, :cond_43

    .line 123
    invoke-interface {p5, v0}, Lcn/sharesdk/system/text/ActionListener;->onError(Ljava/lang/Throwable;)V

    goto :goto_43
.end method
