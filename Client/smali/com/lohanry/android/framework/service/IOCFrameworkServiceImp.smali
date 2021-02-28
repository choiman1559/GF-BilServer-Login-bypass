.class public Lcom/lohanry/android/framework/service/IOCFrameworkServiceImp;
.super Ljava/lang/Object;
.source "IOCFrameworkServiceImp.java"

# interfaces
.implements Lcom/lohanry/android/framework/service/FrameworkService;


# instance fields
.field private mClassLoadFrameworkServiceImp:Lcom/lohanry/android/framework/reflect/util/ClassLoadFrameworkServiceImp;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    sget-object v0, Lcom/lohanry/android/framework/service/FrameworkServiceManage;->CLASS_LOAD_SERVICE:Ljava/lang/String;

    invoke-static {v0}, Lcom/lohanry/android/framework/service/FrameworkServiceManage;->getService(Ljava/lang/String;)Lcom/lohanry/android/framework/service/FrameworkService;

    move-result-object v0

    check-cast v0, Lcom/lohanry/android/framework/reflect/util/ClassLoadFrameworkServiceImp;

    iput-object v0, p0, Lcom/lohanry/android/framework/service/IOCFrameworkServiceImp;->mClassLoadFrameworkServiceImp:Lcom/lohanry/android/framework/reflect/util/ClassLoadFrameworkServiceImp;

    .line 23
    return-void
.end method


# virtual methods
.method public inject(Ljava/lang/Object;)V
    .registers 10
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 26
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Lcom/lohanry/android/framework/annotation/Inject;

    invoke-static {v5, v6}, Lcom/lohanry/android/framework/reflect/util/FieldsCache;->getDeclaredFields(Ljava/lang/Class;Ljava/lang/Class;)[Ljava/lang/reflect/Field;

    move-result-object v4

    .line 27
    .local v4, "injectField":[Ljava/lang/reflect/Field;
    array-length v6, v4

    const/4 v5, 0x0

    :goto_c
    if-ge v5, v6, :cond_2c

    aget-object v3, v4, v5

    .line 28
    .local v3, "field":Ljava/lang/reflect/Field;
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 29
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    .line 30
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v7, p0, Lcom/lohanry/android/framework/service/IOCFrameworkServiceImp;->mClassLoadFrameworkServiceImp:Lcom/lohanry/android/framework/reflect/util/ClassLoadFrameworkServiceImp;

    invoke-virtual {v7, v1}, Lcom/lohanry/android/framework/reflect/util/ClassLoadFrameworkServiceImp;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 31
    .local v0, "_object":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lcom/lohanry/android/framework/service/IOCFrameworkServiceImp;->inject(Ljava/lang/Object;)V

    .line 33
    :try_start_21
    invoke-virtual {v3, p1, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_24
    .catch Ljava/lang/IllegalAccessException; {:try_start_21 .. :try_end_24} :catch_27

    .line 27
    :goto_24
    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    .line 34
    :catch_27
    move-exception v2

    .line 35
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_24

    .line 38
    .end local v0    # "_object":Ljava/lang/Object;
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    .end local v3    # "field":Ljava/lang/reflect/Field;
    :cond_2c
    return-void
.end method
