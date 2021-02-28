.class public Lcn/sharesdk/sina/weibo/a;
.super Lcom/mob/tools/FakeActivity;
.source "SinaActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private a:J

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Lcn/sharesdk/framework/Platform$ShareParams;

.field private e:Lcn/sharesdk/framework/authorize/AuthorizeListener;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/mob/tools/FakeActivity;-><init>()V

    .line 57
    const-wide/32 v0, 0x200000

    iput-wide v0, p0, Lcn/sharesdk/sina/weibo/a;->a:J

    return-void
.end method

.method private a(Landroid/graphics/Bitmap;D)Landroid/graphics/Bitmap;
    .registers 10

    .prologue
    .line 436
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 437
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 438
    invoke-static {p2, p3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 440
    int-to-double v4, v0

    div-double/2addr v4, v2

    double-to-int v0, v4

    .line 441
    int-to-double v4, v1

    div-double v2, v4, v2

    double-to-int v1, v2

    .line 444
    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 445
    return-object v0
.end method

.method private a()V
    .registers 5

    .prologue
    .line 85
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 86
    const-string v0, "_weibo_command_type"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 87
    const-string v0, "_weibo_transaction"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v0, "callbackId"

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 89
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/a;->d:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 90
    const-string v0, "_weibo_message_text"

    invoke-direct {p0}, Lcn/sharesdk/sina/weibo/a;->c()Lcom/sina/weibo/sdk/api/TextObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 91
    const-string v0, "_weibo_message_text_extra"

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_3b
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/a;->d:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform$ShareParams;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8f

    .line 95
    const-wide/32 v2, 0x8000

    iput-wide v2, p0, Lcn/sharesdk/sina/weibo/a;->a:J

    .line 96
    invoke-direct {p0}, Lcn/sharesdk/sina/weibo/a;->d()Lcom/sina/weibo/sdk/api/WebpageObject;

    move-result-object v2

    .line 97
    invoke-virtual {v2}, Lcom/sina/weibo/sdk/api/WebpageObject;->checkArgs()Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 98
    const-string v0, "_weibo_message_media"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 99
    const-string v0, ""

    .line 100
    iget-object v3, v2, Lcom/sina/weibo/sdk/api/WebpageObject;->defaultText:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7a

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 102
    const-string v3, "extra_key_defaulttext"

    iget-object v2, v2, Lcom/sina/weibo/sdk/api/WebpageObject;->defaultText:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    new-instance v2, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v2}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v2, v0}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 105
    :cond_7a
    const-string v2, "_weibo_message_media_extra"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :cond_7f
    :goto_7f
    :try_start_7f
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/a;->activity:Landroid/app/Activity;

    invoke-static {}, Lcn/sharesdk/sina/weibo/g;->a()Lcn/sharesdk/sina/weibo/g;

    move-result-object v2

    invoke-virtual {v2}, Lcn/sharesdk/sina/weibo/g;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/sharesdk/sina/weibo/a;->c:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3, v1}, Lcn/sharesdk/sina/weibo/a;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    :try_end_8e
    .catch Ljava/lang/Throwable; {:try_start_7f .. :try_end_8e} :catch_f0

    .line 131
    :cond_8e
    :goto_8e
    return-void

    .line 107
    :cond_8f
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/a;->d:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageArray()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_aa

    iget-object v0, p0, Lcn/sharesdk/sina/weibo/a;->d:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageArray()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_aa

    .line 108
    const-string v0, "_weibo_message_multi_image"

    invoke-direct {p0}, Lcn/sharesdk/sina/weibo/a;->f()Lcom/sina/weibo/sdk/api/MultiImageObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_7f

    .line 109
    :cond_aa
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/a;->d:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform$ShareParams;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c0

    .line 110
    const-string v0, "_weibo_message_video_source"

    invoke-direct {p0}, Lcn/sharesdk/sina/weibo/a;->g()Lcom/sina/weibo/sdk/api/VideoSourceObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_7f

    .line 111
    :cond_c0
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/a;->d:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageData()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_d4

    iget-object v0, p0, Lcn/sharesdk/sina/weibo/a;->d:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7f

    .line 112
    :cond_d4
    const-wide/32 v2, 0x200000

    iput-wide v2, p0, Lcn/sharesdk/sina/weibo/a;->a:J

    .line 113
    invoke-direct {p0}, Lcn/sharesdk/sina/weibo/a;->e()Lcom/sina/weibo/sdk/api/ImageObject;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Lcom/sina/weibo/sdk/api/ImageObject;->checkArgs()Z

    move-result v2

    if-eqz v2, :cond_7f

    .line 115
    const-string v2, "_weibo_message_image"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 116
    const-string v0, "_weibo_message_image_extra"

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7f

    .line 122
    :catch_f0
    move-exception v0

    .line 124
    :try_start_f1
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/a;->activity:Landroid/app/Activity;

    const-string v2, "com.sina.weibog3"

    iget-object v3, p0, Lcn/sharesdk/sina/weibo/a;->c:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3, v1}, Lcn/sharesdk/sina/weibo/a;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    :try_end_fa
    .catch Ljava/lang/Throwable; {:try_start_f1 .. :try_end_fa} :catch_fb

    goto :goto_8e

    .line 125
    :catch_fb
    move-exception v0

    .line 126
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/a;->e:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v1, :cond_8e

    .line 127
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/a;->e:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    goto :goto_8e
.end method

.method private a(ILjava/lang/String;)V
    .registers 5

    .prologue
    .line 174
    packed-switch p1, :pswitch_data_2c

    .line 194
    :cond_3
    :goto_3
    invoke-virtual {p0}, Lcn/sharesdk/sina/weibo/a;->finish()V

    .line 195
    return-void

    .line 176
    :pswitch_7
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/a;->e:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v0, :cond_3

    .line 177
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/a;->e:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onComplete(Landroid/os/Bundle;)V

    goto :goto_3

    .line 181
    :pswitch_12
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/a;->e:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v0, :cond_3

    .line 182
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/a;->e:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-interface {v0}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onCancel()V

    goto :goto_3

    .line 186
    :pswitch_1c
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/a;->e:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v0, :cond_3

    .line 187
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/a;->e:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 174
    nop

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_7
        :pswitch_12
        :pswitch_1c
    .end packed-switch
.end method

.method static synthetic a(Lcn/sharesdk/sina/weibo/a;)V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcn/sharesdk/sina/weibo/a;->a()V

    return-void
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 11

    .prologue
    const/4 v0, 0x0

    .line 218
    const-string v1, "com.sina.weibo.sdk.action.ACTION_WEIBO_ACTIVITY"

    .line 219
    if-eqz p1, :cond_17

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 220
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_17

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 221
    :cond_17
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    const-string v2, "launchWeiboActivity fail, invalid arguments"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/log/NLog;->e(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 247
    :goto_22
    return v0

    .line 225
    :cond_23
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 226
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 227
    invoke-virtual {v3, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    const-string v1, "_weibo_sdkVersion"

    const-string v4, "0031405000"

    invoke-virtual {v3, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    const-string v1, "_weibo_appPackage"

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    const-string v1, "_weibo_appKey"

    invoke-virtual {v3, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    const-string v1, "_weibo_flag"

    const v4, 0x20130329

    invoke-virtual {v3, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 234
    const-string v1, "_weibo_sign"

    invoke-static {p1, v2}, Lcn/sharesdk/sina/weibo/sdk/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    const-string v1, "_weibo_transaction"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    if-eqz p4, :cond_6b

    .line 238
    invoke-virtual {v3, p4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 241
    :cond_6b
    :try_start_6b
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "launchWeiboActivity intent="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", extra="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 242
    const/16 v1, 0x2fd

    invoke-virtual {p0, v3, v1}, Lcn/sharesdk/sina/weibo/a;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_9b
    .catch Landroid/content/ActivityNotFoundException; {:try_start_6b .. :try_end_9b} :catch_9d

    .line 247
    const/4 v0, 0x1

    goto :goto_22

    .line 243
    :catch_9d
    move-exception v1

    .line 244
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Lcom/mob/tools/log/NLog;->e(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto/16 :goto_22
.end method

.method private a(Landroid/content/Context;Landroid/graphics/Bitmap;)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 389
    if-nez p2, :cond_a

    .line 390
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "checkArgs fail, thumbData is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 391
    :cond_a
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 392
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "checkArgs fail, thumbData is recycled"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 394
    :cond_18
    invoke-direct {p0, p1, p2}, Lcn/sharesdk/sina/weibo/a;->b(Landroid/content/Context;Landroid/graphics/Bitmap;)[B

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 398
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 399
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_11

    .line 400
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    throw v0

    .line 402
    :cond_11
    invoke-static {p2}, Lcom/mob/tools/utils/BitmapHelper;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 403
    invoke-direct {p0, p1, v0}, Lcn/sharesdk/sina/weibo/a;->b(Landroid/content/Context;Landroid/graphics/Bitmap;)[B

    move-result-object v0

    return-object v0
.end method

.method private b()Ljava/lang/String;
    .registers 4

    .prologue
    .line 252
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Landroid/content/Context;Landroid/graphics/Bitmap;)[B
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/16 v6, 0x55

    .line 407
    if-nez p2, :cond_c

    .line 408
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "checkArgs fail, thumbData is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 409
    :cond_c
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 410
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "checkArgs fail, thumbData is recycled"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 413
    :cond_1a
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 414
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p2, v1, v6, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 415
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 416
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 417
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 419
    array-length v0, v1

    .line 420
    :goto_2f
    int-to-long v2, v0

    iget-wide v4, p0, Lcn/sharesdk/sina/weibo/a;->a:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_55

    .line 421
    int-to-double v0, v0

    iget-wide v2, p0, Lcn/sharesdk/sina/weibo/a;->a:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    .line 422
    invoke-direct {p0, p2, v0, v1}, Lcn/sharesdk/sina/weibo/a;->a(Landroid/graphics/Bitmap;D)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 424
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 425
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p2, v1, v6, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 426
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 427
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 428
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 429
    array-length v0, v1

    goto :goto_2f

    .line 432
    :cond_55
    return-object v1
.end method

.method private c()Lcom/sina/weibo/sdk/api/TextObject;
    .registers 3

    .prologue
    .line 256
    new-instance v0, Lcom/sina/weibo/sdk/api/TextObject;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/api/TextObject;-><init>()V

    .line 257
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/a;->d:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sina/weibo/sdk/api/TextObject;->text:Ljava/lang/String;

    .line 258
    return-object v0
.end method

.method private d()Lcom/sina/weibo/sdk/api/WebpageObject;
    .registers 4

    .prologue
    .line 262
    new-instance v1, Lcom/sina/weibo/sdk/api/WebpageObject;

    invoke-direct {v1}, Lcom/sina/weibo/sdk/api/WebpageObject;-><init>()V

    .line 263
    invoke-direct {p0}, Lcn/sharesdk/sina/weibo/a;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sina/weibo/sdk/api/WebpageObject;->identify:Ljava/lang/String;

    .line 264
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/a;->d:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform$ShareParams;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sina/weibo/sdk/api/WebpageObject;->title:Ljava/lang/String;

    .line 265
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/a;->d:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sina/weibo/sdk/api/WebpageObject;->description:Ljava/lang/String;

    .line 266
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/a;->d:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform$ShareParams;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sina/weibo/sdk/api/WebpageObject;->actionUrl:Ljava/lang/String;

    .line 267
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/a;->d:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sina/weibo/sdk/api/WebpageObject;->defaultText:Ljava/lang/String;

    .line 271
    :try_start_2b
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/a;->d:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageData()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_42

    .line 272
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/a;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcn/sharesdk/sina/weibo/a;->d:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v2}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageData()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcn/sharesdk/sina/weibo/a;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)[B

    move-result-object v0

    iput-object v0, v1, Lcom/sina/weibo/sdk/api/WebpageObject;->thumbData:[B

    .line 280
    :cond_41
    :goto_41
    return-object v1

    .line 273
    :cond_42
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/a;->d:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 274
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/a;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcn/sharesdk/sina/weibo/a;->d:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v2}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcn/sharesdk/sina/weibo/a;->a(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, v1, Lcom/sina/weibo/sdk/api/WebpageObject;->thumbData:[B
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_5c} :catch_5d

    goto :goto_41

    .line 276
    :catch_5d
    move-exception v0

    .line 277
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 278
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/sina/weibo/sdk/api/WebpageObject;->setThumbImage(Landroid/graphics/Bitmap;)V

    goto :goto_41
.end method

.method private e()Lcom/sina/weibo/sdk/api/ImageObject;
    .registers 9

    .prologue
    .line 284
    new-instance v0, Lcom/sina/weibo/sdk/api/ImageObject;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/api/ImageObject;-><init>()V

    .line 286
    :try_start_5
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/a;->d:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageData()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 287
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/a;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcn/sharesdk/sina/weibo/a;->d:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v2}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageData()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcn/sharesdk/sina/weibo/a;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)[B

    move-result-object v1

    iput-object v1, v0, Lcom/sina/weibo/sdk/api/ImageObject;->imageData:[B

    .line 310
    :cond_1b
    :goto_1b
    return-object v0

    .line 288
    :cond_1c
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/a;->d:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 290
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/a;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_2d} :catch_8a

    move-result-object v1

    .line 292
    :try_start_2e
    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getSdcardState()Z

    move-result v2

    if-eqz v2, :cond_7b

    iget-object v2, p0, Lcn/sharesdk/sina/weibo/a;->d:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v2}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getSdcardPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 293
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/a;->d:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v1

    .line 294
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 295
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_7b

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_7b

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/32 v4, 0xa00000

    cmp-long v1, v2, v4

    if-gez v1, :cond_7b

    .line 296
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/a;->d:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sina/weibo/sdk/api/ImageObject;->imagePath:Ljava/lang/String;
    :try_end_72
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_72} :catch_73

    goto :goto_1b

    .line 300
    :catch_73
    move-exception v1

    .line 301
    :try_start_74
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 303
    :cond_7b
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/a;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcn/sharesdk/sina/weibo/a;->d:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v2}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcn/sharesdk/sina/weibo/a;->a(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, v0, Lcom/sina/weibo/sdk/api/ImageObject;->imageData:[B
    :try_end_89
    .catch Ljava/lang/Throwable; {:try_start_74 .. :try_end_89} :catch_8a

    goto :goto_1b

    .line 307
    :catch_8a
    move-exception v1

    .line 308
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_1b
.end method

.method private f()Lcom/sina/weibo/sdk/api/MultiImageObject;
    .registers 7

    .prologue
    .line 314
    new-instance v1, Lcom/sina/weibo/sdk/api/MultiImageObject;

    invoke-direct {v1}, Lcom/sina/weibo/sdk/api/MultiImageObject;-><init>()V

    .line 315
    invoke-direct {p0}, Lcn/sharesdk/sina/weibo/a;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sina/weibo/sdk/api/MultiImageObject;->identify:Ljava/lang/String;

    .line 316
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/a;->d:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform$ShareParams;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sina/weibo/sdk/api/MultiImageObject;->title:Ljava/lang/String;

    .line 317
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/a;->d:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sina/weibo/sdk/api/MultiImageObject;->description:Ljava/lang/String;

    .line 318
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/a;->d:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform$ShareParams;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sina/weibo/sdk/api/MultiImageObject;->actionUrl:Ljava/lang/String;

    .line 319
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/a;->d:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sina/weibo/sdk/api/MultiImageObject;->defaultText:Ljava/lang/String;

    .line 322
    :try_start_2b
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/a;->d:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageData()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_8e

    .line 323
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/a;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcn/sharesdk/sina/weibo/a;->d:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v2}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageData()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcn/sharesdk/sina/weibo/a;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)[B

    move-result-object v0

    iput-object v0, v1, Lcom/sina/weibo/sdk/api/MultiImageObject;->thumbData:[B

    .line 327
    :cond_41
    :goto_41
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/a;->d:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageArray()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 328
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 329
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_54
    :goto_54
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 330
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 331
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 332
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x18

    if-lt v0, v5, :cond_a9

    .line 333
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/mob/tools/utils/ResHelper;->pathToContentUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_80
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_80} :catch_81

    goto :goto_54

    .line 340
    :catch_81
    move-exception v0

    .line 341
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 342
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/sina/weibo/sdk/api/MultiImageObject;->setThumbImage(Landroid/graphics/Bitmap;)V

    .line 344
    :goto_8d
    return-object v1

    .line 324
    :cond_8e
    :try_start_8e
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/a;->d:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 325
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/a;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcn/sharesdk/sina/weibo/a;->d:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v2}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcn/sharesdk/sina/weibo/a;->a(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, v1, Lcom/sina/weibo/sdk/api/MultiImageObject;->thumbData:[B

    goto :goto_41

    .line 335
    :cond_a9
    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_54

    .line 339
    :cond_b1
    invoke-virtual {v1, v2}, Lcom/sina/weibo/sdk/api/MultiImageObject;->setImageList(Ljava/util/ArrayList;)V
    :try_end_b4
    .catch Ljava/lang/Throwable; {:try_start_8e .. :try_end_b4} :catch_81

    goto :goto_8d
.end method

.method private g()Lcom/sina/weibo/sdk/api/VideoSourceObject;
    .registers 9

    .prologue
    .line 348
    new-instance v2, Lcom/sina/weibo/sdk/api/VideoSourceObject;

    invoke-direct {v2}, Lcom/sina/weibo/sdk/api/VideoSourceObject;-><init>()V

    .line 349
    invoke-direct {p0}, Lcn/sharesdk/sina/weibo/a;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sina/weibo/sdk/api/VideoSourceObject;->identify:Ljava/lang/String;

    .line 350
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/a;->d:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform$ShareParams;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sina/weibo/sdk/api/VideoSourceObject;->title:Ljava/lang/String;

    .line 351
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/a;->d:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sina/weibo/sdk/api/VideoSourceObject;->description:Ljava/lang/String;

    .line 352
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/a;->d:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform$ShareParams;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sina/weibo/sdk/api/VideoSourceObject;->actionUrl:Ljava/lang/String;

    .line 353
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/a;->d:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sina/weibo/sdk/api/VideoSourceObject;->defaultText:Ljava/lang/String;

    .line 356
    :try_start_2b
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/a;->d:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageData()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_a5

    .line 357
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/a;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcn/sharesdk/sina/weibo/a;->d:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageData()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcn/sharesdk/sina/weibo/a;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)[B

    move-result-object v0

    iput-object v0, v2, Lcom/sina/weibo/sdk/api/VideoSourceObject;->thumbData:[B

    .line 361
    :cond_41
    :goto_41
    const/4 v0, 0x0

    .line 362
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/a;->d:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform$ShareParams;->getFilePath()Ljava/lang/String;

    move-result-object v3

    .line 363
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 364
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_a2

    .line 365
    const-string v0, "/data/"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ce

    .line 366
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "videos"

    invoke-static {v0, v4}, Lcom/mob/tools/utils/ResHelper;->getCachePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 367
    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 369
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 370
    invoke-static {v3, v4}, Lcom/mob/tools/utils/ResHelper;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 371
    if-eqz v3, :cond_ce

    .line 375
    :goto_90
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v1, v3, :cond_c9

    .line 376
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mob/tools/utils/ResHelper;->pathToContentUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 381
    :cond_a2
    :goto_a2
    iput-object v0, v2, Lcom/sina/weibo/sdk/api/VideoSourceObject;->videoPath:Landroid/net/Uri;

    .line 385
    :goto_a4
    return-object v2

    .line 358
    :cond_a5
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/a;->d:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 359
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/a;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcn/sharesdk/sina/weibo/a;->d:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcn/sharesdk/sina/weibo/a;->a(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, v2, Lcom/sina/weibo/sdk/api/VideoSourceObject;->thumbData:[B
    :try_end_bf
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_bf} :catch_c0

    goto :goto_41

    .line 382
    :catch_c0
    move-exception v0

    .line 383
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_a4

    .line 378
    :cond_c9
    :try_start_c9
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_cc
    .catch Ljava/lang/Throwable; {:try_start_c9 .. :try_end_cc} :catch_c0

    move-result-object v0

    goto :goto_a2

    :cond_ce
    move-object v0, v1

    goto :goto_90
.end method


# virtual methods
.method public a(Lcn/sharesdk/framework/Platform$ShareParams;)V
    .registers 2

    .prologue
    .line 77
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/a;->d:Lcn/sharesdk/framework/Platform$ShareParams;

    .line 78
    return-void
.end method

.method public a(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V
    .registers 2

    .prologue
    .line 81
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/a;->e:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    .line 82
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 73
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/a;->c:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 203
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    .line 204
    iget-boolean v0, p0, Lcn/sharesdk/sina/weibo/a;->b:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lcn/sharesdk/sina/weibo/a;->e:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v0, :cond_12

    .line 205
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/a;->e:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-interface {v0}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onCancel()V

    .line 207
    :cond_12
    invoke-virtual {p0}, Lcn/sharesdk/sina/weibo/a;->finish()V

    .line 209
    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 9
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 134
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const-string v1, "sina activity requestCode = %s, resultCode = %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 135
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 136
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 134
    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 137
    invoke-virtual {p0}, Lcn/sharesdk/sina/weibo/a;->finish()V

    .line 139
    return-void
.end method

.method public onCreate()V
    .registers 5

    .prologue
    .line 64
    const/4 v0, 0x1

    const-wide/16 v2, 0x2bc

    new-instance v1, Lcn/sharesdk/sina/weibo/a$1;

    invoke-direct {v1, p0}, Lcn/sharesdk/sina/weibo/a$1;-><init>(Lcn/sharesdk/sina/weibo/a;)V

    invoke-static {v0, v2, v3, v1}, Lcom/mob/tools/utils/UIHandler;->sendEmptyMessageDelayed(IJLandroid/os/Handler$Callback;)Z

    .line 70
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 145
    iput-boolean v3, p0, Lcn/sharesdk/sina/weibo/a;->b:Z

    .line 146
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 147
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    const-string v2, "onNewIntent ==>>"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 149
    const-string v1, "_weibo_appPackage"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 150
    const-string v2, "_weibo_transaction"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 151
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 152
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const-string v1, "handleWeiboResponse faild appPackage is null"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/NLog;->e(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 171
    :goto_36
    return-void

    .line 156
    :cond_37
    iget-object v3, p0, Lcn/sharesdk/sina/weibo/a;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object v3

    .line 157
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleWeiboResponse getCallingPackage : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v3, v5}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 158
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 159
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const-string v1, "handleWeiboResponse faild intent _weibo_transaction is null"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/NLog;->e(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_36

    .line 162
    :cond_6b
    invoke-static {v1}, Lcn/sharesdk/sina/weibo/g;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_89

    iget-object v2, p0, Lcn/sharesdk/sina/weibo/a;->activity:Landroid/app/Activity;

    .line 163
    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_89

    .line 164
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const-string v1, "handleWeiboResponse faild appPackage validateSign faild"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/NLog;->e(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_36

    .line 168
    :cond_89
    const-string v1, "_weibo_resp_errcode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 169
    const-string v2, "_weibo_resp_errstr"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 170
    invoke-direct {p0, v1, v0}, Lcn/sharesdk/sina/weibo/a;->a(ILjava/lang/String;)V

    goto :goto_36
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 214
    invoke-super {p0}, Lcom/mob/tools/FakeActivity;->onStop()V

    .line 215
    return-void
.end method
