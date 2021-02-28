.class public Lcn/sharesdk/framework/b/c;
.super Ljava/lang/Object;
.source "Protocols.java"


# instance fields
.field private a:Lcn/sharesdk/framework/b/a/e;

.field private b:Lcom/mob/tools/utils/DeviceHelper;

.field private c:Lcom/mob/tools/network/NetworkHelper;

.field private d:Lcom/mob/tools/utils/Hashon;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {}, Lcn/sharesdk/framework/b/a/e;->a()Lcn/sharesdk/framework/b/a/e;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/framework/b/c;->a:Lcn/sharesdk/framework/b/a/e;

    .line 42
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/framework/b/c;->b:Lcom/mob/tools/utils/DeviceHelper;

    .line 43
    new-instance v0, Lcom/mob/tools/network/NetworkHelper;

    invoke-direct {v0}, Lcom/mob/tools/network/NetworkHelper;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/framework/b/c;->c:Lcom/mob/tools/network/NetworkHelper;

    .line 44
    new-instance v0, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v0}, Lcom/mob/tools/utils/Hashon;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/framework/b/c;->d:Lcom/mob/tools/utils/Hashon;

    .line 46
    :try_start_21
    iget-object v0, p0, Lcn/sharesdk/framework/b/c;->a:Lcn/sharesdk/framework/b/a/e;

    const-string v1, "buffered_server_paths"

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/b/a/e;->h(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 47
    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcn/sharesdk/framework/b/c;->h:Ljava/util/HashMap;
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_2d} :catch_31

    .line 51
    :goto_2d
    invoke-direct {p0}, Lcn/sharesdk/framework/b/c;->g()V

    .line 52
    return-void

    .line 48
    :catch_31
    move-exception v0

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/framework/b/c;->h:Ljava/util/HashMap;

    goto :goto_2d
.end method

.method private e(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 319
    iget-object v0, p0, Lcn/sharesdk/framework/b/c;->a:Lcn/sharesdk/framework/b/a/e;

    invoke-virtual {v0}, Lcn/sharesdk/framework/b/a/e;->c()Z

    move-result v0

    .line 320
    iget-object v1, p0, Lcn/sharesdk/framework/b/c;->a:Lcn/sharesdk/framework/b/a/e;

    invoke-virtual {v1}, Lcn/sharesdk/framework/b/a/e;->d()Z

    move-result v1

    .line 321
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 324
    iget-object v3, p0, Lcn/sharesdk/framework/b/c;->b:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v3}, Lcom/mob/tools/utils/DeviceHelper;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "utf-8"

    invoke-static {v3, v4}, Lcom/mob/tools/utils/Data;->urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    iget-object v3, p0, Lcn/sharesdk/framework/b/c;->b:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v3}, Lcom/mob/tools/utils/DeviceHelper;->getAppVersionName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "utf-8"

    invoke-static {v3, v4}, Lcom/mob/tools/utils/Data;->urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    const v3, 0xeaad

    .line 327
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "utf-8"

    invoke-static {v3, v4}, Lcom/mob/tools/utils/Data;->urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    iget-object v3, p0, Lcn/sharesdk/framework/b/c;->b:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v3}, Lcom/mob/tools/utils/DeviceHelper;->getPlatformCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "utf-8"

    invoke-static {v3, v4}, Lcom/mob/tools/utils/Data;->urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    iget-object v3, p0, Lcn/sharesdk/framework/b/c;->b:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v3}, Lcom/mob/tools/utils/DeviceHelper;->getDetailNetworkTypeForStatic()Ljava/lang/String;

    move-result-object v3

    const-string v4, "utf-8"

    invoke-static {v3, v4}, Lcom/mob/tools/utils/Data;->urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    if-eqz v0, :cond_12a

    .line 332
    iget-object v0, p0, Lcn/sharesdk/framework/b/c;->b:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getOSVersionInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "utf-8"

    invoke-static {v0, v3}, Lcom/mob/tools/utils/Data;->urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    iget-object v0, p0, Lcn/sharesdk/framework/b/c;->b:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getScreenSize()Ljava/lang/String;

    move-result-object v0

    const-string v3, "utf-8"

    invoke-static {v0, v3}, Lcom/mob/tools/utils/Data;->urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    iget-object v0, p0, Lcn/sharesdk/framework/b/c;->b:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getManufacturer()Ljava/lang/String;

    move-result-object v0

    const-string v3, "utf-8"

    invoke-static {v0, v3}, Lcom/mob/tools/utils/Data;->urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    iget-object v0, p0, Lcn/sharesdk/framework/b/c;->b:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getModel()Ljava/lang/String;

    move-result-object v0

    const-string v3, "utf-8"

    invoke-static {v0, v3}, Lcom/mob/tools/utils/Data;->urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    iget-object v0, p0, Lcn/sharesdk/framework/b/c;->b:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getCarrier()Ljava/lang/String;

    move-result-object v0

    const-string v3, "utf-8"

    invoke-static {v0, v3}, Lcom/mob/tools/utils/Data;->urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    :goto_f1
    if-eqz v1, :cond_130

    .line 342
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    :goto_f6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 349
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    const-string v2, "shorLinkMsg ===>>>>"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 352
    iget-object v1, p0, Lcn/sharesdk/framework/b/c;->b:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getDeviceKey()Ljava/lang/String;

    move-result-object v1

    .line 353
    const-string v2, "%s:%s"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v1, v3, v5

    invoke-static {}, Lcom/mob/MobSDK;->getAppkey()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/tools/utils/Data;->rawMD5(Ljava/lang/String;)[B

    move-result-object v1

    .line 354
    invoke-static {v1, v0}, Lcom/mob/tools/utils/Data;->AES128Encode([BLjava/lang/String;)[B

    move-result-object v0

    .line 355
    invoke-static {v0, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 338
    :cond_12a
    const-string v0, "|||||"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f1

    .line 344
    :cond_130
    const-string v0, "\\|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    const-string v0, "|||||"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f6
.end method

.method private g()V
    .registers 5

    .prologue
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/sharesdk/framework/b/c;->b:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/framework/b/c;->b:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getAppVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 57
    const-string v1, "ShareSDK/3.1.1"

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Android/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/sharesdk/framework/b/c;->b:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v3}, Lcom/mob/tools/utils/DeviceHelper;->getOSVersionInt()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 59
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/framework/b/c;->e:Ljava/lang/String;

    .line 65
    const-string v0, "http://api.share.mob.com:80"

    iput-object v0, p0, Lcn/sharesdk/framework/b/c;->f:Ljava/lang/String;

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/sharesdk/framework/b/c;->g:Z

    .line 70
    return-void
.end method

.method private h()Ljava/lang/String;
    .registers 3

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/sharesdk/framework/b/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/conn"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private i()Ljava/lang/String;
    .registers 4

    .prologue
    .line 115
    iget-object v0, p0, Lcn/sharesdk/framework/b/c;->h:Ljava/util/HashMap;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcn/sharesdk/framework/b/c;->h:Ljava/util/HashMap;

    const-string v1, "/date"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcn/sharesdk/framework/b/c;->h:Ljava/util/HashMap;

    const-string v2, "/date"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/date"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 118
    :goto_2b
    return-object v0

    :cond_2c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/sharesdk/framework/b/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/date"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2b
.end method

.method private j()Ljava/lang/String;
    .registers 3

    .prologue
    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/sharesdk/framework/b/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/conf5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private k()Ljava/lang/String;
    .registers 2

    .prologue
    .line 200
    const-string v0, "http://up.sharesdk.cn/upload/image"

    return-object v0
.end method

.method private l()Ljava/lang/String;
    .registers 4

    .prologue
    .line 216
    iget-object v0, p0, Lcn/sharesdk/framework/b/c;->h:Ljava/util/HashMap;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcn/sharesdk/framework/b/c;->h:Ljava/util/HashMap;

    const-string v1, "/log4"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcn/sharesdk/framework/b/c;->h:Ljava/util/HashMap;

    const-string v2, "/log4"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/log4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 219
    :goto_2b
    return-object v0

    :cond_2c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/sharesdk/framework/b/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/log4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2b
.end method

.method private m()Ljava/lang/String;
    .registers 2

    .prologue
    .line 269
    const-string v0, "http://l.mob.com/url/ShareSdkMapping.do"

    return-object v0
.end method

.method private n()Ljava/lang/String;
    .registers 4

    .prologue
    .line 359
    iget-object v0, p0, Lcn/sharesdk/framework/b/c;->h:Ljava/util/HashMap;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcn/sharesdk/framework/b/c;->h:Ljava/util/HashMap;

    const-string v1, "/snsconf"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 360
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcn/sharesdk/framework/b/c;->h:Ljava/util/HashMap;

    const-string v2, "/snsconf"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/snsconf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 362
    :goto_2b
    return-object v0

    :cond_2c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/sharesdk/framework/b/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/snsconf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2b
.end method


# virtual methods
.method public a()Ljava/util/HashMap;
    .registers 8
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
    const/16 v6, 0x7530

    .line 97
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 98
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v1, "appkey"

    invoke-static {}, Lcom/mob/MobSDK;->getAppkey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 100
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v1, "User-Agent"

    iget-object v3, p0, Lcn/sharesdk/framework/b/c;->e:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    new-instance v5, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;

    invoke-direct {v5}, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;-><init>()V

    .line 105
    iput v6, v5, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->readTimout:I

    .line 106
    iput v6, v5, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->connectionTimeout:I

    .line 108
    iget-object v0, p0, Lcn/sharesdk/framework/b/c;->c:Lcom/mob/tools/network/NetworkHelper;

    invoke-direct {p0}, Lcn/sharesdk/framework/b/c;->h()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/mob/tools/network/NetworkHelper;->httpPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object v0

    .line 110
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    const-string v2, " isConnectToServer response == %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 111
    iget-object v1, p0, Lcn/sharesdk/framework/b/c;->d:Lcom/mob/tools/utils/Hashon;

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/HashMap;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I",
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
    const/16 v7, 0x1388

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 276
    iget-boolean v0, p0, Lcn/sharesdk/framework/b/c;->g:Z

    if-nez v0, :cond_9

    .line 314
    :cond_8
    :goto_8
    return-object v3

    .line 280
    :cond_9
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 281
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v1, "key"

    invoke-static {}, Lcom/mob/MobSDK;->getAppkey()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v6

    .line 282
    :goto_1d
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3b

    .line 283
    new-instance v4, Lcom/mob/tools/network/KVPair;

    const-string v5, "urls"

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v5, v0}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1d

    .line 285
    :cond_3b
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v1, "deviceid"

    iget-object v4, p0, Lcn/sharesdk/framework/b/c;->b:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v4}, Lcom/mob/tools/utils/DeviceHelper;->getDeviceKey()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v1, "snsplat"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    invoke-direct {p0, p4}, Lcn/sharesdk/framework/b/c;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 288
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 291
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v4, "m"

    invoke-direct {v1, v4, v0}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 295
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v1, "User-Agent"

    iget-object v5, p0, Lcn/sharesdk/framework/b/c;->e:Ljava/lang/String;

    invoke-direct {v0, v1, v5}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    new-instance v5, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;

    invoke-direct {v5}, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;-><init>()V

    .line 298
    iput v7, v5, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->readTimout:I

    .line 299
    iput v7, v5, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->connectionTimeout:I

    .line 301
    iget-object v0, p0, Lcn/sharesdk/framework/b/c;->c:Lcom/mob/tools/network/NetworkHelper;

    invoke-direct {p0}, Lcn/sharesdk/framework/b/c;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v0 .. v5}, Lcom/mob/tools/network/NetworkHelper;->httpPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object v0

    .line 302
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    const-string v2, "> SERVER_SHORT_LINK_URL  resp: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v6

    invoke-virtual {v1, v2, v4}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 303
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a9

    .line 304
    iput-boolean v6, p0, Lcn/sharesdk/framework/b/c;->g:Z

    goto/16 :goto_8

    .line 308
    :cond_a9
    iget-object v1, p0, Lcn/sharesdk/framework/b/c;->d:Lcom/mob/tools/utils/Hashon;

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 309
    const-string v0, "status"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 310
    const/16 v2, 0xc8

    if-ne v0, v2, :cond_8

    move-object v3, v1

    .line 314
    goto/16 :goto_8
.end method

.method public a(Lcn/sharesdk/framework/b/b/c;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 383
    invoke-virtual {p1}, Lcn/sharesdk/framework/b/b/c;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v2, p1, Lcn/sharesdk/framework/b/b/c;->e:J

    invoke-static {v0, v2, v3}, Lcn/sharesdk/framework/b/a/d;->a(Ljava/lang/String;J)J

    .line 384
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 73
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 74
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "duid === "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/sharesdk/framework/b/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/framework/b/c;->e:Ljava/lang/String;

    .line 77
    :cond_3e
    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 395
    invoke-static {p1}, Lcn/sharesdk/framework/b/a/d;->a(Ljava/util/ArrayList;)J

    .line 396
    return-void
.end method

.method public a(Ljava/util/HashMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    iput-object p1, p0, Lcn/sharesdk/framework/b/c;->h:Ljava/util/HashMap;

    .line 87
    iget-object v0, p0, Lcn/sharesdk/framework/b/c;->a:Lcn/sharesdk/framework/b/a/e;

    const-string v1, "buffered_server_paths"

    iget-object v2, p0, Lcn/sharesdk/framework/b/c;->h:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/framework/b/a/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 89
    return-void
.end method

.method public a(Ljava/lang/String;Z)Z
    .registers 11

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 230
    :try_start_2
    iget-object v0, p0, Lcn/sharesdk/framework/b/c;->b:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getDetailNetworkTypeForStatic()Ljava/lang/String;

    move-result-object v0

    .line 231
    const-string v1, "none"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 232
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "network is disconnected!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_18} :catch_18

    .line 257
    :catch_18
    move-exception v0

    .line 258
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    move v0, v6

    .line 261
    :goto_21
    return v0

    .line 235
    :cond_22
    :try_start_22
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 236
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v1, "m"

    invoke-direct {v0, v1, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v3, "t"

    if-eqz p2, :cond_95

    const-string v0, "1"

    :goto_39
    invoke-direct {v1, v3, v0}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 240
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v1, "User-Agent"

    iget-object v3, p0, Lcn/sharesdk/framework/b/c;->e:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    new-instance v5, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;

    invoke-direct {v5}, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;-><init>()V

    .line 244
    const/16 v0, 0x7530

    iput v0, v5, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->readTimout:I

    .line 245
    const/16 v0, 0x7530

    iput v0, v5, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->connectionTimeout:I

    .line 248
    iget-object v0, p0, Lcn/sharesdk/framework/b/c;->c:Lcom/mob/tools/network/NetworkHelper;

    invoke-direct {p0}, Lcn/sharesdk/framework/b/c;->l()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/mob/tools/network/NetworkHelper;->httpPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object v0

    .line 249
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    const-string v2, "> Upload All Log  resp: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 250
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_98

    .line 251
    iget-object v1, p0, Lcn/sharesdk/framework/b/c;->d:Lcom/mob/tools/utils/Hashon;

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 252
    const-string v1, "status"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 253
    const/16 v1, 0xc8

    if-eq v0, v1, :cond_98

    move v0, v6

    .line 254
    goto :goto_21

    .line 237
    :cond_95
    const-string v0, "0"
    :try_end_97
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_97} :catch_18

    goto :goto_39

    :cond_98
    move v0, v7

    .line 261
    goto :goto_21
.end method

.method public b()J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lcn/sharesdk/framework/b/c;->a:Lcn/sharesdk/framework/b/a/e;

    invoke-virtual {v0}, Lcn/sharesdk/framework/b/a/e;->i()Z

    move-result v0

    if-nez v0, :cond_b

    .line 127
    const-wide/16 v0, 0x0

    .line 154
    :goto_a
    return-wide v0

    .line 130
    :cond_b
    const-string v0, "{}"

    .line 132
    const/4 v1, 0x0

    .line 133
    :try_start_e
    iget-object v2, p0, Lcn/sharesdk/framework/b/c;->c:Lcom/mob/tools/network/NetworkHelper;

    invoke-direct {p0}, Lcn/sharesdk/framework/b/c;->i()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/mob/tools/network/NetworkHelper;->httpGet(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_19} :catch_57

    move-result-object v0

    .line 140
    :goto_1a
    iget-object v1, p0, Lcn/sharesdk/framework/b/c;->d:Lcom/mob/tools/utils/Hashon;

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 141
    const-string v1, "timestamp"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_60

    .line 143
    :try_start_28
    const-string v1, "timestamp"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/ResHelper;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 144
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    .line 146
    iget-object v2, p0, Lcn/sharesdk/framework/b/c;->a:Lcn/sharesdk/framework/b/a/e;

    const-string v3, "service_time"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcn/sharesdk/framework/b/a/e;->a(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_47} :catch_48

    goto :goto_a

    .line 147
    :catch_48
    move-exception v0

    .line 148
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 149
    iget-object v0, p0, Lcn/sharesdk/framework/b/c;->a:Lcn/sharesdk/framework/b/a/e;

    invoke-virtual {v0}, Lcn/sharesdk/framework/b/a/e;->b()J

    move-result-wide v0

    goto :goto_a

    .line 135
    :catch_57
    move-exception v1

    .line 136
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_1a

    .line 152
    :cond_60
    iget-object v0, p0, Lcn/sharesdk/framework/b/c;->a:Lcn/sharesdk/framework/b/a/e;

    invoke-virtual {v0}, Lcn/sharesdk/framework/b/a/e;->b()J

    move-result-wide v0

    goto :goto_a
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 81
    iput-object p1, p0, Lcn/sharesdk/framework/b/c;->f:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public b(Ljava/util/HashMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 407
    iget-object v0, p0, Lcn/sharesdk/framework/b/c;->d:Lcom/mob/tools/utils/Hashon;

    invoke-virtual {v0, p1}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 408
    iget-object v1, p0, Lcn/sharesdk/framework/b/c;->a:Lcn/sharesdk/framework/b/a/e;

    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/b/a/e;->e(Ljava/lang/String;)V

    .line 409
    return-void
.end method

.method public c()Ljava/util/HashMap;
    .registers 8
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
    const/16 v6, 0x2710

    .line 163
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 164
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v1, "appkey"

    invoke-static {}, Lcom/mob/MobSDK;->getAppkey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v1, "device"

    iget-object v3, p0, Lcn/sharesdk/framework/b/c;->b:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v3}, Lcom/mob/tools/utils/DeviceHelper;->getDeviceKey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v1, "plat"

    iget-object v3, p0, Lcn/sharesdk/framework/b/c;->b:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v3}, Lcom/mob/tools/utils/DeviceHelper;->getPlatformCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v1, "apppkg"

    iget-object v3, p0, Lcn/sharesdk/framework/b/c;->b:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v3}, Lcom/mob/tools/utils/DeviceHelper;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v1, "appver"

    iget-object v3, p0, Lcn/sharesdk/framework/b/c;->b:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v3}, Lcom/mob/tools/utils/DeviceHelper;->getAppVersion()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    const v0, 0xeaad

    .line 170
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v3, "sdkver"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v1, "networktype"

    iget-object v3, p0, Lcn/sharesdk/framework/b/c;->b:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v3}, Lcom/mob/tools/utils/DeviceHelper;->getDetailNetworkTypeForStatic()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 174
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v1, "User-Agent"

    iget-object v3, p0, Lcn/sharesdk/framework/b/c;->e:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    new-instance v5, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;

    invoke-direct {v5}, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;-><init>()V

    .line 178
    iput v6, v5, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->readTimout:I

    .line 179
    iput v6, v5, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->connectionTimeout:I

    .line 181
    iget-object v0, p0, Lcn/sharesdk/framework/b/c;->c:Lcom/mob/tools/network/NetworkHelper;

    invoke-direct {p0}, Lcn/sharesdk/framework/b/c;->j()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/mob/tools/network/NetworkHelper;->httpPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object v0

    .line 184
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    const-string v2, " get server config response == %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 185
    iget-object v1, p0, Lcn/sharesdk/framework/b/c;->d:Lcom/mob/tools/utils/Hashon;

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 8
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

    .line 206
    new-instance v3, Lcom/mob/tools/network/KVPair;

    const-string v0, "file"

    invoke-direct {v3, v0, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 207
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 208
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v1, "User-Agent"

    iget-object v5, p0, Lcn/sharesdk/framework/b/c;->e:Ljava/lang/String;

    invoke-direct {v0, v1, v5}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    iget-object v0, p0, Lcn/sharesdk/framework/b/c;->c:Lcom/mob/tools/network/NetworkHelper;

    invoke-direct {p0}, Lcn/sharesdk/framework/b/c;->k()Ljava/lang/String;

    move-result-object v1

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/mob/tools/network/NetworkHelper;->httpPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object v0

    .line 211
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    const-string v2, "upload file response == %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 212
    iget-object v1, p0, Lcn/sharesdk/framework/b/c;->d:Lcom/mob/tools/utils/Hashon;

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/util/HashMap;
    .registers 8
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
    const/16 v6, 0x2710

    .line 366
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 367
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v1, "appkey"

    invoke-static {}, Lcom/mob/MobSDK;->getAppkey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v1, "device"

    iget-object v3, p0, Lcn/sharesdk/framework/b/c;->b:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v3}, Lcom/mob/tools/utils/DeviceHelper;->getDeviceKey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 371
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v1, "User-Agent"

    iget-object v3, p0, Lcn/sharesdk/framework/b/c;->e:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    new-instance v5, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;

    invoke-direct {v5}, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;-><init>()V

    .line 374
    iput v6, v5, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->readTimout:I

    .line 375
    iput v6, v5, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->connectionTimeout:I

    .line 377
    iget-object v0, p0, Lcn/sharesdk/framework/b/c;->c:Lcom/mob/tools/network/NetworkHelper;

    invoke-direct {p0}, Lcn/sharesdk/framework/b/c;->n()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/mob/tools/network/NetworkHelper;->httpPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object v0

    .line 379
    iget-object v1, p0, Lcn/sharesdk/framework/b/c;->d:Lcom/mob/tools/utils/Hashon;

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 6
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
    .line 412
    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 414
    iget-object v1, p0, Lcn/sharesdk/framework/b/c;->b:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getDeviceKey()Ljava/lang/String;

    move-result-object v1

    .line 415
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mob/MobSDK;->getAppkey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/tools/utils/Data;->rawMD5(Ljava/lang/String;)[B

    move-result-object v1

    .line 417
    invoke-static {v1, v0}, Lcom/mob/tools/utils/Data;->AES128Decode([B[B)[B

    move-result-object v0

    .line 418
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 419
    iget-object v1, p0, Lcn/sharesdk/framework/b/c;->d:Lcom/mob/tools/utils/Hashon;

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/sharesdk/framework/b/a/c;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 387
    invoke-static {}, Lcn/sharesdk/framework/b/a/d;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 388
    if-nez v0, :cond_b

    .line 389
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 391
    :cond_b
    return-object v0
.end method

.method public f()Ljava/util/HashMap;
    .registers 3
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
    .line 399
    .line 400
    iget-object v0, p0, Lcn/sharesdk/framework/b/c;->a:Lcn/sharesdk/framework/b/a/e;

    invoke-virtual {v0}, Lcn/sharesdk/framework/b/a/e;->g()Ljava/lang/String;

    move-result-object v0

    .line 402
    iget-object v1, p0, Lcn/sharesdk/framework/b/c;->d:Lcom/mob/tools/utils/Hashon;

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 403
    return-object v0
.end method
