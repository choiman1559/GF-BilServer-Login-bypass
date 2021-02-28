.class public Lcn/sharesdk/twitter/b;
.super Lcn/sharesdk/framework/b;
.source "TwitterHelper.java"


# static fields
.field private static b:Lcn/sharesdk/twitter/b;


# instance fields
.field private c:Lcn/sharesdk/framework/utils/a;

.field private d:Lcn/sharesdk/framework/a/a;

.field private e:Lcn/sharesdk/twitter/MappedFileReader;

.field private f:I


# direct methods
.method private constructor <init>(Lcn/sharesdk/framework/Platform;)V
    .registers 3

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/b;-><init>(Lcn/sharesdk/framework/Platform;)V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcn/sharesdk/twitter/b;->f:I

    .line 44
    new-instance v0, Lcn/sharesdk/framework/utils/a;

    invoke-direct {v0}, Lcn/sharesdk/framework/utils/a;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/twitter/b;->c:Lcn/sharesdk/framework/utils/a;

    .line 45
    invoke-static {}, Lcn/sharesdk/framework/a/a;->a()Lcn/sharesdk/framework/a/a;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/twitter/b;->d:Lcn/sharesdk/framework/a/a;

    .line 46
    return-void
.end method

.method static synthetic a(Lcn/sharesdk/twitter/b;)Lcn/sharesdk/twitter/MappedFileReader;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcn/sharesdk/twitter/b;->e:Lcn/sharesdk/twitter/MappedFileReader;

    return-object v0
.end method

.method public static a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/twitter/b;
    .registers 2

    .prologue
    .line 36
    sget-object v0, Lcn/sharesdk/twitter/b;->b:Lcn/sharesdk/twitter/b;

    if-nez v0, :cond_b

    .line 37
    new-instance v0, Lcn/sharesdk/twitter/b;

    invoke-direct {v0, p0}, Lcn/sharesdk/twitter/b;-><init>(Lcn/sharesdk/framework/Platform;)V

    sput-object v0, Lcn/sharesdk/twitter/b;->b:Lcn/sharesdk/twitter/b;

    .line 39
    :cond_b
    sget-object v0, Lcn/sharesdk/twitter/b;->b:Lcn/sharesdk/twitter/b;

    return-object v0
.end method

.method private a(Ljava/lang/String;JLjava/lang/String;)Ljava/util/HashMap;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
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
    .line 334
    invoke-direct {p0, p1}, Lcn/sharesdk/twitter/b;->d(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 335
    if-eqz v0, :cond_19

    .line 336
    const-string v1, "media_id_string"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 337
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 338
    invoke-virtual {p0, p4, p1}, Lcn/sharesdk/twitter/b;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 341
    :goto_18
    return-object v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;J)Ljava/util/HashMap;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)",
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

    .line 345
    const-string v1, "https://upload.twitter.com/1.1/media/upload.json"

    .line 346
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 347
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v4, "command"

    const-string v5, "INIT"

    invoke-direct {v0, v4, v5}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v4, "media_type"

    const-string v5, "video/mp4"

    invoke-direct {v0, v4, v5}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 350
    new-instance v4, Lcom/mob/tools/network/KVPair;

    const-string v5, "total_bytes"

    invoke-direct {v4, v5, v0}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    iget-object v0, p0, Lcn/sharesdk/twitter/b;->c:Lcn/sharesdk/framework/utils/a;

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/framework/utils/a;->a(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 352
    iget-object v4, p0, Lcn/sharesdk/twitter/b;->c:Lcn/sharesdk/framework/utils/a;

    invoke-virtual {v4, v0}, Lcn/sharesdk/framework/utils/a;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    .line 353
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 354
    iget-object v0, p0, Lcn/sharesdk/twitter/b;->d:Lcn/sharesdk/framework/a/a;

    const-string v5, "/1.1/media/upload.json"

    invoke-virtual {p0}, Lcn/sharesdk/twitter/b;->c()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcn/sharesdk/framework/a/a;->a(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 355
    if-eqz v0, :cond_5b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5b

    .line 356
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    .line 358
    :cond_5b
    return-object v3
.end method

.method static synthetic a(Lcn/sharesdk/twitter/b;Ljava/lang/String;ZLcn/sharesdk/twitter/UpLoadViewCallBack;Ljava/lang/String;J)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct/range {p0 .. p6}, Lcn/sharesdk/twitter/b;->a(Ljava/lang/String;ZLcn/sharesdk/twitter/UpLoadViewCallBack;Ljava/lang/String;J)V

    return-void
.end method

.method private a(Ljava/lang/String;ZLcn/sharesdk/twitter/UpLoadViewCallBack;Ljava/lang/String;J)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 387
    const-string v1, "https://upload.twitter.com/1.1/media/upload.json"

    .line 388
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 389
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v3, "command"

    const-string v4, "APPEND"

    invoke-direct {v0, v3, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v3, "media_id"

    invoke-direct {v0, v3, p4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    if-eqz p2, :cond_6d

    .line 392
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v3, "media_data"

    invoke-direct {v0, v3, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    :goto_29
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v3, "segment_index"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcn/sharesdk/twitter/b;->f:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    iget v0, p0, Lcn/sharesdk/twitter/b;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/sharesdk/twitter/b;->f:I

    .line 398
    iget-object v0, p0, Lcn/sharesdk/twitter/b;->c:Lcn/sharesdk/framework/utils/a;

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/framework/utils/a;->a(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 399
    iget-object v3, p0, Lcn/sharesdk/twitter/b;->c:Lcn/sharesdk/framework/utils/a;

    invoke-virtual {v3, v0}, Lcn/sharesdk/framework/utils/a;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    .line 400
    iget-object v0, p0, Lcn/sharesdk/twitter/b;->d:Lcn/sharesdk/framework/a/a;

    const/4 v3, 0x0

    const-string v5, "/1.1/media/upload.json"

    invoke-virtual {p0}, Lcn/sharesdk/twitter/b;->c()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcn/sharesdk/framework/a/a;->a(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 401
    if-eqz p3, :cond_6c

    .line 402
    invoke-interface {p3, v0}, Lcn/sharesdk/twitter/UpLoadViewCallBack;->onResule(Ljava/lang/String;)V

    .line 404
    :cond_6c
    return-void

    .line 394
    :cond_6d
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v3, "media"

    invoke-direct {v0, v3, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_29
.end method

.method private a(Lcn/sharesdk/twitter/MappedFileReader;)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 406
    if-eqz p1, :cond_e

    .line 407
    invoke-virtual {p1}, Lcn/sharesdk/twitter/MappedFileReader;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_e

    .line 408
    invoke-virtual {p1}, Lcn/sharesdk/twitter/MappedFileReader;->getArray()[B

    move-result-object v0

    .line 411
    :goto_d
    return-object v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method static synthetic a(Lcn/sharesdk/twitter/b;Lcn/sharesdk/twitter/MappedFileReader;)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcn/sharesdk/twitter/b;->a(Lcn/sharesdk/twitter/MappedFileReader;)[B

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 362
    new-instance v0, Lcn/sharesdk/twitter/MappedFileReader;

    const/high16 v1, 0x80000

    invoke-direct {v0, p1, v1}, Lcn/sharesdk/twitter/MappedFileReader;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcn/sharesdk/twitter/b;->e:Lcn/sharesdk/twitter/MappedFileReader;

    .line 363
    iget-object v0, p0, Lcn/sharesdk/twitter/b;->e:Lcn/sharesdk/twitter/MappedFileReader;

    invoke-direct {p0, v0}, Lcn/sharesdk/twitter/b;->a(Lcn/sharesdk/twitter/MappedFileReader;)[B

    move-result-object v0

    .line 364
    if-nez v0, :cond_13

    .line 365
    const/4 v0, 0x0

    .line 383
    :goto_12
    return-object v0

    .line 367
    :cond_13
    invoke-static {v0}, Lcn/sharesdk/twitter/MappedFileReader;->byteToBase64([B)Ljava/lang/String;

    move-result-object v2

    .line 368
    new-instance v4, Lcn/sharesdk/twitter/b$1;

    invoke-direct {v4, p0, p2, p3, p4}, Lcn/sharesdk/twitter/b$1;-><init>(Lcn/sharesdk/twitter/b;Ljava/lang/String;J)V

    .line 382
    const/4 v3, 0x1

    move-object v1, p0

    move-object v5, p2

    move-wide v6, p3

    invoke-direct/range {v1 .. v7}, Lcn/sharesdk/twitter/b;->a(Ljava/lang/String;ZLcn/sharesdk/twitter/UpLoadViewCallBack;Ljava/lang/String;J)V

    .line 383
    const-string v0, "Done"

    goto :goto_12
.end method

.method private d(Ljava/lang/String;)Ljava/util/HashMap;
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

    .line 415
    const-string v1, "https://upload.twitter.com/1.1/media/upload.json"

    .line 416
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 417
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v4, "command"

    const-string v5, "FINALIZE"

    invoke-direct {v0, v4, v5}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v4, "media_id"

    invoke-direct {v0, v4, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 419
    iget-object v0, p0, Lcn/sharesdk/twitter/b;->c:Lcn/sharesdk/framework/utils/a;

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/framework/utils/a;->a(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 420
    iget-object v4, p0, Lcn/sharesdk/twitter/b;->c:Lcn/sharesdk/framework/utils/a;

    invoke-virtual {v4, v0}, Lcn/sharesdk/framework/utils/a;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    .line 421
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 422
    iget-object v0, p0, Lcn/sharesdk/twitter/b;->d:Lcn/sharesdk/framework/a/a;

    const-string v5, "/1.1/media/upload.json"

    invoke-virtual {p0}, Lcn/sharesdk/twitter/b;->c()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcn/sharesdk/framework/a/a;->a(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 423
    if-eqz v0, :cond_4b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4b

    .line 424
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    .line 426
    :cond_4b
    return-object v3
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    .prologue
    const/4 v7, 0x0

    .line 114
    :try_start_1
    const-string v1, "https://api.twitter.com/oauth/access_token"

    .line 115
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 116
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v3, "oauth_verifier"

    invoke-direct {v0, v3, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object v0, p0, Lcn/sharesdk/twitter/b;->c:Lcn/sharesdk/framework/utils/a;

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/framework/utils/a;->a(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 118
    iget-object v3, p0, Lcn/sharesdk/twitter/b;->c:Lcn/sharesdk/framework/utils/a;

    invoke-virtual {v3, v0}, Lcn/sharesdk/framework/utils/a;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    .line 119
    iget-object v0, p0, Lcn/sharesdk/twitter/b;->d:Lcn/sharesdk/framework/a/a;

    const/4 v3, 0x0

    const-string v5, "/oauth/access_token"

    .line 120
    invoke-virtual {p0}, Lcn/sharesdk/twitter/b;->c()I

    move-result v6

    .line 119
    invoke-virtual/range {v0 .. v6}, Lcn/sharesdk/framework/a/a;->a(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_2a} :catch_2c

    move-result-object v0

    .line 124
    :goto_2b
    return-object v0

    .line 121
    :catch_2c
    move-exception v0

    .line 122
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    move-object v0, v7

    .line 124
    goto :goto_2b
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/util/HashMap;
    .registers 11
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 476
    if-nez p2, :cond_4

    .line 517
    :cond_3
    :goto_3
    return-object v5

    .line 480
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 481
    if-eqz p3, :cond_3c

    invoke-virtual {p3}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_3c

    .line 482
    invoke-virtual {p3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 483
    new-instance v4, Lcom/mob/tools/network/KVPair;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v1, v0}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 488
    :cond_3c
    if-eqz p4, :cond_dc

    invoke-virtual {p4}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_dc

    .line 489
    invoke-virtual {p4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v0, v5

    :goto_4d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 490
    new-instance v3, Lcom/mob/tools/network/KVPair;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v3, v1, v0}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, v3

    .line 491
    goto :goto_4d

    :cond_6a
    move-object v3, v0

    .line 496
    :goto_6b
    const-string v0, "GET"

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 497
    iget-object v0, p0, Lcn/sharesdk/twitter/b;->c:Lcn/sharesdk/framework/utils/a;

    invoke-virtual {v0, p1, v2}, Lcn/sharesdk/framework/utils/a;->b(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 498
    iget-object v1, p0, Lcn/sharesdk/twitter/b;->c:Lcn/sharesdk/framework/utils/a;

    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/utils/a;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 499
    iget-object v1, p0, Lcn/sharesdk/twitter/b;->d:Lcn/sharesdk/framework/a/a;

    invoke-virtual {v1, p1, v2, v0, v5}, Lcn/sharesdk/framework/a/a;->httpGet(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object v0

    .line 514
    :goto_89
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 515
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v5

    goto/16 :goto_3

    .line 500
    :cond_9c
    const-string v0, "POST"

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_da

    .line 502
    if-eqz p4, :cond_b0

    invoke-virtual {p4}, Ljava/util/HashMap;->size()I

    move-result v0

    if-gtz v0, :cond_c4

    .line 503
    :cond_b0
    iget-object v0, p0, Lcn/sharesdk/twitter/b;->c:Lcn/sharesdk/framework/utils/a;

    invoke-virtual {v0, p1, v2}, Lcn/sharesdk/framework/utils/a;->a(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 504
    iget-object v1, p0, Lcn/sharesdk/twitter/b;->c:Lcn/sharesdk/framework/utils/a;

    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/utils/a;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    .line 511
    :goto_bc
    iget-object v0, p0, Lcn/sharesdk/twitter/b;->d:Lcn/sharesdk/framework/a/a;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcn/sharesdk/framework/a/a;->httpPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object v0

    goto :goto_89

    .line 506
    :cond_c4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 507
    iget-object v1, p0, Lcn/sharesdk/twitter/b;->c:Lcn/sharesdk/framework/utils/a;

    invoke-virtual {v1, p1, v0}, Lcn/sharesdk/framework/utils/a;->a(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 508
    iget-object v1, p0, Lcn/sharesdk/twitter/b;->c:Lcn/sharesdk/framework/utils/a;

    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/utils/a;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    .line 509
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_bc

    :cond_da
    move-object v0, v5

    goto :goto_89

    :cond_dc
    move-object v3, v5

    goto :goto_6b
.end method

.method public a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/HashMap;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
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
    const/4 v8, 0x0

    .line 243
    const-string v1, "https://upload.twitter.com/1.1/media/upload.json"

    .line 244
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 245
    iget-object v0, p0, Lcn/sharesdk/twitter/b;->c:Lcn/sharesdk/framework/utils/a;

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/framework/utils/a;->a(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 246
    iget-object v3, p0, Lcn/sharesdk/twitter/b;->c:Lcn/sharesdk/framework/utils/a;

    invoke-virtual {v3, v0}, Lcn/sharesdk/framework/utils/a;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    .line 247
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 249
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 250
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move v7, v8

    .line 255
    :goto_23
    array-length v0, p2

    if-ge v7, v0, :cond_2f

    .line 256
    if-eqz v10, :cond_67

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x3

    if-le v0, v3, :cond_67

    .line 281
    :cond_2f
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 282
    :goto_32
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_db

    .line 283
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "image"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 284
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_51

    .line 285
    const/16 v0, 0x2c

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 287
    :cond_51
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "media_id"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    :cond_64
    add-int/lit8 v8, v8, 0x1

    goto :goto_32

    .line 261
    :cond_67
    :try_start_67
    aget-object v0, p2, v7

    .line 262
    const-string v3, "http"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ba

    .line 263
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/mob/tools/utils/BitmapHelper;->downloadBitmap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 267
    :cond_79
    new-instance v3, Lcom/mob/tools/network/KVPair;

    const-string v5, "media"

    invoke-direct {v3, v5, v0}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 270
    iget-object v0, p0, Lcn/sharesdk/twitter/b;->d:Lcn/sharesdk/framework/a/a;

    const-string v5, "/1.1/media/upload.json"

    invoke-virtual {p0}, Lcn/sharesdk/twitter/b;->c()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcn/sharesdk/framework/a/a;->a(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 271
    aget-object v3, p2, v7

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ": "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    if-eqz v0, :cond_b5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_b5

    .line 273
    new-instance v3, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v3}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v3, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 274
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    :cond_b5
    :goto_b5
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto/16 :goto_23

    .line 264
    :cond_ba
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b5

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    :try_end_c8
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_c8} :catch_cc

    move-result v3

    if-nez v3, :cond_79

    goto :goto_b5

    .line 276
    :catch_cc
    move-exception v0

    .line 277
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v5}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_b5

    .line 291
    :cond_db
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcn/sharesdk/twitter/b;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V
    .registers 2

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Lcn/sharesdk/twitter/b;->b(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    .line 110
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 53
    iget-object v0, p0, Lcn/sharesdk/twitter/b;->c:Lcn/sharesdk/framework/utils/a;

    invoke-virtual {v0, p1, p2}, Lcn/sharesdk/framework/utils/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 49
    iget-object v0, p0, Lcn/sharesdk/twitter/b;->c:Lcn/sharesdk/framework/utils/a;

    invoke-virtual {v0, p1, p2, p3}, Lcn/sharesdk/framework/utils/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public b(Ljava/lang/String;)Ljava/util/HashMap;
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 128
    const-string v1, "https://api.twitter.com/1.1/users/show.json"

    .line 129
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 130
    const-wide/16 v6, 0x0

    .line 132
    :try_start_a
    invoke-static {p1}, Lcom/mob/tools/utils/ResHelper;->parseLong(Ljava/lang/String;)J
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_d} :catch_4e

    move-result-wide v6

    .line 136
    :goto_e
    if-nez p1, :cond_51

    iget-object v0, p0, Lcn/sharesdk/twitter/b;->a:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    invoke-virtual {v0}, Lcn/sharesdk/framework/PlatformDb;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 137
    :goto_1a
    new-instance v3, Lcom/mob/tools/network/KVPair;

    const-string v5, "user_id"

    invoke-direct {v3, v5, v0}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    iget-object v0, p0, Lcn/sharesdk/twitter/b;->c:Lcn/sharesdk/framework/utils/a;

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/framework/utils/a;->b(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 139
    iget-object v3, p0, Lcn/sharesdk/twitter/b;->c:Lcn/sharesdk/framework/utils/a;

    invoke-virtual {v3, v0}, Lcn/sharesdk/framework/utils/a;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    .line 141
    iget-object v0, p0, Lcn/sharesdk/twitter/b;->d:Lcn/sharesdk/framework/a/a;

    const-string v5, "/1.1/users/show.json"

    .line 142
    invoke-virtual {p0}, Lcn/sharesdk/twitter/b;->c()I

    move-result v6

    .line 141
    invoke-virtual/range {v0 .. v6}, Lcn/sharesdk/framework/a/a;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 143
    if-eqz v0, :cond_4d

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4d

    .line 144
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    .line 146
    :cond_4d
    return-object v4

    .line 133
    :catch_4e
    move-exception v0

    move-object p1, v4

    .line 134
    goto :goto_e

    .line 136
    :cond_51
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_1a
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
    const/4 v4, 0x0

    .line 156
    const-string v1, "https://api.twitter.com/1.1/friends/list.json"

    .line 157
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 158
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v3, "nextCursor"

    invoke-direct {v0, v3, p2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    const/4 v0, 0x1

    .line 161
    :try_start_13
    invoke-static {p1}, Lcom/mob/tools/utils/ResHelper;->parseLong(Ljava/lang/String;)J
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_16} :catch_4c

    .line 165
    :goto_16
    if-eqz v0, :cond_4f

    .line 166
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v3, "user_id"

    invoke-direct {v0, v3, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    :goto_22
    iget-object v0, p0, Lcn/sharesdk/twitter/b;->c:Lcn/sharesdk/framework/utils/a;

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/framework/utils/a;->b(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 172
    iget-object v3, p0, Lcn/sharesdk/twitter/b;->c:Lcn/sharesdk/framework/utils/a;

    invoke-virtual {v3, v0}, Lcn/sharesdk/framework/utils/a;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    .line 174
    iget-object v0, p0, Lcn/sharesdk/twitter/b;->d:Lcn/sharesdk/framework/a/a;

    const-string v5, "/1.1/friends/list.json"

    invoke-virtual {p0}, Lcn/sharesdk/twitter/b;->c()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcn/sharesdk/framework/a/a;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 175
    if-eqz v0, :cond_4b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4b

    .line 176
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    .line 178
    :cond_4b
    return-object v4

    .line 162
    :catch_4c
    move-exception v0

    .line 163
    const/4 v0, 0x0

    goto :goto_16

    .line 168
    :cond_4f
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v3, "screen_name"

    invoke-direct {v0, v3, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22
.end method

.method public c(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 3
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
    .line 215
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcn/sharesdk/twitter/b;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
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
    const/4 v4, 0x0

    .line 189
    const-string v1, "https://api.twitter.com/1.1/followers/list.json"

    .line 190
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 191
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v3, "nextCursor"

    invoke-direct {v0, v3, p2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    const/4 v0, 0x1

    .line 194
    :try_start_13
    invoke-static {p1}, Lcom/mob/tools/utils/ResHelper;->parseLong(Ljava/lang/String;)J
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_16} :catch_4c

    .line 198
    :goto_16
    if-eqz v0, :cond_4f

    .line 199
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v3, "user_id"

    invoke-direct {v0, v3, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    :goto_22
    iget-object v0, p0, Lcn/sharesdk/twitter/b;->c:Lcn/sharesdk/framework/utils/a;

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/framework/utils/a;->b(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 205
    iget-object v3, p0, Lcn/sharesdk/twitter/b;->c:Lcn/sharesdk/framework/utils/a;

    invoke-virtual {v3, v0}, Lcn/sharesdk/framework/utils/a;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    .line 207
    iget-object v0, p0, Lcn/sharesdk/twitter/b;->d:Lcn/sharesdk/framework/a/a;

    const-string v5, "/1.1/followers/list.json"

    invoke-virtual {p0}, Lcn/sharesdk/twitter/b;->c()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcn/sharesdk/framework/a/a;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 208
    if-eqz v0, :cond_4b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4b

    .line 209
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    .line 211
    :cond_4b
    return-object v4

    .line 195
    :catch_4c
    move-exception v0

    .line 196
    const/4 v0, 0x0

    goto :goto_16

    .line 201
    :cond_4f
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v3, "screen_name"

    invoke-direct {v0, v3, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
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

    .line 219
    const-string v1, "https://api.twitter.com/1.1/statuses/update.json"

    .line 220
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 221
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v4, "status"

    invoke-direct {v0, v4, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 223
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v4, "media_ids"

    invoke-direct {v0, v4, p2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    :cond_22
    iget-object v0, p0, Lcn/sharesdk/twitter/b;->c:Lcn/sharesdk/framework/utils/a;

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/framework/utils/a;->a(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 226
    iget-object v4, p0, Lcn/sharesdk/twitter/b;->c:Lcn/sharesdk/framework/utils/a;

    invoke-virtual {v4, v0}, Lcn/sharesdk/framework/utils/a;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    .line 228
    iget-object v0, p0, Lcn/sharesdk/twitter/b;->d:Lcn/sharesdk/framework/a/a;

    const-string v5, "/1.1/statuses/update.json"

    invoke-virtual {p0}, Lcn/sharesdk/twitter/b;->c()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcn/sharesdk/framework/a/a;->a(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 229
    if-eqz v0, :cond_4b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4b

    .line 230
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    .line 232
    :cond_4b
    return-object v3
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
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
    .line 303
    const-string v1, "https://api.twitter.com/1.1/statuses/update_with_media.json"

    .line 304
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 305
    iget-object v0, p0, Lcn/sharesdk/twitter/b;->c:Lcn/sharesdk/framework/utils/a;

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/framework/utils/a;->a(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 306
    iget-object v3, p0, Lcn/sharesdk/twitter/b;->c:Lcn/sharesdk/framework/utils/a;

    invoke-virtual {v3, v0}, Lcn/sharesdk/framework/utils/a;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    .line 307
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 308
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v3, "status"

    invoke-direct {v0, v3, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    new-instance v3, Lcom/mob/tools/network/KVPair;

    const-string v0, "media[]"

    invoke-direct {v3, v0, p2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 310
    iget-object v0, p0, Lcn/sharesdk/twitter/b;->d:Lcn/sharesdk/framework/a/a;

    const-string v5, "/1.1/statuses/update_with_media.json"

    invoke-virtual {p0}, Lcn/sharesdk/twitter/b;->c()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcn/sharesdk/framework/a/a;->a(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 311
    if-eqz v0, :cond_46

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_46

    .line 312
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 314
    :goto_45
    return-object v0

    :cond_46
    const/4 v0, 0x0

    goto :goto_45
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .registers 7
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
    .line 318
    invoke-static {p2}, Lcom/mob/tools/utils/ResHelper;->getFileSize(Ljava/lang/String;)J

    move-result-wide v2

    .line 319
    const/4 v0, 0x0

    iput v0, p0, Lcn/sharesdk/twitter/b;->f:I

    .line 320
    invoke-direct {p0, p1, p2, v2, v3}, Lcn/sharesdk/twitter/b;->a(Ljava/lang/String;Ljava/lang/String;J)Ljava/util/HashMap;

    move-result-object v0

    .line 321
    if-eqz v0, :cond_26

    .line 322
    const-string v1, "media_id_string"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 323
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 324
    invoke-direct {p0, p2, v0, v2, v3}, Lcn/sharesdk/twitter/b;->b(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    .line 325
    if-eqz v1, :cond_26

    .line 326
    invoke-direct {p0, v0, v2, v3, p1}, Lcn/sharesdk/twitter/b;->a(Ljava/lang/String;JLjava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 330
    :goto_25
    return-object v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method

.method public getAuthorizeUrl()Ljava/lang/String;
    .registers 10

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 62
    :try_start_2
    const-string v1, "https://api.twitter.com/oauth/request_token"

    .line 63
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 64
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v3, "oauth_callback"

    invoke-virtual {p0}, Lcn/sharesdk/twitter/b;->getRedirectUri()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcn/sharesdk/twitter/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcn/sharesdk/twitter/b;->c:Lcn/sharesdk/framework/utils/a;

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/framework/utils/a;->a(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 67
    iget-object v3, p0, Lcn/sharesdk/twitter/b;->c:Lcn/sharesdk/framework/utils/a;

    invoke-virtual {v3, v0}, Lcn/sharesdk/framework/utils/a;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    .line 68
    iget-object v0, p0, Lcn/sharesdk/twitter/b;->d:Lcn/sharesdk/framework/a/a;

    const/4 v3, 0x0

    const-string v5, "/oauth/request_token"

    .line 69
    invoke-virtual {p0}, Lcn/sharesdk/twitter/b;->c()I

    move-result v6

    .line 68
    invoke-virtual/range {v0 .. v6}, Lcn/sharesdk/framework/a/a;->a(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 70
    if-nez v0, :cond_39

    move-object v0, v7

    .line 100
    :goto_38
    return-object v0

    .line 74
    :cond_39
    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 75
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 76
    array-length v3, v1

    move v0, v8

    :goto_46
    if-ge v0, v3, :cond_6d

    aget-object v4, v1, v0

    .line 77
    if-nez v4, :cond_4f

    .line 76
    :cond_4c
    :goto_4c
    add-int/lit8 v0, v0, 0x1

    goto :goto_46

    .line 81
    :cond_4f
    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 82
    array-length v5, v4

    const/4 v6, 0x2

    if-lt v5, v6, :cond_4c

    .line 86
    const/4 v5, 0x0

    aget-object v5, v4, v5

    const/4 v6, 0x1

    aget-object v4, v4, v6

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_62} :catch_63

    goto :goto_4c

    .line 97
    :catch_63
    move-exception v0

    .line 98
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_6b
    move-object v0, v7

    .line 100
    goto :goto_38

    .line 89
    :cond_6d
    :try_start_6d
    const-string v0, "oauth_token"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 90
    const-string v0, "oauth_token"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 91
    const-string v1, "oauth_token_secret"

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 92
    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/twitter/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v1, "/oauth/authorize"

    invoke-virtual {p0}, Lcn/sharesdk/twitter/b;->c()I

    move-result v2

    invoke-static {v1, v2}, Lcn/sharesdk/framework/ShareSDK;->logApiEvent(Ljava/lang/String;I)V

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://api.twitter.com/oauth/authorize?oauth_token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_a3
    .catch Ljava/lang/Throwable; {:try_start_6d .. :try_end_a3} :catch_63

    move-result-object v0

    goto :goto_38
.end method

.method public getAuthorizeWebviewClient(Lcn/sharesdk/framework/authorize/e;)Lcn/sharesdk/framework/authorize/b;
    .registers 3
    .param p1, "webAct"    # Lcn/sharesdk/framework/authorize/e;

    .prologue
    .line 105
    new-instance v0, Lcn/sharesdk/twitter/a;

    invoke-direct {v0, p1}, Lcn/sharesdk/twitter/a;-><init>(Lcn/sharesdk/framework/authorize/e;)V

    return-object v0
.end method

.method public getRedirectUri()Ljava/lang/String;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcn/sharesdk/twitter/b;->c:Lcn/sharesdk/framework/utils/a;

    invoke-virtual {v0}, Lcn/sharesdk/framework/utils/a;->a()Lcn/sharesdk/framework/utils/a$b;

    move-result-object v0

    iget-object v0, v0, Lcn/sharesdk/framework/utils/a$b;->e:Ljava/lang/String;

    return-object v0
.end method
