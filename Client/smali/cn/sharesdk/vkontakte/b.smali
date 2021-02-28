.class public Lcn/sharesdk/vkontakte/b;
.super Lcn/sharesdk/framework/b;
.source "VKontakteImpl.java"


# static fields
.field private static b:Lcn/sharesdk/vkontakte/b;


# instance fields
.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:[Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcn/sharesdk/framework/Platform;)V
    .registers 2

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/b;-><init>(Lcn/sharesdk/framework/Platform;)V

    .line 46
    return-void
.end method

.method static synthetic a(Lcn/sharesdk/vkontakte/b;)Lcn/sharesdk/framework/Platform;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcn/sharesdk/vkontakte/b;->a:Lcn/sharesdk/framework/Platform;

    return-object v0
.end method

.method public static a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/vkontakte/b;
    .registers 2

    .prologue
    .line 38
    sget-object v0, Lcn/sharesdk/vkontakte/b;->b:Lcn/sharesdk/vkontakte/b;

    if-nez v0, :cond_b

    .line 39
    new-instance v0, Lcn/sharesdk/vkontakte/b;

    invoke-direct {v0, p0}, Lcn/sharesdk/vkontakte/b;-><init>(Lcn/sharesdk/framework/Platform;)V

    sput-object v0, Lcn/sharesdk/vkontakte/b;->b:Lcn/sharesdk/vkontakte/b;

    .line 41
    :cond_b
    sget-object v0, Lcn/sharesdk/vkontakte/b;->b:Lcn/sharesdk/vkontakte/b;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;FF)Ljava/util/HashMap;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "FF)",
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
    const/4 v2, 0x0

    .line 160
    if-eqz p2, :cond_9

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_a

    .line 181
    :cond_9
    :goto_9
    return-object v2

    .line 163
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&access_token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/vkontakte/b;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 164
    new-instance v3, Lcom/mob/tools/network/KVPair;

    const-string v0, "file1"

    invoke-direct {v3, v0, p2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 166
    invoke-static {}, Lcn/sharesdk/framework/a/a;->a()Lcn/sharesdk/framework/a/a;

    move-result-object v0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcn/sharesdk/framework/a/a;->httpPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object v1

    .line 168
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9

    .line 172
    new-instance v0, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v0}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 173
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_9

    .line 177
    const-string v2, "error"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 178
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5b
    move-object v2, v0

    .line 181
    goto :goto_9
.end method

.method private a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;FFLcn/sharesdk/framework/PlatformActionListener;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 278
    const-string v1, "https://api.vk.com/method/wall.post"

    .line 279
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 280
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v3, "owner_id"

    invoke-direct {v0, v3, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    new-instance v3, Lcom/mob/tools/network/KVPair;

    const-string v4, "friends_only"

    if-eqz p2, :cond_a6

    const-string v0, "1"

    :goto_19
    invoke-direct {v3, v4, v0}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v3, "from_group"

    const-string v4, "1"

    invoke-direct {v0, v3, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v3, "message"

    invoke-direct {v0, v3, p3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_45

    .line 285
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v3, "attachments"

    invoke-direct {v0, v3, p4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    :cond_45
    const/high16 v0, -0x3ccc0000    # -180.0f

    cmpl-float v0, p5, v0

    if-ltz v0, :cond_5f

    const/high16 v0, 0x43340000    # 180.0f

    cmpg-float v0, p5, v0

    if-gtz v0, :cond_5f

    .line 288
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v3, "lat"

    invoke-static {p5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    :cond_5f
    const/high16 v0, -0x3ccc0000    # -180.0f

    cmpl-float v0, p6, v0

    if-ltz v0, :cond_79

    const/high16 v0, 0x43340000    # 180.0f

    cmpg-float v0, p6, v0

    if-gtz v0, :cond_79

    .line 291
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v3, "lng"

    invoke-static {p6}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    :cond_79
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v3, "access_token"

    iget-object v4, p0, Lcn/sharesdk/vkontakte/b;->f:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    invoke-static {}, Lcn/sharesdk/framework/a/a;->a()Lcn/sharesdk/framework/a/a;

    move-result-object v0

    const-string v3, "/wall.post"

    .line 296
    invoke-virtual {p0}, Lcn/sharesdk/vkontakte/b;->c()I

    move-result v4

    .line 295
    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/sharesdk/framework/a/a;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 297
    if-eqz v0, :cond_9b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_aa

    .line 298
    :cond_9b
    if-eqz p7, :cond_a5

    .line 299
    iget-object v0, p0, Lcn/sharesdk/vkontakte/b;->a:Lcn/sharesdk/framework/Platform;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-interface {p7, v0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    .line 319
    :cond_a5
    :goto_a5
    return-void

    .line 281
    :cond_a6
    const-string v0, "0"

    goto/16 :goto_19

    .line 304
    :cond_aa
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 305
    if-eqz v1, :cond_bb

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v2

    if-gtz v2, :cond_c6

    .line 306
    :cond_bb
    if-eqz p7, :cond_a5

    .line 307
    iget-object v0, p0, Lcn/sharesdk/vkontakte/b;->a:Lcn/sharesdk/framework/Platform;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-interface {p7, v0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    goto :goto_a5

    .line 312
    :cond_c6
    const-string v2, "error"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d4

    .line 313
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v1

    .line 316
    :cond_d4
    if-eqz p7, :cond_a5

    .line 317
    iget-object v0, p0, Lcn/sharesdk/vkontakte/b;->a:Lcn/sharesdk/framework/Platform;

    const/16 v2, 0x9

    invoke-interface {p7, v0, v2, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    goto :goto_a5
.end method

.method private e(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 351
    .line 352
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 353
    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_76

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_76

    const-string v1, ".jpeg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_76

    const-string v1, ".bmp"

    .line 354
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_76

    .line 355
    invoke-static {p1}, Lcom/mob/tools/utils/BitmapHelper;->getMime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 356
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 357
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_75

    .line 359
    const/16 v1, 0x400

    new-array v3, v1, [B

    .line 360
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 361
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 362
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 363
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move v1, v2

    .line 365
    :goto_64
    const/4 v4, -0x1

    if-eq v1, v4, :cond_6f

    .line 366
    invoke-virtual {v6, v3, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 367
    invoke-virtual {v5, v3}, Ljava/io/InputStream;->read([B)I

    move-result v1

    goto :goto_64

    .line 369
    :cond_6f
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 370
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    :cond_75
    move-object p1, v0

    .line 374
    :cond_76
    return-object p1
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 187
    const-string v0, "https://api.vk.com/method/photos.saveWallPhoto"

    .line 188
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 189
    new-instance v3, Lcom/mob/tools/network/KVPair;

    const-string v4, "user_id"

    invoke-direct {v3, v4, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    new-instance v3, Lcom/mob/tools/network/KVPair;

    const-string v4, "group_id"

    invoke-direct {v3, v4, p2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    new-instance v3, Lcom/mob/tools/network/KVPair;

    const-string v4, "photo"

    invoke-direct {v3, v4, p3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    new-instance v3, Lcom/mob/tools/network/KVPair;

    const-string v4, "server"

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    new-instance v3, Lcom/mob/tools/network/KVPair;

    const-string v4, "hash"

    invoke-direct {v3, v4, p5}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    new-instance v3, Lcom/mob/tools/network/KVPair;

    const-string v4, "access_token"

    iget-object v5, p0, Lcn/sharesdk/vkontakte/b;->f:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    invoke-static {}, Lcn/sharesdk/framework/a/a;->a()Lcn/sharesdk/framework/a/a;

    move-result-object v3

    const-string v4, "/photos.saveWallPhoto"

    .line 197
    invoke-virtual {p0}, Lcn/sharesdk/vkontakte/b;->c()I

    move-result v5

    .line 196
    invoke-virtual {v3, v0, v2, v4, v5}, Lcn/sharesdk/framework/a/a;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 198
    if-eqz v2, :cond_60

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_62

    :cond_60
    move-object v0, v1

    .line 225
    :goto_61
    return-object v0

    .line 202
    :cond_62
    new-instance v0, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v0}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v0, v2}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 203
    if-eqz v0, :cond_73

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v3

    if-gtz v3, :cond_75

    :cond_73
    move-object v0, v1

    .line 204
    goto :goto_61

    .line 208
    :cond_75
    const-string v3, "response"

    .line 209
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 210
    if-eqz v0, :cond_85

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_87

    :cond_85
    move-object v0, v1

    .line 211
    goto :goto_61

    .line 214
    :cond_87
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 215
    if-eqz v0, :cond_96

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v3

    if-gtz v3, :cond_98

    :cond_96
    move-object v0, v1

    .line 216
    goto :goto_61

    .line 219
    :cond_98
    const-string v1, "error"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a6

    .line 220
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :cond_a6
    const-string v1, "owner_id"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 224
    const-string v2, "pid"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 225
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "photo"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_61
.end method

.method public a(Ljava/lang/String;II)Ljava/util/HashMap;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
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
    const/4 v3, 0x0

    .line 322
    const-string v1, "https://api.vk.com/method/friends.get"

    .line 323
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 324
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v4, "user_id"

    invoke-direct {v0, v4, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    const-string v0, "uid,first_name,last_name,sex,bdate,city,country,photo_50,photo_100,photo_200_orig,photo_200,photo_400_orig,photo_max,photo_max_orig,online,lists,screen_name,has_mobile,contacts,education,universities,schools,can_post,can_see_all_posts,can_write_private_message,status,last_seen,relation,counters,nickname"

    .line 330
    new-instance v4, Lcom/mob/tools/network/KVPair;

    const-string v5, "fields"

    invoke-direct {v4, v5, v0}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v4, "name_case"

    const-string v5, "nom"

    invoke-direct {v0, v4, v5}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v4, "count"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v4, "offset"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v4, "access_token"

    iget-object v5, p0, Lcn/sharesdk/vkontakte/b;->f:Ljava/lang/String;

    invoke-direct {v0, v4, v5}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    invoke-static {}, Lcn/sharesdk/framework/a/a;->a()Lcn/sharesdk/framework/a/a;

    move-result-object v0

    const-string v5, "/friends.get"

    .line 337
    invoke-virtual {p0}, Lcn/sharesdk/vkontakte/b;->c()I

    move-result v6

    move-object v4, v3

    .line 336
    invoke-virtual/range {v0 .. v6}, Lcn/sharesdk/framework/a/a;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 338
    if-eqz v0, :cond_69

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_71

    .line 339
    :cond_69
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "response is empty"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0

    .line 342
    :cond_71
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 343
    if-eqz v0, :cond_82

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    if-gtz v1, :cond_8a

    .line 344
    :cond_82
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "response is empty"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0

    .line 347
    :cond_8a
    return-object v0
.end method

.method public a(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V
    .registers 2

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcn/sharesdk/vkontakte/b;->b(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    .line 86
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 49
    iput-object p1, p0, Lcn/sharesdk/vkontakte/b;->c:Ljava/lang/String;

    .line 50
    const-string v0, "https://oauth.vk.com/blank.html"

    iput-object v0, p0, Lcn/sharesdk/vkontakte/b;->d:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFLcn/sharesdk/framework/PlatformActionListener;)V
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 231
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 232
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 233
    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "both text and image are null"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v2

    .line 236
    :cond_1a
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a6

    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p4

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_a6

    .line 237
    const/4 v2, 0x0

    .line 238
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_89

    const-string v4, "59479267"

    .line 239
    :goto_36
    invoke-virtual {p0, v4}, Lcn/sharesdk/vkontakte/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 240
    if-eqz v3, :cond_70

    .line 241
    move-object/from16 v0, p4

    invoke-direct {p0, v0}, Lcn/sharesdk/vkontakte/b;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 242
    move/from16 v0, p8

    move/from16 v1, p9

    invoke-direct {p0, v3, v2, v0, v1}, Lcn/sharesdk/vkontakte/b;->a(Ljava/lang/String;Ljava/lang/String;FF)Ljava/util/HashMap;

    move-result-object v3

    .line 243
    const-string v2, "photo"

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 244
    const-string v2, "server"

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 245
    const-string v2, "hash"

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    move-object v3, p1

    .line 246
    invoke-virtual/range {v2 .. v7}, Lcn/sharesdk/vkontakte/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 249
    :cond_70
    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d7

    .line 250
    if-nez v2, :cond_8c

    move-object/from16 v6, p7

    :goto_7a
    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object/from16 v5, p3

    move/from16 v7, p8

    move/from16 v8, p9

    move-object/from16 v9, p10

    .line 256
    invoke-direct/range {v2 .. v9}, Lcn/sharesdk/vkontakte/b;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;FFLcn/sharesdk/framework/PlatformActionListener;)V

    .line 273
    :goto_88
    return-void

    :cond_89
    move-object/from16 v4, p6

    .line 238
    goto :goto_36

    .line 253
    :cond_8c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_7a

    .line 257
    :cond_a6
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c6

    .line 258
    new-instance v2, Lcn/sharesdk/vkontakte/b$1;

    move-object v3, p0

    move-object/from16 v4, p5

    move-object v5, p1

    move v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move-object/from16 v12, p10

    invoke-direct/range {v2 .. v12}, Lcn/sharesdk/vkontakte/b$1;-><init>(Lcn/sharesdk/vkontakte/b;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;FFLcn/sharesdk/framework/PlatformActionListener;)V

    .line 269
    invoke-virtual {v2}, Lcn/sharesdk/vkontakte/b$1;->start()V

    goto :goto_88

    :cond_c6
    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move-object/from16 v9, p10

    .line 271
    invoke-direct/range {v2 .. v9}, Lcn/sharesdk/vkontakte/b;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;FFLcn/sharesdk/framework/PlatformActionListener;)V

    goto :goto_88

    :cond_d7
    move-object v6, v2

    goto :goto_7a
.end method

.method public a([Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 54
    iput-object p1, p0, Lcn/sharesdk/vkontakte/b;->e:[Ljava/lang/String;

    .line 55
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 89
    iput-object p1, p0, Lcn/sharesdk/vkontakte/b;->f:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public c(Ljava/lang/String;)Ljava/util/HashMap;
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 93
    const-string v1, "https://api.vk.com/method/users.get"

    .line 94
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 95
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v4, "user_ids"

    invoke-direct {v0, v4, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    const-string v0, "uid,verified,first_name,last_name,sex,bdate,city,country,photo_50,photo_100,photo_200_orig,photo_200,photo_400_orig,photo_max,photo_max_orig,online,lists,screen_name,has_mobile,contacts,education,universities,schools,can_post,can_see_all_posts,can_write_private_message,status,last_seen,relation,counters,nickname"

    .line 101
    new-instance v4, Lcom/mob/tools/network/KVPair;

    const-string v5, "fields"

    invoke-direct {v4, v5, v0}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v4, "name_case"

    const-string v5, "nom"

    invoke-direct {v0, v4, v5}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v4, "access_token"

    iget-object v5, p0, Lcn/sharesdk/vkontakte/b;->f:Ljava/lang/String;

    invoke-direct {v0, v4, v5}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    invoke-static {}, Lcn/sharesdk/framework/a/a;->a()Lcn/sharesdk/framework/a/a;

    move-result-object v0

    const-string v5, "/users.get"

    .line 106
    invoke-virtual {p0}, Lcn/sharesdk/vkontakte/b;->c()I

    move-result v6

    move-object v4, v3

    .line 105
    invoke-virtual/range {v0 .. v6}, Lcn/sharesdk/framework/a/a;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 107
    if-eqz v1, :cond_4d

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_55

    .line 108
    :cond_4d
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "response is empty"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_55
    new-instance v0, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v0}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 112
    if-eqz v0, :cond_66

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v2

    if-gtz v2, :cond_6e

    .line 113
    :cond_66
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "response is empty"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_6e
    const-string v2, "response"

    .line 118
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 119
    if-eqz v0, :cond_7e

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_84

    .line 120
    :cond_7e
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_84
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    return-object v0
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 129
    const-string v1, "https://api.vk.com/method/photos.getWallUploadServer"

    .line 130
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 131
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v4, "group_id"

    invoke-direct {v0, v4, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v4, "access_token"

    iget-object v5, p0, Lcn/sharesdk/vkontakte/b;->f:Ljava/lang/String;

    invoke-direct {v0, v4, v5}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    invoke-static {}, Lcn/sharesdk/framework/a/a;->a()Lcn/sharesdk/framework/a/a;

    move-result-object v0

    const-string v5, "/photos.getWallUploadServer"

    .line 135
    invoke-virtual {p0}, Lcn/sharesdk/vkontakte/b;->c()I

    move-result v6

    move-object v4, v3

    .line 134
    invoke-virtual/range {v0 .. v6}, Lcn/sharesdk/framework/a/a;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 136
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 155
    :cond_33
    :goto_33
    return-object v3

    .line 140
    :cond_34
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 141
    if-eqz v1, :cond_33

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_33

    .line 145
    const-string v2, "error"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 146
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v1

    .line 149
    :cond_53
    const-string v0, "response"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 150
    if-eqz v0, :cond_33

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_33

    .line 154
    const-string v1, "upload_url"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 155
    if-eqz v0, :cond_33

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_33
.end method

.method public getAuthorizeUrl()Ljava/lang/String;
    .registers 5

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    const-string v1, "https://oauth.vk.com/authorize?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    const-string v1, "client_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/sharesdk/vkontakte/b;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget-object v1, p0, Lcn/sharesdk/vkontakte/b;->e:[Ljava/lang/String;

    if-eqz v1, :cond_57

    iget-object v1, p0, Lcn/sharesdk/vkontakte/b;->e:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_57

    .line 67
    const-string v1, "&scope="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    iget-object v3, p0, Lcn/sharesdk/vkontakte/b;->e:[Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    :goto_2f
    const-string v1, "&redirect_uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/sharesdk/vkontakte/b;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const-string v1, "&display=mobile"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    const-string v1, "&v=5.2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const-string v1, "&response_type=token"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    const-string v1, "/authorize"

    invoke-virtual {p0}, Lcn/sharesdk/vkontakte/b;->c()I

    move-result v2

    invoke-static {v1, v2}, Lcn/sharesdk/framework/ShareSDK;->logApiEvent(Ljava/lang/String;I)V

    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 69
    :cond_57
    const-string v1, "&scope=photos,wall"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2f
.end method

.method public getAuthorizeWebviewClient(Lcn/sharesdk/framework/authorize/e;)Lcn/sharesdk/framework/authorize/b;
    .registers 3
    .param p1, "webAct"    # Lcn/sharesdk/framework/authorize/e;

    .prologue
    .line 59
    new-instance v0, Lcn/sharesdk/vkontakte/a;

    invoke-direct {v0, p1}, Lcn/sharesdk/vkontakte/a;-><init>(Lcn/sharesdk/framework/authorize/e;)V

    return-object v0
.end method

.method public getRedirectUri()Ljava/lang/String;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lcn/sharesdk/vkontakte/b;->d:Ljava/lang/String;

    return-object v0
.end method
