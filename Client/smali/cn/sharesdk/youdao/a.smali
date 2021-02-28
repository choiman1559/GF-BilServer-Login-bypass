.class public Lcn/sharesdk/youdao/a;
.super Lcn/sharesdk/framework/b;
.source "YouDaoHelper.java"


# static fields
.field private static b:Lcn/sharesdk/youdao/a;


# instance fields
.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lcn/sharesdk/framework/a/a;

.field private i:Lcn/sharesdk/framework/utils/b;


# direct methods
.method private constructor <init>(Lcn/sharesdk/framework/Platform;)V
    .registers 5

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/b;-><init>(Lcn/sharesdk/framework/Platform;)V

    .line 65
    new-instance v0, Lcn/sharesdk/framework/utils/b;

    const-string v1, "-._~"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/sharesdk/framework/utils/b;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcn/sharesdk/youdao/a;->i:Lcn/sharesdk/framework/utils/b;

    .line 66
    invoke-static {}, Lcn/sharesdk/framework/a/a;->a()Lcn/sharesdk/framework/a/a;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/youdao/a;->h:Lcn/sharesdk/framework/a/a;

    .line 67
    return-void
.end method

.method public static a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/youdao/a;
    .registers 2

    .prologue
    .line 57
    sget-object v0, Lcn/sharesdk/youdao/a;->b:Lcn/sharesdk/youdao/a;

    if-nez v0, :cond_b

    .line 58
    new-instance v0, Lcn/sharesdk/youdao/a;

    invoke-direct {v0, p0}, Lcn/sharesdk/youdao/a;-><init>(Lcn/sharesdk/framework/Platform;)V

    sput-object v0, Lcn/sharesdk/youdao/a;->b:Lcn/sharesdk/youdao/a;

    .line 60
    :cond_b
    sget-object v0, Lcn/sharesdk/youdao/a;->b:Lcn/sharesdk/youdao/a;

    return-object v0
.end method

.method private a(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 580
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 581
    if-eqz p1, :cond_4b

    .line 582
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_68

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mob/tools/network/KVPair;

    .line 583
    const-string v3, "Content-Type"

    iget-object v4, v0, Lcom/mob/tools/network/KVPair;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 584
    new-instance v3, Lcom/mob/tools/network/KVPair;

    const-string v4, "Content-Type"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "; boundary="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 586
    :cond_47
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 590
    :cond_4b
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v2, "Content-Type"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "multipart/form-data; boundary="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 592
    :cond_68
    return-object v1
.end method

.method private b(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/mob/tools/network/StringPart;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/mob/tools/network/StringPart;"
        }
    .end annotation

    .prologue
    .line 596
    new-instance v1, Lcom/mob/tools/network/StringPart;

    invoke-direct {v1}, Lcom/mob/tools/network/StringPart;-><init>()V

    .line 597
    if-eqz p1, :cond_46

    .line 598
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mob/tools/network/KVPair;

    .line 599
    const-string v3, "--"

    invoke-virtual {v1, v3}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    .line 600
    const-string v3, "Content-Disposition: form-data; name=\""

    invoke-virtual {v1, v3}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    move-result-object v3

    iget-object v4, v0, Lcom/mob/tools/network/KVPair;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    move-result-object v3

    const-string v4, "\"\r\n\r\n"

    invoke-virtual {v3, v4}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    move-result-object v3

    iget-object v0, v0, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    move-result-object v0

    const-string v3, "\r\n"

    invoke-virtual {v0, v3}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    goto :goto_b

    .line 603
    :cond_46
    const-string v0, "--"

    invoke-virtual {v1, v0}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    move-result-object v0

    const-string v2, "--\r\n"

    invoke-virtual {v0, v2}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    .line 604
    return-object v1
.end method

.method private b(Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 312
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_b

    .line 313
    :cond_8
    const-string v0, ""

    .line 325
    :goto_a
    return-object v0

    .line 316
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 317
    const/4 v0, 0x0

    .line 318
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mob/tools/network/KVPair;

    .line 319
    if-lez v1, :cond_29

    .line 320
    const/16 v4, 0x26

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 322
    :cond_29
    iget-object v4, v0, Lcom/mob/tools/network/KVPair;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x3d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, v0, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 324
    goto :goto_16

    .line 325
    :cond_40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/sharesdk/youdao/a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method private c(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 341
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "OAuth "

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 342
    const/4 v0, 0x0

    .line 343
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    :goto_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mob/tools/network/KVPair;

    .line 344
    if-lez v2, :cond_25

    .line 345
    const/16 v1, 0x2c

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 346
    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    :cond_25
    iget-object v1, v0, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcn/sharesdk/youdao/a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 349
    iget-object v0, v0, Lcom/mob/tools/network/KVPair;->name:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "=\""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    .line 351
    goto :goto_d

    .line 353
    :cond_46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 354
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "Authorization"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    return-object v0
.end method


# virtual methods
.method public a(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 608
    if-nez p1, :cond_5

    .line 609
    const-string v0, ""

    .line 620
    :goto_4
    return-object v0

    .line 612
    :cond_5
    new-instance v1, Ljava/io/InputStreamReader;

    const-string v0, "UTF-8"

    invoke-direct {v1, p1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 613
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 614
    const/16 v0, 0x400

    new-array v3, v0, [C

    .line 615
    invoke-virtual {v1, v3}, Ljava/io/Reader;->read([C)I

    move-result v0

    .line 616
    :goto_19
    const/4 v4, -0x1

    if-eq v0, v4, :cond_25

    .line 617
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 618
    invoke-virtual {v1, v3}, Ljava/io/Reader;->read([C)I

    move-result v0

    goto :goto_19

    .line 620
    :cond_25
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method public a()Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 415
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 417
    iget-object v1, p0, Lcn/sharesdk/youdao/a;->g:Ljava/lang/String;

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcn/sharesdk/youdao/a;->g:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1d

    .line 418
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "oauth_token"

    iget-object v3, p0, Lcn/sharesdk/youdao/a;->g:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    :cond_1d
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "oauth_consumer_key"

    iget-object v3, p0, Lcn/sharesdk/youdao/a;->c:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "oauth_signature_method"

    const-string v3, "HMAC-SHA1"

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 424
    new-instance v2, Lcom/mob/tools/network/KVPair;

    const-string v3, "oauth_timestamp"

    invoke-direct {v2, v3, v1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 425
    new-instance v2, Lcom/mob/tools/network/KVPair;

    const-string v3, "oauth_nonce"

    invoke-direct {v2, v3, v1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "oauth_version"

    const-string v3, "2.0"

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    return-object v0
.end method

.method public a(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 377
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 378
    if-eqz p1, :cond_2a

    .line 379
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mob/tools/network/KVPair;

    .line 380
    iget-object v4, v0, Lcom/mob/tools/network/KVPair;->name:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcn/sharesdk/youdao/a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 381
    iget-object v0, v0, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcn/sharesdk/youdao/a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 382
    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    .line 386
    :cond_2a
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v0

    new-array v4, v0, [Ljava/lang/String;

    .line 388
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_39
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 389
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v4, v1

    .line 390
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 391
    goto :goto_39

    .line 392
    :cond_51
    invoke-static {v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 394
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 395
    array-length v1, v4

    :goto_5a
    if-ge v2, v1, :cond_6d

    aget-object v5, v4, v2

    .line 396
    new-instance v6, Lcom/mob/tools/network/KVPair;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    add-int/lit8 v2, v2, 0x1

    goto :goto_5a

    .line 399
    :cond_6d
    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .registers 15
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
    const/4 v7, 0x0

    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/sharesdk/youdao/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/yws/open/note/create.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 442
    invoke-virtual {p0}, Lcn/sharesdk/youdao/a;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 443
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 445
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2f

    .line 446
    new-instance v2, Lcom/mob/tools/network/KVPair;

    const-string v4, "title"

    invoke-direct {v2, v4, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 448
    :cond_2f
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3f

    .line 449
    new-instance v2, Lcom/mob/tools/network/KVPair;

    const-string v4, "author"

    invoke-direct {v2, v4, p3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 451
    :cond_3f
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4f

    .line 452
    new-instance v2, Lcom/mob/tools/network/KVPair;

    const-string v4, "source"

    invoke-direct {v2, v4, p4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 454
    :cond_4f
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5f

    .line 455
    new-instance v2, Lcom/mob/tools/network/KVPair;

    const-string v4, "notebook"

    invoke-direct {v2, v4, p5}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 457
    :cond_5f
    new-instance v2, Lcom/mob/tools/network/KVPair;

    const-string v4, "content"

    invoke-direct {v2, v4, p2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 460
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "POST&"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcn/sharesdk/youdao/a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "&"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcn/sharesdk/youdao/a;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {p0, v4}, Lcn/sharesdk/youdao/a;->b(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 461
    invoke-virtual {p0, v2}, Lcn/sharesdk/youdao/a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 464
    new-instance v4, Lcom/mob/tools/network/KVPair;

    const-string v5, "oauth_signature"

    invoke-direct {v4, v5, v2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    invoke-direct {p0, v0}, Lcn/sharesdk/youdao/a;->c(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 466
    new-instance v2, Lcom/mob/tools/network/KVPair;

    const-string v4, "Content-Type"

    const-string v5, "multipart/form-data"

    invoke-direct {v2, v4, v5}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 468
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    .line 469
    invoke-direct {p0, v0, v4}, Lcn/sharesdk/youdao/a;->a(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 470
    invoke-direct {p0, v3, v4}, Lcn/sharesdk/youdao/a;->b(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    move-result-object v3

    .line 471
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 472
    iget-object v0, p0, Lcn/sharesdk/youdao/a;->h:Lcn/sharesdk/framework/a/a;

    new-instance v4, Lcn/sharesdk/youdao/a$1;

    invoke-direct {v4, p0, v8}, Lcn/sharesdk/youdao/a$1;-><init>(Lcn/sharesdk/youdao/a;Ljava/util/HashMap;)V

    const-string v5, "/yws/open/note/create.json"

    .line 477
    invoke-virtual {p0}, Lcn/sharesdk/youdao/a;->c()I

    move-result v6

    .line 472
    invoke-virtual/range {v0 .. v6}, Lcn/sharesdk/framework/a/a;->a(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/HTTPPart;Lcom/mob/tools/network/RawNetworkCallback;Ljava/lang/String;I)V

    .line 478
    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v0

    if-gtz v0, :cond_dd

    move-object v0, v7

    .line 486
    :goto_dc
    return-object v0

    .line 482
    :cond_dd
    const-string v0, "resp"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 483
    if-eqz v0, :cond_f7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_f7

    .line 484
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    goto :goto_dc

    :cond_f7
    move-object v0, v7

    .line 486
    goto :goto_dc
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 519
    if-nez p2, :cond_4

    .line 576
    :cond_3
    :goto_3
    return-object v5

    .line 524
    :cond_4
    const-string v0, "GET"

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 525
    invoke-virtual {p0}, Lcn/sharesdk/youdao/a;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 528
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GET&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcn/sharesdk/youdao/a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcn/sharesdk/youdao/a;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, v2}, Lcn/sharesdk/youdao/a;->b(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 529
    invoke-virtual {p0, v1}, Lcn/sharesdk/youdao/a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 531
    new-instance v2, Lcom/mob/tools/network/KVPair;

    const-string v3, "oauth_signature"

    invoke-direct {v2, v3, v1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 533
    invoke-direct {p0, v0}, Lcn/sharesdk/youdao/a;->c(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 534
    iget-object v1, p0, Lcn/sharesdk/youdao/a;->h:Lcn/sharesdk/framework/a/a;

    invoke-virtual {v1, p1, v5, v0, v5}, Lcn/sharesdk/framework/a/a;->httpGet(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object v0

    .line 536
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 537
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v5

    goto :goto_3

    .line 539
    :cond_67
    const-string v0, "POST"

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 540
    invoke-virtual {p0}, Lcn/sharesdk/youdao/a;->a()Ljava/util/ArrayList;

    move-result-object v2

    .line 541
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 542
    if-eqz p3, :cond_af

    invoke-virtual {p3}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_af

    .line 543
    invoke-virtual {p3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_af

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 544
    new-instance v6, Lcom/mob/tools/network/KVPair;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v1, v0}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8c

    .line 549
    :cond_af
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "POST&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcn/sharesdk/youdao/a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v2}, Lcn/sharesdk/youdao/a;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v1}, Lcn/sharesdk/youdao/a;->b(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 550
    invoke-virtual {p0, v0}, Lcn/sharesdk/youdao/a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 553
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v4, "oauth_signature"

    invoke-direct {v1, v4, v0}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 554
    invoke-direct {p0, v2}, Lcn/sharesdk/youdao/a;->c(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 555
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "Content-Type"

    const-string v4, "multipart/form-data"

    invoke-direct {v1, v2, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 557
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 558
    invoke-direct {p0, v0, v1}, Lcn/sharesdk/youdao/a;->a(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 559
    invoke-direct {p0, v3, v1}, Lcn/sharesdk/youdao/a;->b(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    move-result-object v3

    .line 560
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 561
    iget-object v0, p0, Lcn/sharesdk/youdao/a;->h:Lcn/sharesdk/framework/a/a;

    new-instance v4, Lcn/sharesdk/youdao/a$2;

    invoke-direct {v4, p0, v6}, Lcn/sharesdk/youdao/a$2;-><init>(Lcn/sharesdk/youdao/a;Ljava/util/HashMap;)V

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcn/sharesdk/framework/a/a;->rawPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/HTTPPart;Lcom/mob/tools/network/RawNetworkCallback;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V

    .line 566
    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 570
    const-string v0, "resp"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 571
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 572
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v5

    goto/16 :goto_3
.end method

.method public a(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V
    .registers 2

    .prologue
    .line 101
    invoke-virtual {p0, p1}, Lcn/sharesdk/youdao/a;->b(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    .line 102
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 75
    const-string v0, "sandbox"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 76
    const-string v0, "https://sandbox.note.youdao.com"

    iput-object v0, p0, Lcn/sharesdk/youdao/a;->f:Ljava/lang/String;

    .line 80
    :goto_c
    return-void

    .line 78
    :cond_d
    const-string v0, "https://note.youdao.com"

    iput-object v0, p0, Lcn/sharesdk/youdao/a;->f:Ljava/lang/String;

    goto :goto_c
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 70
    iput-object p1, p0, Lcn/sharesdk/youdao/a;->c:Ljava/lang/String;

    .line 71
    iput-object p2, p0, Lcn/sharesdk/youdao/a;->d:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 83
    iput-object p1, p0, Lcn/sharesdk/youdao/a;->e:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 91
    iput-object p1, p0, Lcn/sharesdk/youdao/a;->g:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 121
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "client_id"

    iget-object v3, p0, Lcn/sharesdk/youdao/a;->c:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "client_secret"

    iget-object v3, p0, Lcn/sharesdk/youdao/a;->d:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "redirect_uri"

    iget-object v3, p0, Lcn/sharesdk/youdao/a;->e:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "grant_type"

    const-string v3, "authorization_code"

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "code"

    invoke-direct {v1, v2, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/sharesdk/youdao/a;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/oauth/access2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 128
    iget-object v2, p0, Lcn/sharesdk/youdao/a;->h:Lcn/sharesdk/framework/a/a;

    const-string v3, "/oauth/access2"

    invoke-virtual {p0}, Lcn/sharesdk/youdao/a;->c()I

    move-result v4

    invoke-virtual {v2, v1, v0, v3, v4}, Lcn/sharesdk/framework/a/a;->b(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 129
    if-eqz v0, :cond_69

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_69

    .line 132
    :goto_68
    return-object v0

    :cond_69
    const-string v0, "{}"

    goto :goto_68
.end method

.method public e(Ljava/lang/String;)Ljava/util/HashMap;
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

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/sharesdk/youdao/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/yws/open/user/get.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 145
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 146
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v4, "oauth_token"

    iget-object v5, p0, Lcn/sharesdk/youdao/a;->g:Ljava/lang/String;

    invoke-direct {v0, v4, v5}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    iget-object v0, p0, Lcn/sharesdk/youdao/a;->h:Lcn/sharesdk/framework/a/a;

    const-string v5, "/yws/open/user/get.json"

    invoke-virtual {p0}, Lcn/sharesdk/youdao/a;->c()I

    move-result v6

    move-object v4, v3

    invoke-virtual/range {v0 .. v6}, Lcn/sharesdk/framework/a/a;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 156
    if-eqz v0, :cond_45

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_45

    .line 157
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    .line 159
    :cond_45
    return-object v3
.end method

.method public f(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/sharesdk/youdao/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 331
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "utf-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const-string v2, "HMAC-SHA1"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 332
    const-string v0, "HMAC-SHA1"

    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 333
    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 335
    new-instance v1, Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 336
    return-object v1
.end method

.method public g(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 365
    if-nez p1, :cond_5

    .line 366
    const-string v0, ""

    .line 368
    :goto_4
    return-object v0

    :cond_5
    iget-object v0, p0, Lcn/sharesdk/youdao/a;->i:Lcn/sharesdk/framework/utils/b;

    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/utils/b;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method public getAuthorizeUrl()Ljava/lang/String;
    .registers 5

    .prologue
    const/16 v3, 0x26

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    const-string v1, "/oauth/authorize2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 108
    const-string v1, "client_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/sharesdk/youdao/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 109
    const-string v1, "response_type=code&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    const-string v1, "redirect_uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/sharesdk/youdao/a;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 111
    const-string v1, "state=state&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    const-string v1, "display=mobile"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    const-string v1, "/oauth/authorize2"

    invoke-virtual {p0}, Lcn/sharesdk/youdao/a;->c()I

    move-result v2

    invoke-static {v1, v2}, Lcn/sharesdk/framework/ShareSDK;->logApiEvent(Ljava/lang/String;I)V

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/sharesdk/youdao/a;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAuthorizeWebviewClient(Lcn/sharesdk/framework/authorize/e;)Lcn/sharesdk/framework/authorize/b;
    .registers 3
    .param p1, "webAct"    # Lcn/sharesdk/framework/authorize/e;

    .prologue
    .line 96
    new-instance v0, Lcn/sharesdk/youdao/b;

    invoke-direct {v0, p1}, Lcn/sharesdk/youdao/b;-><init>(Lcn/sharesdk/framework/authorize/e;)V

    return-object v0
.end method

.method public getRedirectUri()Ljava/lang/String;
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcn/sharesdk/youdao/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)Ljava/util/HashMap;
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
    const/4 v2, 0x0

    .line 497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/sharesdk/youdao/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/yws/open/resource/upload.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 498
    invoke-virtual {p0}, Lcn/sharesdk/youdao/a;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 501
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "POST&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v1}, Lcn/sharesdk/youdao/a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v0}, Lcn/sharesdk/youdao/a;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {p0, v4}, Lcn/sharesdk/youdao/a;->b(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 502
    invoke-virtual {p0, v3}, Lcn/sharesdk/youdao/a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 505
    new-instance v4, Lcom/mob/tools/network/KVPair;

    const-string v5, "oauth_signature"

    invoke-direct {v4, v5, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    invoke-direct {p0, v0}, Lcn/sharesdk/youdao/a;->c(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    .line 507
    new-instance v3, Lcom/mob/tools/network/KVPair;

    const-string v0, "file"

    invoke-direct {v3, v0, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 509
    iget-object v0, p0, Lcn/sharesdk/youdao/a;->h:Lcn/sharesdk/framework/a/a;

    const-string v6, "/yws/open/resource/upload.json"

    invoke-virtual {p0}, Lcn/sharesdk/youdao/a;->c()I

    move-result v7

    move-object v5, v2

    invoke-virtual/range {v0 .. v7}, Lcn/sharesdk/framework/a/a;->a(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 510
    if-eqz v0, :cond_7a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_7a

    .line 511
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    .line 513
    :cond_7a
    return-object v2
.end method
