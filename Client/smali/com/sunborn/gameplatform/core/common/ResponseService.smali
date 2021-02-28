.class public Lcom/sunborn/gameplatform/core/common/ResponseService;
.super Ljava/lang/Object;
.source "ResponseService.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    const-class v0, Lcom/sunborn/gameplatform/core/common/ResponseService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sunborn/gameplatform/core/common/ResponseService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getResponseResult(Lokhttp3/Response;Ljava/lang/Class;)Lcom/sunborn/gameplatform/core/module/BaseResultBean;
    .registers 12
    .param p0, "response"    # Lokhttp3/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/sunborn/gameplatform/core/module/BaseResultBean;",
            ">(",
            "Lokhttp3/Response;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/sunborn/gameplatform/core/module/BaseResultBean;",
            ">;)TT;"
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/sunborn/gameplatform/core/module/BaseResultBean;>;"
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 21
    sget-object v5, Lcom/lohanry/android/framework/service/FrameworkServiceManage;->CLASS_LOAD_SERVICE:Ljava/lang/String;

    invoke-static {v5}, Lcom/lohanry/android/framework/service/FrameworkServiceManage;->getService(Ljava/lang/String;)Lcom/lohanry/android/framework/service/FrameworkService;

    move-result-object v1

    check-cast v1, Lcom/lohanry/android/framework/reflect/util/ClassLoadFrameworkServiceImp;

    .line 22
    .local v1, "classLoadFrameworkServiceImp":Lcom/lohanry/android/framework/reflect/util/ClassLoadFrameworkServiceImp;
    if-nez p0, :cond_20

    .line 23
    sget-object v5, Lcom/sunborn/gameplatform/core/common/ResponseService;->TAG:Ljava/lang/String;

    const-string v6, "Response is null"

    invoke-static {v5, v6}, Lcom/sunborn/gameplatform/core/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    new-array v5, v9, [Ljava/lang/Object;

    sget-object v6, Lcom/sunborn/gameplatform/core/common/MsgCode;->COMMON_NETWORK_CONNECT_ERROR:Ljava/lang/String;

    aput-object v6, v5, v8

    invoke-virtual {v1, p1, v5}, Lcom/lohanry/android/framework/reflect/util/ClassLoadFrameworkServiceImp;->newInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sunborn/gameplatform/core/module/BaseResultBean;

    .line 54
    :goto_1f
    return-object v5

    .line 26
    :cond_20
    invoke-virtual {p0}, Lokhttp3/Response;->isSuccessful()Z

    move-result v5

    if-eqz v5, :cond_8e

    invoke-virtual {p0}, Lokhttp3/Response;->code()I

    move-result v5

    const/16 v6, 0xc8

    if-ne v5, v6, :cond_8e

    .line 27
    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v4

    .line 28
    .local v4, "responseBody":Lokhttp3/ResponseBody;
    if-eqz v4, :cond_7a

    .line 29
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    .line 31
    .local v3, "gson":Lcom/google/gson/Gson;
    :try_start_39
    invoke-virtual {v4}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lohanry/android/framework/model/BaseBean;

    .line 35
    .local v0, "baseResultBean":Lcom/lohanry/android/framework/model/BaseBean;
    if-eqz v0, :cond_4c

    .line 36
    invoke-interface {v0}, Lcom/lohanry/android/framework/model/BaseBean;->analyseData()V

    .line 37
    check-cast v0, Lcom/sunborn/gameplatform/core/module/BaseResultBean;

    .end local v0    # "baseResultBean":Lcom/lohanry/android/framework/model/BaseBean;
    move-object v5, v0

    goto :goto_1f

    .line 39
    .restart local v0    # "baseResultBean":Lcom/lohanry/android/framework/model/BaseBean;
    :cond_4c
    sget-object v5, Lcom/sunborn/gameplatform/core/common/ResponseService;->TAG:Ljava/lang/String;

    const-string v6, "ResponseBody to Gson:baseResultBean null"

    invoke-static {v5, v6}, Lcom/lohanry/android/framework/tools/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    sget-object v7, Lcom/sunborn/gameplatform/core/common/MsgCode;->COMMON_NETWORK_DATA_CANT_ANALYSIS_ERROR:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v1, p1, v5}, Lcom/lohanry/android/framework/reflect/util/ClassLoadFrameworkServiceImp;->newInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sunborn/gameplatform/core/module/BaseResultBean;
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_61} :catch_62

    goto :goto_1f

    .line 42
    .end local v0    # "baseResultBean":Lcom/lohanry/android/framework/model/BaseBean;
    :catch_62
    move-exception v2

    .line 43
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 44
    sget-object v5, Lcom/sunborn/gameplatform/core/common/ResponseService;->TAG:Ljava/lang/String;

    const-string v6, "ResponseBody to resultBean:failed"

    invoke-static {v5, v6}, Lcom/lohanry/android/framework/tools/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    new-array v5, v9, [Ljava/lang/Object;

    sget-object v6, Lcom/sunborn/gameplatform/core/common/MsgCode;->COMMON_NETWORK_DATA_CANT_ANALYSIS_ERROR:Ljava/lang/String;

    aput-object v6, v5, v8

    invoke-virtual {v1, p1, v5}, Lcom/lohanry/android/framework/reflect/util/ClassLoadFrameworkServiceImp;->newInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sunborn/gameplatform/core/module/BaseResultBean;

    goto :goto_1f

    .line 49
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "gson":Lcom/google/gson/Gson;
    :cond_7a
    sget-object v5, Lcom/sunborn/gameplatform/core/common/ResponseService;->TAG:Ljava/lang/String;

    const-string v6, "ResponseBody is null,maybe has been read"

    invoke-static {v5, v6}, Lcom/lohanry/android/framework/tools/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    new-array v5, v9, [Ljava/lang/Object;

    sget-object v6, Lcom/sunborn/gameplatform/core/common/MsgCode;->COMMON_NETWORK_CONNECT_ERROR:Ljava/lang/String;

    aput-object v6, v5, v8

    invoke-virtual {v1, p1, v5}, Lcom/lohanry/android/framework/reflect/util/ClassLoadFrameworkServiceImp;->newInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sunborn/gameplatform/core/module/BaseResultBean;

    goto :goto_1f

    .line 53
    .end local v4    # "responseBody":Lokhttp3/ResponseBody;
    :cond_8e
    sget-object v5, Lcom/sunborn/gameplatform/core/common/ResponseService;->TAG:Ljava/lang/String;

    const-string v6, "Response is failed or responseCode not eq 200"

    invoke-static {v5, v6}, Lcom/lohanry/android/framework/tools/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    new-array v5, v9, [Ljava/lang/Object;

    sget-object v6, Lcom/sunborn/gameplatform/core/common/MsgCode;->COMMON_NETWORK_CONNECT_ERROR:Ljava/lang/String;

    aput-object v6, v5, v8

    invoke-virtual {v1, p1, v5}, Lcom/lohanry/android/framework/reflect/util/ClassLoadFrameworkServiceImp;->newInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sunborn/gameplatform/core/module/BaseResultBean;

    goto/16 :goto_1f
.end method
