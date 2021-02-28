.class public Lcom/bsgamesdk/android/helper/b;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "UseSparseArrays"
    }
.end annotation


# static fields
.field public static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private c:Landroid/app/Activity;

.field private d:Z

.field private e:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/bsgamesdk/android/helper/b;->a:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/bsgamesdk/android/helper/b;->b:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bsgamesdk/android/helper/b;->d:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    iput-object p1, p0, Lcom/bsgamesdk/android/helper/b;->c:Landroid/app/Activity;

    return-void
.end method

.method static synthetic a(Lcom/bsgamesdk/android/helper/b;)Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b;->c:Landroid/app/Activity;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .registers 5

    :try_start_0
    invoke-static {}, Lcom/bsgamesdk/android/api/b;->a()Lcom/bsgamesdk/android/api/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bsgamesdk/android/api/b;->W()Ljava/util/LinkedList;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_1c

    invoke-static {}, Lcom/qiniu/android/dns/util/RealTimeThreadPool;->getInstance()Lcom/qiniu/android/dns/util/RealTimeThreadPool;

    move-result-object v1

    new-instance v2, Lcom/bsgamesdk/android/helper/b$3;

    invoke-direct {v2, p0, v0, p1}, Lcom/bsgamesdk/android/helper/b$3;-><init>(Lcom/bsgamesdk/android/helper/b;Ljava/util/LinkedList;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/qiniu/android/dns/util/RealTimeThreadPool;->execute(Ljava/lang/Runnable;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1c} :catch_1d

    :cond_1c
    :goto_1c
    return-void

    :catch_1d
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    goto :goto_1c
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Class;ILandroid/os/Bundle;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;I",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-nez p3, :cond_c

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    :cond_c
    const-string v1, "CallingPid"

    invoke-virtual {p3, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lcom/bsgamesdk/android/helper/b;Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/bsgamesdk/android/helper/b;->a(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 7

    const/4 v5, 0x0

    iget-boolean v0, p0, Lcom/bsgamesdk/android/helper/b;->d:Z

    if-eqz v0, :cond_8

    const-string v0, "have runing"

    :goto_7
    return-object v0

    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bsgamesdk/android/helper/b;->d:Z

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v0, Lcom/bsgamesdk/android/helper/b;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    sget-object v0, Lcom/bsgamesdk/android/helper/b;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_20
    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    if-nez v0, :cond_2b

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    :cond_2b
    :try_start_2b
    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    const-string v3, "appId"

    sget-object v4, Lcom/bsgamesdk/android/model/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    const-string v3, "merchantId"

    sget-object v4, Lcom/bsgamesdk/android/model/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    const-string v3, "serverId"

    sget-object v4, Lcom/bsgamesdk/android/model/c;->g:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    const-string v3, "key"

    sget-object v4, Lcom/bsgamesdk/android/model/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    const-string v3, "channel"

    sget-object v4, Lcom/bsgamesdk/android/model/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    const-string v3, "appKey"

    sget-object v4, Lcom/bsgamesdk/android/model/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    const-string v3, "CallingPid"

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    const-string v3, "intent"

    const-string v4, "register"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_75} :catch_a7

    :goto_75
    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b;->c:Landroid/app/Activity;

    const-class v3, Lcom/bsgamesdk/android/activity/Login_RegActivity;

    iget-object v4, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    invoke-static {v0, v3, v1, v4}, Lcom/bsgamesdk/android/helper/b;->a(Landroid/content/Context;Ljava/lang/Class;ILandroid/os/Bundle;)V

    :try_start_7e
    sget-object v0, Lcom/bsgamesdk/android/helper/b;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    monitor-enter v0
    :try_end_87
    .catch Ljava/lang/InterruptedException; {:try_start_7e .. :try_end_87} :catch_af

    :try_start_87
    sget-object v1, Lcom/bsgamesdk/android/helper/b;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    sget-object v1, Lcom/bsgamesdk/android/helper/b;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_98
    .catchall {:try_start_87 .. :try_end_98} :catchall_ac

    :try_start_98
    sget-object v0, Lcom/bsgamesdk/android/helper/b;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_b9

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bsgamesdk/android/helper/b;->d:Z

    const-string v0, ""
    :try_end_a5
    .catch Ljava/lang/InterruptedException; {:try_start_98 .. :try_end_a5} :catch_af

    goto/16 :goto_7

    :catch_a7
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_75

    :catchall_ac
    move-exception v1

    :try_start_ad
    monitor-exit v0
    :try_end_ae
    .catchall {:try_start_ad .. :try_end_ae} :catchall_ac

    :try_start_ae
    throw v1
    :try_end_af
    .catch Ljava/lang/InterruptedException; {:try_start_ae .. :try_end_af} :catch_af

    :catch_af
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    iput-boolean v5, p0, Lcom/bsgamesdk/android/helper/b;->d:Z

    const-string v0, "localInterruptedException"

    goto/16 :goto_7

    :cond_b9
    const/4 v1, 0x0

    :try_start_ba
    iput-boolean v1, p0, Lcom/bsgamesdk/android/helper/b;->d:Z

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_bf
    .catch Ljava/lang/InterruptedException; {:try_start_ba .. :try_end_bf} :catch_af

    move-result-object v0

    goto/16 :goto_7
.end method

.method public a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 24

    iget-boolean v2, p0, Lcom/bsgamesdk/android/helper/b;->d:Z

    if-eqz v2, :cond_7

    const-string v2, "have runing"

    :goto_6
    return-object v2

    :cond_7
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/bsgamesdk/android/helper/b;->d:Z

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v2, Lcom/bsgamesdk/android/helper/b;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    sget-object v2, Lcom/bsgamesdk/android/helper/b;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v4, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    iget-object v2, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    if-nez v2, :cond_2a

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    :cond_2a
    :try_start_2a
    new-instance v2, Lcom/bsgamesdk/android/helper/PayRequest;

    invoke-direct {v2}, Lcom/bsgamesdk/android/helper/PayRequest;-><init>()V

    iput-wide p1, v2, Lcom/bsgamesdk/android/helper/PayRequest;->uid:J

    iput-object p3, v2, Lcom/bsgamesdk/android/helper/PayRequest;->username:Ljava/lang/String;

    iput-object p4, v2, Lcom/bsgamesdk/android/helper/PayRequest;->role:Ljava/lang/String;

    sget-object v5, Lcom/bsgamesdk/android/model/c;->c:Ljava/lang/String;

    iput-object v5, v2, Lcom/bsgamesdk/android/helper/PayRequest;->channel_id:Ljava/lang/String;

    sget-object v5, Lcom/bsgamesdk/android/model/c;->a:Ljava/lang/String;

    iput-object v5, v2, Lcom/bsgamesdk/android/helper/PayRequest;->game_id:Ljava/lang/String;

    move/from16 v0, p7

    iput v0, v2, Lcom/bsgamesdk/android/helper/PayRequest;->game_money:I

    sget-object v5, Lcom/bsgamesdk/android/model/c;->f:Ljava/lang/String;

    iput-object v5, v2, Lcom/bsgamesdk/android/helper/PayRequest;->merchant_id:Ljava/lang/String;

    iput p6, v2, Lcom/bsgamesdk/android/helper/PayRequest;->money:I

    invoke-static {}, Lcom/bsgamesdk/android/api/b;->b()J

    move-result-wide v6

    iput-wide v6, v2, Lcom/bsgamesdk/android/helper/PayRequest;->timestemp:J

    move-object/from16 v0, p8

    iput-object v0, v2, Lcom/bsgamesdk/android/helper/PayRequest;->out_trade_no:Ljava/lang/String;

    move-object/from16 v0, p9

    iput-object v0, v2, Lcom/bsgamesdk/android/helper/PayRequest;->item_name:Ljava/lang/String;

    move-object/from16 v0, p10

    iput-object v0, v2, Lcom/bsgamesdk/android/helper/PayRequest;->item_desc:Ljava/lang/String;

    sget-object v5, Lcom/bsgamesdk/android/model/c;->i:Ljava/lang/String;

    iput-object v5, v2, Lcom/bsgamesdk/android/helper/PayRequest;->version:Ljava/lang/String;

    iput-object p5, v2, Lcom/bsgamesdk/android/helper/PayRequest;->zone_id:Ljava/lang/String;

    move-object/from16 v0, p11

    iput-object v0, v2, Lcom/bsgamesdk/android/helper/PayRequest;->extension_info:Ljava/lang/String;

    move-object/from16 v0, p12

    iput-object v0, v2, Lcom/bsgamesdk/android/helper/PayRequest;->notify_url:Ljava/lang/String;

    move-object/from16 v0, p13

    iput-object v0, v2, Lcom/bsgamesdk/android/helper/PayRequest;->order_sign:Ljava/lang/String;

    move-object/from16 v0, p14

    iput-object v0, v2, Lcom/bsgamesdk/android/helper/PayRequest;->product_id:Ljava/lang/String;

    iget-object v5, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    const-string v6, "CallingPid"

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v5, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    const-string v6, "appId"

    sget-object v7, Lcom/bsgamesdk/android/model/c;->a:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    const-string v6, "merchantId"

    sget-object v7, Lcom/bsgamesdk/android/model/c;->f:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    const-string v6, "serverId"

    invoke-virtual {v5, v6, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    const-string v6, "key"

    sget-object v7, Lcom/bsgamesdk/android/model/c;->e:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    const-string v6, "channel"

    sget-object v7, Lcom/bsgamesdk/android/model/c;->c:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    const-string v6, "appKey"

    sget-object v7, Lcom/bsgamesdk/android/model/c;->b:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    const-string v6, "request"

    invoke-virtual {v5, v6, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v2, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    const-string v5, "intent"

    const-string v6, "prePay"

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_be} :catch_f0

    :goto_be
    iget-object v2, p0, Lcom/bsgamesdk/android/helper/b;->c:Landroid/app/Activity;

    const-class v5, Lcom/bsgamesdk/android/activity/PrePayActivity;

    iget-object v6, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    invoke-static {v2, v5, v3, v6}, Lcom/bsgamesdk/android/helper/b;->a(Landroid/content/Context;Ljava/lang/Class;ILandroid/os/Bundle;)V

    :try_start_c7
    sget-object v2, Lcom/bsgamesdk/android/helper/b;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    monitor-enter v2
    :try_end_d0
    .catch Ljava/lang/InterruptedException; {:try_start_c7 .. :try_end_d0} :catch_f8

    :try_start_d0
    sget-object v3, Lcom/bsgamesdk/android/helper/b;->a:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V

    sget-object v3, Lcom/bsgamesdk/android/helper/b;->a:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2
    :try_end_e1
    .catchall {:try_start_d0 .. :try_end_e1} :catchall_f5

    :try_start_e1
    sget-object v2, Lcom/bsgamesdk/android/helper/b;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_103

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/bsgamesdk/android/helper/b;->d:Z

    const-string v2, ""
    :try_end_ee
    .catch Ljava/lang/InterruptedException; {:try_start_e1 .. :try_end_ee} :catch_f8

    goto/16 :goto_6

    :catch_f0
    move-exception v2

    invoke-static {v2}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_be

    :catchall_f5
    move-exception v3

    :try_start_f6
    monitor-exit v2
    :try_end_f7
    .catchall {:try_start_f6 .. :try_end_f7} :catchall_f5

    :try_start_f7
    throw v3
    :try_end_f8
    .catch Ljava/lang/InterruptedException; {:try_start_f7 .. :try_end_f8} :catch_f8

    :catch_f8
    move-exception v2

    invoke-static {v2}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/bsgamesdk/android/helper/b;->d:Z

    const-string v2, "localInterruptedException"

    goto/16 :goto_6

    :cond_103
    const/4 v3, 0x0

    :try_start_104
    iput-boolean v3, p0, Lcom/bsgamesdk/android/helper/b;->d:Z

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_109
    .catch Ljava/lang/InterruptedException; {:try_start_104 .. :try_end_109} :catch_f8

    move-result-object v2

    goto/16 :goto_6
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 13

    const/4 v8, 0x0

    iget-boolean v0, p0, Lcom/bsgamesdk/android/helper/b;->d:Z

    if-eqz v0, :cond_8

    const-string v0, "have runing"

    :goto_7
    return-object v0

    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bsgamesdk/android/helper/b;->d:Z

    new-instance v0, Lcom/bsgamesdk/android/model/k;

    iget-object v1, p0, Lcom/bsgamesdk/android/helper/b;->c:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/bsgamesdk/android/model/k;-><init>(Landroid/content/Context;)V

    :try_start_12
    invoke-virtual {v0}, Lcom/bsgamesdk/android/model/k;->c()Lcom/bsgamesdk/android/model/TouristUserParceable;

    move-result-object v0

    new-instance v1, Lcom/bsgamesdk/android/model/m;

    iget-object v2, p0, Lcom/bsgamesdk/android/helper/b;->c:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/bsgamesdk/android/model/m;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/bsgamesdk/android/model/m;->c()Lcom/bsgamesdk/android/model/UserParcelable;

    move-result-object v1

    sget-object v2, Lcom/bsgamesdk/android/b;->b:Lcom/bsgamesdk/android/dynamic/IUtils;

    invoke-interface {v2, v0}, Lcom/bsgamesdk/android/dynamic/IUtils;->checkIsTouristLogined(Lcom/bsgamesdk/android/model/TouristUserParceable;)Z

    move-result v4

    sget-object v2, Lcom/bsgamesdk/android/b;->b:Lcom/bsgamesdk/android/dynamic/IUtils;

    iget-object v3, p0, Lcom/bsgamesdk/android/helper/b;->c:Landroid/app/Activity;

    invoke-interface {v2, v3}, Lcom/bsgamesdk/android/dynamic/IUtils;->checkIsLogined(Landroid/content/Context;)Z

    move-result v5

    const-string v2, ""

    const-string v3, ""

    if-eqz v4, :cond_4c

    iget-object v2, v0, Lcom/bsgamesdk/android/model/TouristUserParceable;->access_token:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, v0, Lcom/bsgamesdk/android/model/TouristUserParceable;->uid_long:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_4c
    if-eqz v5, :cond_65

    iget-object v2, v1, Lcom/bsgamesdk/android/model/UserParcelable;->access_token:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, v1, Lcom/bsgamesdk/android/model/UserParcelable;->uid_long:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_64} :catch_9c

    move-result-object v3

    :cond_65
    if-nez v4, :cond_69

    if-eqz v5, :cond_d3

    :cond_69
    :try_start_69
    sget-object v0, Lcom/bsgamesdk/android/b;->c:Lcom/bsgamesdk/android/api/k;

    iget-object v1, p0, Lcom/bsgamesdk/android/helper/b;->c:Landroid/app/Activity;

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/bsgamesdk/android/api/k;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "result"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7d
    .catch Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode; {:try_start_69 .. :try_end_7d} :catch_84
    .catch Lorg/apache/http/HttpException; {:try_start_69 .. :try_end_7d} :catch_be
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_7d} :catch_eb
    .catch Ljava/lang/Throwable; {:try_start_69 .. :try_end_7d} :catch_9c

    :goto_7d
    iput-boolean v8, p0, Lcom/bsgamesdk/android/helper/b;->d:Z

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :catch_84
    move-exception v0

    move-object v1, v0

    :try_start_86
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "error_msg"

    invoke-virtual {v1}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "error_code"

    iget v1, v1, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->mCode:I

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_9b
    .catch Ljava/lang/Throwable; {:try_start_86 .. :try_end_9b} :catch_9c

    goto :goto_7d

    :catch_9c
    move-exception v0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_a2
    const-string v1, "error_msg"

    const/16 v2, 0xbba

    invoke-static {v2}, Lcom/bsgamesdk/android/a;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "error_code"

    const/16 v2, 0xbba

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_b4
    .catch Ljava/lang/Throwable; {:try_start_a2 .. :try_end_b4} :catch_b5

    goto :goto_7d

    :catch_b5
    move-exception v0

    iput-boolean v8, p0, Lcom/bsgamesdk/android/helper/b;->d:Z

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    :catch_be
    move-exception v0

    :goto_bf
    :try_start_bf
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "error_msg"

    const-string v2, "\u8bf7\u68c0\u67e5\u7f51\u7edc"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "error_code"

    const-string v2, "2001"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_7d

    :cond_d3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "error_msg"

    const/16 v2, 0xbba

    invoke-static {v2}, Lcom/bsgamesdk/android/a;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "error_code"

    const/16 v2, 0xbba

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_ea
    .catch Ljava/lang/Throwable; {:try_start_bf .. :try_end_ea} :catch_9c

    goto :goto_7d

    :catch_eb
    move-exception v0

    goto :goto_bf
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 13

    invoke-static {}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->getInstance()Lcom/bilibili/baseconnect/BaseSDKConnectManager;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, ""

    const-string v3, "free_btn"

    const-string v4, ""

    const-string v5, "1"

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->reportClickEvent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {}, Lcom/bsgamesdk/android/utils/ab;->c()Ljava/lang/String;

    move-result-object v1

    :try_start_15
    const-string v0, "utf-8"

    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_15 .. :try_end_1a} :catch_f7

    move-result-object v0

    :goto_1b
    new-instance v2, Lcom/bsgamesdk/android/c;

    invoke-direct {v2}, Lcom/bsgamesdk/android/c;-><init>()V

    iget-object v3, p0, Lcom/bsgamesdk/android/helper/b;->c:Landroid/app/Activity;

    invoke-static {v3}, Lcom/bsgamesdk/android/utils/n;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\s*|\t|\r|\n"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v8, Lcom/bsgamesdk/android/api/h;

    iget-object v4, p0, Lcom/bsgamesdk/android/helper/b;->c:Landroid/app/Activity;

    const-string v5, "1"

    invoke-interface {v2}, Lcom/bsgamesdk/android/dynamic/IConstant;->getSDK_Version()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v4, v5, v2, v3}, Lcom/bsgamesdk/android/api/h;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_3b
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    iget-object v2, p0, Lcom/bsgamesdk/android/helper/b;->c:Landroid/app/Activity;

    invoke-static {v2, v1, v0, p2, p3}, Lcom/bsgamesdk/android/api/e;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/bsgamesdk/android/model/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bsgamesdk/android/model/l;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_57

    invoke-virtual {v0, p1}, Lcom/bsgamesdk/android/model/l;->a(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bsgamesdk/android/model/l;->a(I)V

    :cond_57
    const-string v1, "result"

    invoke-virtual {v0}, Lcom/bsgamesdk/android/model/l;->d()I

    move-result v2

    invoke-virtual {v7, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "target_url"

    invoke-virtual {v0}, Lcom/bsgamesdk/android/model/l;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-virtual {v8, v1, v2, p1, v0}, Lcom/bsgamesdk/android/api/h;->a(ILjava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/model/l;)V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v1, "code"

    const-string v2, "0"

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "message"

    const-string v2, ""

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "source_url"

    invoke-interface {v6, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "target_url"

    invoke-virtual {v0}, Lcom/bsgamesdk/android/model/l;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "flag"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/bsgamesdk/android/model/l;->d()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ip"

    invoke-virtual {v0}, Lcom/bsgamesdk/android/model/l;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "pip"

    invoke-virtual {v0}, Lcom/bsgamesdk/android/model/l;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "product"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/bsgamesdk/android/model/l;->e()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "actionname"

    const-string v1, "free_flow"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->getInstance()Lcom/bilibili/baseconnect/BaseSDKConnectManager;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, ""

    const-string v3, "free_net"

    const-string v4, ""

    const-string v5, "1"

    invoke-virtual/range {v0 .. v6}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->reportCustomEvent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_f1
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_f1} :catch_fe

    move-object v0, v7

    :goto_f2
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_f6
    return-object v0

    :catch_f7
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    move-object v0, p1

    goto/16 :goto_1b

    :catch_fe
    move-exception v0

    instance-of v1, v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;

    if-eqz v1, :cond_155

    check-cast v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;

    iget v1, v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->mCode:I

    invoke-virtual {v0}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v8, v1, v0, p1, v2}, Lcom/bsgamesdk/android/api/h;->a(ILjava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/model/l;)V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "code"

    const-string v1, "0"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "message"

    const-string v1, ""

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "source_url"

    invoke-interface {v6, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "actionname"

    const-string v1, "free_flow"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->getInstance()Lcom/bilibili/baseconnect/BaseSDKConnectManager;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, ""

    const-string v3, "free_net"

    const-string v4, ""

    const-string v5, "1"

    invoke-virtual/range {v0 .. v6}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->reportCustomEvent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :goto_13e
    :try_start_13e
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "result"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "target_url"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_14e
    .catch Lorg/json/JSONException; {:try_start_13e .. :try_end_14e} :catch_14f

    goto :goto_f2

    :catch_14f
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_f6

    :cond_155
    const/16 v1, -0x64

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v8, v1, v2, p1, v3}, Lcom/bsgamesdk/android/api/h;->a(ILjava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/model/l;)V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v1, "code"

    const-string v2, "-100"

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "message"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "source_url"

    invoke-interface {v6, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "actionname"

    const-string v1, "free_flow"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->getInstance()Lcom/bilibili/baseconnect/BaseSDKConnectManager;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, ""

    const-string v3, "free_net"

    const-string v4, ""

    const-string v5, "1"

    invoke-virtual/range {v0 .. v6}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->reportCustomEvent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_13e
.end method

.method public a(I)V
    .registers 5

    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    if-nez v0, :cond_b

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    const-string v1, "appId"

    sget-object v2, Lcom/bsgamesdk/android/model/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    const-string v1, "channel"

    sget-object v2, Lcom/bsgamesdk/android/model/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    const-string v1, "serverId"

    sget-object v2, Lcom/bsgamesdk/android/model/c;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    const-string v1, "merchantId"

    sget-object v2, Lcom/bsgamesdk/android/model/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    const-string v1, "key"

    sget-object v2, Lcom/bsgamesdk/android/model/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    const-string v1, "appKey"

    sget-object v2, Lcom/bsgamesdk/android/model/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    const-string v1, "CallingPid"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    const-string v1, "intent"

    const-string v2, "tourist"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/bsgamesdk/android/helper/b;->c:Landroid/app/Activity;

    const-class v2, Lcom/bsgamesdk/android/activity/TouristActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/bsgamesdk/android/helper/b;->c:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_64} :catch_65

    :goto_64
    return-void

    :catch_65
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_64
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    if-nez v0, :cond_b

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    const-string v1, "appId"

    sget-object v2, Lcom/bsgamesdk/android/model/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    const-string v1, "channel"

    sget-object v2, Lcom/bsgamesdk/android/model/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    const-string v1, "serverId"

    sget-object v2, Lcom/bsgamesdk/android/model/c;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    const-string v1, "merchantId"

    sget-object v2, Lcom/bsgamesdk/android/model/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    const-string v1, "key"

    sget-object v2, Lcom/bsgamesdk/android/model/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    const-string v1, "appKey"

    sget-object v2, Lcom/bsgamesdk/android/model/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    const-string v1, "CallingPid"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    const-string v1, "intent"

    const-string v2, "tourist_bind"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    const-string v1, "username"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    const-string v1, "password"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/bsgamesdk/android/helper/b;->c:Landroid/app/Activity;

    const-class v2, Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/bsgamesdk/android/helper/b;->c:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_72} :catch_73

    :goto_72
    return-void

    :catch_73
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_72
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    if-nez v0, :cond_b

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    const-string v1, "appId"

    sget-object v2, Lcom/bsgamesdk/android/model/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    const-string v1, "channel"

    sget-object v2, Lcom/bsgamesdk/android/model/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    const-string v1, "serverId"

    sget-object v2, Lcom/bsgamesdk/android/model/c;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    const-string v1, "merchantId"

    sget-object v2, Lcom/bsgamesdk/android/model/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    const-string v1, "key"

    sget-object v2, Lcom/bsgamesdk/android/model/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    const-string v1, "appKey"

    sget-object v2, Lcom/bsgamesdk/android/model/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    const-string v1, "CallingPid"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    const-string v1, "intent"

    const-string v2, "touristLimit"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    const-string v1, "dc_action"

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    const-string v1, "dc_view"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    const-string v1, "from"

    const-string v2, "login"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    const-string v1, "access_key"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    const-string v1, "uid"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    const-string v1, "uname"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/bsgamesdk/android/helper/b;->c:Landroid/app/Activity;

    const-class v2, Lcom/bsgamesdk/android/activity/TouristActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/bsgamesdk/android/helper/b;->c:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_92} :catch_93

    :goto_92
    return-void

    :catch_93
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_92
.end method

.method public a(IZ)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    if-nez v0, :cond_b

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_b} :catch_71

    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    const-string v1, "appId"

    sget-object v2, Lcom/bsgamesdk/android/model/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    const-string v1, "channel"

    sget-object v2, Lcom/bsgamesdk/android/model/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    const-string v1, "serverId"

    sget-object v2, Lcom/bsgamesdk/android/model/c;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    const-string v1, "merchantId"

    sget-object v2, Lcom/bsgamesdk/android/model/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    const-string v1, "key"

    sget-object v2, Lcom/bsgamesdk/android/model/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    const-string v1, "appKey"

    sget-object v2, Lcom/bsgamesdk/android/model/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    const-string v1, "CallingPid"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    const-string v1, "intent"

    const-string v2, "login"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    const-string v1, "isSwitchUser"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_58} :catch_6c

    :goto_58
    :try_start_58
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/bsgamesdk/android/helper/b;->c:Landroid/app/Activity;

    const-class v2, Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/bsgamesdk/android/helper/b;->c:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_6b
    return-void

    :catch_6c
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printThrowableStackTrace(Ljava/lang/Throwable;)V
    :try_end_70
    .catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_70} :catch_71

    goto :goto_58

    :catch_71
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    goto :goto_6b
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 5

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/bsgamesdk/android/helper/b;->c:Landroid/app/Activity;

    const-class v2, Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/bsgamesdk/android/helper/b;->c:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_11} :catch_12

    :goto_11
    return-void

    :catch_12
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    goto :goto_11
.end method

.method public a(Lcom/bsgamesdk/android/callbacklistener/InitCallbackListener;Ljava/lang/String;)V
    .registers 7

    new-instance v0, Lcom/bsgamesdk/android/helper/b$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/bsgamesdk/android/helper/b$1;-><init>(Lcom/bsgamesdk/android/helper/b;Ljava/lang/String;Lcom/bsgamesdk/android/callbacklistener/InitCallbackListener;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/task/d;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 7

    const/4 v5, 0x0

    iget-boolean v0, p0, Lcom/bsgamesdk/android/helper/b;->d:Z

    if-eqz v0, :cond_8

    const-string v0, "have runing"

    :goto_7
    return-object v0

    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bsgamesdk/android/helper/b;->d:Z

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v0, Lcom/bsgamesdk/android/helper/b;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    sget-object v0, Lcom/bsgamesdk/android/helper/b;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_20
    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    if-nez v0, :cond_2b

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    :cond_2b
    :try_start_2b
    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    const-string v3, "appId"

    sget-object v4, Lcom/bsgamesdk/android/model/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    const-string v3, "merchantId"

    sget-object v4, Lcom/bsgamesdk/android/model/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    const-string v3, "serverId"

    sget-object v4, Lcom/bsgamesdk/android/model/c;->g:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    const-string v3, "key"

    sget-object v4, Lcom/bsgamesdk/android/model/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    const-string v3, "channel"

    sget-object v4, Lcom/bsgamesdk/android/model/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    const-string v3, "appKey"

    sget-object v4, Lcom/bsgamesdk/android/model/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    const-string v3, "CallingPid"

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    const-string v3, "intent"

    const-string v4, "notice"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_75} :catch_a7

    :goto_75
    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b;->c:Landroid/app/Activity;

    const-class v3, Lcom/bsgamesdk/android/activity/NoticeActivity;

    iget-object v4, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    invoke-static {v0, v3, v1, v4}, Lcom/bsgamesdk/android/helper/b;->a(Landroid/content/Context;Ljava/lang/Class;ILandroid/os/Bundle;)V

    :try_start_7e
    sget-object v0, Lcom/bsgamesdk/android/helper/b;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    monitor-enter v0
    :try_end_87
    .catch Ljava/lang/InterruptedException; {:try_start_7e .. :try_end_87} :catch_af

    :try_start_87
    sget-object v1, Lcom/bsgamesdk/android/helper/b;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    sget-object v1, Lcom/bsgamesdk/android/helper/b;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_98
    .catchall {:try_start_87 .. :try_end_98} :catchall_ac

    :try_start_98
    sget-object v0, Lcom/bsgamesdk/android/helper/b;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_b9

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bsgamesdk/android/helper/b;->d:Z

    const-string v0, ""
    :try_end_a5
    .catch Ljava/lang/InterruptedException; {:try_start_98 .. :try_end_a5} :catch_af

    goto/16 :goto_7

    :catch_a7
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_75

    :catchall_ac
    move-exception v1

    :try_start_ad
    monitor-exit v0
    :try_end_ae
    .catchall {:try_start_ad .. :try_end_ae} :catchall_ac

    :try_start_ae
    throw v1
    :try_end_af
    .catch Ljava/lang/InterruptedException; {:try_start_ae .. :try_end_af} :catch_af

    :catch_af
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    iput-boolean v5, p0, Lcom/bsgamesdk/android/helper/b;->d:Z

    const-string v0, "localInterruptedException"

    goto/16 :goto_7

    :cond_b9
    const/4 v1, 0x0

    :try_start_ba
    iput-boolean v1, p0, Lcom/bsgamesdk/android/helper/b;->d:Z

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_bf
    .catch Ljava/lang/InterruptedException; {:try_start_ba .. :try_end_bf} :catch_af

    move-result-object v0

    goto/16 :goto_7
.end method

.method public b(I)V
    .registers 5

    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    if-nez v0, :cond_b

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    const-string v1, "appId"

    sget-object v2, Lcom/bsgamesdk/android/model/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    const-string v1, "channel"

    sget-object v2, Lcom/bsgamesdk/android/model/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    const-string v1, "serverId"

    sget-object v2, Lcom/bsgamesdk/android/model/c;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    const-string v1, "merchantId"

    sget-object v2, Lcom/bsgamesdk/android/model/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    const-string v1, "key"

    sget-object v2, Lcom/bsgamesdk/android/model/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    const-string v1, "appKey"

    sget-object v2, Lcom/bsgamesdk/android/model/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    const-string v1, "CallingPid"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    const-string v1, "intent"

    const-string v2, "login"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/bsgamesdk/android/helper/b;->c:Landroid/app/Activity;

    const-class v2, Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/bsgamesdk/android/helper/b;->c:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_64} :catch_65

    :goto_64
    return-void

    :catch_65
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_64
.end method

.method public c()Ljava/lang/String;
    .registers 8

    const/4 v1, 0x0

    invoke-static {}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->getInstance()Lcom/bilibili/baseconnect/BaseSDKConnectManager;

    move-result-object v0

    const-string v2, ""

    const-string v3, "logout_btn"

    const-string v4, ""

    const-string v5, "1"

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->reportClickEvent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iget-boolean v0, p0, Lcom/bsgamesdk/android/helper/b;->d:Z

    if-eqz v0, :cond_18

    const-string v0, "have runing"

    :goto_17
    return-object v0

    :cond_18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bsgamesdk/android/helper/b;->d:Z

    :try_start_1b
    sget-object v0, Lcom/bsgamesdk/android/b;->b:Lcom/bsgamesdk/android/dynamic/IUtils;

    iget-object v2, p0, Lcom/bsgamesdk/android/helper/b;->c:Landroid/app/Activity;

    invoke-interface {v0, v2}, Lcom/bsgamesdk/android/dynamic/IUtils;->loginoutUser(Landroid/content/Context;)V

    sget-object v0, Lcom/bsgamesdk/android/b;->b:Lcom/bsgamesdk/android/dynamic/IUtils;

    iget-object v2, p0, Lcom/bsgamesdk/android/helper/b;->c:Landroid/app/Activity;

    invoke-interface {v0, v2}, Lcom/bsgamesdk/android/dynamic/IUtils;->loginoutTourist(Landroid/content/Context;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "result"

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "tips"

    const-string v3, "\u6ce8\u9500\u6210\u529f"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, ""

    sput-object v2, Lcom/bsgamesdk/android/model/c;->n:Ljava/lang/String;
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_40} :catch_47

    :goto_40
    iput-boolean v1, p0, Lcom/bsgamesdk/android/helper/b;->d:Z

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    :catch_47
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    :try_start_4b
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "result"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "error_msg"

    const/16 v3, 0xbb9

    invoke-static {v3}, Lcom/bsgamesdk/android/a;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "error_code"

    const/16 v3, 0xbb9

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_68} :catch_69

    goto :goto_40

    :catch_69
    move-exception v0

    iput-boolean v1, p0, Lcom/bsgamesdk/android/helper/b;->d:Z

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_17
.end method

.method public c(I)V
    .registers 5

    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    if-nez v0, :cond_b

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    const-string v1, "appId"

    sget-object v2, Lcom/bsgamesdk/android/model/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    const-string v1, "channel"

    sget-object v2, Lcom/bsgamesdk/android/model/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    const-string v1, "serverId"

    sget-object v2, Lcom/bsgamesdk/android/model/c;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    const-string v1, "merchantId"

    sget-object v2, Lcom/bsgamesdk/android/model/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    const-string v1, "key"

    sget-object v2, Lcom/bsgamesdk/android/model/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    const-string v1, "appKey"

    sget-object v2, Lcom/bsgamesdk/android/model/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    const-string v1, "CallingPid"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    const-string v1, "intent"

    const-string v2, "welcome"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/bsgamesdk/android/helper/b;->c:Landroid/app/Activity;

    const-class v2, Lcom/bsgamesdk/android/activity/WelcomeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/bsgamesdk/android/helper/b;->c:Landroid/app/Activity;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_66} :catch_67

    :goto_66
    return-void

    :catch_67
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_66
.end method

.method public d()Ljava/lang/String;
    .registers 6

    const/4 v4, 0x0

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/bsgamesdk/android/helper/b;->d:Z

    if-eqz v0, :cond_9

    const-string v0, "have runing"

    :goto_8
    return-object v0

    :cond_9
    iput-boolean v1, p0, Lcom/bsgamesdk/android/helper/b;->d:Z

    :try_start_b
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sget-object v1, Lcom/bsgamesdk/android/b;->b:Lcom/bsgamesdk/android/dynamic/IUtils;

    iget-object v2, p0, Lcom/bsgamesdk/android/helper/b;->c:Landroid/app/Activity;

    invoke-interface {v1, v2}, Lcom/bsgamesdk/android/dynamic/IUtils;->checkIsLogined(Landroid/content/Context;)Z

    move-result v1

    sget-object v2, Lcom/bsgamesdk/android/b;->b:Lcom/bsgamesdk/android/dynamic/IUtils;

    iget-object v3, p0, Lcom/bsgamesdk/android/helper/b;->c:Landroid/app/Activity;

    invoke-interface {v2, v3}, Lcom/bsgamesdk/android/dynamic/IUtils;->checkIsTouristLogined(Landroid/content/Context;)Z

    move-result v2

    if-eqz v1, :cond_38

    const-string v2, "result"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "logined"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_31} :catch_4a

    :goto_31
    iput-boolean v4, p0, Lcom/bsgamesdk/android/helper/b;->d:Z

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_38
    if-eqz v2, :cond_66

    :try_start_3a
    const-string v1, "result"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "logined"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_49} :catch_4a

    goto :goto_31

    :catch_4a
    move-exception v0

    :try_start_4b
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "result"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "logined"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_5d} :catch_5e

    goto :goto_31

    :catch_5e
    move-exception v0

    iput-boolean v4, p0, Lcom/bsgamesdk/android/helper/b;->d:Z

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_66
    :try_start_66
    const-string v1, "result"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "logined"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_73} :catch_4a

    goto :goto_31
.end method

.method public d(I)Ljava/lang/String;
    .registers 8

    const/4 v5, 0x0

    iget-boolean v0, p0, Lcom/bsgamesdk/android/helper/b;->d:Z

    if-eqz v0, :cond_8

    const-string v0, "have runing"

    :goto_7
    return-object v0

    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bsgamesdk/android/helper/b;->d:Z

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v0, Lcom/bsgamesdk/android/helper/b;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    sget-object v0, Lcom/bsgamesdk/android/helper/b;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_20
    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    if-nez v0, :cond_2b

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    :cond_2b
    :try_start_2b
    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    const-string v3, "intent"

    const-string v4, "agreement"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    const-string v3, "url_type"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_3b} :catch_6c

    :goto_3b
    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b;->c:Landroid/app/Activity;

    const-class v3, Lcom/bsgamesdk/android/activity/WebActivity;

    iget-object v4, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    invoke-static {v0, v3, v1, v4}, Lcom/bsgamesdk/android/helper/b;->a(Landroid/content/Context;Ljava/lang/Class;ILandroid/os/Bundle;)V

    :try_start_44
    sget-object v0, Lcom/bsgamesdk/android/helper/b;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    monitor-enter v0
    :try_end_4d
    .catch Ljava/lang/InterruptedException; {:try_start_44 .. :try_end_4d} :catch_74

    :try_start_4d
    sget-object v1, Lcom/bsgamesdk/android/helper/b;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    sget-object v1, Lcom/bsgamesdk/android/helper/b;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_4d .. :try_end_5e} :catchall_71

    :try_start_5e
    sget-object v0, Lcom/bsgamesdk/android/helper/b;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_7d

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bsgamesdk/android/helper/b;->d:Z

    const-string v0, ""
    :try_end_6b
    .catch Ljava/lang/InterruptedException; {:try_start_5e .. :try_end_6b} :catch_74

    goto :goto_7

    :catch_6c
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_3b

    :catchall_71
    move-exception v1

    :try_start_72
    monitor-exit v0
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_71

    :try_start_73
    throw v1
    :try_end_74
    .catch Ljava/lang/InterruptedException; {:try_start_73 .. :try_end_74} :catch_74

    :catch_74
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    iput-boolean v5, p0, Lcom/bsgamesdk/android/helper/b;->d:Z

    const-string v0, "localInterruptedException"

    goto :goto_7

    :cond_7d
    const/4 v1, 0x0

    :try_start_7e
    iput-boolean v1, p0, Lcom/bsgamesdk/android/helper/b;->d:Z

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_83
    .catch Ljava/lang/InterruptedException; {:try_start_7e .. :try_end_83} :catch_74

    move-result-object v0

    goto :goto_7
.end method

.method public e()Ljava/lang/String;
    .registers 9

    const/4 v1, 0x1

    const/4 v7, 0x0

    invoke-static {}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->getInstance()Lcom/bilibili/baseconnect/BaseSDKConnectManager;

    move-result-object v0

    const-string v2, ""

    const-string v3, "get_user_info"

    const-string v4, ""

    const-string v5, "1"

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->reportCustomEvent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iget-boolean v0, p0, Lcom/bsgamesdk/android/helper/b;->d:Z

    if-eqz v0, :cond_19

    const-string v0, "have runing"

    :goto_18
    return-object v0

    :cond_19
    iput-boolean v1, p0, Lcom/bsgamesdk/android/helper/b;->d:Z

    new-instance v0, Lcom/bsgamesdk/android/model/k;

    iget-object v1, p0, Lcom/bsgamesdk/android/helper/b;->c:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/bsgamesdk/android/model/k;-><init>(Landroid/content/Context;)V

    :try_start_22
    invoke-virtual {v0}, Lcom/bsgamesdk/android/model/k;->c()Lcom/bsgamesdk/android/model/TouristUserParceable;

    move-result-object v1

    sget-object v0, Lcom/bsgamesdk/android/b;->b:Lcom/bsgamesdk/android/dynamic/IUtils;

    invoke-interface {v0, v1}, Lcom/bsgamesdk/android/dynamic/IUtils;->checkIsTouristLogined(Lcom/bsgamesdk/android/model/TouristUserParceable;)Z

    move-result v0

    sget-object v2, Lcom/bsgamesdk/android/b;->b:Lcom/bsgamesdk/android/dynamic/IUtils;

    iget-object v3, p0, Lcom/bsgamesdk/android/helper/b;->c:Landroid/app/Activity;

    invoke-interface {v2, v3}, Lcom/bsgamesdk/android/dynamic/IUtils;->checkIsLogined(Landroid/content/Context;)Z

    move-result v2

    if-eqz v0, :cond_88

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "result"

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "uid"

    iget-wide v4, v1, Lcom/bsgamesdk/android/model/TouristUserParceable;->uid_long:J

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "username"

    iget-object v3, v1, Lcom/bsgamesdk/android/model/TouristUserParceable;->nickname:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "nickname"

    iget-object v3, v1, Lcom/bsgamesdk/android/model/TouristUserParceable;->nickname:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "access_token"

    iget-object v3, v1, Lcom/bsgamesdk/android/model/TouristUserParceable;->access_token:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "avatar"

    iget-object v3, v1, Lcom/bsgamesdk/android/model/TouristUserParceable;->avatar:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "s_avatar"

    iget-object v3, v1, Lcom/bsgamesdk/android/model/TouristUserParceable;->s_avatar:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "expire_times"

    iget-wide v4, v1, Lcom/bsgamesdk/android/model/TouristUserParceable;->expire_in:J

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "refresh_token"

    iget-object v3, v1, Lcom/bsgamesdk/android/model/TouristUserParceable;->refresh_token:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "last_login_time"

    iget-wide v4, v1, Lcom/bsgamesdk/android/model/TouristUserParceable;->last_login_time:J

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_81} :catch_e1

    :goto_81
    iput-boolean v7, p0, Lcom/bsgamesdk/android/helper/b;->d:Z

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    :cond_88
    if-eqz v2, :cond_109

    :try_start_8a
    new-instance v0, Lcom/bsgamesdk/android/model/m;

    iget-object v1, p0, Lcom/bsgamesdk/android/helper/b;->c:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/bsgamesdk/android/model/m;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/bsgamesdk/android/model/m;->c()Lcom/bsgamesdk/android/model/UserParcelable;

    move-result-object v1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "result"

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "uid"

    iget-wide v4, v1, Lcom/bsgamesdk/android/model/UserParcelable;->uid_long:J

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "username"

    iget-object v3, v1, Lcom/bsgamesdk/android/model/UserParcelable;->nickname:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "nickname"

    iget-object v3, v1, Lcom/bsgamesdk/android/model/UserParcelable;->nickname:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "access_token"

    iget-object v3, v1, Lcom/bsgamesdk/android/model/UserParcelable;->access_token:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "avatar"

    iget-object v3, v1, Lcom/bsgamesdk/android/model/UserParcelable;->avatar:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "s_avatar"

    iget-object v3, v1, Lcom/bsgamesdk/android/model/UserParcelable;->s_avatar:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "expire_times"

    iget-wide v4, v1, Lcom/bsgamesdk/android/model/UserParcelable;->expire_in:J

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "refresh_token"

    iget-object v3, v1, Lcom/bsgamesdk/android/model/UserParcelable;->refresh_token:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "last_login_time"

    iget-wide v4, v1, Lcom/bsgamesdk/android/model/UserParcelable;->last_login_time:J

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_e0
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_e0} :catch_e1

    goto :goto_81

    :catch_e1
    move-exception v0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_e7
    const-string v1, "result"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "error_msg"

    const/16 v2, 0xbba

    invoke-static {v2}, Lcom/bsgamesdk/android/a;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "error_code"

    const/16 v2, 0xbba

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_ff
    .catch Ljava/lang/Exception; {:try_start_e7 .. :try_end_ff} :catch_100

    goto :goto_81

    :catch_100
    move-exception v0

    iput-boolean v7, p0, Lcom/bsgamesdk/android/helper/b;->d:Z

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_18

    :cond_109
    :try_start_109
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "result"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "error_msg"

    const/16 v2, 0xbba

    invoke-static {v2}, Lcom/bsgamesdk/android/a;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "error_code"

    const/16 v2, 0xbba

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_126
    .catch Ljava/lang/Exception; {:try_start_109 .. :try_end_126} :catch_e1

    goto/16 :goto_81
.end method

.method public e(I)Ljava/lang/String;
    .registers 8

    const/4 v5, 0x0

    iget-boolean v0, p0, Lcom/bsgamesdk/android/helper/b;->d:Z

    if-eqz v0, :cond_8

    const-string v0, "have runing"

    :goto_7
    return-object v0

    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bsgamesdk/android/helper/b;->d:Z

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v0, Lcom/bsgamesdk/android/helper/b;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    sget-object v0, Lcom/bsgamesdk/android/helper/b;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_20
    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    if-nez v0, :cond_2b

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    :cond_2b
    :try_start_2b
    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    const-string v3, "intent"

    sget-object v4, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->CAPTCHA_PUBLIC:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    const-string v3, "web_type"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_3b} :catch_6c

    :goto_3b
    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b;->c:Landroid/app/Activity;

    const-class v3, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;

    iget-object v4, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    invoke-static {v0, v3, v1, v4}, Lcom/bsgamesdk/android/helper/b;->a(Landroid/content/Context;Ljava/lang/Class;ILandroid/os/Bundle;)V

    :try_start_44
    sget-object v0, Lcom/bsgamesdk/android/helper/b;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    monitor-enter v0
    :try_end_4d
    .catch Ljava/lang/InterruptedException; {:try_start_44 .. :try_end_4d} :catch_74

    :try_start_4d
    sget-object v1, Lcom/bsgamesdk/android/helper/b;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    sget-object v1, Lcom/bsgamesdk/android/helper/b;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_4d .. :try_end_5e} :catchall_71

    :try_start_5e
    sget-object v0, Lcom/bsgamesdk/android/helper/b;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_7d

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bsgamesdk/android/helper/b;->d:Z

    const-string v0, ""
    :try_end_6b
    .catch Ljava/lang/InterruptedException; {:try_start_5e .. :try_end_6b} :catch_74

    goto :goto_7

    :catch_6c
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_3b

    :catchall_71
    move-exception v1

    :try_start_72
    monitor-exit v0
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_71

    :try_start_73
    throw v1
    :try_end_74
    .catch Ljava/lang/InterruptedException; {:try_start_73 .. :try_end_74} :catch_74

    :catch_74
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    iput-boolean v5, p0, Lcom/bsgamesdk/android/helper/b;->d:Z

    const-string v0, "localInterruptedException"

    goto :goto_7

    :cond_7d
    const/4 v1, 0x0

    :try_start_7e
    iput-boolean v1, p0, Lcom/bsgamesdk/android/helper/b;->d:Z

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_83
    .catch Ljava/lang/InterruptedException; {:try_start_7e .. :try_end_83} :catch_74

    move-result-object v0

    goto :goto_7
.end method

.method public f()Ljava/lang/String;
    .registers 7

    const/4 v5, 0x0

    iget-boolean v0, p0, Lcom/bsgamesdk/android/helper/b;->d:Z

    if-eqz v0, :cond_8

    const-string v0, "have runing"

    :goto_7
    return-object v0

    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bsgamesdk/android/helper/b;->d:Z

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v0, Lcom/bsgamesdk/android/helper/b;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    sget-object v0, Lcom/bsgamesdk/android/helper/b;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_20
    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    if-nez v0, :cond_2b

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    :cond_2b
    :try_start_2b
    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    const-string v3, "CallingPid"

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    const-string v3, "intent"

    const-string v4, "gameout"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_3f} :catch_70

    :goto_3f
    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b;->c:Landroid/app/Activity;

    const-class v3, Lcom/bsgamesdk/android/activity/ExitActivity;

    iget-object v4, p0, Lcom/bsgamesdk/android/helper/b;->e:Landroid/os/Bundle;

    invoke-static {v0, v3, v1, v4}, Lcom/bsgamesdk/android/helper/b;->a(Landroid/content/Context;Ljava/lang/Class;ILandroid/os/Bundle;)V

    :try_start_48
    sget-object v0, Lcom/bsgamesdk/android/helper/b;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    monitor-enter v0
    :try_end_51
    .catch Ljava/lang/InterruptedException; {:try_start_48 .. :try_end_51} :catch_78

    :try_start_51
    sget-object v1, Lcom/bsgamesdk/android/helper/b;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    sget-object v1, Lcom/bsgamesdk/android/helper/b;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_62
    .catchall {:try_start_51 .. :try_end_62} :catchall_75

    :try_start_62
    sget-object v0, Lcom/bsgamesdk/android/helper/b;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_81

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bsgamesdk/android/helper/b;->d:Z

    const-string v0, ""
    :try_end_6f
    .catch Ljava/lang/InterruptedException; {:try_start_62 .. :try_end_6f} :catch_78

    goto :goto_7

    :catch_70
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_3f

    :catchall_75
    move-exception v1

    :try_start_76
    monitor-exit v0
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_75

    :try_start_77
    throw v1
    :try_end_78
    .catch Ljava/lang/InterruptedException; {:try_start_77 .. :try_end_78} :catch_78

    :catch_78
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    iput-boolean v5, p0, Lcom/bsgamesdk/android/helper/b;->d:Z

    const-string v0, "localInterruptedException"

    goto :goto_7

    :cond_81
    const/4 v1, 0x0

    :try_start_82
    iput-boolean v1, p0, Lcom/bsgamesdk/android/helper/b;->d:Z

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_87
    .catch Ljava/lang/InterruptedException; {:try_start_82 .. :try_end_87} :catch_78

    move-result-object v0

    goto/16 :goto_7
.end method

.method public g()V
    .registers 5

    new-instance v0, Lcom/bsgamesdk/android/helper/b$2;

    invoke-direct {v0, p0}, Lcom/bsgamesdk/android/helper/b$2;-><init>(Lcom/bsgamesdk/android/helper/b;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/task/d;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    return-void
.end method

.method public h()Ljava/lang/String;
    .registers 9

    const/4 v7, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->getInstance()Lcom/bilibili/baseconnect/BaseSDKConnectManager;

    move-result-object v0

    const-string v2, ""

    const-string v3, "get_auth_state"

    const-string v4, ""

    const-string v5, "1"

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->reportCustomEvent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iget-boolean v0, p0, Lcom/bsgamesdk/android/helper/b;->d:Z

    if-eqz v0, :cond_19

    const-string v0, "have runing"

    :goto_18
    return-object v0

    :cond_19
    iput-boolean v1, p0, Lcom/bsgamesdk/android/helper/b;->d:Z

    :try_start_1b
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sget-object v1, Lcom/bsgamesdk/android/b;->b:Lcom/bsgamesdk/android/dynamic/IUtils;

    iget-object v2, p0, Lcom/bsgamesdk/android/helper/b;->c:Landroid/app/Activity;

    invoke-interface {v1, v2}, Lcom/bsgamesdk/android/dynamic/IUtils;->checkIsLogined(Landroid/content/Context;)Z

    move-result v1

    sget-object v2, Lcom/bsgamesdk/android/b;->b:Lcom/bsgamesdk/android/dynamic/IUtils;

    iget-object v3, p0, Lcom/bsgamesdk/android/helper/b;->c:Landroid/app/Activity;

    invoke-interface {v2, v3}, Lcom/bsgamesdk/android/dynamic/IUtils;->checkIsTouristLogined(Landroid/content/Context;)Z

    move-result v2

    if-eqz v1, :cond_50

    sget-object v1, Lcom/bsgamesdk/android/b;->b:Lcom/bsgamesdk/android/dynamic/IUtils;

    iget-object v2, p0, Lcom/bsgamesdk/android/helper/b;->c:Landroid/app/Activity;

    invoke-interface {v1, v2}, Lcom/bsgamesdk/android/dynamic/IUtils;->isRealNameAuth(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "isRealNameAuth"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_43
    const-string v1, "result"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_49} :catch_64

    :goto_49
    iput-boolean v7, p0, Lcom/bsgamesdk/android/helper/b;->d:Z

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    :cond_50
    if-eqz v2, :cond_80

    :try_start_52
    sget-object v1, Lcom/bsgamesdk/android/b;->b:Lcom/bsgamesdk/android/dynamic/IUtils;

    iget-object v2, p0, Lcom/bsgamesdk/android/helper/b;->c:Landroid/app/Activity;

    invoke-interface {v1, v2}, Lcom/bsgamesdk/android/dynamic/IUtils;->isTourRealNameAuth(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "isRealNameAuth"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_63} :catch_64

    goto :goto_43

    :catch_64
    move-exception v0

    :try_start_65
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "result"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "isRealNameAuth"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_77} :catch_78

    goto :goto_49

    :catch_78
    move-exception v0

    iput-boolean v7, p0, Lcom/bsgamesdk/android/helper/b;->d:Z

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    :cond_80
    :try_start_80
    const-string v1, "isRealNameAuth"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_87} :catch_64

    goto :goto_43
.end method

.method public i()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/bsgamesdk/android/helper/b;->c:Landroid/app/Activity;

    invoke-static {v0}, Lcom/bsgamesdk/android/api/e;->g(Landroid/content/Context;)V
    :try_end_5
    .catch Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_5
.end method
