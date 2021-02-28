.class Lcom/bsgamesdk/android/dc/a$2;
.super Lcom/android/data/sdk/Main;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/dc/a;->a(Landroid/app/Activity;Lcom/android/data/sdk/domain/model/DataParamsModel;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bsgamesdk/android/dc/a;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/dc/a;Lcom/android/data/sdk/PreDefined;)V
    .registers 3

    iput-object p1, p0, Lcom/bsgamesdk/android/dc/a$2;->a:Lcom/bsgamesdk/android/dc/a;

    invoke-direct {p0, p2}, Lcom/android/data/sdk/Main;-><init>(Lcom/android/data/sdk/PreDefined;)V

    return-void
.end method


# virtual methods
.method protected readChannelId(Landroid/app/Activity;Lcom/android/data/sdk/domain/model/DataUpModel;)V
    .registers 5

    :try_start_0
    invoke-static {}, Lcom/android/data/sdk/utils/CommonTools;->getInstance()Lcom/android/data/sdk/utils/CommonTools;

    move-result-object v0

    sget-object v1, Lcom/bsgamesdk/android/dc/c;->o:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/android/data/sdk/utils/CommonTools;->readApplicationMeta(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/data/sdk/domain/model/DataUpModel;->setChannel_id(Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lcom/android/data/sdk/domain/model/DataUpModel;->setSdk_log_type(I)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_17} :catch_25
    .catchall {:try_start_0 .. :try_end_17} :catchall_34

    :cond_17
    invoke-virtual {p2}, Lcom/android/data/sdk/domain/model/DataUpModel;->getChannel_id()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-super {p0, p1, p2}, Lcom/android/data/sdk/Main;->readChannelId(Landroid/app/Activity;Lcom/android/data/sdk/domain/model/DataUpModel;)V

    :cond_24
    :goto_24
    return-void

    :catch_25
    move-exception v0

    invoke-virtual {p2}, Lcom/android/data/sdk/domain/model/DataUpModel;->getChannel_id()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-super {p0, p1, p2}, Lcom/android/data/sdk/Main;->readChannelId(Landroid/app/Activity;Lcom/android/data/sdk/domain/model/DataUpModel;)V

    goto :goto_24

    :catchall_34
    move-exception v0

    invoke-virtual {p2}, Lcom/android/data/sdk/domain/model/DataUpModel;->getChannel_id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-super {p0, p1, p2}, Lcom/android/data/sdk/Main;->readChannelId(Landroid/app/Activity;Lcom/android/data/sdk/domain/model/DataUpModel;)V

    :cond_42
    throw v0
.end method
