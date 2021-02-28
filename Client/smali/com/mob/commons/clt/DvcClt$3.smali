.class Lcom/mob/commons/clt/DvcClt$3;
.super Landroid/content/BroadcastReceiver;
.source "DvcClt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/clt/DvcClt;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/mob/commons/clt/DvcClt;

.field private c:J


# direct methods
.method constructor <init>(Lcom/mob/commons/clt/DvcClt;I)V
    .registers 3

    .prologue
    .line 381
    iput-object p1, p0, Lcom/mob/commons/clt/DvcClt$3;->b:Lcom/mob/commons/clt/DvcClt;

    iput p2, p0, Lcom/mob/commons/clt/DvcClt$3;->a:I

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11

    .prologue
    .line 386
    :try_start_0
    const-string v0, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 418
    :cond_c
    :goto_c
    return-void

    .line 390
    :cond_d
    invoke-static {}, Lcom/mob/commons/a;->a()J

    move-result-wide v0

    .line 391
    iget-wide v2, p0, Lcom/mob/commons/clt/DvcClt$3;->c:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2a

    const-wide/16 v2, 0x3e8

    div-long v2, v0, v2

    iget-wide v4, p0, Lcom/mob/commons/clt/DvcClt$3;->c:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    sub-long/2addr v2, v4

    iget v4, p0, Lcom/mob/commons/clt/DvcClt$3;->a:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_c

    .line 395
    :cond_2a
    iput-wide v0, p0, Lcom/mob/commons/clt/DvcClt$3;->c:J

    .line 396
    invoke-static {p1}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    .line 397
    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getAvailableWifiList()Ljava/util/ArrayList;

    move-result-object v1

    .line 398
    if-eqz v1, :cond_c

    .line 399
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 400
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3f
    :goto_3f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 401
    const-string v4, "BSSID"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 402
    if-eqz v0, :cond_3f

    .line 403
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5a} :catch_5b

    goto :goto_3f

    .line 415
    :catch_5b
    move-exception v0

    .line 416
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_c

    .line 406
    :cond_64
    :try_start_64
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 407
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 408
    const-string v0, ""

    invoke-static {v0, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/Data;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 409
    invoke-static {}, Lcom/mob/commons/e;->h()Ljava/lang/String;

    move-result-object v2

    .line 410
    if-eqz v2, :cond_82

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 411
    :cond_82
    iget-object v2, p0, Lcom/mob/commons/clt/DvcClt$3;->b:Lcom/mob/commons/clt/DvcClt;

    invoke-static {v2, v1}, Lcom/mob/commons/clt/DvcClt;->a(Lcom/mob/commons/clt/DvcClt;Ljava/util/ArrayList;)V

    .line 412
    invoke-static {v0}, Lcom/mob/commons/e;->g(Ljava/lang/String;)V
    :try_end_8a
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_8a} :catch_5b

    goto :goto_c
.end method
