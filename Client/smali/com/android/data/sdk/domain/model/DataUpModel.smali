.class public Lcom/android/data/sdk/domain/model/DataUpModel;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private action_name:Ljava/lang/String;
    .annotation runtime Lcom/android/data/sdk/domain/interfaces/RequestParamsField;
    .end annotation
.end field

.field private app_id:Ljava/lang/String;
    .annotation runtime Lcom/android/data/sdk/domain/interfaces/RequestParamsField;
    .end annotation
.end field

.field private appkey:Ljava/lang/String;
    .annotation runtime Lcom/android/data/sdk/domain/interfaces/RequestParamsField;
    .end annotation
.end field

.field private channel_id:Ljava/lang/String;
    .annotation runtime Lcom/android/data/sdk/domain/interfaces/RequestParamsField;
    .end annotation
.end field

.field private client_count:J
    .annotation runtime Lcom/android/data/sdk/domain/interfaces/RequestParamsField;
    .end annotation
.end field

.field private client_request_uuid:Ljava/lang/String;
    .annotation runtime Lcom/android/data/sdk/domain/interfaces/RequestParamsField;
    .end annotation
.end field

.field private cur_buvid:Ljava/lang/String;
    .annotation runtime Lcom/android/data/sdk/domain/interfaces/RequestParamsField;
    .end annotation
.end field

.field private current_env:I
    .annotation runtime Lcom/android/data/sdk/domain/interfaces/RequestParamsField;
    .end annotation
.end field

.field private dp:Ljava/lang/String;
    .annotation runtime Lcom/android/data/sdk/domain/interfaces/RequestParamsField;
    .end annotation
.end field

.field private id:I

.field private idfa:Ljava/lang/String;
    .annotation runtime Lcom/android/data/sdk/domain/interfaces/RequestParamsField;
    .end annotation
.end field

.field private interval_time:J
    .annotation runtime Lcom/android/data/sdk/domain/interfaces/RequestParamsField;
    .end annotation
.end field

.field private login_uuid:Ljava/lang/String;
    .annotation runtime Lcom/android/data/sdk/domain/interfaces/RequestParamsField;
    .end annotation
.end field

.field private merchant_id:Ljava/lang/String;
    .annotation runtime Lcom/android/data/sdk/domain/interfaces/RequestParamsField;
    .end annotation
.end field

.field private model:Ljava/lang/String;
    .annotation runtime Lcom/android/data/sdk/domain/interfaces/RequestParamsField;
    .end annotation
.end field

.field private net:I
    .annotation runtime Lcom/android/data/sdk/domain/interfaces/RequestParamsField;
    .end annotation
.end field

.field private old_buvid:Ljava/lang/String;
    .annotation runtime Lcom/android/data/sdk/domain/interfaces/RequestParamsField;
    .end annotation
.end field

.field private operators:I
    .annotation runtime Lcom/android/data/sdk/domain/interfaces/RequestParamsField;
    .end annotation
.end field

.field private pf_ver:Ljava/lang/String;
    .annotation runtime Lcom/android/data/sdk/domain/interfaces/RequestParamsField;
    .end annotation
.end field

.field private platform:I
    .annotation runtime Lcom/android/data/sdk/domain/interfaces/RequestParamsField;
    .end annotation
.end field

.field private real_time:Z
    .annotation runtime Lcom/android/data/sdk/domain/interfaces/RequestParamsField;
    .end annotation
.end field

.field private report_time:Ljava/lang/String;
    .annotation runtime Lcom/android/data/sdk/domain/interfaces/RequestParamsField;
    .end annotation
.end field

.field private sdk_log_type:I
    .annotation runtime Lcom/android/data/sdk/domain/interfaces/RequestParamsField;
    .end annotation
.end field

.field private sdk_ver:Ljava/lang/String;
    .annotation runtime Lcom/android/data/sdk/domain/interfaces/RequestParamsField;
    .end annotation
.end field

.field private server_id:Ljava/lang/String;
    .annotation runtime Lcom/android/data/sdk/domain/interfaces/RequestParamsField;
    .end annotation
.end field

.field private total_count:Ljava/lang/String;
    .annotation runtime Lcom/android/data/sdk/domain/interfaces/RequestParamsField;
    .end annotation
.end field

.field private total_success_time:Ljava/lang/String;
    .annotation runtime Lcom/android/data/sdk/domain/interfaces/RequestParamsField;
    .end annotation
.end field

.field private total_time:Ljava/lang/String;
    .annotation runtime Lcom/android/data/sdk/domain/interfaces/RequestParamsField;
    .end annotation
.end field

.field private udid:Ljava/lang/String;
    .annotation runtime Lcom/android/data/sdk/domain/interfaces/RequestParamsField;
    .end annotation
.end field

.field private uid:Ljava/lang/String;
    .annotation runtime Lcom/android/data/sdk/domain/interfaces/RequestParamsField;
    .end annotation
.end field

.field private ver:Ljava/lang/String;
    .annotation runtime Lcom/android/data/sdk/domain/interfaces/RequestParamsField;
    .end annotation
.end field

.field private version_code:Ljava/lang/String;
    .annotation runtime Lcom/android/data/sdk/domain/interfaces/RequestParamsField;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/data/sdk/PreDefined;)V
    .registers 4

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/android/data/sdk/domain/model/DataUpModel;->sdk_log_type:I

    const-string v0, "0"

    iput-object v0, p0, Lcom/android/data/sdk/domain/model/DataUpModel;->sdk_ver:Ljava/lang/String;

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/data/sdk/domain/model/DataUpModel;->platform:I

    const-string v0, "0"

    iput-object v0, p0, Lcom/android/data/sdk/domain/model/DataUpModel;->idfa:Ljava/lang/String;

    const-string v0, "heartbeat"

    iput-object v0, p0, Lcom/android/data/sdk/domain/model/DataUpModel;->action_name:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/data/sdk/domain/model/DataUpModel;->real_time:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/data/sdk/domain/model/DataUpModel;->client_count:J

    const-wide/32 v0, 0x1d4c0

    iput-wide v0, p0, Lcom/android/data/sdk/domain/model/DataUpModel;->interval_time:J

    const-string v0, ""

    iput-object v0, p0, Lcom/android/data/sdk/domain/model/DataUpModel;->old_buvid:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/data/sdk/domain/model/DataUpModel;->cur_buvid:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/data/sdk/domain/model/DataUpModel;->total_time:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/data/sdk/domain/model/DataUpModel;->total_success_time:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/data/sdk/domain/model/DataUpModel;->total_count:Ljava/lang/String;

    if-eqz p1, :cond_54

    invoke-virtual {p1}, Lcom/android/data/sdk/PreDefined;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/data/sdk/domain/model/DataUpModel;->sdk_ver:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/data/sdk/PreDefined;->getEnv()I

    move-result v0

    iput v0, p0, Lcom/android/data/sdk/domain/model/DataUpModel;->current_env:I

    invoke-virtual {p1}, Lcom/android/data/sdk/PreDefined;->getIntervalTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/data/sdk/domain/model/DataUpModel;->interval_time:J

    invoke-virtual {p1}, Lcom/android/data/sdk/PreDefined;->getOldBuvid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/data/sdk/domain/model/DataUpModel;->old_buvid:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/data/sdk/PreDefined;->getCurBuvid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/data/sdk/domain/model/DataUpModel;->cur_buvid:Ljava/lang/String;

    :cond_54
    return-void
.end method


# virtual methods
.method public clientCountIncrease()V
    .registers 5

    iget-wide v0, p0, Lcom/android/data/sdk/domain/model/DataUpModel;->client_count:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/data/sdk/domain/model/DataUpModel;->client_count:J

    return-void
.end method

.method public clone()Lcom/android/data/sdk/domain/model/DataUpModel;
    .registers 2

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/data/sdk/domain/model/DataUpModel;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/android/data/sdk/domain/model/DataUpModel;->clone()Lcom/android/data/sdk/domain/model/DataUpModel;

    move-result-object v0

    return-object v0
.end method

.method public getAction_name()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/data/sdk/domain/model/DataUpModel;->action_name:Ljava/lang/String;

    return-object v0
.end method

.method public getApp_id()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/data/sdk/domain/model/DataUpModel;->app_id:Ljava/lang/String;

    return-object v0
.end method

.method public getAppkey()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/data/sdk/domain/model/DataUpModel;->appkey:Ljava/lang/String;

    return-object v0
.end method

.method public getChannel_id()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/data/sdk/domain/model/DataUpModel;->channel_id:Ljava/lang/String;

    return-object v0
.end method

.method public getClient_count()J
    .registers 3

    iget-wide v0, p0, Lcom/android/data/sdk/domain/model/DataUpModel;->client_count:J

    return-wide v0
.end method

.method public getClient_request_uuid()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/data/sdk/domain/model/DataUpModel;->client_request_uuid:Ljava/lang/String;

    return-object v0
.end method

.method public getCur_buvid()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/data/sdk/domain/model/DataUpModel;->cur_buvid:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrent_env()I
    .registers 2

    iget v0, p0, Lcom/android/data/sdk/domain/model/DataUpModel;->current_env:I

    return v0
.end method

.method public getDp()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/data/sdk/domain/model/DataUpModel;->dp:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .registers 2

    iget v0, p0, Lcom/android/data/sdk/domain/model/DataUpModel;->id:I

    return v0
.end method

.method public getIdfa()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/data/sdk/domain/model/DataUpModel;->idfa:Ljava/lang/String;

    return-object v0
.end method

.method public getInterval_time()J
    .registers 3

    iget-wide v0, p0, Lcom/android/data/sdk/domain/model/DataUpModel;->interval_time:J

    return-wide v0
.end method

.method public getLogin_uuid()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/data/sdk/domain/model/DataUpModel;->login_uuid:Ljava/lang/String;

    return-object v0
.end method

.method public getMerchant_id()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/data/sdk/domain/model/DataUpModel;->merchant_id:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/data/sdk/domain/model/DataUpModel;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getNet()I
    .registers 2

    iget v0, p0, Lcom/android/data/sdk/domain/model/DataUpModel;->net:I

    return v0
.end method

.method public getOld_buvid()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/data/sdk/domain/model/DataUpModel;->old_buvid:Ljava/lang/String;

    return-object v0
.end method

.method public getOperators()I
    .registers 2

    iget v0, p0, Lcom/android/data/sdk/domain/model/DataUpModel;->operators:I

    return v0
.end method

.method public getPf_ver()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/data/sdk/domain/model/DataUpModel;->pf_ver:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatform()I
    .registers 2

    iget v0, p0, Lcom/android/data/sdk/domain/model/DataUpModel;->platform:I

    return v0
.end method

.method public getReal_time()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/data/sdk/domain/model/DataUpModel;->real_time:Z

    return v0
.end method

.method public getReport_time()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/data/sdk/domain/model/DataUpModel;->report_time:Ljava/lang/String;

    return-object v0
.end method

.method public getSdk_log_type()I
    .registers 2

    iget v0, p0, Lcom/android/data/sdk/domain/model/DataUpModel;->sdk_log_type:I

    return v0
.end method

.method public getSdk_ver()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/data/sdk/domain/model/DataUpModel;->sdk_ver:Ljava/lang/String;

    return-object v0
.end method

.method public getServer_id()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/data/sdk/domain/model/DataUpModel;->server_id:Ljava/lang/String;

    return-object v0
.end method

.method public getTotal_count()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/data/sdk/domain/model/DataUpModel;->total_count:Ljava/lang/String;

    return-object v0
.end method

.method public getTotal_success_time()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/data/sdk/domain/model/DataUpModel;->total_success_time:Ljava/lang/String;

    return-object v0
.end method

.method public getTotal_time()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/data/sdk/domain/model/DataUpModel;->total_time:Ljava/lang/String;

    return-object v0
.end method

.method public getUdid()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/data/sdk/domain/model/DataUpModel;->udid:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/data/sdk/domain/model/DataUpModel;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public getVer()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/data/sdk/domain/model/DataUpModel;->ver:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion_code()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/data/sdk/domain/model/DataUpModel;->version_code:Ljava/lang/String;

    return-object v0
.end method

.method public isReal_time()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/data/sdk/domain/model/DataUpModel;->real_time:Z

    return v0
.end method

.method public newLogin_uuid()V
    .registers 3

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/data/sdk/domain/model/DataUpModel;->login_uuid:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/data/sdk/domain/model/DataUpModel;->client_count:J

    return-void
.end method

.method public newReport_time()V
    .registers 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/data/sdk/domain/model/DataUpModel;->report_time:Ljava/lang/String;

    return-void
.end method

.method public newRequest_uuid()V
    .registers 3

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/data/sdk/domain/model/DataUpModel;->client_request_uuid:Ljava/lang/String;

    return-void
.end method

.method public setAction_name(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/data/sdk/domain/model/DataUpModel;->action_name:Ljava/lang/String;

    return-void
.end method

.method public setApp_id(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/data/sdk/domain/model/DataUpModel;->app_id:Ljava/lang/String;

    return-void
.end method

.method public setAppkey(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/data/sdk/domain/model/DataUpModel;->appkey:Ljava/lang/String;

    return-void
.end method

.method public setChannel_id(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/data/sdk/domain/model/DataUpModel;->channel_id:Ljava/lang/String;

    return-void
.end method

.method public setClient_count(J)V
    .registers 4

    iput-wide p1, p0, Lcom/android/data/sdk/domain/model/DataUpModel;->client_count:J

    return-void
.end method

.method public setClient_request_uuid(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/data/sdk/domain/model/DataUpModel;->client_request_uuid:Ljava/lang/String;

    return-void
.end method

.method public setCur_buvid(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/data/sdk/domain/model/DataUpModel;->cur_buvid:Ljava/lang/String;

    return-void
.end method

.method public setCurrent_env(I)V
    .registers 2

    iput p1, p0, Lcom/android/data/sdk/domain/model/DataUpModel;->current_env:I

    return-void
.end method

.method public setDp(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/data/sdk/domain/model/DataUpModel;->dp:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .registers 2

    iput p1, p0, Lcom/android/data/sdk/domain/model/DataUpModel;->id:I

    return-void
.end method

.method public setIdfa(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/data/sdk/domain/model/DataUpModel;->idfa:Ljava/lang/String;

    return-void
.end method

.method public setInterval_time(J)V
    .registers 4

    iput-wide p1, p0, Lcom/android/data/sdk/domain/model/DataUpModel;->interval_time:J

    return-void
.end method

.method public setLogin_uuid(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/data/sdk/domain/model/DataUpModel;->login_uuid:Ljava/lang/String;

    return-void
.end method

.method public setMerchant_id(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/data/sdk/domain/model/DataUpModel;->merchant_id:Ljava/lang/String;

    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/data/sdk/domain/model/DataUpModel;->model:Ljava/lang/String;

    return-void
.end method

.method public setNet(I)V
    .registers 2

    iput p1, p0, Lcom/android/data/sdk/domain/model/DataUpModel;->net:I

    return-void
.end method

.method public setOld_buvid(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/data/sdk/domain/model/DataUpModel;->old_buvid:Ljava/lang/String;

    return-void
.end method

.method public setOperators(I)V
    .registers 2

    iput p1, p0, Lcom/android/data/sdk/domain/model/DataUpModel;->operators:I

    return-void
.end method

.method public setPf_ver(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/data/sdk/domain/model/DataUpModel;->pf_ver:Ljava/lang/String;

    return-void
.end method

.method public setPlatform(I)V
    .registers 2

    iput p1, p0, Lcom/android/data/sdk/domain/model/DataUpModel;->platform:I

    return-void
.end method

.method public setReal_time(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/data/sdk/domain/model/DataUpModel;->real_time:Z

    return-void
.end method

.method public setReport_time(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/data/sdk/domain/model/DataUpModel;->report_time:Ljava/lang/String;

    return-void
.end method

.method public setSdk_log_type(I)V
    .registers 2

    iput p1, p0, Lcom/android/data/sdk/domain/model/DataUpModel;->sdk_log_type:I

    return-void
.end method

.method public setSdk_ver(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/data/sdk/domain/model/DataUpModel;->sdk_ver:Ljava/lang/String;

    return-void
.end method

.method public setServer_id(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/data/sdk/domain/model/DataUpModel;->server_id:Ljava/lang/String;

    return-void
.end method

.method public setTotal_count(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/data/sdk/domain/model/DataUpModel;->total_count:Ljava/lang/String;

    return-void
.end method

.method public setTotal_success_time(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/data/sdk/domain/model/DataUpModel;->total_success_time:Ljava/lang/String;

    return-void
.end method

.method public setTotal_time(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/data/sdk/domain/model/DataUpModel;->total_time:Ljava/lang/String;

    return-void
.end method

.method public setUdid(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/data/sdk/domain/model/DataUpModel;->udid:Ljava/lang/String;

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/data/sdk/domain/model/DataUpModel;->uid:Ljava/lang/String;

    return-void
.end method

.method public setVer(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/data/sdk/domain/model/DataUpModel;->ver:Ljava/lang/String;

    return-void
.end method

.method public setVersion_code(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/data/sdk/domain/model/DataUpModel;->version_code:Ljava/lang/String;

    return-void
.end method
