.class public Lcom/android/data/sdk/Main;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/data/sdk/domain/interfaces/ILifeCycle;


# static fields
.field private static b:Lcom/android/data/sdk/domain/model/DataUpModel;

.field private static c:Lcom/android/data/sdk/service/BaseService$a;

.field private static e:Lcom/android/data/sdk/PreDefined;

.field private static f:Landroid/content/ServiceConnection;


# instance fields
.field private final a:Ljava/lang/Object;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/data/sdk/Main;->c:Lcom/android/data/sdk/service/BaseService$a;

    new-instance v0, Lcom/android/data/sdk/Main$1;

    invoke-direct {v0}, Lcom/android/data/sdk/Main$1;-><init>()V

    sput-object v0, Lcom/android/data/sdk/Main;->f:Landroid/content/ServiceConnection;

    return-void
.end method

.method public constructor <init>(Lcom/android/data/sdk/PreDefined;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/data/sdk/Main;->a:Ljava/lang/Object;

    sput-object p1, Lcom/android/data/sdk/Main;->e:Lcom/android/data/sdk/PreDefined;

    invoke-static {}, Lcom/android/data/sdk/api/c;->a()Lcom/android/data/sdk/api/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/data/sdk/api/c;->a(Lcom/android/data/sdk/PreDefined;)V

    invoke-static {}, Lcom/android/data/sdk/net/c;->a()Lcom/android/data/sdk/net/c;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/data/sdk/PreDefined;->getCoreThreadPoolSize()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/data/sdk/PreDefined;->getMaxThreadPoolSize()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/data/sdk/PreDefined;->getKeepAliveTime()J

    move-result-wide v4

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/android/data/sdk/net/c;->a(IIJ)V

    new-instance v0, Lcom/android/data/sdk/domain/model/DataUpModel;

    invoke-direct {v0, p1}, Lcom/android/data/sdk/domain/model/DataUpModel;-><init>(Lcom/android/data/sdk/PreDefined;)V

    sput-object v0, Lcom/android/data/sdk/Main;->b:Lcom/android/data/sdk/domain/model/DataUpModel;

    return-void
.end method

.method static synthetic a()Lcom/android/data/sdk/domain/model/DataUpModel;
    .registers 1

    sget-object v0, Lcom/android/data/sdk/Main;->b:Lcom/android/data/sdk/domain/model/DataUpModel;

    return-object v0
.end method

.method static synthetic a(Lcom/android/data/sdk/service/BaseService$a;)Lcom/android/data/sdk/service/BaseService$a;
    .registers 1

    sput-object p0, Lcom/android/data/sdk/Main;->c:Lcom/android/data/sdk/service/BaseService$a;

    return-object p0
.end method

.method static synthetic a(Lcom/android/data/sdk/Main;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/data/sdk/Main;->a:Ljava/lang/Object;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .registers 3

    :try_start_0
    const-string v0, "u3dTag"

    invoke-static {p1, v0}, Lcom/android/data/sdk/utils/h;->a(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "dc_action"

    invoke-static {p1, v0}, Lcom/android/data/sdk/utils/h;->a(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "dc_view"

    invoke-static {p1, v0}, Lcom/android/data/sdk/utils/h;->a(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "dc_type"

    invoke-static {p1, v0}, Lcom/android/data/sdk/utils/h;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_14} :catch_15

    :goto_14
    return-void

    :catch_15
    move-exception v0

    goto :goto_14
.end method

.method private a(Ljava/util/HashMap;Lcom/android/data/sdk/domain/model/DataUpModel;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/android/data/sdk/domain/model/DataUpModel;",
            ")V"
        }
    .end annotation

    const-string v0, "actionname"

    const-string v1, "dataState"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "uid"

    invoke-virtual {p2}, Lcom/android/data/sdk/domain/model/DataUpModel;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lcom/android/data/sdk/Main;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/data/sdk/Main;->d:Z

    return p1
.end method

.method static synthetic b()Lcom/android/data/sdk/PreDefined;
    .registers 1

    sget-object v0, Lcom/android/data/sdk/Main;->e:Lcom/android/data/sdk/PreDefined;

    return-object v0
.end method

.method static synthetic c()Lcom/android/data/sdk/service/BaseService$a;
    .registers 1

    sget-object v0, Lcom/android/data/sdk/Main;->c:Lcom/android/data/sdk/service/BaseService$a;

    return-object v0
.end method


# virtual methods
.method public appDestroy(Landroid/app/Activity;)V
    .registers 5

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "message"

    const-string v2, "Destroy"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/data/sdk/Main;->b:Lcom/android/data/sdk/domain/model/DataUpModel;

    invoke-direct {p0, v0, v1}, Lcom/android/data/sdk/Main;->a(Ljava/util/HashMap;Lcom/android/data/sdk/domain/model/DataUpModel;)V

    new-instance v1, Lcom/android/data/sdk/api/a;

    sget-object v2, Lcom/android/data/sdk/Main;->e:Lcom/android/data/sdk/PreDefined;

    invoke-direct {v1, v2}, Lcom/android/data/sdk/api/a;-><init>(Lcom/android/data/sdk/PreDefined;)V

    invoke-virtual {v1, p1, v0}, Lcom/android/data/sdk/api/a;->a(Landroid/content/Context;Ljava/util/HashMap;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1b} :catch_3d

    :goto_1b
    if-eqz p1, :cond_26

    :try_start_1d
    iget-boolean v0, p0, Lcom/android/data/sdk/Main;->d:Z

    if-eqz v0, :cond_26

    sget-object v0, Lcom/android/data/sdk/Main;->f:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_26
    invoke-direct {p0, p1}, Lcom/android/data/sdk/Main;->a(Landroid/content/Context;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/android/data/sdk/Main;->c:Lcom/android/data/sdk/service/BaseService$a;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/data/sdk/Main;->b:Lcom/android/data/sdk/domain/model/DataUpModel;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/data/sdk/Main;->d:Z

    const-string v0, "appDestroy"

    invoke-static {v0}, Lcom/android/data/sdk/utils/LogUtils;->e(Ljava/lang/String;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_37} :catch_38

    :goto_37
    return-void

    :catch_38
    move-exception v0

    invoke-static {v0}, Lcom/android/data/sdk/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_37

    :catch_3d
    move-exception v0

    goto :goto_1b
.end method

.method public appOffline(Landroid/app/Activity;)V
    .registers 5

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "message"

    const-string v2, "EnterBackground"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/data/sdk/Main;->b:Lcom/android/data/sdk/domain/model/DataUpModel;

    invoke-direct {p0, v0, v1}, Lcom/android/data/sdk/Main;->a(Ljava/util/HashMap;Lcom/android/data/sdk/domain/model/DataUpModel;)V

    new-instance v1, Lcom/android/data/sdk/api/a;

    sget-object v2, Lcom/android/data/sdk/Main;->e:Lcom/android/data/sdk/PreDefined;

    invoke-direct {v1, v2}, Lcom/android/data/sdk/api/a;-><init>(Lcom/android/data/sdk/PreDefined;)V

    invoke-virtual {v1, p1, v0}, Lcom/android/data/sdk/api/a;->a(Landroid/content/Context;Ljava/util/HashMap;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1b} :catch_30

    :goto_1b
    if-eqz p1, :cond_2a

    :try_start_1d
    iget-boolean v0, p0, Lcom/android/data/sdk/Main;->d:Z

    if-eqz v0, :cond_2a

    sget-object v0, Lcom/android/data/sdk/Main;->c:Lcom/android/data/sdk/service/BaseService$a;

    if-eqz v0, :cond_2a

    sget-object v0, Lcom/android/data/sdk/Main;->c:Lcom/android/data/sdk/service/BaseService$a;

    invoke-virtual {v0}, Lcom/android/data/sdk/service/BaseService$a;->d()V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_2a} :catch_2b

    :cond_2a
    :goto_2a
    return-void

    :catch_2b
    move-exception v0

    invoke-static {v0}, Lcom/android/data/sdk/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_2a

    :catch_30
    move-exception v0

    goto :goto_1b
.end method

.method public appOnline(Landroid/app/Activity;)V
    .registers 7

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "message"

    const-string v2, "BecomeActive"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/data/sdk/Main;->b:Lcom/android/data/sdk/domain/model/DataUpModel;

    invoke-direct {p0, v0, v1}, Lcom/android/data/sdk/Main;->a(Ljava/util/HashMap;Lcom/android/data/sdk/domain/model/DataUpModel;)V

    new-instance v1, Lcom/android/data/sdk/api/a;

    sget-object v2, Lcom/android/data/sdk/Main;->e:Lcom/android/data/sdk/PreDefined;

    invoke-direct {v1, v2}, Lcom/android/data/sdk/api/a;-><init>(Lcom/android/data/sdk/PreDefined;)V

    invoke-virtual {v1, p1, v0}, Lcom/android/data/sdk/api/a;->a(Landroid/content/Context;Ljava/util/HashMap;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1b} :catch_185

    :goto_1b
    :try_start_1b
    const-string v0, "u3dTag"

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/android/data/sdk/utils/h;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "isTouristKill"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b2

    const-string v1, "onExit"

    const-string v2, "0"

    invoke-static {p1, v1, v2}, Lcom/android/data/sdk/utils/h;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b2

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "dc_action"

    const-string v0, "dc_action"

    const-string v3, ""

    invoke-static {p1, v0, v3}, Lcom/android/data/sdk/utils/h;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "dc_view"

    const-string v0, "dc_view"

    const-string v3, ""

    invoke-static {p1, v0, v3}, Lcom/android/data/sdk/utils/h;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "intent"

    const-string v2, "touristLimit"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.bsgamesdk.android.activity.TouristActivity"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x10000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_7f
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_7f} :catch_12b

    :cond_7f
    :goto_7f
    :try_start_7f
    iget-object v1, p0, Lcom/android/data/sdk/Main;->a:Ljava/lang/Object;

    monitor-enter v1
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_82} :catch_15e

    if-eqz p1, :cond_b0

    :try_start_84
    iget-boolean v0, p0, Lcom/android/data/sdk/Main;->d:Z

    if-eqz v0, :cond_b0

    new-instance v0, Lcom/android/data/sdk/api/a;

    sget-object v2, Lcom/android/data/sdk/Main;->e:Lcom/android/data/sdk/PreDefined;

    invoke-direct {v0, v2}, Lcom/android/data/sdk/api/a;-><init>(Lcom/android/data/sdk/PreDefined;)V

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/data/sdk/api/a;->a:Z

    sget-object v0, Lcom/android/data/sdk/Main;->c:Lcom/android/data/sdk/service/BaseService$a;

    if-nez v0, :cond_12e

    const-string v0, "startService"

    invoke-static {v0}, Lcom/android/data/sdk/utils/LogUtils;->e(Ljava/lang/String;)V

    sget-object v0, Lcom/android/data/sdk/Main;->e:Lcom/android/data/sdk/PreDefined;

    if-eqz v0, :cond_b0

    new-instance v0, Landroid/content/Intent;

    sget-object v2, Lcom/android/data/sdk/Main;->e:Lcom/android/data/sdk/PreDefined;

    invoke-virtual {v2}, Lcom/android/data/sdk/PreDefined;->getServiceClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v2, Lcom/android/data/sdk/Main;->f:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v2, v3}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_b0
    :goto_b0
    monitor-exit v1
    :try_end_b1
    .catchall {:try_start_84 .. :try_end_b1} :catchall_15b

    :goto_b1
    return-void

    :cond_b2
    :try_start_b2
    const-string v1, "isUserKill"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7f

    const-string v0, "onExit"

    const-string v1, "0"

    invoke-static {p1, v0, v1}, Lcom/android/data/sdk/utils/h;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7f

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    new-instance v2, Lcom/android/data/sdk/domain/model/AntiModel;

    invoke-direct {v2}, Lcom/android/data/sdk/domain/model/AntiModel;-><init>()V

    new-instance v3, Lcom/android/data/sdk/domain/model/AntiModel;

    invoke-direct {v3}, Lcom/android/data/sdk/domain/model/AntiModel;-><init>()V

    const-string v0, "dc_action"

    const-string v4, ""

    invoke-static {p1, v0, v4}, Lcom/android/data/sdk/utils/h;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v3, Lcom/android/data/sdk/domain/model/AntiModel;->action:Ljava/lang/String;

    const-string v0, "dc_view"

    const-string v4, ""

    invoke-static {p1, v0, v4}, Lcom/android/data/sdk/utils/h;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v3, Lcom/android/data/sdk/domain/model/AntiModel;->view:Ljava/lang/String;

    iget-object v0, v2, Lcom/android/data/sdk/domain/model/AntiModel;->mAntiModelList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "sdkType"

    const-string v0, "dc_type"

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p1, v0, v4}, Lcom/android/data/sdk/utils/h;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "antiModle"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v0, "com.bsgamesdk.android.dc.activity.BSGameAntiIndulegnceActivity"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x10000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_129
    .catch Ljava/lang/Throwable; {:try_start_b2 .. :try_end_129} :catch_12b

    goto/16 :goto_7f

    :catch_12b
    move-exception v0

    goto/16 :goto_7f

    :cond_12e
    :try_start_12e
    sget-object v0, Lcom/android/data/sdk/Main;->c:Lcom/android/data/sdk/service/BaseService$a;

    invoke-virtual {v0}, Lcom/android/data/sdk/service/BaseService$a;->b()Lcom/android/data/sdk/domain/model/DataUpModel;

    move-result-object v0

    sget-object v2, Lcom/android/data/sdk/Main;->b:Lcom/android/data/sdk/domain/model/DataUpModel;

    invoke-virtual {v2}, Lcom/android/data/sdk/domain/model/DataUpModel;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/data/sdk/domain/model/DataUpModel;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_164

    sget-object v2, Lcom/android/data/sdk/Main;->b:Lcom/android/data/sdk/domain/model/DataUpModel;

    invoke-virtual {v2}, Lcom/android/data/sdk/domain/model/DataUpModel;->getServer_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/data/sdk/domain/model/DataUpModel;->getServer_id()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_164

    sget-object v0, Lcom/android/data/sdk/Main;->c:Lcom/android/data/sdk/service/BaseService$a;

    invoke-virtual {v0}, Lcom/android/data/sdk/service/BaseService$a;->c()V

    goto/16 :goto_b0

    :catchall_15b
    move-exception v0

    monitor-exit v1
    :try_end_15d
    .catchall {:try_start_12e .. :try_end_15d} :catchall_15b

    :try_start_15d
    throw v0
    :try_end_15e
    .catch Ljava/lang/Exception; {:try_start_15d .. :try_end_15e} :catch_15e

    :catch_15e
    move-exception v0

    invoke-static {v0}, Lcom/android/data/sdk/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto/16 :goto_b1

    :cond_164
    :try_start_164
    sget-object v0, Lcom/android/data/sdk/Main;->c:Lcom/android/data/sdk/service/BaseService$a;

    invoke-virtual {v0}, Lcom/android/data/sdk/service/BaseService$a;->a()V

    sget-object v0, Lcom/android/data/sdk/Main;->b:Lcom/android/data/sdk/domain/model/DataUpModel;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/data/sdk/domain/model/DataUpModel;->setClient_count(J)V
    :try_end_170
    .catchall {:try_start_164 .. :try_end_170} :catchall_15b

    :try_start_170
    sget-object v0, Lcom/android/data/sdk/Main;->c:Lcom/android/data/sdk/service/BaseService$a;

    sget-object v2, Lcom/android/data/sdk/Main;->b:Lcom/android/data/sdk/domain/model/DataUpModel;

    invoke-virtual {v2}, Lcom/android/data/sdk/domain/model/DataUpModel;->clone()Lcom/android/data/sdk/domain/model/DataUpModel;

    move-result-object v2

    sget-object v3, Lcom/android/data/sdk/Main;->e:Lcom/android/data/sdk/PreDefined;

    invoke-virtual {v0, v2, v3}, Lcom/android/data/sdk/service/BaseService$a;->a(Lcom/android/data/sdk/domain/model/DataUpModel;Lcom/android/data/sdk/PreDefined;)V
    :try_end_17d
    .catch Ljava/lang/Exception; {:try_start_170 .. :try_end_17d} :catch_17f
    .catchall {:try_start_170 .. :try_end_17d} :catchall_15b

    goto/16 :goto_b0

    :catch_17f
    move-exception v0

    :try_start_180
    invoke-static {v0}, Lcom/android/data/sdk/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V
    :try_end_183
    .catchall {:try_start_180 .. :try_end_183} :catchall_15b

    goto/16 :goto_b0

    :catch_185
    move-exception v0

    goto/16 :goto_1b
.end method

.method public dCInit(Landroid/app/Activity;Lcom/android/data/sdk/domain/model/DataParamsModel;Ljava/lang/String;)V
    .registers 6

    invoke-static {}, Lcom/android/data/sdk/net/c;->a()Lcom/android/data/sdk/net/c;

    move-result-object v0

    new-instance v1, Lcom/android/data/sdk/Main$2;

    invoke-direct {v1, p0, p3, p2, p1}, Lcom/android/data/sdk/Main$2;-><init>(Lcom/android/data/sdk/Main;Ljava/lang/String;Lcom/android/data/sdk/domain/model/DataParamsModel;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/android/data/sdk/net/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public dCInitV2(Landroid/app/Activity;Lcom/android/data/sdk/domain/model/DataParamsModel;Ljava/lang/String;)V
    .registers 6

    invoke-static {}, Lcom/android/data/sdk/net/c;->a()Lcom/android/data/sdk/net/c;

    move-result-object v0

    new-instance v1, Lcom/android/data/sdk/Main$3;

    invoke-direct {v1, p0, p3, p2, p1}, Lcom/android/data/sdk/Main$3;-><init>(Lcom/android/data/sdk/Main;Ljava/lang/String;Lcom/android/data/sdk/domain/model/DataParamsModel;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/android/data/sdk/net/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected readChannelId(Landroid/app/Activity;Lcom/android/data/sdk/domain/model/DataUpModel;)V
    .registers 5

    invoke-static {}, Lcom/android/data/sdk/utils/CommonTools;->getInstance()Lcom/android/data/sdk/utils/CommonTools;

    move-result-object v0

    sget-object v1, Lcom/android/data/sdk/Main;->e:Lcom/android/data/sdk/PreDefined;

    invoke-virtual {v1}, Lcom/android/data/sdk/PreDefined;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/data/sdk/utils/CommonTools;->readAssets(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-virtual {p2, v0}, Lcom/android/data/sdk/domain/model/DataUpModel;->setChannel_id(Ljava/lang/String;)V

    :goto_17
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/android/data/sdk/domain/model/DataUpModel;->setSdk_log_type(I)V

    return-void

    :cond_1c
    sget-object v0, Lcom/android/data/sdk/Main;->e:Lcom/android/data/sdk/PreDefined;

    invoke-virtual {v0}, Lcom/android/data/sdk/PreDefined;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/data/sdk/domain/model/DataUpModel;->setChannel_id(Ljava/lang/String;)V

    goto :goto_17
.end method

.method public startHeartBeat(Landroid/app/Activity;)V
    .registers 4

    invoke-static {}, Lcom/android/data/sdk/net/c;->a()Lcom/android/data/sdk/net/c;

    move-result-object v0

    new-instance v1, Lcom/android/data/sdk/Main$4;

    invoke-direct {v1, p0, p1}, Lcom/android/data/sdk/Main$4;-><init>(Lcom/android/data/sdk/Main;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/android/data/sdk/net/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public stop(Landroid/app/Activity;)V
    .registers 5

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "message"

    const-string v2, "stop"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/data/sdk/Main;->b:Lcom/android/data/sdk/domain/model/DataUpModel;

    invoke-direct {p0, v0, v1}, Lcom/android/data/sdk/Main;->a(Ljava/util/HashMap;Lcom/android/data/sdk/domain/model/DataUpModel;)V

    new-instance v1, Lcom/android/data/sdk/api/a;

    sget-object v2, Lcom/android/data/sdk/Main;->e:Lcom/android/data/sdk/PreDefined;

    invoke-direct {v1, v2}, Lcom/android/data/sdk/api/a;-><init>(Lcom/android/data/sdk/PreDefined;)V

    invoke-virtual {v1, p1, v0}, Lcom/android/data/sdk/api/a;->a(Landroid/content/Context;Ljava/util/HashMap;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1b} :catch_44

    :goto_1b
    :try_start_1b
    new-instance v0, Lcom/android/data/sdk/api/a;

    sget-object v1, Lcom/android/data/sdk/Main;->e:Lcom/android/data/sdk/PreDefined;

    invoke-direct {v0, v1}, Lcom/android/data/sdk/api/a;-><init>(Lcom/android/data/sdk/PreDefined;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/data/sdk/api/a;->a:Z

    if-eqz p1, :cond_30

    iget-boolean v0, p0, Lcom/android/data/sdk/Main;->d:Z

    if-eqz v0, :cond_30

    sget-object v0, Lcom/android/data/sdk/Main;->f:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_30
    invoke-direct {p0, p1}, Lcom/android/data/sdk/Main;->a(Landroid/content/Context;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/android/data/sdk/Main;->c:Lcom/android/data/sdk/service/BaseService$a;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/data/sdk/Main;->d:Z

    const-string v0, "stop"

    invoke-static {v0}, Lcom/android/data/sdk/utils/LogUtils;->e(Ljava/lang/String;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_3e} :catch_3f

    :goto_3e
    return-void

    :catch_3f
    move-exception v0

    invoke-static {v0}, Lcom/android/data/sdk/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_3e

    :catch_44
    move-exception v0

    goto :goto_1b
.end method
