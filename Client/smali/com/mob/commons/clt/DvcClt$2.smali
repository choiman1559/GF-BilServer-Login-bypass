.class Lcom/mob/commons/clt/DvcClt$2;
.super Landroid/content/BroadcastReceiver;
.source "DvcClt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/clt/DvcClt;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/commons/clt/DvcClt;


# direct methods
.method constructor <init>(Lcom/mob/commons/clt/DvcClt;)V
    .registers 2

    .prologue
    .line 258
    iput-object p1, p0, Lcom/mob/commons/clt/DvcClt$2;->a:Lcom/mob/commons/clt/DvcClt;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .prologue
    .line 261
    :try_start_0
    const-string v0, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 289
    :cond_c
    :goto_c
    return-void

    .line 265
    :cond_d
    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 266
    if-eqz v0, :cond_c

    .line 270
    check-cast v0, Landroid/net/NetworkInfo;

    .line 271
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 275
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 276
    invoke-static {p1}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v1

    .line 277
    const-string v2, "ssid"

    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    const-string v2, "bssid"

    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getBssid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    iget-object v1, p0, Lcom/mob/commons/clt/DvcClt$2;->a:Lcom/mob/commons/clt/DvcClt;

    invoke-static {v1}, Lcom/mob/commons/clt/DvcClt;->a(Lcom/mob/commons/clt/DvcClt;)Lcom/mob/tools/utils/Hashon;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 280
    invoke-static {v0}, Lcom/mob/tools/utils/Data;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 281
    invoke-static {}, Lcom/mob/commons/e;->c()Ljava/lang/String;

    move-result-object v1

    .line 282
    if-eqz v1, :cond_52

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 283
    :cond_52
    invoke-static {}, Lcom/mob/commons/a;->n()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 284
    iget-object v0, p0, Lcom/mob/commons/clt/DvcClt$2;->a:Lcom/mob/commons/clt/DvcClt;

    invoke-static {v0}, Lcom/mob/commons/clt/DvcClt;->b(Lcom/mob/commons/clt/DvcClt;)V
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5d} :catch_5e

    goto :goto_c

    .line 286
    :catch_5e
    move-exception v0

    .line 287
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_c
.end method
