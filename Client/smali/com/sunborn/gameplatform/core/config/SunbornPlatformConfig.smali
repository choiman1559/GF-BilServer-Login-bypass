.class public Lcom/sunborn/gameplatform/core/config/SunbornPlatformConfig;
.super Lcom/lohanry/android/framework/cofig/Config;
.source "SunbornPlatformConfig.java"


# static fields
.field public static TAG:Ljava/lang/String;

.field private static mSunbornPlatformConfig:Lcom/sunborn/gameplatform/core/config/SunbornPlatformConfig;


# instance fields
.field private COM_SUNBORN_PLATFORM_HTTP_LOGIN_VERFY:Ljava/lang/String;
    .annotation runtime Lcom/lohanry/android/framework/annotation/ConfigFromResources;
    .end annotation
.end field

.field private COM_SUNBORN_PLATFORM_HTTP_PASSPORT_DOMAIN:Ljava/lang/String;
    .annotation runtime Lcom/lohanry/android/framework/annotation/ConfigFromResources;
    .end annotation
.end field

.field private COM_SUNBORN_PLATFORM_HTTP_PAY_CALL_BACK:Ljava/lang/String;
    .annotation runtime Lcom/lohanry/android/framework/annotation/ConfigFromResources;
    .end annotation
.end field

.field private COM_SUNBORN_PLATFORM_HTTP_PAY_CREATE_ORDER:Ljava/lang/String;
    .annotation runtime Lcom/lohanry/android/framework/annotation/ConfigFromResources;
    .end annotation
.end field

.field private COM_SUNBORN_PLATFORM_HTTP_PAY_DOMAIN:Ljava/lang/String;
    .annotation runtime Lcom/lohanry/android/framework/annotation/ConfigFromResources;
    .end annotation
.end field

.field private COM_SUNBORN_UC_DATA_CENTER_SECRET_KEY:Ljava/lang/String;
    .annotation runtime Lcom/lohanry/android/framework/annotation/ConfigFromResources;
    .end annotation
.end field

.field private COM_SUNBORN_UC_HTTP_TRACKING_DATA:Ljava/lang/String;
    .annotation runtime Lcom/lohanry/android/framework/annotation/ConfigFromResources;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    const-string v0, "SunbornPlatformConfig"

    sput-object v0, Lcom/sunborn/gameplatform/core/config/SunbornPlatformConfig;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/lohanry/android/framework/cofig/Config;-><init>()V

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/sunborn/gameplatform/core/config/SunbornPlatformConfig;->COM_SUNBORN_PLATFORM_HTTP_PASSPORT_DOMAIN:Ljava/lang/String;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/sunborn/gameplatform/core/config/SunbornPlatformConfig;->COM_SUNBORN_PLATFORM_HTTP_PAY_DOMAIN:Ljava/lang/String;

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/sunborn/gameplatform/core/config/SunbornPlatformConfig;->COM_SUNBORN_PLATFORM_HTTP_LOGIN_VERFY:Ljava/lang/String;

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lcom/sunborn/gameplatform/core/config/SunbornPlatformConfig;->COM_SUNBORN_PLATFORM_HTTP_PAY_CREATE_ORDER:Ljava/lang/String;

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lcom/sunborn/gameplatform/core/config/SunbornPlatformConfig;->COM_SUNBORN_PLATFORM_HTTP_PAY_CALL_BACK:Ljava/lang/String;

    .line 80
    const-string v0, ""

    iput-object v0, p0, Lcom/sunborn/gameplatform/core/config/SunbornPlatformConfig;->COM_SUNBORN_UC_HTTP_TRACKING_DATA:Ljava/lang/String;

    .line 87
    const-string v0, ""

    iput-object v0, p0, Lcom/sunborn/gameplatform/core/config/SunbornPlatformConfig;->COM_SUNBORN_UC_DATA_CENTER_SECRET_KEY:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lcom/sunborn/gameplatform/core/config/SunbornPlatformConfig;
    .registers 3

    .prologue
    .line 17
    sget-object v1, Lcom/sunborn/gameplatform/core/config/SunbornPlatformConfig;->mSunbornPlatformConfig:Lcom/sunborn/gameplatform/core/config/SunbornPlatformConfig;

    if-nez v1, :cond_30

    .line 18
    new-instance v1, Lcom/sunborn/gameplatform/core/config/SunbornPlatformConfig;

    invoke-direct {v1}, Lcom/sunborn/gameplatform/core/config/SunbornPlatformConfig;-><init>()V

    sput-object v1, Lcom/sunborn/gameplatform/core/config/SunbornPlatformConfig;->mSunbornPlatformConfig:Lcom/sunborn/gameplatform/core/config/SunbornPlatformConfig;

    .line 19
    const-class v1, Lcom/lohanry/android/framework/cofig/ConfigFrameworkService;

    invoke-static {v1}, Lcom/lohanry/android/framework/service/FrameworkServiceManage;->getService(Ljava/lang/Class;)Lcom/lohanry/android/framework/service/FrameworkService;

    move-result-object v0

    check-cast v0, Lcom/lohanry/android/framework/cofig/ConfigFrameworkService;

    .line 20
    .local v0, "configFrameworkService":Lcom/lohanry/android/framework/cofig/ConfigFrameworkService;
    if-nez v0, :cond_2b

    .line 21
    const-class v1, Lcom/lohanry/android/framework/cofig/ConfigFrameworkService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sunborn/gameplatform/core/config/SunbornPlatformConfig$1;

    invoke-direct {v2}, Lcom/sunborn/gameplatform/core/config/SunbornPlatformConfig$1;-><init>()V

    invoke-static {v1, v2}, Lcom/lohanry/android/framework/service/FrameworkServiceManage;->addService(Ljava/lang/String;Lcom/lohanry/android/framework/service/ServiceManage$ServiceManageRegister;)V

    .line 27
    const-class v1, Lcom/lohanry/android/framework/cofig/ConfigFrameworkService;

    invoke-static {v1}, Lcom/lohanry/android/framework/service/FrameworkServiceManage;->getService(Ljava/lang/Class;)Lcom/lohanry/android/framework/service/FrameworkService;

    move-result-object v0

    .end local v0    # "configFrameworkService":Lcom/lohanry/android/framework/cofig/ConfigFrameworkService;
    check-cast v0, Lcom/lohanry/android/framework/cofig/ConfigFrameworkService;

    .line 29
    .restart local v0    # "configFrameworkService":Lcom/lohanry/android/framework/cofig/ConfigFrameworkService;
    :cond_2b
    sget-object v1, Lcom/sunborn/gameplatform/core/config/SunbornPlatformConfig;->mSunbornPlatformConfig:Lcom/sunborn/gameplatform/core/config/SunbornPlatformConfig;

    invoke-virtual {v0, v1}, Lcom/lohanry/android/framework/cofig/ConfigFrameworkService;->initConfig(Lcom/lohanry/android/framework/cofig/Config;)V

    .line 31
    :cond_30
    sget-object v1, Lcom/sunborn/gameplatform/core/config/SunbornPlatformConfig;->mSunbornPlatformConfig:Lcom/sunborn/gameplatform/core/config/SunbornPlatformConfig;

    return-object v1
.end method


# virtual methods
.method public afterInit()V
    .registers 1

    .prologue
    .line 130
    return-void
.end method

.method public getCOM_SUNBORN_PLATFORM_HTTP_LOGIN_VERFY()Ljava/lang/String;
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/sunborn/gameplatform/core/config/SunbornPlatformConfig;->COM_SUNBORN_PLATFORM_HTTP_LOGIN_VERFY:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sunborn/gameplatform/core/config/SunbornPlatformConfig;->getHttpPassportUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCOM_SUNBORN_PLATFORM_HTTP_PAY_CALL_BACK()Ljava/lang/String;
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/sunborn/gameplatform/core/config/SunbornPlatformConfig;->COM_SUNBORN_PLATFORM_HTTP_PAY_CALL_BACK:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sunborn/gameplatform/core/config/SunbornPlatformConfig;->getHttpPayUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCOM_SUNBORN_PLATFORM_HTTP_PAY_CREATE_ORDER()Ljava/lang/String;
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/sunborn/gameplatform/core/config/SunbornPlatformConfig;->COM_SUNBORN_PLATFORM_HTTP_PAY_CREATE_ORDER:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sunborn/gameplatform/core/config/SunbornPlatformConfig;->getHttpPayUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCOM_SUNBORN_UC_DATA_CENTER_SECRET_KEY()Ljava/lang/String;
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sunborn/gameplatform/core/config/SunbornPlatformConfig;->COM_SUNBORN_UC_DATA_CENTER_SECRET_KEY:Ljava/lang/String;

    return-object v0
.end method

.method public getCOM_SUNBORN_UC_HTTP_TRACKING_DATA()Ljava/lang/String;
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/sunborn/gameplatform/core/config/SunbornPlatformConfig;->COM_SUNBORN_UC_HTTP_TRACKING_DATA:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpPassportDOMAINUr()Ljava/lang/String;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sunborn/gameplatform/core/config/SunbornPlatformConfig;->COM_SUNBORN_PLATFORM_HTTP_PASSPORT_DOMAIN:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpPassportUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sunborn/gameplatform/core/config/SunbornPlatformConfig;->getHttpPassportDOMAINUr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHttpPayDOMAINUr()Ljava/lang/String;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sunborn/gameplatform/core/config/SunbornPlatformConfig;->COM_SUNBORN_PLATFORM_HTTP_PAY_DOMAIN:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpPayUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sunborn/gameplatform/core/config/SunbornPlatformConfig;->getHttpPayDOMAINUr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .registers 1

    .prologue
    .line 125
    return-void
.end method

.method public setCOM_SUNBORN_PLATFORM_HTTP_LOGIN_VERFY(Ljava/lang/String;)V
    .registers 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/sunborn/gameplatform/core/config/SunbornPlatformConfig;->COM_SUNBORN_PLATFORM_HTTP_LOGIN_VERFY:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setCOM_SUNBORN_PLATFORM_HTTP_PAY_CALL_BACK(Ljava/lang/String;)V
    .registers 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/sunborn/gameplatform/core/config/SunbornPlatformConfig;->COM_SUNBORN_PLATFORM_HTTP_PAY_CALL_BACK:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setCOM_SUNBORN_PLATFORM_HTTP_PAY_CREATE_ORDER(Ljava/lang/String;)V
    .registers 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/sunborn/gameplatform/core/config/SunbornPlatformConfig;->COM_SUNBORN_PLATFORM_HTTP_PAY_CREATE_ORDER:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setCOM_SUNBORN_UC_DATA_CENTER_SECRET_KEY(Ljava/lang/String;)V
    .registers 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/sunborn/gameplatform/core/config/SunbornPlatformConfig;->COM_SUNBORN_UC_DATA_CENTER_SECRET_KEY:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setCOM_SUNBORN_UC_HTTP_TRACKING_DATA(Ljava/lang/String;)V
    .registers 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/sunborn/gameplatform/core/config/SunbornPlatformConfig;->COM_SUNBORN_UC_HTTP_TRACKING_DATA:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setHttpPassportDOMAINUrl(Ljava/lang/String;)V
    .registers 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/sunborn/gameplatform/core/config/SunbornPlatformConfig;->COM_SUNBORN_PLATFORM_HTTP_PASSPORT_DOMAIN:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setHttpPayDOMAINUrl(Ljava/lang/String;)V
    .registers 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/sunborn/gameplatform/core/config/SunbornPlatformConfig;->COM_SUNBORN_PLATFORM_HTTP_PAY_DOMAIN:Ljava/lang/String;

    .line 51
    return-void
.end method
