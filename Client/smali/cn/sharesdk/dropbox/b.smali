.class public Lcn/sharesdk/dropbox/b;
.super Lcn/sharesdk/framework/b;
.source "DropboxImpl.java"


# static fields
.field private static b:Lcn/sharesdk/dropbox/b;

.field private static h:Lcn/sharesdk/framework/a/a;


# instance fields
.field private c:Lcn/sharesdk/framework/utils/a;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private i:Lcn/sharesdk/twitter/MappedFileReader;

.field private j:I


# direct methods
.method private constructor <init>(Lcn/sharesdk/framework/Platform;)V
    .registers 3

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/b;-><init>(Lcn/sharesdk/framework/Platform;)V

    .line 47
    const v0, 0x6c5c870

    iput v0, p0, Lcn/sharesdk/dropbox/b;->j:I

    .line 67
    invoke-static {}, Lcn/sharesdk/framework/a/a;->a()Lcn/sharesdk/framework/a/a;

    move-result-object v0

    sput-object v0, Lcn/sharesdk/dropbox/b;->h:Lcn/sharesdk/framework/a/a;

    .line 68
    new-instance v0, Lcn/sharesdk/framework/utils/a;

    invoke-direct {v0}, Lcn/sharesdk/framework/utils/a;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/dropbox/b;->c:Lcn/sharesdk/framework/utils/a;

    .line 69
    return-void
.end method

.method public static a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/dropbox/b;
    .registers 2

    .prologue
    .line 50
    sget-object v0, Lcn/sharesdk/dropbox/b;->b:Lcn/sharesdk/dropbox/b;

    if-nez v0, :cond_b

    .line 51
    new-instance v0, Lcn/sharesdk/dropbox/b;

    invoke-direct {v0, p0}, Lcn/sharesdk/dropbox/b;-><init>(Lcn/sharesdk/framework/Platform;)V

    sput-object v0, Lcn/sharesdk/dropbox/b;->b:Lcn/sharesdk/dropbox/b;

    .line 53
    :cond_b
    sget-object v0, Lcn/sharesdk/dropbox/b;->b:Lcn/sharesdk/dropbox/b;

    return-object v0
.end method

.method static synthetic a(Lcn/sharesdk/dropbox/b;)Lcn/sharesdk/twitter/MappedFileReader;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcn/sharesdk/dropbox/b;->i:Lcn/sharesdk/twitter/MappedFileReader;

    return-object v0
.end method

.method static synthetic a(Lcn/sharesdk/dropbox/b;[BLjava/lang/String;JLcn/sharesdk/dropbox/UploadViewCallBack;J)Ljava/util/HashMap;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct/range {p0 .. p7}, Lcn/sharesdk/dropbox/b;->a([BLjava/lang/String;JLcn/sharesdk/dropbox/UploadViewCallBack;J)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method private a([B)Ljava/util/HashMap;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
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
    .line 282
    const-string v1, "https://content.dropboxapi.com/2/files/upload_session/start"

    .line 283
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 284
    array-length v0, p1

    iput v0, p0, Lcn/sharesdk/dropbox/b;->j:I

    .line 285
    iget-object v0, p0, Lcn/sharesdk/dropbox/b;->c:Lcn/sharesdk/framework/utils/a;

    sget-object v3, Lcn/sharesdk/framework/utils/a$a;->b:Lcn/sharesdk/framework/utils/a$a;

    invoke-virtual {v0, v1, v2, v3}, Lcn/sharesdk/framework/utils/a;->c(Ljava/lang/String;Ljava/util/ArrayList;Lcn/sharesdk/framework/utils/a$a;)Ljava/util/ArrayList;

    move-result-object v0

    .line 286
    iget-object v3, p0, Lcn/sharesdk/dropbox/b;->c:Lcn/sharesdk/framework/utils/a;

    invoke-virtual {v3, v0}, Lcn/sharesdk/framework/utils/a;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    .line 287
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 288
    const-string v3, "close"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    new-instance v3, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v3}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v3, v0}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 290
    new-instance v3, Lcom/mob/tools/network/KVPair;

    const-string v5, "Authorization"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bearer "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcn/sharesdk/dropbox/b;->g:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    new-instance v3, Lcom/mob/tools/network/KVPair;

    const-string v5, "Dropbox-API-Arg"

    invoke-direct {v3, v5, v0}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v3, "Content-Type"

    const-string v5, "application/octet-stream"

    invoke-direct {v0, v3, v5}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    invoke-static {}, Lcn/sharesdk/framework/a/a;->a()Lcn/sharesdk/framework/a/a;

    move-result-object v0

    .line 294
    invoke-virtual {p0}, Lcn/sharesdk/dropbox/b;->c()I

    move-result v5

    const/4 v6, 0x0

    move-object v3, p1

    .line 293
    invoke-virtual/range {v0 .. v6}, Lcn/sharesdk/framework/a/a;->httpPostFilesChecked(Ljava/lang/String;Ljava/util/ArrayList;[BLjava/util/ArrayList;ILcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object v0

    .line 295
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_81

    .line 296
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "response is empty"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0

    .line 299
    :cond_81
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 300
    if-eqz v1, :cond_92

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v2

    if-gtz v2, :cond_9a

    .line 301
    :cond_92
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "response is empty"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0

    .line 304
    :cond_9a
    const-string v2, "error"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a8

    .line 305
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v1

    .line 308
    :cond_a8
    return-object v1
.end method

.method private a([BLjava/lang/String;JLcn/sharesdk/dropbox/UploadViewCallBack;J)Ljava/util/HashMap;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            "J",
            "Lcn/sharesdk/dropbox/UploadViewCallBack;",
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
    .line 351
    const-string v1, "https://content.dropboxapi.com/2/files/upload_session/append_v2"

    .line 352
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 353
    iget-object v0, p0, Lcn/sharesdk/dropbox/b;->c:Lcn/sharesdk/framework/utils/a;

    sget-object v3, Lcn/sharesdk/framework/utils/a$a;->b:Lcn/sharesdk/framework/utils/a$a;

    invoke-virtual {v0, v1, v2, v3}, Lcn/sharesdk/framework/utils/a;->c(Ljava/lang/String;Ljava/util/ArrayList;Lcn/sharesdk/framework/utils/a$a;)Ljava/util/ArrayList;

    move-result-object v0

    .line 354
    iget-object v3, p0, Lcn/sharesdk/dropbox/b;->c:Lcn/sharesdk/framework/utils/a;

    invoke-virtual {v3, v0}, Lcn/sharesdk/framework/utils/a;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    .line 355
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 356
    const-string v3, "session_id"

    invoke-virtual {v0, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    const-string v3, "offset"

    iget v5, p0, Lcn/sharesdk/dropbox/b;->j:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 359
    const-string v5, "cursor"

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    const-string v0, "close"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    new-instance v0, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v0}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v0, v3}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 362
    new-instance v3, Lcom/mob/tools/network/KVPair;

    const-string v5, "Authorization"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bearer "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcn/sharesdk/dropbox/b;->g:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    new-instance v3, Lcom/mob/tools/network/KVPair;

    const-string v5, "Dropbox-API-Arg"

    invoke-direct {v3, v5, v0}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v3, "Content-Type"

    const-string v5, "application/octet-stream"

    invoke-direct {v0, v3, v5}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    iget v0, p0, Lcn/sharesdk/dropbox/b;->j:I

    array-length v3, p1

    add-int/2addr v0, v3

    iput v0, p0, Lcn/sharesdk/dropbox/b;->j:I

    .line 366
    invoke-static {}, Lcn/sharesdk/framework/a/a;->a()Lcn/sharesdk/framework/a/a;

    move-result-object v0

    .line 367
    invoke-virtual {p0}, Lcn/sharesdk/dropbox/b;->c()I

    move-result v5

    const/4 v6, 0x0

    move-object v3, p1

    .line 366
    invoke-virtual/range {v0 .. v6}, Lcn/sharesdk/framework/a/a;->httpPostFilesChecked(Ljava/lang/String;Ljava/util/ArrayList;[BLjava/util/ArrayList;ILcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object v0

    .line 368
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9e

    .line 369
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "response is empty"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0

    .line 371
    :cond_9e
    iget v1, p0, Lcn/sharesdk/dropbox/b;->j:I

    int-to-long v2, v1

    cmp-long v1, v2, p6

    if-ltz v1, :cond_af

    .line 372
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 375
    :goto_ae
    return-object v0

    .line 374
    :cond_af
    invoke-interface {p5, v0}, Lcn/sharesdk/dropbox/UploadViewCallBack;->onResule(Ljava/lang/String;)V

    .line 375
    const/4 v0, 0x0

    goto :goto_ae
.end method

.method private a([BLjava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
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
    .line 312
    const-string v1, "https://content.dropboxapi.com/2/files/upload_session/finish"

    .line 313
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 314
    iget-object v0, p0, Lcn/sharesdk/dropbox/b;->c:Lcn/sharesdk/framework/utils/a;

    sget-object v3, Lcn/sharesdk/framework/utils/a$a;->b:Lcn/sharesdk/framework/utils/a$a;

    invoke-virtual {v0, v1, v2, v3}, Lcn/sharesdk/framework/utils/a;->c(Ljava/lang/String;Ljava/util/ArrayList;Lcn/sharesdk/framework/utils/a$a;)Ljava/util/ArrayList;

    move-result-object v0

    .line 315
    iget-object v3, p0, Lcn/sharesdk/dropbox/b;->c:Lcn/sharesdk/framework/utils/a;

    invoke-virtual {v3, v0}, Lcn/sharesdk/framework/utils/a;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    .line 316
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 317
    const-string v3, "session_id"

    invoke-virtual {v0, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    const-string v3, "offset"

    iget v5, p0, Lcn/sharesdk/dropbox/b;->j:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    new-instance v3, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v3}, Lcom/mob/tools/utils/Hashon;-><init>()V

    .line 320
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 321
    const-string v6, "mute"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    const-string v6, "autorename"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    const-string v6, "mode"

    const-string v7, "add"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    const-string v6, "path"

    invoke-virtual {v5, v6, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 326
    const-string v7, "cursor"

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    const-string v0, "commit"

    invoke-virtual {v6, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    invoke-virtual {v3, v6}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 329
    new-instance v3, Lcom/mob/tools/network/KVPair;

    const-string v5, "Authorization"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bearer "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcn/sharesdk/dropbox/b;->g:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    new-instance v3, Lcom/mob/tools/network/KVPair;

    const-string v5, "Dropbox-API-Arg"

    invoke-direct {v3, v5, v0}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v3, "Content-Type"

    const-string v5, "application/octet-stream"

    invoke-direct {v0, v3, v5}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    invoke-static {}, Lcn/sharesdk/framework/a/a;->a()Lcn/sharesdk/framework/a/a;

    move-result-object v0

    .line 333
    invoke-virtual {p0}, Lcn/sharesdk/dropbox/b;->c()I

    move-result v5

    const/4 v6, 0x0

    move-object v3, p1

    .line 332
    invoke-virtual/range {v0 .. v6}, Lcn/sharesdk/framework/a/a;->httpPostFilesChecked(Ljava/lang/String;Ljava/util/ArrayList;[BLjava/util/ArrayList;ILcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object v0

    .line 334
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b8

    .line 335
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "response is empty"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0

    .line 337
    :cond_b8
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 338
    if-eqz v1, :cond_c9

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v2

    if-gtz v2, :cond_d1

    .line 339
    :cond_c9
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "response is empty"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0

    .line 342
    :cond_d1
    const-string v2, "error"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_df

    .line 343
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v1

    .line 346
    :cond_df
    return-object v1
.end method

.method static synthetic a(Lcn/sharesdk/dropbox/b;Lcn/sharesdk/framework/authorize/AuthorizeListener;)V
    .registers 2

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcn/sharesdk/dropbox/b;->b(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/dropbox/b;Lcn/sharesdk/twitter/MappedFileReader;)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcn/sharesdk/dropbox/b;->a(Lcn/sharesdk/twitter/MappedFileReader;)[B

    move-result-object v0

    return-object v0
.end method

.method private a(Lcn/sharesdk/twitter/MappedFileReader;)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 273
    if-eqz p1, :cond_e

    .line 274
    invoke-virtual {p1}, Lcn/sharesdk/twitter/MappedFileReader;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_e

    .line 275
    invoke-virtual {p1}, Lcn/sharesdk/twitter/MappedFileReader;->getArray()[B

    move-result-object v0

    .line 278
    :goto_d
    return-object v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method static synthetic b(Lcn/sharesdk/dropbox/b;)I
    .registers 2

    .prologue
    .line 34
    iget v0, p0, Lcn/sharesdk/dropbox/b;->j:I

    return v0
.end method

.method private b()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 151
    :try_start_2
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_7} :catch_31

    move-result-object v0

    .line 156
    iget-object v1, p0, Lcn/sharesdk/dropbox/b;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iget-object v2, p0, Lcn/sharesdk/dropbox/b;->f:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2}, Ljava/security/MessageDigest;->update([BII)V

    .line 157
    new-instance v1, Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-direct {v1, v4, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 158
    const-string v0, "%1$040X"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 159
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 152
    :catch_31
    move-exception v0

    .line 153
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static d()Ljava/lang/String;
    .registers 8

    .prologue
    const/16 v7, 0x10

    const/4 v1, 0x0

    .line 163
    new-array v2, v7, [B

    .line 164
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 165
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    .line 166
    :goto_13
    if-ge v0, v7, :cond_2e

    .line 167
    const-string v4, "%02x"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aget-byte v6, v2, v0

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 169
    :cond_2e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private f(Ljava/lang/String;)Ljava/util/HashMap;
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
    .line 234
    invoke-static {p1}, Lcom/mob/tools/utils/ResHelper;->getFileSize(Ljava/lang/String;)J

    move-result-wide v6

    .line 235
    iget v0, p0, Lcn/sharesdk/dropbox/b;->j:I

    int-to-long v0, v0

    cmp-long v0, v6, v0

    if-gtz v0, :cond_10

    .line 236
    invoke-direct {p0, p1}, Lcn/sharesdk/dropbox/b;->h(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 252
    :goto_f
    return-object v0

    .line 238
    :cond_10
    invoke-direct {p0, p1}, Lcn/sharesdk/dropbox/b;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 239
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 240
    iget-object v0, p0, Lcn/sharesdk/dropbox/b;->i:Lcn/sharesdk/twitter/MappedFileReader;

    invoke-direct {p0, v0}, Lcn/sharesdk/dropbox/b;->a(Lcn/sharesdk/twitter/MappedFileReader;)[B

    move-result-object v1

    .line 241
    iget v0, p0, Lcn/sharesdk/dropbox/b;->j:I

    int-to-long v3, v0

    new-instance v5, Lcn/sharesdk/dropbox/b$2;

    invoke-direct {v5, p0, v2, v6, v7}, Lcn/sharesdk/dropbox/b$2;-><init>(Lcn/sharesdk/dropbox/b;Ljava/lang/String;J)V

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcn/sharesdk/dropbox/b;->a([BLjava/lang/String;JLcn/sharesdk/dropbox/UploadViewCallBack;J)Ljava/util/HashMap;

    .line 248
    iget-object v0, p0, Lcn/sharesdk/dropbox/b;->i:Lcn/sharesdk/twitter/MappedFileReader;

    invoke-direct {p0, v0}, Lcn/sharesdk/dropbox/b;->a(Lcn/sharesdk/twitter/MappedFileReader;)[B

    move-result-object v0

    .line 249
    invoke-direct {p0, v0, v2, p1}, Lcn/sharesdk/dropbox/b;->a([BLjava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    goto :goto_f

    .line 252
    :cond_37
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private g(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 258
    new-instance v1, Lcn/sharesdk/twitter/MappedFileReader;

    iget v2, p0, Lcn/sharesdk/dropbox/b;->j:I

    invoke-direct {v1, p1, v2}, Lcn/sharesdk/twitter/MappedFileReader;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcn/sharesdk/dropbox/b;->i:Lcn/sharesdk/twitter/MappedFileReader;

    .line 259
    iget-object v1, p0, Lcn/sharesdk/dropbox/b;->i:Lcn/sharesdk/twitter/MappedFileReader;

    invoke-direct {p0, v1}, Lcn/sharesdk/dropbox/b;->a(Lcn/sharesdk/twitter/MappedFileReader;)[B

    move-result-object v1

    .line 260
    if-nez v1, :cond_13

    .line 270
    :cond_12
    :goto_12
    return-object v0

    .line 263
    :cond_13
    invoke-direct {p0, v1}, Lcn/sharesdk/dropbox/b;->a([B)Ljava/util/HashMap;

    move-result-object v1

    .line 264
    if-eqz v1, :cond_12

    .line 265
    if-eqz v1, :cond_12

    .line 266
    const-string v0, "session_id"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_12
.end method

.method private h(Ljava/lang/String;)Ljava/util/HashMap;
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
    const/4 v5, 0x1

    .line 381
    const-string v0, "/files/upload"

    .line 382
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://content.dropboxapi.com/2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 383
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 384
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v3, "mute"

    const-string v4, "true"

    invoke-direct {v0, v3, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v3, "autorename"

    const-string v4, "true"

    invoke-direct {v0, v3, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v3, "mode"

    const-string v4, "add"

    invoke-direct {v0, v3, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v3, "path"

    invoke-direct {v0, v3, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 389
    const-string v3, "mute"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    const-string v3, "autorename"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    const-string v3, "mode"

    const-string v4, "add"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    const-string v3, "path"

    invoke-virtual {v0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    new-instance v3, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v3}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v3, v0}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 394
    iget-object v3, p0, Lcn/sharesdk/dropbox/b;->c:Lcn/sharesdk/framework/utils/a;

    sget-object v4, Lcn/sharesdk/framework/utils/a$a;->b:Lcn/sharesdk/framework/utils/a$a;

    invoke-virtual {v3, v1, v2, v4}, Lcn/sharesdk/framework/utils/a;->c(Ljava/lang/String;Ljava/util/ArrayList;Lcn/sharesdk/framework/utils/a$a;)Ljava/util/ArrayList;

    move-result-object v3

    .line 395
    iget-object v4, p0, Lcn/sharesdk/dropbox/b;->c:Lcn/sharesdk/framework/utils/a;

    invoke-virtual {v4, v3}, Lcn/sharesdk/framework/utils/a;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    .line 396
    new-instance v3, Lcom/mob/tools/network/KVPair;

    const-string v5, "Authorization"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bearer "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcn/sharesdk/dropbox/b;->g:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    new-instance v3, Lcom/mob/tools/network/KVPair;

    const-string v5, "Content-Type"

    const-string v6, "application/octet-stream"

    invoke-direct {v3, v5, v6}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    new-instance v3, Lcom/mob/tools/network/KVPair;

    const-string v5, "Dropbox-API-Arg"

    invoke-direct {v3, v5, v0}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    new-instance v3, Lcom/mob/tools/network/KVPair;

    const-string v0, "file"

    invoke-direct {v3, v0, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 401
    invoke-static {}, Lcn/sharesdk/framework/a/a;->a()Lcn/sharesdk/framework/a/a;

    move-result-object v0

    const/4 v5, 0x0

    const-string v6, "/2/files/upload"

    .line 402
    invoke-virtual {p0}, Lcn/sharesdk/dropbox/b;->c()I

    move-result v7

    .line 401
    invoke-virtual/range {v0 .. v7}, Lcn/sharesdk/framework/a/a;->a(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 403
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_dc

    .line 404
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "response is empty"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0

    .line 407
    :cond_dc
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 408
    if-eqz v1, :cond_ed

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v2

    if-gtz v2, :cond_f5

    .line 409
    :cond_ed
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "response is empty"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0

    .line 412
    :cond_f5
    const-string v2, "error"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_103

    .line 413
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v1

    .line 416
    :cond_103
    return-object v1
.end method


# virtual methods
.method public a()Ljava/util/HashMap;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
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
    .line 196
    const-string v0, "https://api.dropbox.com/2/users/get_current_account"

    .line 197
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 198
    iget-object v2, p0, Lcn/sharesdk/dropbox/b;->c:Lcn/sharesdk/framework/utils/a;

    sget-object v3, Lcn/sharesdk/framework/utils/a$a;->b:Lcn/sharesdk/framework/utils/a$a;

    invoke-virtual {v2, v0, v1, v3}, Lcn/sharesdk/framework/utils/a;->c(Ljava/lang/String;Ljava/util/ArrayList;Lcn/sharesdk/framework/utils/a$a;)Ljava/util/ArrayList;

    move-result-object v1

    .line 199
    iget-object v2, p0, Lcn/sharesdk/dropbox/b;->c:Lcn/sharesdk/framework/utils/a;

    invoke-virtual {v2, v1}, Lcn/sharesdk/framework/utils/a;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    .line 200
    new-instance v2, Lcom/mob/tools/network/KVPair;

    const-string v3, "Authorization"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bearer "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcn/sharesdk/dropbox/b;->g:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    invoke-static {}, Lcn/sharesdk/framework/a/a;->a()Lcn/sharesdk/framework/a/a;

    move-result-object v2

    .line 202
    invoke-virtual {p0}, Lcn/sharesdk/dropbox/b;->c()I

    move-result v3

    const/4 v4, 0x0

    .line 201
    invoke-virtual {v2, v0, v1, v3, v4}, Lcn/sharesdk/framework/a/a;->httpPost(Ljava/lang/String;Ljava/util/ArrayList;ILcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object v0

    .line 203
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 204
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "response is empty"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_4f
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 208
    if-eqz v1, :cond_60

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v2

    if-gtz v2, :cond_68

    .line 209
    :cond_60
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "response is empty"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_68
    const-string v2, "error"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_76

    .line 213
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v1

    .line 216
    :cond_76
    return-object v1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .registers 5
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
    .line 225
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 226
    invoke-direct {p0, p2}, Lcn/sharesdk/dropbox/b;->h(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 228
    :goto_15
    return-object v0

    .line 227
    :cond_16
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2c

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 228
    invoke-direct {p0, p1}, Lcn/sharesdk/dropbox/b;->f(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    goto :goto_15

    .line 230
    :cond_2c
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "Neither filePath nor imagePath is exist"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcn/sharesdk/framework/authorize/AuthorizeListener;Z)V
    .registers 4

    .prologue
    .line 174
    if-eqz p2, :cond_6

    .line 175
    invoke-virtual {p0, p1}, Lcn/sharesdk/dropbox/b;->b(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    .line 193
    :goto_5
    return-void

    .line 179
    :cond_6
    new-instance v0, Lcn/sharesdk/dropbox/b$1;

    invoke-direct {v0, p0, p1}, Lcn/sharesdk/dropbox/b$1;-><init>(Lcn/sharesdk/dropbox/b;Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    invoke-virtual {p0, v0}, Lcn/sharesdk/dropbox/b;->a(Lcn/sharesdk/framework/authorize/SSOListener;)V

    goto :goto_5
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 62
    iput-object p1, p0, Lcn/sharesdk/dropbox/b;->f:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 80
    iget-object v0, p0, Lcn/sharesdk/dropbox/b;->c:Lcn/sharesdk/framework/utils/a;

    invoke-virtual {v0, p1, p2, p3}, Lcn/sharesdk/framework/utils/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 72
    iput-object p1, p0, Lcn/sharesdk/dropbox/b;->d:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 76
    iput-object p1, p0, Lcn/sharesdk/dropbox/b;->e:Ljava/lang/String;

    .line 77
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
    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 132
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "client_id"

    iget-object v3, p0, Lcn/sharesdk/dropbox/b;->d:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "client_secret"

    iget-object v3, p0, Lcn/sharesdk/dropbox/b;->f:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "redirect_uri"

    iget-object v3, p0, Lcn/sharesdk/dropbox/b;->e:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "grant_type"

    const-string v3, "authorization_code"

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "code"

    invoke-direct {v1, v2, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    const-string v1, "https://api.dropbox.com/oauth2/token"

    .line 139
    sget-object v2, Lcn/sharesdk/dropbox/b;->h:Lcn/sharesdk/framework/a/a;

    const-string v3, "/oauth2/token"

    invoke-virtual {p0}, Lcn/sharesdk/dropbox/b;->c()I

    move-result v4

    invoke-virtual {v2, v1, v0, v3, v4}, Lcn/sharesdk/framework/a/a;->b(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 140
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAuthToken resp = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 141
    if-eqz v0, :cond_73

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_73

    .line 144
    :goto_72
    return-object v0

    :cond_73
    const-string v0, "{}"

    goto :goto_72
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 220
    iput-object p1, p0, Lcn/sharesdk/dropbox/b;->g:Ljava/lang/String;

    .line 221
    return-void
.end method

.method public getAuthorizeUrl()Ljava/lang/String;
    .registers 5

    .prologue
    const/16 v3, 0x26

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    const-string v1, "/oauth2/authorize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 121
    const-string v1, "client_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/sharesdk/dropbox/b;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 122
    const-string v1, "redirect_uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/sharesdk/dropbox/b;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 123
    const-string v1, "response_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "code"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 124
    const-string v1, "state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "moblie"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    const-string v1, "/oauth2/authorize"

    invoke-virtual {p0}, Lcn/sharesdk/dropbox/b;->c()I

    move-result v2

    invoke-static {v1, v2}, Lcn/sharesdk/framework/ShareSDK;->logApiEvent(Ljava/lang/String;I)V

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://www.dropbox.com"

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
    .line 85
    new-instance v0, Lcn/sharesdk/dropbox/a;

    invoke-direct {v0, p1}, Lcn/sharesdk/dropbox/a;-><init>(Lcn/sharesdk/framework/authorize/e;)V

    return-object v0
.end method

.method public getRedirectUri()Ljava/lang/String;
    .registers 2

    .prologue
    .line 421
    iget-object v0, p0, Lcn/sharesdk/dropbox/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getSSOProcessor(Lcn/sharesdk/framework/authorize/c;)Lcn/sharesdk/framework/authorize/d;
    .registers 6
    .param p1, "ssoAct"    # Lcn/sharesdk/framework/authorize/c;

    .prologue
    .line 89
    new-instance v0, Lcn/sharesdk/dropbox/c;

    invoke-direct {v0, p1}, Lcn/sharesdk/dropbox/c;-><init>(Lcn/sharesdk/framework/authorize/c;)V

    .line 90
    iget-object v1, p0, Lcn/sharesdk/dropbox/b;->c:Lcn/sharesdk/framework/utils/a;

    invoke-virtual {v1}, Lcn/sharesdk/framework/utils/a;->a()Lcn/sharesdk/framework/utils/a$b;

    move-result-object v1

    iget-object v1, v1, Lcn/sharesdk/framework/utils/a$b;->a:Ljava/lang/String;

    .line 91
    invoke-direct {p0}, Lcn/sharesdk/dropbox/b;->b()Ljava/lang/String;

    move-result-object v2

    .line 92
    invoke-static {}, Lcn/sharesdk/dropbox/b;->d()Ljava/lang/String;

    move-result-object v3

    .line 93
    invoke-virtual {v0, v1, v2, v3}, Lcn/sharesdk/dropbox/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return-object v0
.end method
