.class public Lcom/sunborn/gameplatform/core/common/HttpResultService;
.super Ljava/lang/Object;
.source "HttpResultService.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static HandlerBaseResultBean(Lokhttp3/Response;Ljava/lang/Class;)Lcom/sunborn/gameplatform/core/module/BaseResultBean;
    .registers 3
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
    .line 21
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/sunborn/gameplatform/core/module/BaseResultBean;>;"
    invoke-static {p0, p1}, Lcom/sunborn/gameplatform/core/common/ResponseService;->getResponseResult(Lokhttp3/Response;Ljava/lang/Class;)Lcom/sunborn/gameplatform/core/module/BaseResultBean;

    move-result-object v0

    return-object v0
.end method

.method public static HandlerBaseResultBean(Lokhttp3/Response;)Ljava/lang/String;
    .registers 3
    .param p0, "response"    # Lokhttp3/Response;

    .prologue
    .line 16
    const-class v1, Lcom/sunborn/gameplatform/core/module/BaseResultBean;

    invoke-static {p0, v1}, Lcom/sunborn/gameplatform/core/common/HttpResultService;->HandlerBaseResultBean(Lokhttp3/Response;Ljava/lang/Class;)Lcom/sunborn/gameplatform/core/module/BaseResultBean;

    move-result-object v0

    .line 17
    .local v0, "resultBean":Lcom/sunborn/gameplatform/core/module/BaseResultBean;
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/sunborn/gameplatform/core/module/BaseResultBean;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    :goto_c
    return-object v1

    :cond_d
    const-string v1, "0"

    goto :goto_c
.end method
