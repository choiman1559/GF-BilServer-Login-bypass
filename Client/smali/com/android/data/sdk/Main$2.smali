.class Lcom/android/data/sdk/Main$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/data/sdk/Main;->dCInit(Landroid/app/Activity;Lcom/android/data/sdk/domain/model/DataParamsModel;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/android/data/sdk/domain/model/DataParamsModel;

.field final synthetic c:Landroid/app/Activity;

.field final synthetic d:Lcom/android/data/sdk/Main;


# direct methods
.method constructor <init>(Lcom/android/data/sdk/Main;Ljava/lang/String;Lcom/android/data/sdk/domain/model/DataParamsModel;Landroid/app/Activity;)V
    .registers 5

    iput-object p1, p0, Lcom/android/data/sdk/Main$2;->d:Lcom/android/data/sdk/Main;

    iput-object p2, p0, Lcom/android/data/sdk/Main$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/data/sdk/Main$2;->b:Lcom/android/data/sdk/domain/model/DataParamsModel;

    iput-object p4, p0, Lcom/android/data/sdk/Main$2;->c:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/android/data/sdk/Main$2;->d:Lcom/android/data/sdk/Main;

    invoke-static {v0}, Lcom/android/data/sdk/Main;->a(Lcom/android/data/sdk/Main;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/android/data/sdk/Main$2;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/android/data/sdk/Main$2;->b:Lcom/android/data/sdk/domain/model/DataParamsModel;

    iget-object v2, p0, Lcom/android/data/sdk/Main$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/data/sdk/domain/model/DataParamsModel;->setAppkey(Ljava/lang/String;)V

    :cond_16
    invoke-static {}, Lcom/android/data/sdk/utils/CommonTools;->getInstance()Lcom/android/data/sdk/utils/CommonTools;

    move-result-object v0

    iget-object v2, p0, Lcom/android/data/sdk/Main$2;->b:Lcom/android/data/sdk/domain/model/DataParamsModel;

    invoke-virtual {v0, v2}, Lcom/android/data/sdk/utils/CommonTools;->checkIntegrity(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7d

    invoke-static {}, Lcom/android/data/sdk/utils/CommonTools;->getInstance()Lcom/android/data/sdk/utils/CommonTools;

    move-result-object v0

    invoke-static {}, Lcom/android/data/sdk/Main;->a()Lcom/android/data/sdk/domain/model/DataUpModel;

    move-result-object v2

    iget-object v3, p0, Lcom/android/data/sdk/Main$2;->b:Lcom/android/data/sdk/domain/model/DataParamsModel;

    invoke-virtual {v0, v2, v3}, Lcom/android/data/sdk/utils/CommonTools;->copyParentObject(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/android/data/sdk/domain/model/DeviceInfoModel;

    invoke-direct {v0}, Lcom/android/data/sdk/domain/model/DeviceInfoModel;-><init>()V

    iget-object v2, p0, Lcom/android/data/sdk/Main$2;->c:Landroid/app/Activity;

    iget-object v3, p0, Lcom/android/data/sdk/Main$2;->d:Lcom/android/data/sdk/Main;

    invoke-static {}, Lcom/android/data/sdk/Main;->b()Lcom/android/data/sdk/PreDefined;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/data/sdk/domain/model/DeviceInfoModel;->handerDevice(Landroid/app/Activity;Lcom/android/data/sdk/PreDefined;)V

    invoke-static {}, Lcom/android/data/sdk/utils/CommonTools;->getInstance()Lcom/android/data/sdk/utils/CommonTools;

    move-result-object v2

    invoke-static {}, Lcom/android/data/sdk/Main;->a()Lcom/android/data/sdk/domain/model/DataUpModel;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/android/data/sdk/utils/CommonTools;->copyParentObject(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/data/sdk/Main;->a()Lcom/android/data/sdk/domain/model/DataUpModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/data/sdk/domain/model/DataUpModel;->newLogin_uuid()V

    iget-object v0, p0, Lcom/android/data/sdk/Main$2;->d:Lcom/android/data/sdk/Main;

    iget-object v2, p0, Lcom/android/data/sdk/Main$2;->c:Landroid/app/Activity;

    invoke-static {}, Lcom/android/data/sdk/Main;->a()Lcom/android/data/sdk/domain/model/DataUpModel;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/data/sdk/Main;->readChannelId(Landroid/app/Activity;Lcom/android/data/sdk/domain/model/DataUpModel;)V

    iget-object v0, p0, Lcom/android/data/sdk/Main$2;->d:Lcom/android/data/sdk/Main;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/data/sdk/Main;->a(Lcom/android/data/sdk/Main;Z)Z

    new-instance v0, Lcom/android/data/sdk/api/a;

    iget-object v2, p0, Lcom/android/data/sdk/Main$2;->d:Lcom/android/data/sdk/Main;

    invoke-static {}, Lcom/android/data/sdk/Main;->b()Lcom/android/data/sdk/PreDefined;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/data/sdk/api/a;-><init>(Lcom/android/data/sdk/PreDefined;)V

    iget-object v2, p0, Lcom/android/data/sdk/Main$2;->c:Landroid/app/Activity;

    new-instance v3, Lcom/android/data/sdk/Main$2$1;

    invoke-direct {v3, p0}, Lcom/android/data/sdk/Main$2$1;-><init>(Lcom/android/data/sdk/Main$2;)V

    invoke-virtual {v0, v2, v3}, Lcom/android/data/sdk/api/a;->a(Landroid/content/Context;Lcom/android/data/sdk/api/d;)V
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7b} :catch_81
    .catchall {:try_start_7 .. :try_end_7b} :catchall_86

    :goto_7b
    :try_start_7b
    monitor-exit v1
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_86

    return-void

    :cond_7d
    :try_start_7d
    invoke-static {v0}, Lcom/android/data/sdk/utils/LogUtils;->d(Ljava/lang/String;)V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_80} :catch_81
    .catchall {:try_start_7d .. :try_end_80} :catchall_86

    goto :goto_7b

    :catch_81
    move-exception v0

    :try_start_82
    invoke-static {v0}, Lcom/android/data/sdk/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_7b

    :catchall_86
    move-exception v0

    monitor-exit v1
    :try_end_88
    .catchall {:try_start_82 .. :try_end_88} :catchall_86

    throw v0
.end method
