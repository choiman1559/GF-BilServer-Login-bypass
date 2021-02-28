.class public Lcom/mob/commons/clt/DvcClt;
.super Ljava/lang/Object;
.source "DvcClt.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/mob/tools/proguard/PublicMemberKeeper;


# static fields
.field private static a:Lcom/mob/commons/clt/DvcClt;


# instance fields
.field private b:Lcom/mob/tools/utils/Hashon;

.field private c:Landroid/os/Handler;

.field private d:Ljava/util/Random;

.field private e:Landroid/content/BroadcastReceiver;

.field private f:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v0}, Lcom/mob/tools/utils/Hashon;-><init>()V

    iput-object v0, p0, Lcom/mob/commons/clt/DvcClt;->b:Lcom/mob/tools/utils/Hashon;

    .line 67
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/mob/commons/clt/DvcClt;->d:Ljava/util/Random;

    .line 68
    return-void
.end method

.method static synthetic a(Lcom/mob/commons/clt/DvcClt;)Lcom/mob/tools/utils/Hashon;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mob/commons/clt/DvcClt;->b:Lcom/mob/tools/utils/Hashon;

    return-object v0
.end method

.method private a()V
    .registers 3

    .prologue
    .line 71
    new-instance v0, Lcom/mob/commons/clt/DvcClt$1;

    invoke-direct {v0, p0}, Lcom/mob/commons/clt/DvcClt$1;-><init>(Lcom/mob/commons/clt/DvcClt;)V

    .line 86
    invoke-virtual {v0}, Lcom/mob/tools/MobHandlerThread;->start()V

    .line 87
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Lcom/mob/tools/MobHandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/mob/commons/clt/DvcClt;->c:Landroid/os/Handler;

    .line 89
    iget-object v0, p0, Lcom/mob/commons/clt/DvcClt;->c:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 90
    iget-object v0, p0, Lcom/mob/commons/clt/DvcClt;->c:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 91
    iget-object v0, p0, Lcom/mob/commons/clt/DvcClt;->c:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 92
    iget-object v0, p0, Lcom/mob/commons/clt/DvcClt;->c:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 93
    iget-object v0, p0, Lcom/mob/commons/clt/DvcClt;->c:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 94
    iget-object v0, p0, Lcom/mob/commons/clt/DvcClt;->c:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 95
    return-void
.end method

.method private a(I)V
    .registers 5

    .prologue
    .line 380
    iget-object v0, p0, Lcom/mob/commons/clt/DvcClt;->f:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_b

    .line 381
    new-instance v0, Lcom/mob/commons/clt/DvcClt$3;

    invoke-direct {v0, p0, p1}, Lcom/mob/commons/clt/DvcClt$3;-><init>(Lcom/mob/commons/clt/DvcClt;I)V

    iput-object v0, p0, Lcom/mob/commons/clt/DvcClt;->f:Landroid/content/BroadcastReceiver;

    .line 421
    :cond_b
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 422
    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 424
    :try_start_15
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mob/commons/clt/DvcClt;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_1e} :catch_1f

    .line 426
    :goto_1e
    return-void

    .line 425
    :catch_1f
    move-exception v0

    goto :goto_1e
.end method

.method private a(Landroid/location/Location;I)V
    .registers 7

    .prologue
    .line 360
    if-eqz p1, :cond_59

    .line 361
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 362
    const-string v1, "accuracy"

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    const-string v1, "latitude"

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    const-string v1, "longitude"

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 367
    if-nez p2, :cond_5a

    .line 368
    const-string v2, "type"

    const-string v3, "O_LOCATION"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    :goto_3c
    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    const-string v0, "datetime"

    invoke-static {}, Lcom/mob/commons/a;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    invoke-static {}, Lcom/mob/commons/b;->a()Lcom/mob/commons/b;

    move-result-object v0

    invoke-static {}, Lcom/mob/commons/a;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, v1}, Lcom/mob/commons/b;->a(JLjava/util/HashMap;)V

    .line 377
    :cond_59
    return-void

    .line 370
    :cond_5a
    const-string v2, "type"

    const-string v3, "LOCATION"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    const-string v2, "location_type"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3c
.end method

.method static synthetic a(Lcom/mob/commons/clt/DvcClt;Ljava/util/ArrayList;)V
    .registers 2

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/mob/commons/clt/DvcClt;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method private a(Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 429
    sget-object v1, Lcom/mob/commons/clt/DvcClt;->a:Lcom/mob/commons/clt/DvcClt;

    monitor-enter v1

    .line 431
    :try_start_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 432
    const-string v2, "type"

    const-string v3, "WIFI_SCAN_LIST"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    const-string v2, "list"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    const-string v2, "datetime"

    invoke-static {}, Lcom/mob/commons/a;->a()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    invoke-static {}, Lcom/mob/commons/b;->a()Lcom/mob/commons/b;

    move-result-object v2

    invoke-static {}, Lcom/mob/commons/a;->a()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5, v0}, Lcom/mob/commons/b;->a(JLjava/util/HashMap;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_2c} :catch_2e
    .catchall {:try_start_3 .. :try_end_2c} :catchall_37

    .line 439
    :goto_2c
    :try_start_2c
    monitor-exit v1

    .line 440
    return-void

    .line 436
    :catch_2e
    move-exception v0

    .line 437
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_2c

    .line 439
    :catchall_37
    move-exception v0

    monitor-exit v1
    :try_end_39
    .catchall {:try_start_2c .. :try_end_39} :catchall_37

    throw v0
.end method

.method private b()V
    .registers 7

    .prologue
    .line 193
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 194
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v1

    .line 195
    const-string v2, "phonename"

    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getBluetoothName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    const-string v2, "signmd5"

    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getSignMD5()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    iget-object v1, p0, Lcom/mob/commons/clt/DvcClt;->b:Lcom/mob/tools/utils/Hashon;

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    .line 198
    invoke-static {v1}, Lcom/mob/tools/utils/Data;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 199
    invoke-static {}, Lcom/mob/commons/e;->a()Ljava/lang/String;

    move-result-object v2

    .line 200
    if-eqz v2, :cond_35

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_61

    .line 201
    :cond_35
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 202
    const-string v3, "type"

    const-string v4, "DEVEXT"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const-string v3, "data"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const-string v0, "datetime"

    invoke-static {}, Lcom/mob/commons/a;->a()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    invoke-static {}, Lcom/mob/commons/b;->a()Lcom/mob/commons/b;

    move-result-object v0

    invoke-static {}, Lcom/mob/commons/a;->a()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5, v2}, Lcom/mob/commons/b;->a(JLjava/util/HashMap;)V

    .line 206
    invoke-static {v1}, Lcom/mob/commons/e;->a(Ljava/lang/String;)V
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_61} :catch_62

    .line 211
    :cond_61
    :goto_61
    return-void

    .line 208
    :catch_62
    move-exception v0

    .line 209
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_61
.end method

.method static synthetic b(Lcom/mob/commons/clt/DvcClt;)V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/mob/commons/clt/DvcClt;->d()V

    return-void
.end method

.method private c()Z
    .registers 10

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x2

    const/4 v0, 0x1

    .line 214
    invoke-static {}, Lcom/mob/commons/e;->b()J

    move-result-wide v2

    .line 215
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 216
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 217
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 218
    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 219
    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 221
    invoke-static {}, Lcom/mob/commons/a;->a()J

    move-result-wide v4

    .line 222
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 223
    invoke-virtual {v6, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 224
    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 225
    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 226
    invoke-virtual {v6, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 228
    if-ne v2, v4, :cond_37

    if-ne v3, v5, :cond_37

    if-eq v1, v6, :cond_38

    :cond_37
    :goto_37
    return v0

    :cond_38
    const/4 v0, 0x0

    goto :goto_37
.end method

.method private d()V
    .registers 9

    .prologue
    .line 232
    sget-object v1, Lcom/mob/commons/clt/DvcClt;->a:Lcom/mob/commons/clt/DvcClt;

    monitor-enter v1

    .line 234
    :try_start_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 235
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v2

    .line 236
    const-string v3, "ssid"

    invoke-virtual {v2}, Lcom/mob/tools/utils/DeviceHelper;->getSSID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    const-string v3, "bssid"

    invoke-virtual {v2}, Lcom/mob/tools/utils/DeviceHelper;->getBssid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 240
    const-string v3, "type"

    const-string v4, "WIFI_INFO"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    const-string v3, "data"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    invoke-static {}, Lcom/mob/commons/a;->a()J

    move-result-wide v4

    .line 243
    const-string v3, "datetime"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    invoke-static {}, Lcom/mob/commons/b;->a()Lcom/mob/commons/b;

    move-result-object v3

    invoke-static {}, Lcom/mob/commons/a;->a()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7, v2}, Lcom/mob/commons/b;->a(JLjava/util/HashMap;)V

    .line 246
    invoke-static {v4, v5}, Lcom/mob/commons/e;->a(J)V

    .line 247
    iget-object v2, p0, Lcom/mob/commons/clt/DvcClt;->b:Lcom/mob/tools/utils/Hashon;

    invoke-virtual {v2, v0}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 248
    invoke-static {v0}, Lcom/mob/tools/utils/Data;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 249
    invoke-static {v0}, Lcom/mob/commons/e;->b(Ljava/lang/String;)V
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_5b} :catch_5d
    .catchall {:try_start_3 .. :try_end_5b} :catchall_66

    .line 253
    :goto_5b
    :try_start_5b
    monitor-exit v1

    .line 254
    return-void

    .line 250
    :catch_5d
    move-exception v0

    .line 251
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_5b

    .line 253
    :catchall_66
    move-exception v0

    monitor-exit v1
    :try_end_68
    .catchall {:try_start_5b .. :try_end_68} :catchall_66

    throw v0
.end method

.method private e()V
    .registers 4

    .prologue
    .line 257
    iget-object v0, p0, Lcom/mob/commons/clt/DvcClt;->e:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_b

    .line 258
    new-instance v0, Lcom/mob/commons/clt/DvcClt$2;

    invoke-direct {v0, p0}, Lcom/mob/commons/clt/DvcClt$2;-><init>(Lcom/mob/commons/clt/DvcClt;)V

    iput-object v0, p0, Lcom/mob/commons/clt/DvcClt;->e:Landroid/content/BroadcastReceiver;

    .line 292
    :cond_b
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 293
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 295
    :try_start_15
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mob/commons/clt/DvcClt;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_1e} :catch_1f

    .line 297
    :goto_1e
    return-void

    .line 296
    :catch_1f
    move-exception v0

    goto :goto_1e
.end method

.method private f()V
    .registers 3

    .prologue
    .line 300
    iget-object v0, p0, Lcom/mob/commons/clt/DvcClt;->e:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_10

    .line 302
    :try_start_4
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mob/commons/clt/DvcClt;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_d} :catch_11

    .line 304
    :goto_d
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mob/commons/clt/DvcClt;->e:Landroid/content/BroadcastReceiver;

    .line 306
    :cond_10
    return-void

    .line 303
    :catch_11
    move-exception v0

    goto :goto_d
.end method

.method private g()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 309
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v2

    .line 312
    :try_start_9
    invoke-virtual {v2}, Lcom/mob/tools/utils/DeviceHelper;->getCarrier()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_10} :catch_8f

    move-result v0

    .line 314
    :goto_11
    invoke-virtual {v2}, Lcom/mob/tools/utils/DeviceHelper;->getCellLac()I

    move-result v3

    .line 315
    invoke-virtual {v2}, Lcom/mob/tools/utils/DeviceHelper;->getCellId()I

    move-result v4

    .line 316
    if-eq v0, v1, :cond_7e

    if-eq v3, v1, :cond_7e

    if-eq v4, v1, :cond_7e

    .line 317
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 318
    const-string v5, "carrier"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    const-string v0, "simopname"

    invoke-virtual {v2}, Lcom/mob/tools/utils/DeviceHelper;->getCarrierName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    const-string v0, "lac"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    const-string v0, "cell"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 324
    const-string v2, "type"

    const-string v3, "BSINFO"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    const-string v2, "datetime"

    invoke-static {}, Lcom/mob/commons/a;->a()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    invoke-static {}, Lcom/mob/commons/b;->a()Lcom/mob/commons/b;

    move-result-object v2

    invoke-static {}, Lcom/mob/commons/a;->a()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5, v0}, Lcom/mob/commons/b;->a(JLjava/util/HashMap;)V

    .line 329
    iget-object v0, p0, Lcom/mob/commons/clt/DvcClt;->b:Lcom/mob/tools/utils/Hashon;

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 330
    invoke-static {v0}, Lcom/mob/tools/utils/Data;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/commons/e;->c(Ljava/lang/String;)V

    .line 333
    :cond_7e
    invoke-static {}, Lcom/mob/commons/a;->a()J

    move-result-wide v0

    invoke-static {}, Lcom/mob/commons/a;->k()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 334
    invoke-static {v0, v1}, Lcom/mob/commons/e;->b(J)V

    .line 335
    return-void

    .line 313
    :catch_8f
    move-exception v0

    move v0, v1

    goto :goto_11
.end method

.method private h()Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 338
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v3

    .line 341
    :try_start_a
    invoke-virtual {v3}, Lcom/mob/tools/utils/DeviceHelper;->getCarrier()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_11} :catch_61

    move-result v0

    .line 343
    :goto_12
    invoke-virtual {v3}, Lcom/mob/tools/utils/DeviceHelper;->getCellLac()I

    move-result v4

    .line 344
    invoke-virtual {v3}, Lcom/mob/tools/utils/DeviceHelper;->getCellId()I

    move-result v5

    .line 345
    if-eq v0, v1, :cond_66

    if-eq v4, v1, :cond_66

    if-eq v5, v1, :cond_66

    .line 346
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 347
    const-string v6, "carrier"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    const-string v0, "simopname"

    invoke-virtual {v3}, Lcom/mob/tools/utils/DeviceHelper;->getCarrierName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    const-string v0, "lac"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    const-string v0, "cell"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    iget-object v0, p0, Lcom/mob/commons/clt/DvcClt;->b:Lcom/mob/tools/utils/Hashon;

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 352
    invoke-static {v0}, Lcom/mob/tools/utils/Data;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 353
    invoke-static {}, Lcom/mob/commons/e;->d()Ljava/lang/String;

    move-result-object v1

    .line 354
    if-eqz v1, :cond_5f

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_64

    :cond_5f
    const/4 v0, 0x1

    .line 356
    :goto_60
    return v0

    .line 342
    :catch_61
    move-exception v0

    move v0, v1

    goto :goto_12

    :cond_64
    move v0, v2

    .line 354
    goto :goto_60

    :cond_66
    move v0, v2

    .line 356
    goto :goto_60
.end method

.method private i()V
    .registers 3

    .prologue
    .line 443
    iget-object v0, p0, Lcom/mob/commons/clt/DvcClt;->f:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_10

    .line 445
    :try_start_4
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mob/commons/clt/DvcClt;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_d} :catch_11

    .line 447
    :goto_d
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mob/commons/clt/DvcClt;->f:Landroid/content/BroadcastReceiver;

    .line 449
    :cond_10
    return-void

    .line 446
    :catch_11
    move-exception v0

    goto :goto_d
.end method

.method public static declared-synchronized startCollector()V
    .registers 2

    .prologue
    .line 59
    const-class v1, Lcom/mob/commons/clt/DvcClt;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/mob/commons/clt/DvcClt;->a:Lcom/mob/commons/clt/DvcClt;

    if-nez v0, :cond_13

    .line 60
    new-instance v0, Lcom/mob/commons/clt/DvcClt;

    invoke-direct {v0}, Lcom/mob/commons/clt/DvcClt;-><init>()V

    sput-object v0, Lcom/mob/commons/clt/DvcClt;->a:Lcom/mob/commons/clt/DvcClt;

    .line 61
    sget-object v0, Lcom/mob/commons/clt/DvcClt;->a:Lcom/mob/commons/clt/DvcClt;

    invoke-direct {v0}, Lcom/mob/commons/clt/DvcClt;->a()V
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_15

    .line 63
    :cond_13
    monitor-exit v1

    return-void

    .line 59
    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 10

    .prologue
    const/4 v4, 0x6

    const/4 v7, 0x4

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 98
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_15e

    .line 188
    :cond_a
    :goto_a
    return v6

    .line 100
    :pswitch_b
    invoke-static {}, Lcom/mob/commons/a;->i()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 101
    invoke-direct {p0}, Lcom/mob/commons/clt/DvcClt;->b()V

    goto :goto_a

    .line 105
    :pswitch_15
    invoke-static {}, Lcom/mob/commons/a;->n()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 106
    invoke-direct {p0}, Lcom/mob/commons/clt/DvcClt;->c()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 107
    invoke-direct {p0}, Lcom/mob/commons/clt/DvcClt;->d()V

    .line 109
    :cond_24
    invoke-direct {p0}, Lcom/mob/commons/clt/DvcClt;->e()V

    .line 113
    :goto_27
    iget-object v0, p0, Lcom/mob/commons/clt/DvcClt;->c:Landroid/os/Handler;

    const-wide/32 v2, 0x36ee80

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_a

    .line 111
    :cond_30
    invoke-direct {p0}, Lcom/mob/commons/clt/DvcClt;->f()V

    goto :goto_27

    .line 116
    :pswitch_34
    invoke-static {}, Lcom/mob/commons/a;->j()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 118
    :try_start_3a
    invoke-direct {p0}, Lcom/mob/commons/clt/DvcClt;->g()V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3d} :catch_50

    .line 123
    :goto_3d
    iget-object v0, p0, Lcom/mob/commons/clt/DvcClt;->d:Ljava/util/Random;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit16 v0, v0, 0xb4

    .line 124
    iget-object v1, p0, Lcom/mob/commons/clt/DvcClt;->c:Landroid/os/Handler;

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v2, v0

    invoke-virtual {v1, v7, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_a

    .line 119
    :catch_50
    move-exception v0

    .line 120
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_3d

    .line 128
    :pswitch_59
    invoke-static {}, Lcom/mob/commons/a;->j()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 129
    invoke-static {}, Lcom/mob/commons/a;->a()J

    move-result-wide v0

    invoke-static {}, Lcom/mob/commons/a;->k()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 130
    invoke-static {}, Lcom/mob/commons/a;->a()J

    move-result-wide v2

    .line 132
    cmp-long v0, v0, v2

    if-ltz v0, :cond_7a

    :try_start_74
    invoke-direct {p0}, Lcom/mob/commons/clt/DvcClt;->h()Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 133
    :cond_7a
    invoke-direct {p0}, Lcom/mob/commons/clt/DvcClt;->g()V
    :try_end_7d
    .catch Ljava/lang/Throwable; {:try_start_74 .. :try_end_7d} :catch_91

    .line 140
    :cond_7d
    :goto_7d
    iget-object v0, p0, Lcom/mob/commons/clt/DvcClt;->d:Ljava/util/Random;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit16 v0, v0, 0xb4

    .line 141
    iget-object v1, p0, Lcom/mob/commons/clt/DvcClt;->c:Landroid/os/Handler;

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v2, v0

    invoke-virtual {v1, v7, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_a

    .line 135
    :catch_91
    move-exception v0

    .line 136
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_7d

    .line 145
    :pswitch_9a
    invoke-static {}, Lcom/mob/commons/a;->l()Z

    move-result v0

    if-eqz v0, :cond_c0

    .line 147
    :try_start_a0
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    .line 148
    const/16 v1, 0x1e

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/mob/tools/utils/DeviceHelper;->getLocation(IIZ)Landroid/location/Location;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/mob/commons/clt/DvcClt;->a(Landroid/location/Location;I)V

    .line 149
    const/4 v1, 0x0

    const/16 v2, 0xf

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/mob/tools/utils/DeviceHelper;->getLocation(IIZ)Landroid/location/Location;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/mob/commons/clt/DvcClt;->a(Landroid/location/Location;I)V
    :try_end_c0
    .catch Ljava/lang/Throwable; {:try_start_a0 .. :try_end_c0} :catch_cf

    .line 154
    :cond_c0
    :goto_c0
    iget-object v0, p0, Lcom/mob/commons/clt/DvcClt;->c:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-static {}, Lcom/mob/commons/a;->m()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_a

    .line 150
    :catch_cf
    move-exception v0

    .line 151
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_c0

    .line 157
    :pswitch_d8
    invoke-static {}, Lcom/mob/commons/a;->p()I

    move-result v0

    .line 158
    if-lez v0, :cond_120

    invoke-static {}, Lcom/mob/commons/a;->o()Z

    move-result v1

    if-eqz v1, :cond_120

    .line 159
    invoke-direct {p0, v0}, Lcom/mob/commons/clt/DvcClt;->a(I)V

    .line 160
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 161
    iput v4, v1, Landroid/os/Message;->what:I

    .line 162
    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 163
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_10b

    .line 165
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3

    rem-long/2addr v2, v4

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    long-to-int v0, v2

    .line 166
    iget-object v2, p0, Lcom/mob/commons/clt/DvcClt;->c:Landroid/os/Handler;

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v4, v0

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_a

    .line 168
    :cond_10b
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mob/tools/utils/DeviceHelper;->scanWifiList()Z

    .line 169
    iget-object v2, p0, Lcom/mob/commons/clt/DvcClt;->c:Landroid/os/Handler;

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v4, v0

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_a

    .line 172
    :cond_120
    invoke-direct {p0}, Lcom/mob/commons/clt/DvcClt;->i()V

    .line 173
    iget-object v0, p0, Lcom/mob/commons/clt/DvcClt;->c:Landroid/os/Handler;

    const-wide/32 v2, 0x36ee80

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_a

    .line 177
    :pswitch_12d
    invoke-static {}, Lcom/mob/commons/a;->t()Z

    move-result v0

    if-eqz v0, :cond_146

    .line 179
    :try_start_133
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    .line 180
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/mob/tools/utils/DeviceHelper;->getLocation(IIZ)Landroid/location/Location;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/mob/commons/clt/DvcClt;->a(Landroid/location/Location;I)V
    :try_end_146
    .catch Ljava/lang/Throwable; {:try_start_133 .. :try_end_146} :catch_155

    .line 185
    :cond_146
    :goto_146
    iget-object v0, p0, Lcom/mob/commons/clt/DvcClt;->c:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-static {}, Lcom/mob/commons/a;->m()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_a

    .line 181
    :catch_155
    move-exception v0

    .line 182
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_146

    .line 98
    :pswitch_data_15e
    .packed-switch 0x1
        :pswitch_b
        :pswitch_15
        :pswitch_34
        :pswitch_59
        :pswitch_9a
        :pswitch_d8
        :pswitch_12d
    .end packed-switch
.end method
