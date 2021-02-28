.class Lcom/android/data/sdk/Main$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/data/sdk/Main;->dCInitV2(Landroid/app/Activity;Lcom/android/data/sdk/domain/model/DataParamsModel;Ljava/lang/String;)V
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

    iput-object p1, p0, Lcom/android/data/sdk/Main$3;->d:Lcom/android/data/sdk/Main;

    iput-object p2, p0, Lcom/android/data/sdk/Main$3;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/data/sdk/Main$3;->b:Lcom/android/data/sdk/domain/model/DataParamsModel;

    iput-object p4, p0, Lcom/android/data/sdk/Main$3;->c:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/android/data/sdk/Main$3;->d:Lcom/android/data/sdk/Main;

    invoke-static {v0}, Lcom/android/data/sdk/Main;->a(Lcom/android/data/sdk/Main;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/android/data/sdk/Main$3;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/android/data/sdk/Main$3;->b:Lcom/android/data/sdk/domain/model/DataParamsModel;

    iget-object v2, p0, Lcom/android/data/sdk/Main$3;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/data/sdk/domain/model/DataParamsModel;->setAppkey(Ljava/lang/String;)V

    :cond_16
    invoke-static {}, Lcom/android/data/sdk/utils/CommonTools;->getInstance()Lcom/android/data/sdk/utils/CommonTools;

    move-result-object v0

    iget-object v2, p0, Lcom/android/data/sdk/Main$3;->b:Lcom/android/data/sdk/domain/model/DataParamsModel;

    invoke-virtual {v0, v2}, Lcom/android/data/sdk/utils/CommonTools;->checkIntegrity(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_62

    invoke-static {}, Lcom/android/data/sdk/utils/CommonTools;->getInstance()Lcom/android/data/sdk/utils/CommonTools;

    move-result-object v0

    invoke-static {}, Lcom/android/data/sdk/Main;->a()Lcom/android/data/sdk/domain/model/DataUpModel;

    move-result-object v2

    iget-object v3, p0, Lcom/android/data/sdk/Main$3;->b:Lcom/android/data/sdk/domain/model/DataParamsModel;

    invoke-virtual {v0, v2, v3}, Lcom/android/data/sdk/utils/CommonTools;->copyParentObject(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/android/data/sdk/domain/model/DeviceInfoModel;

    invoke-direct {v0}, Lcom/android/data/sdk/domain/model/DeviceInfoModel;-><init>()V

    iget-object v2, p0, Lcom/android/data/sdk/Main$3;->c:Landroid/app/Activity;

    iget-object v3, p0, Lcom/android/data/sdk/Main$3;->d:Lcom/android/data/sdk/Main;

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

    iget-object v0, p0, Lcom/android/data/sdk/Main$3;->d:Lcom/android/data/sdk/Main;

    iget-object v2, p0, Lcom/android/data/sdk/Main$3;->c:Landroid/app/Activity;

    invoke-static {}, Lcom/android/data/sdk/Main;->a()Lcom/android/data/sdk/domain/model/DataUpModel;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/data/sdk/Main;->readChannelId(Landroid/app/Activity;Lcom/android/data/sdk/domain/model/DataUpModel;)V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_60} :catch_66
    .catchall {:try_start_7 .. :try_end_60} :catchall_6b

    :goto_60
    :try_start_60
    monitor-exit v1
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_6b

    return-void

    :cond_62
    :try_start_62
    invoke-static {v0}, Lcom/android/data/sdk/utils/LogUtils;->d(Ljava/lang/String;)V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_65} :catch_66
    .catchall {:try_start_62 .. :try_end_65} :catchall_6b

    goto :goto_60

    :catch_66
    move-exception v0

    :try_start_67
    invoke-static {v0}, Lcom/android/data/sdk/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_60

    :catchall_6b
    move-exception v0

    monitor-exit v1
    :try_end_6d
    .catchall {:try_start_67 .. :try_end_6d} :catchall_6b

    throw v0
.end method
