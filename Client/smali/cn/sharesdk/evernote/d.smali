.class public Lcn/sharesdk/evernote/d;
.super Lcn/sharesdk/framework/b;
.source "EvernoteHelper.java"


# static fields
.field private static b:Lcn/sharesdk/evernote/d;


# instance fields
.field private c:Lcn/sharesdk/framework/utils/a;

.field private d:Ljava/lang/String;

.field private e:Lcn/sharesdk/evernote/a;


# direct methods
.method private constructor <init>(Lcn/sharesdk/framework/Platform;)V
    .registers 3

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/b;-><init>(Lcn/sharesdk/framework/Platform;)V

    .line 52
    new-instance v0, Lcn/sharesdk/framework/utils/a;

    invoke-direct {v0}, Lcn/sharesdk/framework/utils/a;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/evernote/d;->c:Lcn/sharesdk/framework/utils/a;

    .line 53
    return-void
.end method

.method public static a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/evernote/d;
    .registers 2

    .prologue
    .line 44
    sget-object v0, Lcn/sharesdk/evernote/d;->b:Lcn/sharesdk/evernote/d;

    if-nez v0, :cond_b

    .line 45
    new-instance v0, Lcn/sharesdk/evernote/d;

    invoke-direct {v0, p0}, Lcn/sharesdk/evernote/d;-><init>(Lcn/sharesdk/framework/Platform;)V

    sput-object v0, Lcn/sharesdk/evernote/d;->b:Lcn/sharesdk/evernote/d;

    .line 47
    :cond_b
    sget-object v0, Lcn/sharesdk/evernote/d;->b:Lcn/sharesdk/evernote/d;

    return-object v0
.end method

.method private a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/sharesdk/evernote/e",
            "<*>;>;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 474
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "<?xml version=\"1.0\" encoding=\"UTF-8\"?><!DOCTYPE en-note SYSTEM \"http://xml.evernote.com/pub/enml2.dtd\"><en-note>"

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 475
    if-eqz p1, :cond_9f

    .line 476
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/sharesdk/evernote/e;

    .line 477
    const-string v1, "<p>"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    iget-object v1, v0, Lcn/sharesdk/evernote/e;->a:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_33

    .line 479
    iget-object v0, v0, Lcn/sharesdk/evernote/e;->a:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    :cond_2d
    :goto_2d
    const-string v0, "</p>"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 480
    :cond_33
    iget-object v1, v0, Lcn/sharesdk/evernote/e;->a:Ljava/lang/Object;

    instance-of v1, v1, Ljava/io/File;

    if-eqz v1, :cond_2d

    .line 481
    iget-object v0, v0, Lcn/sharesdk/evernote/e;->a:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    .line 482
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 483
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-direct {v4, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 484
    invoke-static {v4}, Lcn/sharesdk/evernote/e;->a(Ljava/io/InputStream;)[B

    move-result-object v5

    .line 485
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    .line 487
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 488
    const-string v1, "bodyHash"

    invoke-virtual {v4, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    const-string v1, "size"

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    const-string v1, "mBodyFile"

    invoke-virtual {v4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    invoke-static {}, Ljava/net/URLConnection;->getFileNameMap()Ljava/net/FileNameMap;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/net/FileNameMap;->getContentTypeFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 492
    if-eqz v1, :cond_7f

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_81

    .line 493
    :cond_7f
    const-string v1, "application/octet-stream"

    .line 495
    :cond_81
    const-string v6, "mime"

    invoke-virtual {v4, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    const-string v6, "fileName"

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 499
    invoke-static {v5, v1}, Lcn/sharesdk/evernote/e;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2d

    .line 503
    :cond_9a
    const-string v0, "</en-note>"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    :cond_9f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/HashMap;Lcom/mob/tools/network/MultiPart;Lcn/sharesdk/evernote/c;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/mob/tools/network/MultiPart;",
            "Lcn/sharesdk/evernote/c;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/16 v5, 0xc

    const/4 v3, 0x3

    const/16 v4, 0xb

    .line 511
    new-instance v1, Lcom/mob/tools/network/ByteArrayPart;

    invoke-direct {v1}, Lcom/mob/tools/network/ByteArrayPart;-><init>()V

    .line 512
    invoke-virtual {p3, v5, v3}, Lcn/sharesdk/evernote/c;->a(II)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mob/tools/network/ByteArrayPart;->append([B)Lcom/mob/tools/network/ByteArrayPart;

    .line 513
    const/4 v0, 0x1

    invoke-virtual {p3, v4, v0}, Lcn/sharesdk/evernote/c;->a(II)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mob/tools/network/ByteArrayPart;->append([B)Lcom/mob/tools/network/ByteArrayPart;

    .line 514
    const-string v0, "bodyHash"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    invoke-virtual {p3, v0}, Lcn/sharesdk/evernote/c;->a([B)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mob/tools/network/ByteArrayPart;->append([B)Lcom/mob/tools/network/ByteArrayPart;

    .line 515
    const/16 v0, 0x8

    const/4 v2, 0x2

    invoke-virtual {p3, v0, v2}, Lcn/sharesdk/evernote/c;->a(II)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mob/tools/network/ByteArrayPart;->append([B)Lcom/mob/tools/network/ByteArrayPart;

    .line 516
    const-string v0, "size"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p3, v0}, Lcn/sharesdk/evernote/c;->a(I)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mob/tools/network/ByteArrayPart;->append([B)Lcom/mob/tools/network/ByteArrayPart;

    .line 517
    invoke-virtual {p3, v4, v3}, Lcn/sharesdk/evernote/c;->a(II)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mob/tools/network/ByteArrayPart;->append([B)Lcom/mob/tools/network/ByteArrayPart;

    .line 518
    invoke-virtual {p2, v1}, Lcom/mob/tools/network/MultiPart;->append(Lcom/mob/tools/network/HTTPPart;)Lcom/mob/tools/network/MultiPart;

    .line 519
    const-string v0, "mBodyFile"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 520
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {p3, v2}, Lcn/sharesdk/evernote/c;->a(I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mob/tools/network/ByteArrayPart;->append([B)Lcom/mob/tools/network/ByteArrayPart;

    .line 521
    new-instance v1, Lcom/mob/tools/network/FilePart;

    invoke-direct {v1}, Lcom/mob/tools/network/FilePart;-><init>()V

    .line 522
    invoke-virtual {v1, v0}, Lcom/mob/tools/network/FilePart;->setFile(Ljava/io/File;)V

    .line 523
    invoke-virtual {p2, v1}, Lcom/mob/tools/network/MultiPart;->append(Lcom/mob/tools/network/HTTPPart;)Lcom/mob/tools/network/MultiPart;

    .line 524
    new-instance v0, Lcom/mob/tools/network/ByteArrayPart;

    invoke-direct {v0}, Lcom/mob/tools/network/ByteArrayPart;-><init>()V

    .line 525
    invoke-virtual {p3}, Lcn/sharesdk/evernote/c;->b()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mob/tools/network/ByteArrayPart;->append([B)Lcom/mob/tools/network/ByteArrayPart;

    .line 527
    const/4 v1, 0x4

    invoke-virtual {p3, v4, v1}, Lcn/sharesdk/evernote/c;->a(II)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mob/tools/network/ByteArrayPart;->append([B)Lcom/mob/tools/network/ByteArrayPart;

    .line 528
    const-string v1, "mime"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcn/sharesdk/evernote/c;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mob/tools/network/ByteArrayPart;->append([B)Lcom/mob/tools/network/ByteArrayPart;

    .line 531
    invoke-virtual {p3, v5, v4}, Lcn/sharesdk/evernote/c;->a(II)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mob/tools/network/ByteArrayPart;->append([B)Lcom/mob/tools/network/ByteArrayPart;

    .line 532
    const/16 v1, 0xa

    invoke-virtual {p3, v4, v1}, Lcn/sharesdk/evernote/c;->a(II)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mob/tools/network/ByteArrayPart;->append([B)Lcom/mob/tools/network/ByteArrayPart;

    .line 533
    const-string v1, "fileName"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcn/sharesdk/evernote/c;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mob/tools/network/ByteArrayPart;->append([B)Lcom/mob/tools/network/ByteArrayPart;

    .line 534
    invoke-virtual {p3}, Lcn/sharesdk/evernote/c;->b()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mob/tools/network/ByteArrayPart;->append([B)Lcom/mob/tools/network/ByteArrayPart;

    .line 536
    invoke-virtual {p3}, Lcn/sharesdk/evernote/c;->b()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mob/tools/network/ByteArrayPart;->append([B)Lcom/mob/tools/network/ByteArrayPart;

    .line 537
    invoke-virtual {p2, v0}, Lcom/mob/tools/network/MultiPart;->append(Lcom/mob/tools/network/HTTPPart;)Lcom/mob/tools/network/MultiPart;

    .line 538
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/16 v9, 0xc

    const/4 v8, 0x2

    const/4 v6, 0x1

    const/16 v4, 0xb

    .line 418
    if-nez p1, :cond_b

    move-object v0, v7

    .line 470
    :goto_a
    return-object v0

    .line 422
    :cond_b
    iget-object v1, p0, Lcn/sharesdk/evernote/d;->d:Ljava/lang/String;

    .line 423
    new-instance v0, Lcn/sharesdk/evernote/c;

    invoke-direct {v0}, Lcn/sharesdk/evernote/c;-><init>()V

    .line 424
    invoke-virtual {v0}, Lcn/sharesdk/evernote/c;->a()I

    move-result v5

    .line 425
    new-instance v3, Lcom/mob/tools/network/ByteArrayPart;

    invoke-direct {v3}, Lcom/mob/tools/network/ByteArrayPart;-><init>()V

    .line 426
    const-string v2, "createNotebook"

    invoke-virtual {v0, v2, v6}, Lcn/sharesdk/evernote/c;->a(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/mob/tools/network/ByteArrayPart;->append([B)Lcom/mob/tools/network/ByteArrayPart;

    .line 427
    invoke-virtual {v0, v4, v6}, Lcn/sharesdk/evernote/c;->a(II)[B

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/mob/tools/network/ByteArrayPart;->append([B)Lcom/mob/tools/network/ByteArrayPart;

    .line 428
    iget-object v2, p0, Lcn/sharesdk/evernote/d;->a:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v2}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v2

    invoke-virtual {v2}, Lcn/sharesdk/framework/PlatformDb;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/sharesdk/evernote/c;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/mob/tools/network/ByteArrayPart;->append([B)Lcom/mob/tools/network/ByteArrayPart;

    .line 431
    invoke-virtual {v0, v9, v8}, Lcn/sharesdk/evernote/c;->a(II)[B

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/mob/tools/network/ByteArrayPart;->append([B)Lcom/mob/tools/network/ByteArrayPart;

    .line 432
    invoke-virtual {v0, v4, v8}, Lcn/sharesdk/evernote/c;->a(II)[B

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/mob/tools/network/ByteArrayPart;->append([B)Lcom/mob/tools/network/ByteArrayPart;

    .line 433
    invoke-virtual {v0, p1}, Lcn/sharesdk/evernote/c;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/mob/tools/network/ByteArrayPart;->append([B)Lcom/mob/tools/network/ByteArrayPart;

    .line 434
    if-eqz p2, :cond_61

    .line 435
    invoke-virtual {v0, v4, v9}, Lcn/sharesdk/evernote/c;->a(II)[B

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/mob/tools/network/ByteArrayPart;->append([B)Lcom/mob/tools/network/ByteArrayPart;

    .line 436
    invoke-virtual {v0, p2}, Lcn/sharesdk/evernote/c;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/mob/tools/network/ByteArrayPart;->append([B)Lcom/mob/tools/network/ByteArrayPart;

    .line 438
    :cond_61
    invoke-virtual {v0}, Lcn/sharesdk/evernote/c;->b()[B

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/mob/tools/network/ByteArrayPart;->append([B)Lcom/mob/tools/network/ByteArrayPart;

    .line 440
    invoke-virtual {v0}, Lcn/sharesdk/evernote/c;->b()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/mob/tools/network/ByteArrayPart;->append([B)Lcom/mob/tools/network/ByteArrayPart;

    .line 442
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 443
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v4, "Content-Type"

    const-string v6, "application/x-thrift"

    invoke-direct {v0, v4, v6}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 444
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v4, "Cache-Control"

    const-string v6, "no-transform"

    invoke-direct {v0, v4, v6}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v4, "Accept"

    const-string v6, "application/x-thrift"

    invoke-direct {v0, v4, v6}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v4, "User-Agent"

    invoke-direct {p0}, Lcn/sharesdk/evernote/d;->d()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v4, v6}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 448
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 449
    invoke-static {}, Lcn/sharesdk/framework/a/a;->a()Lcn/sharesdk/framework/a/a;

    move-result-object v0

    new-instance v4, Lcn/sharesdk/evernote/d$4;

    invoke-direct {v4, p0, v5, v8}, Lcn/sharesdk/evernote/d$4;-><init>(Lcn/sharesdk/evernote/d;ILjava/util/HashMap;)V

    .line 463
    invoke-virtual {p0}, Lcn/sharesdk/evernote/d;->c()I

    move-result v6

    move-object v5, v1

    .line 449
    invoke-virtual/range {v0 .. v6}, Lcn/sharesdk/framework/a/a;->a(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/HTTPPart;Lcom/mob/tools/network/RawNetworkCallback;Ljava/lang/String;I)V

    .line 464
    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v0

    if-gtz v0, :cond_c5

    move-object v0, v7

    .line 465
    goto/16 :goto_a

    .line 469
    :cond_c5
    const-string v0, "notebook"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    goto/16 :goto_a
.end method

.method private d()Ljava/lang/String;
    .registers 4

    .prologue
    .line 218
    :try_start_0
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 219
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 220
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 222
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Android/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 224
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 225
    if-nez v1, :cond_98

    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 230
    :goto_53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Android/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 237
    :goto_97
    return-object v0

    .line 228
    :cond_98
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "); "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_b8
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_b8} :catch_ba

    move-result-object v0

    goto :goto_53

    .line 234
    :catch_ba
    move-exception v0

    .line 235
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 237
    const/4 v0, 0x0

    goto :goto_97
.end method

.method private d(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 11
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
    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 362
    if-nez p1, :cond_6

    move-object v0, v7

    .line 414
    :goto_5
    return-object v0

    .line 366
    :cond_6
    iget-object v1, p0, Lcn/sharesdk/evernote/d;->d:Ljava/lang/String;

    .line 367
    new-instance v0, Lcn/sharesdk/evernote/c;

    invoke-direct {v0}, Lcn/sharesdk/evernote/c;-><init>()V

    .line 368
    invoke-virtual {v0}, Lcn/sharesdk/evernote/c;->a()I

    move-result v5

    .line 369
    new-instance v3, Lcom/mob/tools/network/ByteArrayPart;

    invoke-direct {v3}, Lcom/mob/tools/network/ByteArrayPart;-><init>()V

    .line 370
    const-string v2, "listNotebooks"

    invoke-virtual {v0, v2, v4}, Lcn/sharesdk/evernote/c;->a(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/mob/tools/network/ByteArrayPart;->append([B)Lcom/mob/tools/network/ByteArrayPart;

    .line 371
    const/16 v2, 0xb

    invoke-virtual {v0, v2, v4}, Lcn/sharesdk/evernote/c;->a(II)[B

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/mob/tools/network/ByteArrayPart;->append([B)Lcom/mob/tools/network/ByteArrayPart;

    .line 372
    iget-object v2, p0, Lcn/sharesdk/evernote/d;->a:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v2}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v2

    invoke-virtual {v2}, Lcn/sharesdk/framework/PlatformDb;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/sharesdk/evernote/c;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/mob/tools/network/ByteArrayPart;->append([B)Lcom/mob/tools/network/ByteArrayPart;

    .line 373
    invoke-virtual {v0}, Lcn/sharesdk/evernote/c;->b()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/mob/tools/network/ByteArrayPart;->append([B)Lcom/mob/tools/network/ByteArrayPart;

    .line 375
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 376
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v4, "Content-Type"

    const-string v6, "application/x-thrift"

    invoke-direct {v0, v4, v6}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v4, "Cache-Control"

    const-string v6, "no-transform"

    invoke-direct {v0, v4, v6}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v4, "Accept"

    const-string v6, "application/x-thrift"

    invoke-direct {v0, v4, v6}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v4, "User-Agent"

    invoke-direct {p0}, Lcn/sharesdk/evernote/d;->d()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v4, v6}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 382
    invoke-static {}, Lcn/sharesdk/framework/a/a;->a()Lcn/sharesdk/framework/a/a;

    move-result-object v0

    new-instance v4, Lcn/sharesdk/evernote/d$3;

    invoke-direct {v4, p0, v5, p1, v8}, Lcn/sharesdk/evernote/d$3;-><init>(Lcn/sharesdk/evernote/d;ILjava/lang/String;Ljava/util/HashMap;)V

    .line 403
    invoke-virtual {p0}, Lcn/sharesdk/evernote/d;->c()I

    move-result v6

    move-object v5, v1

    .line 382
    invoke-virtual/range {v0 .. v6}, Lcn/sharesdk/framework/a/a;->a(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/HTTPPart;Lcom/mob/tools/network/RawNetworkCallback;Ljava/lang/String;I)V

    .line 404
    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v0

    if-gtz v0, :cond_96

    move-object v0, v7

    .line 405
    goto/16 :goto_5

    .line 408
    :cond_96
    const-string v0, "notebook"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a1

    move-object v0, v7

    .line 409
    goto/16 :goto_5

    .line 413
    :cond_a1
    const-string v0, "notebook"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    goto/16 :goto_5
.end method


# virtual methods
.method public a()Ljava/util/HashMap;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
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

    const/4 v3, 0x0

    .line 103
    iget-object v0, p0, Lcn/sharesdk/evernote/d;->e:Lcn/sharesdk/evernote/a;

    invoke-virtual {v0}, Lcn/sharesdk/evernote/a;->a()Ljava/lang/String;

    move-result-object v1

    .line 104
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 105
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v4, "oauth_callback"

    invoke-virtual {p0}, Lcn/sharesdk/evernote/d;->getRedirectUri()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object v0, p0, Lcn/sharesdk/evernote/d;->c:Lcn/sharesdk/framework/utils/a;

    invoke-virtual {v0, v3, v3}, Lcn/sharesdk/framework/utils/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcn/sharesdk/evernote/d;->c:Lcn/sharesdk/framework/utils/a;

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/framework/utils/a;->a(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 108
    iget-object v4, p0, Lcn/sharesdk/evernote/d;->c:Lcn/sharesdk/framework/utils/a;

    invoke-virtual {v4, v0}, Lcn/sharesdk/framework/utils/a;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    .line 109
    invoke-static {}, Lcn/sharesdk/framework/a/a;->a()Lcn/sharesdk/framework/a/a;

    move-result-object v0

    const-string v5, "/oauth"

    .line 110
    invoke-virtual {p0}, Lcn/sharesdk/evernote/d;->c()I

    move-result v6

    .line 109
    invoke-virtual/range {v0 .. v6}, Lcn/sharesdk/framework/a/a;->a(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 111
    if-nez v0, :cond_3d

    .line 130
    :cond_3c
    return-object v3

    .line 115
    :cond_3d
    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 116
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 117
    array-length v2, v1

    move v0, v7

    :goto_4a
    if-ge v0, v2, :cond_3c

    aget-object v4, v1, v0

    .line 118
    if-nez v4, :cond_53

    .line 117
    :cond_50
    :goto_50
    add-int/lit8 v0, v0, 0x1

    goto :goto_4a

    .line 122
    :cond_53
    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 123
    array-length v5, v4

    const/4 v6, 0x2

    if-lt v5, v6, :cond_50

    .line 127
    aget-object v5, v4, v7

    const/4 v6, 0x1

    aget-object v4, v4, v6

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_50
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;[Ljava/lang/String;Z)Ljava/util/HashMap;
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/sharesdk/evernote/e",
            "<*>;>;[",
            "Ljava/lang/String;",
            "Z)",
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
    .line 243
    const/4 v0, 0x0

    .line 244
    if-eqz p2, :cond_d

    .line 245
    invoke-direct {p0, p2}, Lcn/sharesdk/evernote/d;->d(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 246
    if-nez v0, :cond_d

    .line 247
    invoke-direct {p0, p2, p1}, Lcn/sharesdk/evernote/d;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 251
    :cond_d
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 253
    invoke-direct {p0, p4, v4}, Lcn/sharesdk/evernote/d;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v5

    .line 255
    iget-object v1, p0, Lcn/sharesdk/evernote/d;->d:Ljava/lang/String;

    .line 256
    new-instance v6, Lcn/sharesdk/evernote/c;

    invoke-direct {v6}, Lcn/sharesdk/evernote/c;-><init>()V

    .line 257
    invoke-virtual {v6}, Lcn/sharesdk/evernote/c;->a()I

    move-result v7

    .line 258
    new-instance v3, Lcom/mob/tools/network/MultiPart;

    invoke-direct {v3}, Lcom/mob/tools/network/MultiPart;-><init>()V

    .line 259
    new-instance v2, Lcom/mob/tools/network/ByteArrayPart;

    invoke-direct {v2}, Lcom/mob/tools/network/ByteArrayPart;-><init>()V

    .line 260
    const-string v8, "createNote"

    const/4 v9, 0x1

    invoke-virtual {v6, v8, v9}, Lcn/sharesdk/evernote/c;->a(Ljava/lang/String;I)[B

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/mob/tools/network/ByteArrayPart;->append([B)Lcom/mob/tools/network/ByteArrayPart;

    .line 261
    const/16 v8, 0xb

    const/4 v9, 0x1

    invoke-virtual {v6, v8, v9}, Lcn/sharesdk/evernote/c;->a(II)[B

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/mob/tools/network/ByteArrayPart;->append([B)Lcom/mob/tools/network/ByteArrayPart;

    .line 262
    iget-object v8, p0, Lcn/sharesdk/evernote/d;->a:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v8}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v8

    invoke-virtual {v8}, Lcn/sharesdk/framework/PlatformDb;->getToken()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcn/sharesdk/evernote/c;->a(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/mob/tools/network/ByteArrayPart;->append([B)Lcom/mob/tools/network/ByteArrayPart;

    .line 265
    const/16 v8, 0xc

    const/4 v9, 0x2

    invoke-virtual {v6, v8, v9}, Lcn/sharesdk/evernote/c;->a(II)[B

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/mob/tools/network/ByteArrayPart;->append([B)Lcom/mob/tools/network/ByteArrayPart;

    .line 266
    if-eqz p3, :cond_6d

    .line 267
    const/16 v8, 0xb

    const/4 v9, 0x2

    invoke-virtual {v6, v8, v9}, Lcn/sharesdk/evernote/c;->a(II)[B

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/mob/tools/network/ByteArrayPart;->append([B)Lcom/mob/tools/network/ByteArrayPart;

    .line 268
    invoke-virtual {v6, p3}, Lcn/sharesdk/evernote/c;->a(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/mob/tools/network/ByteArrayPart;->append([B)Lcom/mob/tools/network/ByteArrayPart;

    .line 270
    :cond_6d
    if-eqz v5, :cond_80

    .line 271
    const/16 v8, 0xb

    const/4 v9, 0x3

    invoke-virtual {v6, v8, v9}, Lcn/sharesdk/evernote/c;->a(II)[B

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/mob/tools/network/ByteArrayPart;->append([B)Lcom/mob/tools/network/ByteArrayPart;

    .line 272
    invoke-virtual {v6, v5}, Lcn/sharesdk/evernote/c;->a(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/mob/tools/network/ByteArrayPart;->append([B)Lcom/mob/tools/network/ByteArrayPart;

    .line 274
    :cond_80
    if-eqz v0, :cond_9e

    .line 275
    const/16 v5, 0xb

    const/16 v8, 0xb

    invoke-virtual {v6, v5, v8}, Lcn/sharesdk/evernote/c;->a(II)[B

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/mob/tools/network/ByteArrayPart;->append([B)Lcom/mob/tools/network/ByteArrayPart;

    .line 276
    const-string v5, "guid"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcn/sharesdk/evernote/c;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/mob/tools/network/ByteArrayPart;->append([B)Lcom/mob/tools/network/ByteArrayPart;

    .line 278
    :cond_9e
    if-eqz v4, :cond_db

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_db

    .line 279
    const/16 v0, 0xf

    const/16 v5, 0xd

    invoke-virtual {v6, v0, v5}, Lcn/sharesdk/evernote/c;->a(II)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/mob/tools/network/ByteArrayPart;->append([B)Lcom/mob/tools/network/ByteArrayPart;

    .line 280
    const/16 v0, 0xf

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v6, v0, v5}, Lcn/sharesdk/evernote/c;->b(II)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/mob/tools/network/ByteArrayPart;->append([B)Lcom/mob/tools/network/ByteArrayPart;

    .line 281
    invoke-virtual {v3, v2}, Lcom/mob/tools/network/MultiPart;->append(Lcom/mob/tools/network/HTTPPart;)Lcom/mob/tools/network/MultiPart;

    .line 282
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 283
    invoke-direct {p0, v0, v3, v6}, Lcn/sharesdk/evernote/d;->a(Ljava/util/HashMap;Lcom/mob/tools/network/MultiPart;Lcn/sharesdk/evernote/c;)V

    goto :goto_c5

    .line 285
    :cond_d5
    new-instance v0, Lcom/mob/tools/network/ByteArrayPart;

    invoke-direct {v0}, Lcom/mob/tools/network/ByteArrayPart;-><init>()V

    move-object v2, v0

    .line 287
    :cond_db
    if-eqz p5, :cond_105

    array-length v0, p5

    if-lez v0, :cond_105

    .line 288
    const/16 v0, 0xf

    const/16 v4, 0xf

    invoke-virtual {v6, v0, v4}, Lcn/sharesdk/evernote/c;->a(II)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/mob/tools/network/ByteArrayPart;->append([B)Lcom/mob/tools/network/ByteArrayPart;

    .line 289
    const/16 v0, 0xb

    array-length v4, p5

    invoke-virtual {v6, v0, v4}, Lcn/sharesdk/evernote/c;->b(II)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/mob/tools/network/ByteArrayPart;->append([B)Lcom/mob/tools/network/ByteArrayPart;

    .line 290
    array-length v4, p5

    const/4 v0, 0x0

    :goto_f7
    if-ge v0, v4, :cond_105

    aget-object v5, p5, v0

    .line 291
    invoke-virtual {v6, v5}, Lcn/sharesdk/evernote/c;->a(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/mob/tools/network/ByteArrayPart;->append([B)Lcom/mob/tools/network/ByteArrayPart;

    .line 290
    add-int/lit8 v0, v0, 0x1

    goto :goto_f7

    .line 295
    :cond_105
    invoke-virtual {v6}, Lcn/sharesdk/evernote/c;->b()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/mob/tools/network/ByteArrayPart;->append([B)Lcom/mob/tools/network/ByteArrayPart;

    .line 297
    invoke-virtual {v6}, Lcn/sharesdk/evernote/c;->b()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/mob/tools/network/ByteArrayPart;->append([B)Lcom/mob/tools/network/ByteArrayPart;

    .line 298
    invoke-virtual {v3, v2}, Lcom/mob/tools/network/MultiPart;->append(Lcom/mob/tools/network/HTTPPart;)Lcom/mob/tools/network/MultiPart;

    .line 300
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 301
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v4, "Content-Type"

    const-string v5, "application/x-thrift"

    invoke-direct {v0, v4, v5}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v4, "Cache-Control"

    const-string v5, "no-transform"

    invoke-direct {v0, v4, v5}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v4, "Accept"

    const-string v5, "application/x-thrift"

    invoke-direct {v0, v4, v5}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v4, "User-Agent"

    invoke-direct {p0}, Lcn/sharesdk/evernote/d;->d()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 307
    invoke-static {}, Lcn/sharesdk/framework/a/a;->a()Lcn/sharesdk/framework/a/a;

    move-result-object v0

    new-instance v4, Lcn/sharesdk/evernote/d$2;

    invoke-direct {v4, p0, v7, v8}, Lcn/sharesdk/evernote/d$2;-><init>(Lcn/sharesdk/evernote/d;ILjava/util/HashMap;)V

    .line 320
    invoke-virtual {p0}, Lcn/sharesdk/evernote/d;->c()I

    move-result v6

    move-object v5, v1

    .line 307
    invoke-virtual/range {v0 .. v6}, Lcn/sharesdk/framework/a/a;->a(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/HTTPPart;Lcom/mob/tools/network/RawNetworkCallback;Ljava/lang/String;I)V

    .line 321
    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v0

    if-gtz v0, :cond_16b

    .line 322
    const/4 v0, 0x0

    .line 327
    :goto_16a
    return-object v0

    .line 326
    :cond_16b
    const-string v0, "note"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    goto :goto_16a
.end method

.method public a(Lcn/sharesdk/framework/PlatformActionListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;[Ljava/lang/String;Z)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/sharesdk/framework/PlatformActionListener;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/sharesdk/evernote/e",
            "<*>;>;[",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 333
    .line 334
    if-eqz p3, :cond_3c

    .line 335
    :try_start_3
    invoke-direct {p0, p3}, Lcn/sharesdk/evernote/d;->d(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 336
    if-nez v1, :cond_d

    .line 337
    invoke-direct {p0, p3, p2}, Lcn/sharesdk/evernote/d;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 342
    :cond_d
    :goto_d
    if-eqz v1, :cond_1b

    .line 343
    const-string v2, "guid"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 344
    if-eqz v1, :cond_1b

    .line 345
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 350
    :cond_1b
    new-instance v1, Lcn/sharesdk/evernote/k;

    invoke-direct {v1}, Lcn/sharesdk/evernote/k;-><init>()V

    .line 351
    iget-object v2, p0, Lcn/sharesdk/evernote/d;->a:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v1, v2, p1}, Lcn/sharesdk/evernote/k;->a(Lcn/sharesdk/framework/Platform;Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 352
    invoke-virtual {v1, v0, p4, p5, p6}, Lcn/sharesdk/evernote/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;[Ljava/lang/String;)V

    .line 353
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcn/sharesdk/evernote/k;->show(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_30} :catch_31

    .line 359
    :cond_30
    :goto_30
    return-void

    .line 354
    :catch_31
    move-exception v0

    .line 355
    if-eqz p1, :cond_30

    .line 356
    iget-object v1, p0, Lcn/sharesdk/evernote/d;->a:Lcn/sharesdk/framework/Platform;

    const/16 v2, 0x9

    invoke-interface {p1, v1, v2, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_30

    :cond_3c
    move-object v1, v0

    goto :goto_d
.end method

.method public a(Lcn/sharesdk/framework/PlatformDb;)V
    .registers 3

    .prologue
    .line 56
    const-string v0, "notestoreUrl"

    invoke-virtual {p1, v0}, Lcn/sharesdk/framework/PlatformDb;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/evernote/d;->d:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public a(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V
    .registers 2

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcn/sharesdk/evernote/d;->b(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    .line 69
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 60
    new-instance v0, Lcn/sharesdk/evernote/a;

    invoke-direct {v0, p1}, Lcn/sharesdk/evernote/a;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/sharesdk/evernote/d;->e:Lcn/sharesdk/evernote/a;

    .line 61
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 64
    iget-object v0, p0, Lcn/sharesdk/evernote/d;->c:Lcn/sharesdk/framework/utils/a;

    const-string v1, "en-oauth://callback"

    invoke-virtual {v0, p1, p2, v1}, Lcn/sharesdk/framework/utils/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
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
            "Ljava/lang/String;",
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

    const/4 v7, 0x0

    .line 135
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 136
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Must provide a valid string as verifier"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_10
    iget-object v0, p0, Lcn/sharesdk/evernote/d;->e:Lcn/sharesdk/evernote/a;

    invoke-virtual {v0}, Lcn/sharesdk/evernote/a;->b()Ljava/lang/String;

    move-result-object v1

    .line 140
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 141
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v4, "oauth_token"

    iget-object v5, p0, Lcn/sharesdk/evernote/d;->c:Lcn/sharesdk/framework/utils/a;

    invoke-virtual {v5}, Lcn/sharesdk/framework/utils/a;->a()Lcn/sharesdk/framework/utils/a$b;

    move-result-object v5

    iget-object v5, v5, Lcn/sharesdk/framework/utils/a$b;->c:Ljava/lang/String;

    invoke-direct {v0, v4, v5}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v4, "oauth_verifier"

    invoke-direct {v0, v4, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    iget-object v0, p0, Lcn/sharesdk/evernote/d;->c:Lcn/sharesdk/framework/utils/a;

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/framework/utils/a;->a(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 144
    iget-object v4, p0, Lcn/sharesdk/evernote/d;->c:Lcn/sharesdk/framework/utils/a;

    invoke-virtual {v4, v0}, Lcn/sharesdk/framework/utils/a;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    .line 145
    invoke-static {}, Lcn/sharesdk/framework/a/a;->a()Lcn/sharesdk/framework/a/a;

    move-result-object v0

    const-string v5, "/oauth"

    .line 146
    invoke-virtual {p0}, Lcn/sharesdk/evernote/d;->c()I

    move-result v6

    .line 145
    invoke-virtual/range {v0 .. v6}, Lcn/sharesdk/framework/a/a;->a(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 147
    if-nez v0, :cond_54

    .line 166
    :cond_53
    return-object v3

    .line 151
    :cond_54
    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 152
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 153
    array-length v2, v1

    move v0, v7

    :goto_61
    if-ge v0, v2, :cond_53

    aget-object v4, v1, v0

    .line 154
    if-nez v4, :cond_6a

    .line 153
    :cond_67
    :goto_67
    add-int/lit8 v0, v0, 0x1

    goto :goto_61

    .line 158
    :cond_6a
    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 159
    array-length v5, v4

    const/4 v6, 0x2

    if-lt v5, v6, :cond_67

    .line 163
    aget-object v5, v4, v7

    const/4 v6, 0x1

    aget-object v4, v4, v6

    const-string v6, "utf-8"

    invoke-static {v4, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_67
.end method

.method public b()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 541
    const-string v1, "com.evernote.action.CREATE_NEW_NOTE"

    .line 542
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 543
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 544
    if-eqz v1, :cond_17

    const/4 v0, 0x1

    :cond_17
    return v0
.end method

.method public c(Ljava/lang/String;)Ljava/util/HashMap;
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
    const/16 v6, 0xb

    const/4 v4, 0x1

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/sharesdk/evernote/d;->e:Lcn/sharesdk/evernote/a;

    invoke-virtual {v1}, Lcn/sharesdk/evernote/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/edam/user"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 171
    new-instance v0, Lcn/sharesdk/evernote/c;

    invoke-direct {v0}, Lcn/sharesdk/evernote/c;-><init>()V

    .line 172
    invoke-virtual {v0}, Lcn/sharesdk/evernote/c;->a()I

    move-result v5

    .line 173
    new-instance v3, Lcom/mob/tools/network/ByteArrayPart;

    invoke-direct {v3}, Lcom/mob/tools/network/ByteArrayPart;-><init>()V

    .line 174
    if-nez p1, :cond_aa

    .line 175
    const-string v2, "getUser"

    invoke-virtual {v0, v2, v4}, Lcn/sharesdk/evernote/c;->a(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/mob/tools/network/ByteArrayPart;->append([B)Lcom/mob/tools/network/ByteArrayPart;

    .line 176
    invoke-virtual {v0, v6, v4}, Lcn/sharesdk/evernote/c;->a(II)[B

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/mob/tools/network/ByteArrayPart;->append([B)Lcom/mob/tools/network/ByteArrayPart;

    .line 177
    iget-object v2, p0, Lcn/sharesdk/evernote/d;->a:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v2}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v2

    invoke-virtual {v2}, Lcn/sharesdk/framework/PlatformDb;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/sharesdk/evernote/c;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/mob/tools/network/ByteArrayPart;->append([B)Lcom/mob/tools/network/ByteArrayPart;

    .line 178
    invoke-virtual {v0}, Lcn/sharesdk/evernote/c;->b()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/mob/tools/network/ByteArrayPart;->append([B)Lcom/mob/tools/network/ByteArrayPart;

    .line 186
    :goto_54
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 187
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v4, "Content-Type"

    const-string v6, "application/x-thrift"

    invoke-direct {v0, v4, v6}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v4, "Cache-Control"

    const-string v6, "no-transform"

    invoke-direct {v0, v4, v6}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v4, "Accept"

    const-string v6, "application/x-thrift"

    invoke-direct {v0, v4, v6}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v4, "User-Agent"

    invoke-direct {p0}, Lcn/sharesdk/evernote/d;->d()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v4, v6}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 192
    invoke-static {}, Lcn/sharesdk/framework/a/a;->a()Lcn/sharesdk/framework/a/a;

    move-result-object v0

    new-instance v4, Lcn/sharesdk/evernote/d$1;

    invoke-direct {v4, p0, v5, v7}, Lcn/sharesdk/evernote/d$1;-><init>(Lcn/sharesdk/evernote/d;ILjava/util/HashMap;)V

    const-string v5, "/edam/user"

    .line 206
    invoke-virtual {p0}, Lcn/sharesdk/evernote/d;->c()I

    move-result v6

    .line 192
    invoke-virtual/range {v0 .. v6}, Lcn/sharesdk/framework/a/a;->a(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/HTTPPart;Lcom/mob/tools/network/RawNetworkCallback;Ljava/lang/String;I)V

    .line 207
    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v0

    if-gtz v0, :cond_c9

    .line 208
    const/4 v0, 0x0

    .line 213
    :goto_a9
    return-object v0

    .line 180
    :cond_aa
    const-string v2, "getPublicUserInfo"

    invoke-virtual {v0, v2, v4}, Lcn/sharesdk/evernote/c;->a(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/mob/tools/network/ByteArrayPart;->append([B)Lcom/mob/tools/network/ByteArrayPart;

    .line 181
    invoke-virtual {v0, v6, v4}, Lcn/sharesdk/evernote/c;->a(II)[B

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/mob/tools/network/ByteArrayPart;->append([B)Lcom/mob/tools/network/ByteArrayPart;

    .line 182
    invoke-virtual {v0, p1}, Lcn/sharesdk/evernote/c;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/mob/tools/network/ByteArrayPart;->append([B)Lcom/mob/tools/network/ByteArrayPart;

    .line 183
    invoke-virtual {v0}, Lcn/sharesdk/evernote/c;->b()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/mob/tools/network/ByteArrayPart;->append([B)Lcom/mob/tools/network/ByteArrayPart;

    goto :goto_54

    .line 212
    :cond_c9
    const-string v0, "user"

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    goto :goto_a9
.end method

.method public getAuthorizeUrl()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 72
    .line 74
    :try_start_1
    invoke-virtual {p0}, Lcn/sharesdk/evernote/d;->a()Ljava/util/HashMap;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4} :catch_a

    move-result-object v0

    move-object v2, v0

    .line 80
    :goto_6
    if-nez v2, :cond_14

    move-object v0, v1

    .line 90
    :goto_9
    return-object v0

    .line 75
    :catch_a
    move-exception v0

    .line 76
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    move-object v2, v1

    .line 77
    goto :goto_6

    .line 84
    :cond_14
    const-string v0, "oauth_token"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 85
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_24

    move-object v0, v1

    .line 86
    goto :goto_9

    .line 89
    :cond_24
    iget-object v3, p0, Lcn/sharesdk/evernote/d;->c:Lcn/sharesdk/framework/utils/a;

    const-string v1, "oauth_token_secret"

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lcn/sharesdk/framework/utils/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v1, p0, Lcn/sharesdk/evernote/d;->e:Lcn/sharesdk/evernote/a;

    invoke-virtual {v1, v0}, Lcn/sharesdk/evernote/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method public getAuthorizeWebviewClient(Lcn/sharesdk/framework/authorize/e;)Lcn/sharesdk/framework/authorize/b;
    .registers 3
    .param p1, "webAct"    # Lcn/sharesdk/framework/authorize/e;

    .prologue
    .line 95
    new-instance v0, Lcn/sharesdk/evernote/f;

    invoke-direct {v0, p1}, Lcn/sharesdk/evernote/f;-><init>(Lcn/sharesdk/framework/authorize/e;)V

    return-object v0
.end method

.method public getRedirectUri()Ljava/lang/String;
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Lcn/sharesdk/evernote/d;->c:Lcn/sharesdk/framework/utils/a;

    invoke-virtual {v0}, Lcn/sharesdk/framework/utils/a;->a()Lcn/sharesdk/framework/utils/a$b;

    move-result-object v0

    iget-object v0, v0, Lcn/sharesdk/framework/utils/a$b;->e:Ljava/lang/String;

    return-object v0
.end method
