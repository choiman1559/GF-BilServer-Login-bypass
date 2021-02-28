.class public Lcn/sharesdk/renren/b;
.super Lcn/sharesdk/framework/b;
.source "RenrenHelper.java"


# static fields
.field private static final b:[Ljava/lang/String;

.field private static c:Lcn/sharesdk/renren/b;


# instance fields
.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lcn/sharesdk/framework/a/a;

.field private h:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 38
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "read_user_blog"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "read_user_photo"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "read_user_status"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "read_user_album"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "read_user_comment"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "read_user_share"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "read_user_feed"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "publish_blog"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "publish_share"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "send_notification"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "photo_upload"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "status_update"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "create_album"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "publish_comment"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "publish_feed"

    aput-object v2, v0, v1

    sput-object v0, Lcn/sharesdk/renren/b;->b:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcn/sharesdk/framework/Platform;)V
    .registers 3

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/b;-><init>(Lcn/sharesdk/framework/Platform;)V

    .line 58
    invoke-static {}, Lcn/sharesdk/framework/a/a;->a()Lcn/sharesdk/framework/a/a;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/renren/b;->g:Lcn/sharesdk/framework/a/a;

    .line 59
    return-void
.end method

.method public static a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/renren/b;
    .registers 2

    .prologue
    .line 50
    sget-object v0, Lcn/sharesdk/renren/b;->c:Lcn/sharesdk/renren/b;

    if-nez v0, :cond_b

    .line 51
    new-instance v0, Lcn/sharesdk/renren/b;

    invoke-direct {v0, p0}, Lcn/sharesdk/renren/b;-><init>(Lcn/sharesdk/framework/Platform;)V

    sput-object v0, Lcn/sharesdk/renren/b;->c:Lcn/sharesdk/renren/b;

    .line 53
    :cond_b
    sget-object v0, Lcn/sharesdk/renren/b;->c:Lcn/sharesdk/renren/b;

    return-object v0
.end method

.method private a(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V
    .registers 5

    .prologue
    .line 162
    :try_start_0
    invoke-virtual {p0}, Lcn/sharesdk/renren/b;->a()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_21

    .line 169
    :cond_3
    :goto_3
    const/4 v0, 0x0

    .line 171
    :try_start_4
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v1

    const-string v2, "android.permission.INTERNET"

    invoke-virtual {v1, v2}, Lcom/mob/tools/utils/DeviceHelper;->checkPermission(Ljava/lang/String;)Z
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_11} :catch_2c

    move-result v0

    .line 174
    :goto_12
    if-nez v0, :cond_28

    .line 175
    if-eqz p1, :cond_20

    .line 176
    const-string v0, "application does not have the permission to connect the internet"

    .line 177
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    .line 183
    :cond_20
    :goto_20
    return-void

    .line 163
    :catch_21
    move-exception v0

    .line 164
    if-eqz p1, :cond_3

    .line 165
    invoke-interface {p1, v0}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 182
    :cond_28
    invoke-virtual {p0, p1}, Lcn/sharesdk/renren/b;->b(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    goto :goto_20

    .line 172
    :catch_2c
    move-exception v1

    goto :goto_12
.end method

.method static synthetic a(Lcn/sharesdk/renren/b;Lcn/sharesdk/framework/authorize/AuthorizeListener;)V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcn/sharesdk/renren/b;->a(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    return-void
.end method


# virtual methods
.method public a(IILjava/lang/String;)Ljava/util/HashMap;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
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
    const/4 v4, 0x0

    .line 209
    const/4 v0, 0x1

    .line 211
    :try_start_2
    invoke-static {p3}, Lcom/mob/tools/utils/ResHelper;->parseLong(Ljava/lang/String;)J
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_5} :catch_8

    .line 215
    :goto_5
    if-nez v0, :cond_b

    .line 233
    :cond_7
    :goto_7
    return-object v4

    .line 212
    :catch_8
    move-exception v0

    .line 213
    const/4 v0, 0x0

    goto :goto_5

    .line 219
    :cond_b
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 220
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v1, "Authorization"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bearer "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcn/sharesdk/renren/b;->f:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 222
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v1, "access_token"

    iget-object v5, p0, Lcn/sharesdk/renren/b;->f:Ljava/lang/String;

    invoke-direct {v0, v1, v5}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v1, "userId"

    invoke-direct {v0, v1, p3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v1, "pageSize"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v1, v5}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v1, "pageNumber"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v1, v5}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    const-string v5, "/v2/user/friend/list"

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://api.renren.com"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 229
    iget-object v0, p0, Lcn/sharesdk/renren/b;->g:Lcn/sharesdk/framework/a/a;

    invoke-virtual {p0}, Lcn/sharesdk/renren/b;->c()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcn/sharesdk/framework/a/a;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 230
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_7

    .line 231
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    goto/16 :goto_7
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
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

    .line 239
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 240
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v1, "Authorization"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bearer "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcn/sharesdk/renren/b;->f:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 242
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v1, "message"

    invoke-direct {v0, v1, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v1, "title"

    invoke-direct {v0, v1, p2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v1, "description"

    invoke-direct {v0, v1, p4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v1, "targetUrl"

    invoke-direct {v0, v1, p5}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_62

    .line 247
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v1, "imageUrl"

    invoke-direct {v0, v1, p3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    :cond_62
    const-string v5, "/v2/feed/put"

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://api.renren.com"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 252
    iget-object v0, p0, Lcn/sharesdk/renren/b;->g:Lcn/sharesdk/framework/a/a;

    invoke-virtual {p0}, Lcn/sharesdk/renren/b;->c()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcn/sharesdk/framework/a/a;->a(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 253
    if-eqz v0, :cond_92

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_92

    .line 254
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    .line 256
    :cond_92
    return-object v3
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/util/HashMap;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 338
    if-nez p2, :cond_4

    .line 373
    :cond_3
    :goto_3
    return-object v6

    .line 342
    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 343
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v1, "Authorization"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bearer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/sharesdk/renren/b;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 346
    if-eqz p3, :cond_60

    invoke-virtual {p3}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_60

    .line 347
    invoke-virtual {p3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 348
    new-instance v5, Lcom/mob/tools/network/KVPair;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v1, v0}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3d

    .line 353
    :cond_60
    if-eqz p4, :cond_d3

    invoke-virtual {p4}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_d3

    .line 354
    invoke-virtual {p4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v0, v6

    :goto_71
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 355
    new-instance v3, Lcom/mob/tools/network/KVPair;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v3, v1, v0}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, v3

    .line 356
    goto :goto_71

    :cond_8e
    move-object v3, v0

    .line 360
    :goto_8f
    const/4 v5, 0x0

    .line 362
    :try_start_90
    const-string v0, "GET"

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b5

    .line 363
    iget-object v0, p0, Lcn/sharesdk/renren/b;->g:Lcn/sharesdk/framework/a/a;

    invoke-virtual {v0, p1, v2, v4, v5}, Lcn/sharesdk/framework/a/a;->httpGet(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;
    :try_end_a1
    .catch Ljava/lang/Throwable; {:try_start_90 .. :try_end_a1} :catch_c9

    move-result-object v0

    .line 370
    :goto_a2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 371
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v6

    goto/16 :goto_3

    .line 364
    :cond_b5
    :try_start_b5
    const-string v0, "POST"

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d1

    .line 365
    iget-object v0, p0, Lcn/sharesdk/renren/b;->g:Lcn/sharesdk/framework/a/a;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcn/sharesdk/framework/a/a;->httpPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;
    :try_end_c7
    .catch Ljava/lang/Throwable; {:try_start_b5 .. :try_end_c7} :catch_c9

    move-result-object v0

    goto :goto_a2

    .line 367
    :catch_c9
    move-exception v0

    .line 368
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_d1
    move-object v0, v6

    goto :goto_a2

    :cond_d3
    move-object v3, v6

    goto :goto_8f
.end method

.method public a()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcn/sharesdk/renren/b;->d:Ljava/lang/String;

    if-nez v0, :cond_c

    .line 72
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "apiKey is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_c
    iget-object v0, p0, Lcn/sharesdk/renren/b;->e:Ljava/lang/String;

    if-nez v0, :cond_18

    .line 76
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "secretKey is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_18
    return-void
.end method

.method public a(Lcn/sharesdk/framework/authorize/AuthorizeListener;Z)V
    .registers 4

    .prologue
    .line 139
    if-eqz p2, :cond_6

    .line 140
    invoke-direct {p0, p1}, Lcn/sharesdk/renren/b;->a(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    .line 158
    :goto_5
    return-void

    .line 144
    :cond_6
    new-instance v0, Lcn/sharesdk/renren/b$1;

    invoke-direct {v0, p0, p1}, Lcn/sharesdk/renren/b$1;-><init>(Lcn/sharesdk/renren/b;Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    invoke-virtual {p0, v0}, Lcn/sharesdk/renren/b;->a(Lcn/sharesdk/framework/authorize/SSOListener;)V

    goto :goto_5
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 67
    iput-object p1, p0, Lcn/sharesdk/renren/b;->f:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 62
    iput-object p1, p0, Lcn/sharesdk/renren/b;->d:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Lcn/sharesdk/renren/b;->e:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public a([Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 81
    iput-object p1, p0, Lcn/sharesdk/renren/b;->h:[Ljava/lang/String;

    .line 82
    return-void
.end method

.method public b(Ljava/lang/String;)Ljava/util/HashMap;
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
    const/4 v4, 0x0

    .line 192
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 193
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v1, "Authorization"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bearer "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcn/sharesdk/renren/b;->f:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 195
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v1, "access_token"

    iget-object v5, p0, Lcn/sharesdk/renren/b;->f:Ljava/lang/String;

    invoke-direct {v0, v1, v5}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v1, "userId"

    invoke-direct {v0, v1, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    const-string v5, "/v2/user/get"

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://api.renren.com"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 200
    iget-object v0, p0, Lcn/sharesdk/renren/b;->g:Lcn/sharesdk/framework/a/a;

    invoke-virtual {p0}, Lcn/sharesdk/renren/b;->c()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcn/sharesdk/framework/a/a;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 201
    if-eqz v0, :cond_70

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_70

    .line 202
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    .line 204
    :cond_70
    return-object v4
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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
    .line 280
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 281
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v1, "Authorization"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bearer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/sharesdk/renren/b;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 283
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_39

    .line 284
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v1, "description"

    invoke-direct {v0, v1, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    :cond_39
    new-instance v3, Lcom/mob/tools/network/KVPair;

    const-string v0, "file"

    invoke-direct {v3, v0, p2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 288
    const-string v5, "/v2/photo/upload"

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://api.renren.com"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 290
    iget-object v0, p0, Lcn/sharesdk/renren/b;->g:Lcn/sharesdk/framework/a/a;

    invoke-virtual {p0}, Lcn/sharesdk/renren/b;->c()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcn/sharesdk/framework/a/a;->a(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 291
    if-eqz v0, :cond_71

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_71

    .line 292
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 294
    :goto_70
    return-object v0

    :cond_71
    const/4 v0, 0x0

    goto :goto_70
.end method

.method public b()Z
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 377
    .line 379
    :try_start_2
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "com.renren.mobile.android"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 380
    iget v0, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    const v4, 0x4dab98

    if-gt v0, v4, :cond_68

    move v0, v1

    .line 384
    :goto_19
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 385
    const-string v4, "[.]"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 386
    const/4 v4, 0x0

    aget-object v2, v2, v4

    const-string v4, "v"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mob/tools/utils/ResHelper;->parseInt(Ljava/lang/String;)I
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2f} :catch_50

    move-result v2

    .line 387
    const/4 v4, 0x5

    if-ge v2, v4, :cond_34

    move v0, v1

    .line 397
    :cond_34
    :goto_34
    :try_start_34
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v4, "com.renren.mobile.apad"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 398
    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_45} :catch_5a

    const v4, 0x2dc6c0

    if-ge v2, v4, :cond_66

    move v2, v1

    .line 406
    :goto_4b
    if-nez v0, :cond_64

    if-nez v2, :cond_64

    .line 410
    :goto_4f
    return v1

    .line 390
    :catch_50
    move-exception v0

    .line 391
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    move v0, v1

    .line 392
    goto :goto_34

    .line 401
    :catch_5a
    move-exception v2

    .line 402
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    move v2, v1

    .line 403
    goto :goto_4b

    :cond_64
    move v1, v3

    .line 410
    goto :goto_4f

    :cond_66
    move v2, v3

    goto :goto_4b

    :cond_68
    move v0, v3

    goto :goto_19
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

    .line 261
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 262
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v1, "Authorization"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bearer "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcn/sharesdk/renren/b;->f:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 264
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v1, "content"

    invoke-direct {v0, v1, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    const-string v5, "/v2/status/put"

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://api.renren.com"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 267
    iget-object v0, p0, Lcn/sharesdk/renren/b;->g:Lcn/sharesdk/framework/a/a;

    invoke-virtual {p0}, Lcn/sharesdk/renren/b;->c()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcn/sharesdk/framework/a/a;->a(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 268
    if-eqz v0, :cond_64

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_64

    .line 269
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    .line 271
    :cond_64
    return-object v3
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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

    .line 299
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 300
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v1, "Authorization"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bearer "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcn/sharesdk/renren/b;->f:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 302
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v1, "url"

    invoke-direct {v0, v1, p2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_44

    .line 304
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v1, "comment"

    invoke-direct {v0, v1, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    :cond_44
    const-string v5, "/v2/share/url/put"

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://api.renren.com"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 308
    iget-object v0, p0, Lcn/sharesdk/renren/b;->g:Lcn/sharesdk/framework/a/a;

    invoke-virtual {p0}, Lcn/sharesdk/renren/b;->c()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcn/sharesdk/framework/a/a;->a(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 309
    if-eqz v0, :cond_74

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_74

    .line 310
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    .line 312
    :cond_74
    return-object v3
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .prologue
    .line 321
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 322
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "oauth_token"

    invoke-direct {v1, v2, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    const/4 v1, 0x0

    .line 325
    :try_start_10
    const-string v2, "http://graph.renren.com/renren_api/session_key"

    .line 326
    iget-object v3, p0, Lcn/sharesdk/renren/b;->g:Lcn/sharesdk/framework/a/a;

    const-string v4, "/renren_api/session_key"

    invoke-virtual {p0}, Lcn/sharesdk/renren/b;->c()I

    move-result v5

    invoke-virtual {v3, v2, v0, v4, v5}, Lcn/sharesdk/framework/a/a;->b(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_1d} :catch_27

    move-result-object v0

    .line 330
    :goto_1e
    if-eqz v0, :cond_31

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_31

    .line 333
    :goto_26
    return-object v0

    .line 327
    :catch_27
    move-exception v0

    .line 328
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_1e

    .line 333
    :cond_31
    const-string v0, "{}"

    goto :goto_26
.end method

.method public getAuthorizeUrl()Ljava/lang/String;
    .registers 5

    .prologue
    const/16 v3, 0x26

    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    const-string v0, "/oauth/v2/wap/authorize"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 91
    const-string v0, "client_id="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/renren/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 92
    const-string v0, "redirect_uri="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcn/sharesdk/renren/b;->getRedirectUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 93
    const-string v0, "response_type="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "token"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 94
    const-string v0, "display="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "touch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 95
    const-string v0, "scope="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    iget-object v0, p0, Lcn/sharesdk/renren/b;->h:[Ljava/lang/String;

    if-nez v0, :cond_6e

    sget-object v0, Lcn/sharesdk/renren/b;->b:[Ljava/lang/String;

    .line 97
    :goto_5b
    const/4 v1, 0x0

    :goto_5c
    array-length v3, v0

    if-ge v1, v3, :cond_71

    .line 98
    if-lez v1, :cond_66

    .line 99
    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 101
    :cond_66
    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    add-int/lit8 v1, v1, 0x1

    goto :goto_5c

    .line 96
    :cond_6e
    iget-object v0, p0, Lcn/sharesdk/renren/b;->h:[Ljava/lang/String;

    goto :goto_5b

    .line 104
    :cond_71
    const-string v0, "/oauth/v2/wap/authorize"

    invoke-virtual {p0}, Lcn/sharesdk/renren/b;->c()I

    move-result v1

    invoke-static {v0, v1}, Lcn/sharesdk/framework/ShareSDK;->logApiEvent(Ljava/lang/String;I)V

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://graph.renren.com"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

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
    .line 114
    new-instance v0, Lcn/sharesdk/renren/a;

    invoke-direct {v0, p1}, Lcn/sharesdk/renren/a;-><init>(Lcn/sharesdk/framework/authorize/e;)V

    return-object v0
.end method

.method public getRedirectUri()Ljava/lang/String;
    .registers 2

    .prologue
    .line 109
    const-string v0, "http://graph.renren.com/oauth/login_success.html"

    return-object v0
.end method

.method public getSSOProcessor(Lcn/sharesdk/framework/authorize/c;)Lcn/sharesdk/framework/authorize/d;
    .registers 10
    .param p1, "ssoAct"    # Lcn/sharesdk/framework/authorize/c;

    .prologue
    const/4 v1, 0x0

    .line 118
    new-instance v3, Lcn/sharesdk/renren/c;

    invoke-direct {v3, p1}, Lcn/sharesdk/renren/c;-><init>(Lcn/sharesdk/framework/authorize/c;)V

    .line 119
    iget-object v0, p0, Lcn/sharesdk/renren/b;->d:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcn/sharesdk/renren/c;->a(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcn/sharesdk/renren/b;->h:[Ljava/lang/String;

    if-nez v0, :cond_2b

    sget-object v0, Lcn/sharesdk/renren/b;->b:[Ljava/lang/String;

    .line 121
    :goto_11
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    array-length v5, v0

    move v2, v1

    :goto_18
    if-ge v1, v5, :cond_2e

    aget-object v6, v0, v1

    .line 124
    if-lez v2, :cond_23

    .line 125
    const/16 v7, 0x20

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 127
    :cond_23
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    add-int/lit8 v2, v2, 0x1

    .line 123
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 120
    :cond_2b
    iget-object v0, p0, Lcn/sharesdk/renren/b;->h:[Ljava/lang/String;

    goto :goto_11

    .line 130
    :cond_2e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcn/sharesdk/renren/c;->b(Ljava/lang/String;)V

    .line 131
    return-object v3
.end method
