.class public Lcom/mob/commons/a;
.super Ljava/lang/Object;
.source "CommonConfig.java"


# static fields
.field private static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static b:J

.field private static c:J

.field private static d:Z


# direct methods
.method private static A()V
    .registers 6

    .prologue
    const v5, 0x15180

    const/4 v4, 0x0

    .line 329
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mob/commons/a;->a:Ljava/util/HashMap;

    .line 330
    sget-object v0, Lcom/mob/commons/a;->a:Ljava/util/HashMap;

    const-string v1, "in"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    sget-object v0, Lcom/mob/commons/a;->a:Ljava/util/HashMap;

    const-string v1, "all"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    sget-object v0, Lcom/mob/commons/a;->a:Ljava/util/HashMap;

    const-string v1, "aspa"

    const-wide/32 v2, 0x278d00

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    sget-object v0, Lcom/mob/commons/a;->a:Ljava/util/HashMap;

    const-string v1, "un"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    sget-object v0, Lcom/mob/commons/a;->a:Ljava/util/HashMap;

    const-string v1, "rt"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    sget-object v0, Lcom/mob/commons/a;->a:Ljava/util/HashMap;

    const-string v1, "rtsr"

    const v2, 0x493e0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    sget-object v0, Lcom/mob/commons/a;->a:Ljava/util/HashMap;

    const-string v1, "mi"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    sget-object v0, Lcom/mob/commons/a;->a:Ljava/util/HashMap;

    const-string v1, "ext"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    sget-object v0, Lcom/mob/commons/a;->a:Ljava/util/HashMap;

    const-string v1, "bs"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    sget-object v0, Lcom/mob/commons/a;->a:Ljava/util/HashMap;

    const-string v1, "bsgap"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    sget-object v0, Lcom/mob/commons/a;->a:Ljava/util/HashMap;

    const-string v1, "di"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    sget-object v0, Lcom/mob/commons/a;->a:Ljava/util/HashMap;

    const-string v1, "l"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    sget-object v0, Lcom/mob/commons/a;->a:Ljava/util/HashMap;

    const-string v1, "lgap"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    sget-object v0, Lcom/mob/commons/a;->a:Ljava/util/HashMap;

    const-string v1, "wi"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    sget-object v0, Lcom/mob/commons/a;->a:Ljava/util/HashMap;

    const-string v1, "wl"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    sget-object v0, Lcom/mob/commons/a;->a:Ljava/util/HashMap;

    const-string v1, "wlsr"

    const/16 v2, 0x258

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    sget-object v0, Lcom/mob/commons/a;->a:Ljava/util/HashMap;

    const-string v1, "adle"

    const v2, 0x2a300

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    sget-object v0, Lcom/mob/commons/a;->a:Ljava/util/HashMap;

    const-string v1, "rtgap"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    sget-object v0, Lcom/mob/commons/a;->a:Ljava/util/HashMap;

    const-string v1, "p"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    sget-object v0, Lcom/mob/commons/a;->a:Ljava/util/HashMap;

    const-string v1, "ol"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    return-void
.end method

.method private static B()V
    .registers 1

    .prologue
    .line 363
    sget-boolean v0, Lcom/mob/commons/a;->d:Z

    if-nez v0, :cond_f

    .line 364
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mob/commons/a;->d:Z

    .line 365
    new-instance v0, Lcom/mob/commons/a$1;

    invoke-direct {v0}, Lcom/mob/commons/a$1;-><init>()V

    .line 374
    invoke-virtual {v0}, Lcom/mob/commons/a$1;->start()V

    .line 376
    :cond_f
    return-void
.end method

.method private static C()Ljava/lang/String;
    .registers 3

    .prologue
    .line 379
    const/4 v0, 0x0

    .line 381
    :try_start_1
    invoke-static {}, Lcom/mob/commons/e;->g()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4} :catch_e

    move-result-object v0

    .line 386
    :goto_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v0, "http://m.data.mob.com/v3/cconf"

    :cond_d
    return-object v0

    .line 382
    :catch_e
    move-exception v1

    .line 383
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public static a()J
    .registers 8

    .prologue
    const-wide/16 v4, 0x0

    .line 61
    invoke-static {}, Lcom/mob/commons/a;->w()V

    .line 62
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 63
    sget-object v0, Lcom/mob/commons/a;->a:Ljava/util/HashMap;

    const-string v1, "deviceTime"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 66
    :try_start_15
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_1c} :catch_38

    move-result-wide v0

    move-wide v2, v0

    .line 68
    :goto_1e
    sget-object v0, Lcom/mob/commons/a;->a:Ljava/util/HashMap;

    const-string v1, "serverTime"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 69
    sub-long v2, v6, v2

    add-long/2addr v0, v2

    return-wide v0

    .line 67
    :catch_38
    move-exception v0

    move-wide v2, v4

    goto :goto_1e
.end method

.method static synthetic a(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 21
    invoke-static {p0}, Lcom/mob/commons/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Z)Z
    .registers 1

    .prologue
    .line 21
    sput-boolean p0, Lcom/mob/commons/a;->d:Z

    return p0
.end method

.method private static b(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 355
    :try_start_0
    new-instance v0, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v0}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v0, p0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/mob/commons/a;->a:Ljava/util/HashMap;
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_b} :catch_c

    .line 359
    :goto_b
    return-void

    .line 356
    :catch_c
    move-exception v0

    .line 357
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_b
.end method

.method public static b()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 74
    invoke-static {}, Lcom/mob/commons/a;->w()V

    .line 75
    sget-object v0, Lcom/mob/commons/a;->a:Ljava/util/HashMap;

    const-string v3, "rt"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v1, v0, :cond_1f

    move v0, v1

    :goto_1e
    return v0

    :cond_1f
    move v0, v2

    goto :goto_1e
.end method

.method public static c()I
    .registers 2

    .prologue
    .line 80
    invoke-static {}, Lcom/mob/commons/a;->w()V

    .line 81
    sget-object v0, Lcom/mob/commons/a;->a:Ljava/util/HashMap;

    const-string v1, "rtsr"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x12c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static d()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 86
    invoke-static {}, Lcom/mob/commons/a;->w()V

    .line 87
    sget-object v0, Lcom/mob/commons/a;->a:Ljava/util/HashMap;

    const-string v3, "in"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v1, v0, :cond_1f

    move v0, v1

    :goto_1e
    return v0

    :cond_1f
    move v0, v2

    goto :goto_1e
.end method

.method public static e()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 92
    invoke-static {}, Lcom/mob/commons/a;->w()V

    .line 93
    sget-object v0, Lcom/mob/commons/a;->a:Ljava/util/HashMap;

    const-string v3, "all"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v1, v0, :cond_1f

    move v0, v1

    :goto_1e
    return v0

    :cond_1f
    move v0, v2

    goto :goto_1e
.end method

.method public static f()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 98
    invoke-static {}, Lcom/mob/commons/a;->w()V

    .line 99
    sget-object v0, Lcom/mob/commons/a;->a:Ljava/util/HashMap;

    const-string v3, "un"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v1, v0, :cond_1f

    move v0, v1

    :goto_1e
    return v0

    :cond_1f
    move v0, v2

    goto :goto_1e
.end method

.method public static g()J
    .registers 4

    .prologue
    .line 104
    invoke-static {}, Lcom/mob/commons/a;->w()V

    .line 105
    sget-object v0, Lcom/mob/commons/a;->a:Ljava/util/HashMap;

    const-string v1, "aspa"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-wide/32 v2, 0x278d00

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static h()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 110
    invoke-static {}, Lcom/mob/commons/a;->w()V

    .line 111
    sget-object v0, Lcom/mob/commons/a;->a:Ljava/util/HashMap;

    const-string v3, "di"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v1, v0, :cond_1f

    move v0, v1

    :goto_1e
    return v0

    :cond_1f
    move v0, v2

    goto :goto_1e
.end method

.method public static i()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 116
    invoke-static {}, Lcom/mob/commons/a;->w()V

    .line 117
    sget-object v0, Lcom/mob/commons/a;->a:Ljava/util/HashMap;

    const-string v3, "ext"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v1, v0, :cond_1f

    move v0, v1

    :goto_1e
    return v0

    :cond_1f
    move v0, v2

    goto :goto_1e
.end method

.method public static j()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 122
    invoke-static {}, Lcom/mob/commons/a;->w()V

    .line 123
    sget-object v0, Lcom/mob/commons/a;->a:Ljava/util/HashMap;

    const-string v3, "bs"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v1, v0, :cond_1f

    move v0, v1

    :goto_1e
    return v0

    :cond_1f
    move v0, v2

    goto :goto_1e
.end method

.method public static k()I
    .registers 2

    .prologue
    .line 128
    invoke-static {}, Lcom/mob/commons/a;->w()V

    .line 129
    sget-object v0, Lcom/mob/commons/a;->a:Ljava/util/HashMap;

    const-string v1, "bsgap"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const v1, 0x15180

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static l()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 134
    invoke-static {}, Lcom/mob/commons/a;->w()V

    .line 135
    sget-object v0, Lcom/mob/commons/a;->a:Ljava/util/HashMap;

    const-string v3, "l"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v1, v0, :cond_1f

    move v0, v1

    :goto_1e
    return v0

    :cond_1f
    move v0, v2

    goto :goto_1e
.end method

.method public static m()I
    .registers 2

    .prologue
    .line 140
    invoke-static {}, Lcom/mob/commons/a;->w()V

    .line 141
    sget-object v0, Lcom/mob/commons/a;->a:Ljava/util/HashMap;

    const-string v1, "lgap"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const v1, 0x15180

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static n()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 146
    invoke-static {}, Lcom/mob/commons/a;->w()V

    .line 147
    sget-object v0, Lcom/mob/commons/a;->a:Ljava/util/HashMap;

    const-string v3, "wi"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v1, v0, :cond_1f

    move v0, v1

    :goto_1e
    return v0

    :cond_1f
    move v0, v2

    goto :goto_1e
.end method

.method public static o()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 152
    invoke-static {}, Lcom/mob/commons/a;->w()V

    .line 153
    sget-object v0, Lcom/mob/commons/a;->a:Ljava/util/HashMap;

    const-string v3, "wl"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v1, v0, :cond_1f

    move v0, v1

    :goto_1e
    return v0

    :cond_1f
    move v0, v2

    goto :goto_1e
.end method

.method public static p()I
    .registers 2

    .prologue
    .line 158
    invoke-static {}, Lcom/mob/commons/a;->w()V

    .line 159
    sget-object v0, Lcom/mob/commons/a;->a:Ljava/util/HashMap;

    const-string v1, "wlsr"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x258

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static q()J
    .registers 4

    .prologue
    .line 164
    invoke-static {}, Lcom/mob/commons/a;->w()V

    .line 165
    sget-object v0, Lcom/mob/commons/a;->a:Ljava/util/HashMap;

    const-string v1, "adle"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const v1, 0x2a300

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    .line 166
    invoke-static {}, Lcom/mob/commons/a;->a()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static r()J
    .registers 4

    .prologue
    .line 171
    invoke-static {}, Lcom/mob/commons/a;->w()V

    .line 172
    sget-object v0, Lcom/mob/commons/a;->a:Ljava/util/HashMap;

    const-string v1, "rtgap"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const v1, 0x15180

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public static s()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 177
    invoke-static {}, Lcom/mob/commons/a;->w()V

    .line 178
    sget-object v0, Lcom/mob/commons/a;->a:Ljava/util/HashMap;

    const-string v3, "p"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v1, v0, :cond_1f

    move v0, v1

    :goto_1e
    return v0

    :cond_1f
    move v0, v2

    goto :goto_1e
.end method

.method public static t()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 183
    invoke-static {}, Lcom/mob/commons/a;->w()V

    .line 184
    sget-object v0, Lcom/mob/commons/a;->a:Ljava/util/HashMap;

    const-string v3, "ol"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v1, v0, :cond_1f

    move v0, v1

    :goto_1e
    return v0

    :cond_1f
    move v0, v2

    goto :goto_1e
.end method

.method static synthetic u()Ljava/lang/String;
    .registers 1

    .prologue
    .line 21
    invoke-static {}, Lcom/mob/commons/a;->z()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic v()Ljava/util/HashMap;
    .registers 1

    .prologue
    .line 21
    sget-object v0, Lcom/mob/commons/a;->a:Ljava/util/HashMap;

    return-object v0
.end method

.method private static declared-synchronized w()V
    .registers 8

    .prologue
    .line 191
    const-class v1, Lcom/mob/commons/a;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 192
    sget-object v0, Lcom/mob/commons/a;->a:Ljava/util/HashMap;

    if-nez v0, :cond_15

    .line 193
    invoke-static {}, Lcom/mob/commons/a;->x()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 194
    sput-wide v2, Lcom/mob/commons/a;->b:J
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_29

    .line 201
    :cond_13
    :goto_13
    monitor-exit v1

    return-void

    .line 196
    :cond_15
    :try_start_15
    sget-wide v4, Lcom/mob/commons/a;->b:J

    sub-long v4, v2, v4

    const-wide/32 v6, 0xea60

    cmp-long v0, v4, v6

    if-ltz v0, :cond_13

    .line 197
    invoke-static {}, Lcom/mob/commons/a;->y()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 198
    sput-wide v2, Lcom/mob/commons/a;->b:J
    :try_end_28
    .catchall {:try_start_15 .. :try_end_28} :catchall_29

    goto :goto_13

    .line 191
    :catchall_29
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static x()Z
    .registers 2

    .prologue
    .line 204
    invoke-static {}, Lcom/mob/commons/a;->z()Ljava/lang/String;

    move-result-object v0

    .line 205
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 206
    invoke-static {}, Lcom/mob/commons/a;->A()V

    .line 207
    const/4 v0, 0x0

    .line 211
    :goto_e
    return v0

    .line 209
    :cond_f
    invoke-static {v0}, Lcom/mob/commons/a;->b(Ljava/lang/String;)V

    .line 210
    new-instance v0, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v0}, Lcom/mob/tools/utils/Hashon;-><init>()V

    sget-object v1, Lcom/mob/commons/a;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/commons/e;->d(Ljava/lang/String;)V

    .line 211
    const/4 v0, 0x1

    goto :goto_e
.end method

.method private static y()Z
    .registers 4

    .prologue
    .line 217
    invoke-static {}, Lcom/mob/commons/e;->e()Ljava/lang/String;

    move-result-object v0

    .line 218
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 220
    invoke-static {}, Lcom/mob/commons/a;->x()Z

    move-result v0

    .line 227
    :goto_e
    return v0

    .line 222
    :cond_f
    invoke-static {v0}, Lcom/mob/commons/a;->b(Ljava/lang/String;)V

    .line 223
    sget-object v0, Lcom/mob/commons/a;->a:Ljava/util/HashMap;

    const-string v1, "timestamp"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 224
    sget-wide v2, Lcom/mob/commons/a;->c:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-ltz v0, :cond_37

    .line 225
    invoke-static {}, Lcom/mob/commons/a;->B()V

    .line 227
    :cond_37
    const/4 v0, 0x1

    goto :goto_e
.end method

.method private static z()Ljava/lang/String;
    .registers 10

    .prologue
    const/4 v3, 0x0

    .line 234
    :try_start_1
    new-instance v0, Lcom/mob/tools/network/NetworkHelper;

    invoke-direct {v0}, Lcom/mob/tools/network/NetworkHelper;-><init>()V

    .line 235
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v1

    .line 236
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 237
    new-instance v4, Lcom/mob/tools/network/KVPair;

    const-string v5, "appkey"

    invoke-static {}, Lcom/mob/MobSDK;->getAppkey()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    new-instance v4, Lcom/mob/tools/network/KVPair;

    const-string v5, "plat"

    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getPlatformCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    new-instance v4, Lcom/mob/tools/network/KVPair;

    const-string v5, "apppkg"

    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    new-instance v4, Lcom/mob/tools/network/KVPair;

    const-string v5, "appver"

    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getAppVersionName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    new-instance v4, Lcom/mob/tools/network/KVPair;

    const-string v5, "networktype"

    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getDetailNetworkTypeForStatic()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v5, v1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    new-instance v1, Lcom/mob/commons/authorize/a;

    invoke-direct {v1}, Lcom/mob/commons/authorize/a;-><init>()V

    .line 243
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/mob/commons/authorize/a;->a(Z)Ljava/lang/String;

    move-result-object v1

    .line 244
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_77

    .line 245
    new-instance v4, Lcom/mob/tools/network/KVPair;

    const-string v5, "duid"

    invoke-direct {v4, v5, v1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    :cond_77
    new-instance v1, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;

    invoke-direct {v1}, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;-><init>()V

    .line 249
    const/16 v4, 0x7530

    iput v4, v1, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->readTimout:I

    .line 250
    const/16 v4, 0x7530

    iput v4, v1, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->connectionTimeout:I

    .line 252
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 253
    invoke-static {}, Lcom/mob/commons/MobProductCollector;->getProducts()Ljava/util/ArrayList;

    move-result-object v5

    .line 254
    new-instance v6, Lcom/mob/tools/network/KVPair;

    const-string v7, "User-Identity"

    invoke-static {v5}, Lcom/mob/commons/MobProductCollector;->getUserIdentity(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v7, v5}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    invoke-static {}, Lcom/mob/commons/a;->C()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v2, v4, v1}, Lcom/mob/tools/network/NetworkHelper;->httpGet(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object v4

    .line 257
    new-instance v5, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v5}, Lcom/mob/tools/utils/Hashon;-><init>()V

    .line 258
    invoke-virtual {v5, v4}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v6

    .line 259
    if-nez v6, :cond_b0

    move-object v0, v3

    .line 323
    :goto_af
    return-object v0

    .line 263
    :cond_b0
    const-string v0, "status"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 264
    const-string v1, "200"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f3

    .line 265
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mob/commons/e;->e(Ljava/lang/String;)V

    .line 266
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mob/commons/e;->f(Ljava/lang/String;)V

    .line 267
    new-instance v0, Ljava/lang/Throwable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "response is illegal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_e3
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_e3} :catch_e3

    .line 319
    :catch_e3
    move-exception v0

    .line 320
    invoke-static {v3}, Lcom/mob/commons/e;->e(Ljava/lang/String;)V

    .line 321
    invoke-static {v3}, Lcom/mob/commons/e;->f(Ljava/lang/String;)V

    .line 322
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    move-object v0, v3

    .line 323
    goto :goto_af

    .line 270
    :cond_f3
    :try_start_f3
    const-string v0, "sr"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 271
    if-eqz v0, :cond_1dc

    .line 272
    const-string v1, "FYsAXMqlWJLCDpnc"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mob/tools/utils/Data;->AES128Decode(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    .line 273
    invoke-virtual {v5, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v7

    .line 274
    if-eqz v7, :cond_1dc

    .line 275
    const-string v0, "cdata"

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 276
    if-eqz v0, :cond_209

    .line 277
    const-string v1, "host"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 278
    const-string v2, "httpport"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 279
    const-string v8, "path"

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 280
    if-eqz v1, :cond_203

    if-eqz v2, :cond_203

    if-eqz v0, :cond_203

    .line 281
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "http://"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, ":"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/commons/e;->e(Ljava/lang/String;)V

    .line 289
    :goto_177
    const-string v0, "cconf"

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 290
    if-eqz v0, :cond_214

    .line 291
    const-string v1, "host"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 292
    const-string v2, "httpport"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 293
    const-string v7, "path"

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 294
    if-eqz v1, :cond_20f

    if-eqz v2, :cond_20f

    if-eqz v0, :cond_20f

    .line 295
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "http://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, ":"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/commons/e;->f(Ljava/lang/String;)V

    .line 305
    :cond_1dc
    :goto_1dc
    const-string v0, "sc"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 306
    if-nez v0, :cond_219

    .line 307
    new-instance v0, Ljava/lang/Throwable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "response is illegal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0

    .line 283
    :cond_203
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mob/commons/e;->e(Ljava/lang/String;)V

    goto/16 :goto_177

    .line 286
    :cond_209
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mob/commons/e;->e(Ljava/lang/String;)V

    goto/16 :goto_177

    .line 297
    :cond_20f
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mob/commons/e;->f(Ljava/lang/String;)V

    goto :goto_1dc

    .line 300
    :cond_214
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mob/commons/e;->f(Ljava/lang/String;)V

    goto :goto_1dc

    .line 309
    :cond_219
    const-string v1, "FYsAXMqlWJLCDpnc"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mob/tools/utils/Data;->AES128Decode(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    .line 310
    invoke-virtual {v5, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 311
    if-nez v1, :cond_243

    .line 312
    new-instance v0, Ljava/lang/Throwable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "response is illegal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0

    .line 315
    :cond_243
    const-string v0, "timestamp"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 316
    const-string v0, "deviceTime"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    const-string v0, "serverTime"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    invoke-virtual {v5, v1}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;
    :try_end_272
    .catch Ljava/lang/Throwable; {:try_start_f3 .. :try_end_272} :catch_e3

    move-result-object v0

    goto/16 :goto_af
.end method
