.class public Lcom/lohanry/android/framework/cofig/ConfigFrameworkService;
.super Ljava/lang/Object;
.source "ConfigFrameworkService.java"

# interfaces
.implements Lcom/lohanry/android/framework/service/FrameworkService;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mResourceFrameworkServiceImp:Lcom/lohanry/android/framework/service/ResourceFrameworkServiceImp;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-class v0, Lcom/lohanry/android/framework/cofig/ConfigFrameworkService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lohanry/android/framework/cofig/ConfigFrameworkService;->TAG:Ljava/lang/String;

    .line 22
    sget-object v0, Lcom/lohanry/android/framework/service/FrameworkServiceManage;->RESOURCE_SERVICE:Ljava/lang/String;

    invoke-static {v0}, Lcom/lohanry/android/framework/service/FrameworkServiceManage;->getService(Ljava/lang/String;)Lcom/lohanry/android/framework/service/FrameworkService;

    move-result-object v0

    check-cast v0, Lcom/lohanry/android/framework/service/ResourceFrameworkServiceImp;

    iput-object v0, p0, Lcom/lohanry/android/framework/cofig/ConfigFrameworkService;->mResourceFrameworkServiceImp:Lcom/lohanry/android/framework/service/ResourceFrameworkServiceImp;

    .line 23
    return-void
.end method

.method private setValue(Ljava/lang/Object;Lcom/lohanry/android/framework/annotation/ConfigFromResources;Ljava/lang/reflect/Field;)V
    .registers 11
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "configFromResources"    # Lcom/lohanry/android/framework/annotation/ConfigFromResources;
    .param p3, "field"    # Ljava/lang/reflect/Field;

    .prologue
    .line 43
    if-eqz p2, :cond_46

    .line 45
    :try_start_2
    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, "keyName":Ljava/lang/String;
    invoke-interface {p2}, Lcom/lohanry/android/framework/annotation/ConfigFromResources;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_14

    .line 47
    invoke-interface {p2}, Lcom/lohanry/android/framework/annotation/ConfigFromResources;->name()Ljava/lang/String;

    move-result-object v1

    .line 49
    :cond_14
    iget-object v4, p0, Lcom/lohanry/android/framework/cofig/ConfigFrameworkService;->mResourceFrameworkServiceImp:Lcom/lohanry/android/framework/service/ResourceFrameworkServiceImp;

    invoke-interface {p2}, Lcom/lohanry/android/framework/annotation/ConfigFromResources;->valueType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lcom/lohanry/android/framework/service/ResourceFrameworkServiceImp;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 50
    .local v2, "resID":I
    if-nez v2, :cond_47

    .line 51
    iget-object v4, p0, Lcom/lohanry/android/framework/cofig/ConfigFrameworkService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t find ResName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Type:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p2}, Lcom/lohanry/android/framework/annotation/ConfigFromResources;->valueType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lohanry/android/framework/tools/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .end local v1    # "keyName":Ljava/lang/String;
    .end local v2    # "resID":I
    :cond_46
    :goto_46
    return-void

    .line 55
    .restart local v1    # "keyName":Ljava/lang/String;
    .restart local v2    # "resID":I
    :cond_47
    invoke-interface {p2}, Lcom/lohanry/android/framework/annotation/ConfigFromResources;->type()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Ljava/lang/String;

    if-ne v4, v5, :cond_8f

    .line 56
    iget-object v4, p0, Lcom/lohanry/android/framework/cofig/ConfigFrameworkService;->mResourceFrameworkServiceImp:Lcom/lohanry/android/framework/service/ResourceFrameworkServiceImp;

    invoke-virtual {v4, v2}, Lcom/lohanry/android/framework/service/ResourceFrameworkServiceImp;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 65
    :goto_55
    iget-object v4, p0, Lcom/lohanry/android/framework/cofig/ConfigFrameworkService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ResID:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Type:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p2}, Lcom/lohanry/android/framework/annotation/ConfigFromResources;->valueType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lohanry/android/framework/tools/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p3, p1, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7e} :catch_7f

    goto :goto_46

    .line 67
    .end local v1    # "keyName":Ljava/lang/String;
    .end local v2    # "resID":I
    :catch_7f
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 69
    iget-object v4, p0, Lcom/lohanry/android/framework/cofig/ConfigFrameworkService;->TAG:Ljava/lang/String;

    const-string v5, "Can\'t get ResID"

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/lohanry/android/framework/tools/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_46

    .line 57
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "keyName":Ljava/lang/String;
    .restart local v2    # "resID":I
    :cond_8f
    :try_start_8f
    invoke-interface {p2}, Lcom/lohanry/android/framework/annotation/ConfigFromResources;->type()Ljava/lang/Class;

    move-result-object v4

    const-class v5, [Ljava/lang/String;

    if-ne v4, v5, :cond_9e

    .line 58
    iget-object v4, p0, Lcom/lohanry/android/framework/cofig/ConfigFrameworkService;->mResourceFrameworkServiceImp:Lcom/lohanry/android/framework/service/ResourceFrameworkServiceImp;

    invoke-virtual {v4, v2}, Lcom/lohanry/android/framework/service/ResourceFrameworkServiceImp;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .local v3, "value":[Ljava/lang/String;
    goto :goto_55

    .line 59
    .end local v3    # "value":[Ljava/lang/String;
    :cond_9e
    invoke-interface {p2}, Lcom/lohanry/android/framework/annotation/ConfigFromResources;->type()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Ljava/lang/Integer;

    if-ne v4, v5, :cond_b1

    .line 60
    iget-object v4, p0, Lcom/lohanry/android/framework/cofig/ConfigFrameworkService;->mResourceFrameworkServiceImp:Lcom/lohanry/android/framework/service/ResourceFrameworkServiceImp;

    invoke-virtual {v4, v2}, Lcom/lohanry/android/framework/service/ResourceFrameworkServiceImp;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .local v3, "value":Ljava/lang/Integer;
    goto :goto_55

    .line 62
    .end local v3    # "value":Ljava/lang/Integer;
    :cond_b1
    iget-object v4, p0, Lcom/lohanry/android/framework/cofig/ConfigFrameworkService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Un Support ResID:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Type:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p2}, Lcom/lohanry/android/framework/annotation/ConfigFromResources;->valueType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lohanry/android/framework/tools/Logger;->warning(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d7
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_d7} :catch_7f

    goto/16 :goto_46
.end method


# virtual methods
.method public initConfig(Lcom/lohanry/android/framework/cofig/Config;)V
    .registers 8
    .param p1, "config"    # Lcom/lohanry/android/framework/cofig/Config;

    .prologue
    .line 30
    invoke-virtual {p1}, Lcom/lohanry/android/framework/cofig/Config;->init()V

    .line 31
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lcom/lohanry/android/framework/annotation/ConfigFromResources;

    invoke-static {v3, v4}, Lcom/lohanry/android/framework/reflect/util/FieldsCache;->getDeclaredFields(Ljava/lang/Class;Ljava/lang/Class;)[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 32
    .local v2, "fields":[Ljava/lang/reflect/Field;
    array-length v4, v2

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v4, :cond_27

    aget-object v1, v2, v3

    .line 33
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 34
    const-class v5, Lcom/lohanry/android/framework/annotation/ConfigFromResources;

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/lohanry/android/framework/annotation/ConfigFromResources;

    .line 35
    .local v0, "_tConfigFromResources":Lcom/lohanry/android/framework/annotation/ConfigFromResources;
    if-eqz v0, :cond_24

    .line 36
    invoke-direct {p0, p1, v0, v1}, Lcom/lohanry/android/framework/cofig/ConfigFrameworkService;->setValue(Ljava/lang/Object;Lcom/lohanry/android/framework/annotation/ConfigFromResources;Ljava/lang/reflect/Field;)V

    .line 32
    :cond_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 39
    .end local v0    # "_tConfigFromResources":Lcom/lohanry/android/framework/annotation/ConfigFromResources;
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :cond_27
    invoke-virtual {p1}, Lcom/lohanry/android/framework/cofig/Config;->afterInit()V

    .line 40
    return-void
.end method
