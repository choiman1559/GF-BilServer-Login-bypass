.class public Lcom/lohanry/android/framework/context/ActionContext;
.super Ljava/lang/Object;
.source "ActionContext.java"


# instance fields
.field private mClassLoadFrameworkServiceImp:Lcom/lohanry/android/framework/reflect/util/ClassLoadFrameworkServiceImp;

.field private mIOCFrameworkServiceImp:Lcom/lohanry/android/framework/service/IOCFrameworkServiceImp;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    sget-object v0, Lcom/lohanry/android/framework/service/FrameworkServiceManage;->IOC_SERVICE:Ljava/lang/String;

    invoke-static {v0}, Lcom/lohanry/android/framework/service/FrameworkServiceManage;->getService(Ljava/lang/String;)Lcom/lohanry/android/framework/service/FrameworkService;

    move-result-object v0

    check-cast v0, Lcom/lohanry/android/framework/service/IOCFrameworkServiceImp;

    iput-object v0, p0, Lcom/lohanry/android/framework/context/ActionContext;->mIOCFrameworkServiceImp:Lcom/lohanry/android/framework/service/IOCFrameworkServiceImp;

    .line 18
    sget-object v0, Lcom/lohanry/android/framework/service/FrameworkServiceManage;->CLASS_LOAD_SERVICE:Ljava/lang/String;

    invoke-static {v0}, Lcom/lohanry/android/framework/service/FrameworkServiceManage;->getService(Ljava/lang/String;)Lcom/lohanry/android/framework/service/FrameworkService;

    move-result-object v0

    check-cast v0, Lcom/lohanry/android/framework/reflect/util/ClassLoadFrameworkServiceImp;

    iput-object v0, p0, Lcom/lohanry/android/framework/context/ActionContext;->mClassLoadFrameworkServiceImp:Lcom/lohanry/android/framework/reflect/util/ClassLoadFrameworkServiceImp;

    return-void
.end method


# virtual methods
.method public getAction(Ljava/lang/Class;)Lcom/lohanry/android/framework/action/BaseAction;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/lohanry/android/framework/action/BaseAction;",
            ">(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/lohanry/android/framework/action/BaseAction;",
            ">;)TT;"
        }
    .end annotation

    .prologue
    .line 22
    .local p1, "action":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/lohanry/android/framework/action/BaseAction;>;"
    iget-object v1, p0, Lcom/lohanry/android/framework/context/ActionContext;->mClassLoadFrameworkServiceImp:Lcom/lohanry/android/framework/reflect/util/ClassLoadFrameworkServiceImp;

    invoke-virtual {v1, p1}, Lcom/lohanry/android/framework/reflect/util/ClassLoadFrameworkServiceImp;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 23
    .local v0, "object":Ljava/lang/Object;
    iget-object v1, p0, Lcom/lohanry/android/framework/context/ActionContext;->mIOCFrameworkServiceImp:Lcom/lohanry/android/framework/service/IOCFrameworkServiceImp;

    invoke-virtual {v1, v0}, Lcom/lohanry/android/framework/service/IOCFrameworkServiceImp;->inject(Ljava/lang/Object;)V

    .line 24
    check-cast v0, Lcom/lohanry/android/framework/action/BaseAction;

    .end local v0    # "object":Ljava/lang/Object;
    return-object v0
.end method

.method public injectActionSelf(Lcom/lohanry/android/framework/action/BaseAction;)V
    .registers 3
    .param p1, "baseAction"    # Lcom/lohanry/android/framework/action/BaseAction;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lohanry/android/framework/context/ActionContext;->mIOCFrameworkServiceImp:Lcom/lohanry/android/framework/service/IOCFrameworkServiceImp;

    invoke-virtual {v0, p1}, Lcom/lohanry/android/framework/service/IOCFrameworkServiceImp;->inject(Ljava/lang/Object;)V

    .line 33
    return-void
.end method
