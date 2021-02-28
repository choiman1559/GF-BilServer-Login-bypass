.class public Lcn/sharesdk/foursquare/b;
.super Lcn/sharesdk/framework/b;
.source "FourSquareHelper.java"


# static fields
.field private static b:Lcn/sharesdk/foursquare/b;


# instance fields
.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcn/sharesdk/framework/a/a;


# direct methods
.method private constructor <init>(Lcn/sharesdk/framework/Platform;)V
    .registers 3

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/b;-><init>(Lcn/sharesdk/framework/Platform;)V

    .line 56
    invoke-static {}, Lcn/sharesdk/framework/a/a;->a()Lcn/sharesdk/framework/a/a;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/foursquare/b;->f:Lcn/sharesdk/framework/a/a;

    .line 57
    return-void
.end method

.method public static a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/foursquare/b;
    .registers 2

    .prologue
    .line 48
    sget-object v0, Lcn/sharesdk/foursquare/b;->b:Lcn/sharesdk/foursquare/b;

    if-nez v0, :cond_b

    .line 49
    new-instance v0, Lcn/sharesdk/foursquare/b;

    invoke-direct {v0, p0}, Lcn/sharesdk/foursquare/b;-><init>(Lcn/sharesdk/framework/Platform;)V

    sput-object v0, Lcn/sharesdk/foursquare/b;->b:Lcn/sharesdk/foursquare/b;

    .line 51
    :cond_b
    sget-object v0, Lcn/sharesdk/foursquare/b;->b:Lcn/sharesdk/foursquare/b;

    return-object v0
.end method

.method private a()Ljava/lang/String;
    .registers 4

    .prologue
    .line 327
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 328
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 329
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Context;)Z
    .registers 3

    .prologue
    .line 87
    const-string v0, "android.permission.INTERNET"

    .line 88
    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 89
    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method


# virtual methods
.method public a(Ljava/lang/String;II)Ljava/util/HashMap;
    .registers 12
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

    .prologue
    const/4 v7, 0x0

    .line 335
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/v2/users/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/friends"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://api.foursquare.com"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 337
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 338
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v3, "oauth_token"

    iget-object v4, p0, Lcn/sharesdk/foursquare/b;->e:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v3, "v"

    invoke-direct {p0}, Lcn/sharesdk/foursquare/b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v3, "limit"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v3, "offset"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    iget-object v0, p0, Lcn/sharesdk/foursquare/b;->f:Lcn/sharesdk/framework/a/a;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcn/sharesdk/foursquare/b;->c()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcn/sharesdk/framework/a/a;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 344
    new-instance v0, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v0}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v0, v3}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 345
    if-eqz v1, :cond_85

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-gtz v0, :cond_97

    .line 346
    :cond_85
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "Response is empty"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8d
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_8d} :catch_8d

    .line 367
    :catch_8d
    move-exception v0

    .line 368
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    move-object v0, v7

    .line 369
    :goto_96
    return-object v0

    .line 350
    :cond_97
    :try_start_97
    const-string v0, "meta"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 351
    if-eqz v0, :cond_a7

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v2

    if-gtz v2, :cond_ad

    .line 352
    :cond_a7
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_ad
    .catch Ljava/lang/Throwable; {:try_start_97 .. :try_end_ad} :catch_8d

    .line 357
    :cond_ad
    :try_start_ad
    const-string v2, "code"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/ResHelper;->parseInt(Ljava/lang/String;)I
    :try_end_ba
    .catch Ljava/lang/Throwable; {:try_start_ad .. :try_end_ba} :catch_c5

    move-result v0

    .line 362
    :goto_bb
    const/16 v2, 0xc8

    if-eq v2, v0, :cond_d0

    .line 363
    :try_start_bf
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0

    .line 358
    :catch_c5
    move-exception v0

    .line 359
    const/4 v2, 0x0

    .line 360
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_ce
    .catch Ljava/lang/Throwable; {:try_start_bf .. :try_end_ce} :catch_8d

    move v0, v2

    goto :goto_bb

    :cond_d0
    move-object v0, v1

    .line 365
    goto :goto_96
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .registers 13
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

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 283
    :try_start_3
    const-string v1, "https://api.foursquare.com/v2/photos/add"

    .line 284
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 285
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v3, "checkinId"

    invoke-direct {v0, v3, p2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v3, "oauth_token"

    iget-object v4, p0, Lcn/sharesdk/foursquare/b;->e:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v3, "v"

    invoke-direct {p0}, Lcn/sharesdk/foursquare/b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    new-instance v3, Lcom/mob/tools/network/KVPair;

    const-string v0, "file"

    invoke-direct {v3, v0, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 292
    iget-object v0, p0, Lcn/sharesdk/foursquare/b;->f:Lcn/sharesdk/framework/a/a;

    const/4 v4, 0x0

    const-string v5, "/v2/photos/add"

    invoke-virtual {p0}, Lcn/sharesdk/foursquare/b;->c()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcn/sharesdk/framework/a/a;->a(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 293
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f7

    .line 294
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    .line 295
    if-nez v2, :cond_55

    move-object v0, v7

    .line 322
    :goto_54
    return-object v0

    .line 299
    :cond_55
    const-string v0, "meta"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 300
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    const-string v3, "get addPhoto code == %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "code"

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 301
    if-eqz v0, :cond_8a

    const-string v1, "200"

    const-string v3, "code"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a9

    .line 302
    :cond_8a
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 303
    const-string v1, "error"

    if-eqz v0, :cond_a6

    const-string v3, "errorDetail"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_99
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    .line 304
    goto :goto_54

    .line 303
    :cond_a6
    const-string v0, ""

    goto :goto_99

    .line 307
    :cond_a9
    const-string v0, "response"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 309
    const-string v1, "photo"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 311
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 312
    const-string v3, "id"

    const-string v4, "id"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    const-string v3, "url"

    const-string v4, "url"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    const-string v1, "response"

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_df
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_df} :catch_e2

    move-object v0, v2

    .line 315
    goto/16 :goto_54

    .line 317
    :catch_e2
    move-exception v0

    .line 318
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    const-string v2, " add photo throw %s =="

    new-array v3, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v8

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-object v0, v7

    .line 319
    goto/16 :goto_54

    :cond_f7
    move-object v0, v7

    .line 322
    goto/16 :goto_54
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    .prologue
    const/4 v1, 0x0

    .line 140
    :try_start_1
    const-string v0, "https://api.foursquare.com/v2/venues/add"

    .line 141
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 142
    new-instance v3, Lcom/mob/tools/network/KVPair;

    const-string v4, "name"

    invoke-direct {v3, v4, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_22

    .line 144
    new-instance v3, Lcom/mob/tools/network/KVPair;

    const-string v4, "description"

    invoke-direct {v3, v4, p3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    :cond_22
    new-instance v3, Lcom/mob/tools/network/KVPair;

    const-string v4, "ll"

    invoke-direct {v3, v4, p2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    new-instance v3, Lcom/mob/tools/network/KVPair;

    const-string v4, "oauth_token"

    iget-object v5, p0, Lcn/sharesdk/foursquare/b;->e:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    new-instance v3, Lcom/mob/tools/network/KVPair;

    const-string v4, "v"

    invoke-direct {p0}, Lcn/sharesdk/foursquare/b;->a()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    iget-object v3, p0, Lcn/sharesdk/foursquare/b;->f:Lcn/sharesdk/framework/a/a;

    const-string v4, "/v2/venues/add"

    invoke-virtual {p0}, Lcn/sharesdk/foursquare/b;->c()I

    move-result v5

    invoke-virtual {v3, v0, v2, v4, v5}, Lcn/sharesdk/framework/a/a;->b(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 151
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e0

    .line 152
    new-instance v2, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v2}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v2, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    .line 153
    if-nez v2, :cond_65

    move-object v0, v1

    .line 177
    :goto_64
    return-object v0

    .line 157
    :cond_65
    const-string v0, "meta"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 158
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v3

    const-string v4, "get addVenue code == %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "code"

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 159
    if-eqz v0, :cond_9a

    const-string v3, "200"

    const-string v4, "code"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b9

    .line 160
    :cond_9a
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 161
    const-string v3, "error"

    if-eqz v0, :cond_b6

    const-string v4, "errorDetail"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_a9
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    .line 162
    goto :goto_64

    .line 161
    :cond_b6
    const-string v0, ""

    goto :goto_a9

    .line 165
    :cond_b9
    const-string v0, "response"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 167
    const-string v3, "venue"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 169
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 170
    const-string v3, "id"

    const-string v4, "id"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_db
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_db} :catch_dd

    move-object v0, v2

    .line 171
    goto :goto_64

    .line 173
    :catch_dd
    move-exception v0

    move-object v0, v1

    .line 174
    goto :goto_64

    :cond_e0
    move-object v0, v1

    .line 177
    goto :goto_64
.end method

.method public a(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V
    .registers 4

    .prologue
    .line 77
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/sharesdk/foursquare/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 78
    const-string v0, "application does not have the permission to connect the internet"

    .line 79
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    .line 84
    :goto_14
    return-void

    .line 83
    :cond_15
    invoke-virtual {p0, p1}, Lcn/sharesdk/foursquare/b;->b(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    goto :goto_14
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 60
    iput-object p1, p0, Lcn/sharesdk/foursquare/b;->c:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    .prologue
    const/4 v2, 0x0

    .line 236
    :try_start_1
    const-string v0, "https://api.foursquare.com/v2/checkins/add"

    .line 237
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 238
    new-instance v3, Lcom/mob/tools/network/KVPair;

    const-string v4, "venueId"

    invoke-direct {v3, v4, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    new-instance v3, Lcom/mob/tools/network/KVPair;

    const-string v4, "shout"

    invoke-direct {v3, v4, p2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    new-instance v3, Lcom/mob/tools/network/KVPair;

    const-string v4, "ll"

    invoke-direct {v3, v4, p3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    new-instance v3, Lcom/mob/tools/network/KVPair;

    const-string v4, "oauth_token"

    iget-object v5, p0, Lcn/sharesdk/foursquare/b;->e:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    new-instance v3, Lcom/mob/tools/network/KVPair;

    const-string v4, "v"

    invoke-direct {p0}, Lcn/sharesdk/foursquare/b;->a()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    iget-object v3, p0, Lcn/sharesdk/foursquare/b;->f:Lcn/sharesdk/framework/a/a;

    const-string v4, "/v2/checkins/add"

    invoke-virtual {p0}, Lcn/sharesdk/foursquare/b;->c()I

    move-result v5

    invoke-virtual {v3, v0, v1, v4, v5}, Lcn/sharesdk/framework/a/a;->b(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 245
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_df

    .line 246
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    .line 247
    if-nez v3, :cond_5f

    move-object v0, v2

    .line 272
    :goto_5e
    return-object v0

    .line 251
    :cond_5f
    const-string v0, "meta"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 252
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    const-string v4, "get addCheckIn code == %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "code"

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 253
    if-eqz v0, :cond_94

    const-string v1, "200"

    const-string v4, "code"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b3

    .line 254
    :cond_94
    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 255
    const-string v1, "error"

    if-eqz v0, :cond_b0

    const-string v4, "errorDetail"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_a3
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v3

    .line 256
    goto :goto_5e

    .line 255
    :cond_b0
    const-string v0, ""

    goto :goto_a3

    .line 259
    :cond_b3
    const-string v0, "response"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 261
    const-string v1, "checkin"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 263
    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 264
    const-string v4, "id"

    const-string v5, "id"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    const-string v1, "response"

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_da
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_da} :catch_dc

    move-object v0, v3

    .line 266
    goto :goto_5e

    .line 268
    :catch_dc
    move-exception v0

    move-object v0, v2

    .line 269
    goto :goto_5e

    :cond_df
    move-object v0, v2

    .line 272
    goto/16 :goto_5e
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 64
    iput-object p1, p0, Lcn/sharesdk/foursquare/b;->d:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 106
    iput-object p1, p0, Lcn/sharesdk/foursquare/b;->e:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public d(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 10
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

    .prologue
    const/4 v7, 0x0

    .line 111
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 112
    const-string p1, "self"

    .line 115
    :cond_9
    :try_start_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://api.foursquare.com/v2/users/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 116
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 117
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v3, "oauth_token"

    iget-object v4, p0, Lcn/sharesdk/foursquare/b;->e:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v3, "v"

    invoke-direct {p0}, Lcn/sharesdk/foursquare/b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v0, p0, Lcn/sharesdk/foursquare/b;->f:Lcn/sharesdk/framework/a/a;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "/v2/users/"

    invoke-virtual {p0}, Lcn/sharesdk/foursquare/b;->c()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcn/sharesdk/framework/a/a;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 121
    if-eqz v0, :cond_63

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_63

    .line 122
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_59} :catch_5b

    move-result-object v0

    .line 128
    :goto_5a
    return-object v0

    .line 124
    :catch_5b
    move-exception v0

    .line 125
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_63
    move-object v0, v7

    .line 128
    goto :goto_5a
.end method

.method public e(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 10
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

    .prologue
    const/4 v1, 0x0

    .line 187
    :try_start_1
    const-string v0, "https://api.foursquare.com/v2/venues/search"

    .line 188
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 189
    new-instance v3, Lcom/mob/tools/network/KVPair;

    const-string v4, "ll"

    invoke-direct {v3, v4, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    new-instance v3, Lcom/mob/tools/network/KVPair;

    const-string v4, "oauth_token"

    iget-object v5, p0, Lcn/sharesdk/foursquare/b;->e:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    new-instance v3, Lcom/mob/tools/network/KVPair;

    const-string v4, "v"

    invoke-direct {p0}, Lcn/sharesdk/foursquare/b;->a()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    iget-object v3, p0, Lcn/sharesdk/foursquare/b;->f:Lcn/sharesdk/framework/a/a;

    const-string v4, "/v2/venues/search"

    invoke-virtual {p0}, Lcn/sharesdk/foursquare/b;->c()I

    move-result v5

    invoke-virtual {v3, v0, v2, v4, v5}, Lcn/sharesdk/framework/a/a;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 195
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d3

    .line 196
    new-instance v2, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v2}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v2, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    .line 197
    if-nez v2, :cond_4b

    move-object v0, v1

    .line 224
    :goto_4a
    return-object v0

    .line 201
    :cond_4b
    const-string v0, "meta"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 202
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v3

    const-string v4, "get addVenue code == %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "code"

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 203
    if-eqz v0, :cond_80

    const-string v3, "200"

    const-string v4, "code"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9f

    .line 204
    :cond_80
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 205
    const-string v3, "error"

    if-eqz v0, :cond_9c

    const-string v4, "errorDetail"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_8f
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    .line 206
    goto :goto_4a

    .line 205
    :cond_9c
    const-string v0, ""

    goto :goto_8f

    .line 209
    :cond_9f
    const-string v0, "response"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 211
    const-string v3, "venues"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 213
    if-nez v0, :cond_b3

    move-object v0, v1

    .line 214
    goto :goto_4a

    .line 216
    :cond_b3
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 217
    const-string v3, "id"

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v4, "id"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_cc
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_cc} :catch_cf

    move-object v0, v2

    .line 218
    goto/16 :goto_4a

    .line 220
    :catch_cf
    move-exception v0

    move-object v0, v1

    .line 221
    goto/16 :goto_4a

    :cond_d3
    move-object v0, v1

    .line 224
    goto/16 :goto_4a
.end method

.method public getAuthorizeUrl()Ljava/lang/String;
    .registers 4

    .prologue
    .line 93
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 94
    const-string v1, "https://foursquare.com"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    const-string v1, "/oauth2/authenticate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "?client_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/sharesdk/foursquare/b;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    const-string v1, "&response_type=token"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    const-string v1, "&display=touch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&redirect_uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/sharesdk/foursquare/b;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    const-string v1, "/oauth2/authenticate"

    invoke-virtual {p0}, Lcn/sharesdk/foursquare/b;->c()I

    move-result v2

    invoke-static {v1, v2}, Lcn/sharesdk/framework/ShareSDK;->logApiEvent(Ljava/lang/String;I)V

    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAuthorizeWebviewClient(Lcn/sharesdk/framework/authorize/e;)Lcn/sharesdk/framework/authorize/b;
    .registers 3
    .param p1, "webAct"    # Lcn/sharesdk/framework/authorize/e;

    .prologue
    .line 73
    new-instance v0, Lcn/sharesdk/foursquare/a;

    invoke-direct {v0, p1}, Lcn/sharesdk/foursquare/a;-><init>(Lcn/sharesdk/framework/authorize/e;)V

    return-object v0
.end method

.method public getRedirectUri()Ljava/lang/String;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcn/sharesdk/foursquare/b;->d:Ljava/lang/String;

    return-object v0
.end method
