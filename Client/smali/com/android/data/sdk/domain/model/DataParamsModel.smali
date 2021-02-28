.class public Lcom/android/data/sdk/domain/model/DataParamsModel;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private app_id:Ljava/lang/String;
    .annotation runtime Lcom/android/data/sdk/domain/interfaces/NeedField;
        isNeed = 0x2
    .end annotation
.end field

.field private appkey:Ljava/lang/String;

.field private merchant_id:Ljava/lang/String;
    .annotation runtime Lcom/android/data/sdk/domain/interfaces/NeedField;
        isNeed = 0x2
    .end annotation
.end field

.field private server_id:Ljava/lang/String;
    .annotation runtime Lcom/android/data/sdk/domain/interfaces/NeedField;
        isNeed = 0x2
    .end annotation
.end field

.field private uid:Ljava/lang/String;
    .annotation runtime Lcom/android/data/sdk/domain/interfaces/NeedField;
        isNeed = 0x2
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApp_id()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/data/sdk/domain/model/DataParamsModel;->app_id:Ljava/lang/String;

    return-object v0
.end method

.method public getAppkey()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/data/sdk/domain/model/DataParamsModel;->appkey:Ljava/lang/String;

    return-object v0
.end method

.method public getMerchant_id()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/data/sdk/domain/model/DataParamsModel;->merchant_id:Ljava/lang/String;

    return-object v0
.end method

.method public getServer_id()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/data/sdk/domain/model/DataParamsModel;->server_id:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/data/sdk/domain/model/DataParamsModel;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public setApp_id(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/data/sdk/domain/model/DataParamsModel;->app_id:Ljava/lang/String;

    return-void
.end method

.method public setAppkey(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/data/sdk/domain/model/DataParamsModel;->appkey:Ljava/lang/String;

    return-void
.end method

.method public setMerchant_id(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/data/sdk/domain/model/DataParamsModel;->merchant_id:Ljava/lang/String;

    return-void
.end method

.method public setServer_id(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/data/sdk/domain/model/DataParamsModel;->server_id:Ljava/lang/String;

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/data/sdk/domain/model/DataParamsModel;->uid:Ljava/lang/String;

    return-void
.end method
