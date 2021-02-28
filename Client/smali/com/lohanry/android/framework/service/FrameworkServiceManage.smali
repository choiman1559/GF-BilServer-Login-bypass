.class public Lcom/lohanry/android/framework/service/FrameworkServiceManage;
.super Ljava/lang/Object;
.source "FrameworkServiceManage.java"


# static fields
.field public static BASE_HTTP_SERVICE:Ljava/lang/String;

.field public static CLASS_LOAD_SERVICE:Ljava/lang/String;

.field public static CONFIG_SERVICE:Ljava/lang/String;

.field public static IOC_SERVICE:Ljava/lang/String;

.field public static PREFERENCES_SERVICE:Ljava/lang/String;

.field public static RESOURCE_SERVICE:Ljava/lang/String;

.field private static mServiceManage:Lcom/lohanry/android/framework/service/ServiceManage;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    const-class v0, Lcom/lohanry/android/framework/service/IOCFrameworkServiceImp;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lohanry/android/framework/service/FrameworkServiceManage;->IOC_SERVICE:Ljava/lang/String;

    .line 19
    const-class v0, Lcom/lohanry/android/framework/service/ResourceFrameworkServiceImp;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lohanry/android/framework/service/FrameworkServiceManage;->RESOURCE_SERVICE:Ljava/lang/String;

    .line 20
    const-class v0, Lcom/lohanry/android/framework/cofig/ConfigFrameworkService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lohanry/android/framework/service/FrameworkServiceManage;->CONFIG_SERVICE:Ljava/lang/String;

    .line 21
    const-class v0, Lcom/lohanry/android/framework/service/PreferencesFrameworkServiceImp;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lohanry/android/framework/service/FrameworkServiceManage;->PREFERENCES_SERVICE:Ljava/lang/String;

    .line 22
    const-class v0, Lcom/lohanry/android/framework/reflect/util/ClassLoadFrameworkServiceImp;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lohanry/android/framework/service/FrameworkServiceManage;->CLASS_LOAD_SERVICE:Ljava/lang/String;

    .line 23
    const-class v0, Lcom/lohanry/android/framework/network/httpclient/BaseHttpFrameworkServiceImp;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lohanry/android/framework/service/FrameworkServiceManage;->BASE_HTTP_SERVICE:Ljava/lang/String;

    .line 25
    new-instance v0, Lcom/lohanry/android/framework/service/ServiceManage;

    invoke-direct {v0}, Lcom/lohanry/android/framework/service/ServiceManage;-><init>()V

    sput-object v0, Lcom/lohanry/android/framework/service/FrameworkServiceManage;->mServiceManage:Lcom/lohanry/android/framework/service/ServiceManage;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addService(Ljava/lang/String;Lcom/lohanry/android/framework/service/ServiceManage$ServiceManageRegister;)V
    .registers 3
    .param p0, "serviceName"    # Ljava/lang/String;
    .param p1, "register"    # Lcom/lohanry/android/framework/service/ServiceManage$ServiceManageRegister;

    .prologue
    .line 76
    sget-object v0, Lcom/lohanry/android/framework/service/FrameworkServiceManage;->mServiceManage:Lcom/lohanry/android/framework/service/ServiceManage;

    invoke-virtual {v0, p0, p1}, Lcom/lohanry/android/framework/service/ServiceManage;->addService(Ljava/lang/String;Lcom/lohanry/android/framework/service/ServiceManage$ServiceManageRegister;)V

    .line 77
    return-void
.end method

.method public static getService(Ljava/lang/Class;)Lcom/lohanry/android/framework/service/FrameworkService;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/lohanry/android/framework/service/FrameworkService;",
            ">(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/lohanry/android/framework/service/FrameworkService;",
            ">;)TT;"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/lohanry/android/framework/service/FrameworkService;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lohanry/android/framework/service/FrameworkServiceManage;->getService(Ljava/lang/String;)Lcom/lohanry/android/framework/service/FrameworkService;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Ljava/lang/String;)Lcom/lohanry/android/framework/service/FrameworkService;
    .registers 2
    .param p0, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/lohanry/android/framework/service/FrameworkService;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 84
    sget-object v0, Lcom/lohanry/android/framework/service/FrameworkServiceManage;->mServiceManage:Lcom/lohanry/android/framework/service/ServiceManage;

    invoke-virtual {v0, p0}, Lcom/lohanry/android/framework/service/ServiceManage;->getService(Ljava/lang/String;)Lcom/lohanry/android/framework/service/FrameworkService;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    sget-object v0, Lcom/lohanry/android/framework/service/FrameworkServiceManage;->mServiceManage:Lcom/lohanry/android/framework/service/ServiceManage;

    sget-object v1, Lcom/lohanry/android/framework/service/FrameworkServiceManage;->RESOURCE_SERVICE:Ljava/lang/String;

    new-instance v2, Lcom/lohanry/android/framework/service/FrameworkServiceManage$1;

    invoke-direct {v2, p0}, Lcom/lohanry/android/framework/service/FrameworkServiceManage$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/lohanry/android/framework/service/ServiceManage;->addService(Ljava/lang/String;Lcom/lohanry/android/framework/service/ServiceManage$ServiceManageRegister;)V

    .line 38
    sget-object v0, Lcom/lohanry/android/framework/service/FrameworkServiceManage;->mServiceManage:Lcom/lohanry/android/framework/service/ServiceManage;

    sget-object v1, Lcom/lohanry/android/framework/service/FrameworkServiceManage;->CONFIG_SERVICE:Ljava/lang/String;

    new-instance v2, Lcom/lohanry/android/framework/service/FrameworkServiceManage$2;

    invoke-direct {v2}, Lcom/lohanry/android/framework/service/FrameworkServiceManage$2;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/lohanry/android/framework/service/ServiceManage;->addService(Ljava/lang/String;Lcom/lohanry/android/framework/service/ServiceManage$ServiceManageRegister;)V

    .line 45
    sget-object v0, Lcom/lohanry/android/framework/service/FrameworkServiceManage;->mServiceManage:Lcom/lohanry/android/framework/service/ServiceManage;

    sget-object v1, Lcom/lohanry/android/framework/service/FrameworkServiceManage;->PREFERENCES_SERVICE:Ljava/lang/String;

    new-instance v2, Lcom/lohanry/android/framework/service/FrameworkServiceManage$3;

    invoke-direct {v2}, Lcom/lohanry/android/framework/service/FrameworkServiceManage$3;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/lohanry/android/framework/service/ServiceManage;->addService(Ljava/lang/String;Lcom/lohanry/android/framework/service/ServiceManage$ServiceManageRegister;)V

    .line 52
    sget-object v0, Lcom/lohanry/android/framework/service/FrameworkServiceManage;->mServiceManage:Lcom/lohanry/android/framework/service/ServiceManage;

    sget-object v1, Lcom/lohanry/android/framework/service/FrameworkServiceManage;->CLASS_LOAD_SERVICE:Ljava/lang/String;

    new-instance v2, Lcom/lohanry/android/framework/service/FrameworkServiceManage$4;

    invoke-direct {v2}, Lcom/lohanry/android/framework/service/FrameworkServiceManage$4;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/lohanry/android/framework/service/ServiceManage;->addService(Ljava/lang/String;Lcom/lohanry/android/framework/service/ServiceManage$ServiceManageRegister;)V

    .line 59
    sget-object v0, Lcom/lohanry/android/framework/service/FrameworkServiceManage;->mServiceManage:Lcom/lohanry/android/framework/service/ServiceManage;

    sget-object v1, Lcom/lohanry/android/framework/service/FrameworkServiceManage;->IOC_SERVICE:Ljava/lang/String;

    new-instance v2, Lcom/lohanry/android/framework/service/FrameworkServiceManage$5;

    invoke-direct {v2}, Lcom/lohanry/android/framework/service/FrameworkServiceManage$5;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/lohanry/android/framework/service/ServiceManage;->addService(Ljava/lang/String;Lcom/lohanry/android/framework/service/ServiceManage$ServiceManageRegister;)V

    .line 67
    sget-object v0, Lcom/lohanry/android/framework/service/FrameworkServiceManage;->mServiceManage:Lcom/lohanry/android/framework/service/ServiceManage;

    sget-object v1, Lcom/lohanry/android/framework/service/FrameworkServiceManage;->BASE_HTTP_SERVICE:Ljava/lang/String;

    new-instance v2, Lcom/lohanry/android/framework/service/FrameworkServiceManage$6;

    invoke-direct {v2}, Lcom/lohanry/android/framework/service/FrameworkServiceManage$6;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/lohanry/android/framework/service/ServiceManage;->addService(Ljava/lang/String;Lcom/lohanry/android/framework/service/ServiceManage$ServiceManageRegister;)V

    .line 73
    return-void
.end method


# virtual methods
.method public setServiceManage(Lcom/lohanry/android/framework/service/ServiceManage;)V
    .registers 2
    .param p1, "serviceManage"    # Lcom/lohanry/android/framework/service/ServiceManage;

    .prologue
    .line 80
    sput-object p1, Lcom/lohanry/android/framework/service/FrameworkServiceManage;->mServiceManage:Lcom/lohanry/android/framework/service/ServiceManage;

    .line 81
    return-void
.end method
