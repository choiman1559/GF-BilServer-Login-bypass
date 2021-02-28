.class public Lcom/sunborn/gameplatform/core/common/DataCenterService;
.super Ljava/lang/Object;
.source "DataCenterService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sunborn/gameplatform/core/common/DataCenterService$IGetUUIDListener;
    }
.end annotation


# static fields
.field private static instance:Lcom/sunborn/gameplatform/core/common/DataCenterService;


# instance fields
.field private cCONFIG_UUID_KEY:Ljava/lang/String;

.field private cCONFIG_UUID_TABLE:Ljava/lang/String;

.field private cEmptyString:Ljava/lang/String;

.field private mUUID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sunborn/gameplatform/core/common/DataCenterService;->mUUID:Ljava/lang/String;

    .line 34
    const-string v0, "UUIDTABLE"

    iput-object v0, p0, Lcom/sunborn/gameplatform/core/common/DataCenterService;->cCONFIG_UUID_TABLE:Ljava/lang/String;

    .line 35
    const-string v0, "UUID"

    iput-object v0, p0, Lcom/sunborn/gameplatform/core/common/DataCenterService;->cCONFIG_UUID_KEY:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/sunborn/gameplatform/core/common/DataCenterService;->cEmptyString:Ljava/lang/String;

    return-void
.end method

.method public static getBindPPGameParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p0, "openid"    # Ljava/lang/String;
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 143
    new-instance v2, Ljava/util/TreeMap;

    new-instance v5, Lcom/sunborn/gameplatform/core/common/DataCenterService$3;

    invoke-direct {v5}, Lcom/sunborn/gameplatform/core/common/DataCenterService$3;-><init>()V

    invoke-direct {v2, v5}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 149
    .local v2, "jsonMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "type"

    const-string v6, "bind"

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const-string v5, "pos_id"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const-string v5, "open_id"

    invoke-static {p0}, Lcom/sunborn/gameplatform/core/common/SUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2b

    invoke-static {}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->getInstance()Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->getCacheOpenId()Ljava/lang/String;

    move-result-object p0

    .end local p0    # "openid":Ljava/lang/String;
    :cond_2b
    invoke-interface {v2, v5, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const-string v5, "os"

    const-string v6, "1"

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const-string v5, "time"

    invoke-static {}, Lcom/sunborn/gameplatform/core/common/SUtils;->getCurrentTimeStamp()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const-string v5, "udid"

    invoke-interface {v2, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const-string v5, "sdk_version"

    invoke-static {}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->getInstance()Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;

    invoke-static {}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->version()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const-string v5, "game_channel_id"

    invoke-static {}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->getInstance()Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;

    move-result-object v6

    iget-object v6, v6, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->game_channel_id:Ljava/lang/String;

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const-string v5, "channel_id"

    invoke-static {}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->getInstance()Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;

    move-result-object v6

    iget-object v6, v6, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->platform_channel_id:Ljava/lang/String;

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    .local v4, "urlParams":Ljava/lang/StringBuilder;
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 160
    .local v1, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_72
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 161
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "&"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_72

    .line 163
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_9c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 164
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/sunborn/gameplatform/core/config/SunbornPlatformConfig;->getInstance()Lcom/sunborn/gameplatform/core/config/SunbornPlatformConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sunborn/gameplatform/core/config/SunbornPlatformConfig;->getCOM_SUNBORN_UC_DATA_CENTER_SECRET_KEY()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sunborn/gameplatform/core/common/SUtils;->getRequestMD5Sign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 165
    .local v3, "sign":Ljava/lang/String;
    invoke-static {v3}, Lcom/sunborn/gameplatform/core/common/SUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_fa

    .line 166
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sunborn/gameplatform/core/config/SunbornPlatformConfig;->getInstance()Lcom/sunborn/gameplatform/core/config/SunbornPlatformConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sunborn/gameplatform/core/config/SunbornPlatformConfig;->getCOM_SUNBORN_UC_HTTP_TRACKING_DATA()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&sign="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 169
    :goto_f9
    return-object v5

    :cond_fa
    const/4 v5, 0x0

    goto :goto_f9
.end method

.method public static getCreateRoleParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p0, "openid"    # Ljava/lang/String;
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 113
    new-instance v2, Ljava/util/TreeMap;

    new-instance v5, Lcom/sunborn/gameplatform/core/common/DataCenterService$2;

    invoke-direct {v5}, Lcom/sunborn/gameplatform/core/common/DataCenterService$2;-><init>()V

    invoke-direct {v2, v5}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 119
    .local v2, "jsonMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "type"

    const-string v6, "register"

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string v5, "pos_id"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string v5, "open_id"

    invoke-static {p0}, Lcom/sunborn/gameplatform/core/common/SUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2b

    invoke-static {}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->getInstance()Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->getCacheOpenId()Ljava/lang/String;

    move-result-object p0

    .end local p0    # "openid":Ljava/lang/String;
    :cond_2b
    invoke-interface {v2, v5, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const-string v5, "os"

    const-string v6, "1"

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-string v5, "time"

    invoke-static {}, Lcom/sunborn/gameplatform/core/common/SUtils;->getCurrentTimeStamp()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string v5, "udid"

    invoke-interface {v2, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string v5, "sdk_version"

    invoke-static {}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->getInstance()Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;

    invoke-static {}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->version()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string v5, "game_channel_id"

    invoke-static {}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->getInstance()Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;

    move-result-object v6

    iget-object v6, v6, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->game_channel_id:Ljava/lang/String;

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-string v5, "channel_id"

    invoke-static {}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->getInstance()Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;

    move-result-object v6

    iget-object v6, v6, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->platform_channel_id:Ljava/lang/String;

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .local v4, "urlParams":Ljava/lang/StringBuilder;
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 130
    .local v1, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_72
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 131
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "&"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_72

    .line 133
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_9c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 134
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/sunborn/gameplatform/core/config/SunbornPlatformConfig;->getInstance()Lcom/sunborn/gameplatform/core/config/SunbornPlatformConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sunborn/gameplatform/core/config/SunbornPlatformConfig;->getCOM_SUNBORN_UC_DATA_CENTER_SECRET_KEY()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sunborn/gameplatform/core/common/SUtils;->getRequestMD5Sign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 135
    .local v3, "sign":Ljava/lang/String;
    invoke-static {v3}, Lcom/sunborn/gameplatform/core/common/SUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_fa

    .line 136
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sunborn/gameplatform/core/config/SunbornPlatformConfig;->getInstance()Lcom/sunborn/gameplatform/core/config/SunbornPlatformConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sunborn/gameplatform/core/config/SunbornPlatformConfig;->getCOM_SUNBORN_UC_HTTP_TRACKING_DATA()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&sign="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 139
    :goto_f9
    return-object v5

    :cond_fa
    const/4 v5, 0x0

    goto :goto_f9
.end method

.method public static getGameCenterLoginParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p0, "openid"    # Ljava/lang/String;
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 83
    new-instance v2, Ljava/util/TreeMap;

    new-instance v5, Lcom/sunborn/gameplatform/core/common/DataCenterService$1;

    invoke-direct {v5}, Lcom/sunborn/gameplatform/core/common/DataCenterService$1;-><init>()V

    invoke-direct {v2, v5}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 89
    .local v2, "jsonMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "type"

    const-string v6, "login"

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v5, "pos_id"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v5, "open_id"

    invoke-static {p0}, Lcom/sunborn/gameplatform/core/common/SUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2b

    invoke-static {}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->getInstance()Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->getCacheOpenId()Ljava/lang/String;

    move-result-object p0

    .end local p0    # "openid":Ljava/lang/String;
    :cond_2b
    invoke-interface {v2, v5, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string v5, "os"

    const-string v6, "1"

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string v5, "time"

    invoke-static {}, Lcom/sunborn/gameplatform/core/common/SUtils;->getCurrentTimeStamp()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string v5, "udid"

    invoke-interface {v2, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string v5, "sdk_version"

    invoke-static {}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->getInstance()Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;

    invoke-static {}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->version()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v5, "game_channel_id"

    invoke-static {}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->getInstance()Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;

    move-result-object v6

    iget-object v6, v6, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->game_channel_id:Ljava/lang/String;

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string v5, "channel_id"

    invoke-static {}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->getInstance()Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;

    move-result-object v6

    iget-object v6, v6, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->platform_channel_id:Ljava/lang/String;

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .local v4, "urlParams":Ljava/lang/StringBuilder;
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 100
    .local v1, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_72
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 101
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "&"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_72

    .line 103
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_9c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 104
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/sunborn/gameplatform/core/config/SunbornPlatformConfig;->getInstance()Lcom/sunborn/gameplatform/core/config/SunbornPlatformConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sunborn/gameplatform/core/config/SunbornPlatformConfig;->getCOM_SUNBORN_UC_DATA_CENTER_SECRET_KEY()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sunborn/gameplatform/core/common/SUtils;->getRequestMD5Sign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 105
    .local v3, "sign":Ljava/lang/String;
    invoke-static {v3}, Lcom/sunborn/gameplatform/core/common/SUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_fa

    .line 106
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sunborn/gameplatform/core/config/SunbornPlatformConfig;->getInstance()Lcom/sunborn/gameplatform/core/config/SunbornPlatformConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sunborn/gameplatform/core/config/SunbornPlatformConfig;->getCOM_SUNBORN_UC_HTTP_TRACKING_DATA()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&sign="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 109
    :goto_f9
    return-object v5

    :cond_fa
    const/4 v5, 0x0

    goto :goto_f9
.end method

.method public static getInstance()Lcom/sunborn/gameplatform/core/common/DataCenterService;
    .registers 1

    .prologue
    .line 28
    sget-object v0, Lcom/sunborn/gameplatform/core/common/DataCenterService;->instance:Lcom/sunborn/gameplatform/core/common/DataCenterService;

    if-nez v0, :cond_b

    .line 29
    new-instance v0, Lcom/sunborn/gameplatform/core/common/DataCenterService;

    invoke-direct {v0}, Lcom/sunborn/gameplatform/core/common/DataCenterService;-><init>()V

    sput-object v0, Lcom/sunborn/gameplatform/core/common/DataCenterService;->instance:Lcom/sunborn/gameplatform/core/common/DataCenterService;

    .line 31
    :cond_b
    sget-object v0, Lcom/sunborn/gameplatform/core/common/DataCenterService;->instance:Lcom/sunborn/gameplatform/core/common/DataCenterService;

    return-object v0
.end method

.method public static getPurchaseParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p0, "openid"    # Ljava/lang/String;
    .param p1, "amount"    # Ljava/lang/String;
    .param p2, "currencyCode"    # Ljava/lang/String;
    .param p3, "uuid"    # Ljava/lang/String;

    .prologue
    .line 173
    new-instance v2, Ljava/util/TreeMap;

    new-instance v5, Lcom/sunborn/gameplatform/core/common/DataCenterService$4;

    invoke-direct {v5}, Lcom/sunborn/gameplatform/core/common/DataCenterService$4;-><init>()V

    invoke-direct {v2, v5}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 179
    .local v2, "jsonMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "type"

    const-string v6, "recharge"

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    const-string v5, "pos_id"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const-string v5, "open_id"

    invoke-static {p0}, Lcom/sunborn/gameplatform/core/common/SUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2b

    invoke-static {}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->getInstance()Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->getCacheOpenId()Ljava/lang/String;

    move-result-object p0

    .end local p0    # "openid":Ljava/lang/String;
    :cond_2b
    invoke-interface {v2, v5, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    const-string v5, "amount"

    invoke-interface {v2, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    const-string v5, "monetary_unit"

    invoke-interface {v2, v5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    const-string v5, "os"

    const-string v6, "1"

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    const-string v5, "time"

    invoke-static {}, Lcom/sunborn/gameplatform/core/common/SUtils;->getCurrentTimeStamp()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    const-string v5, "udid"

    invoke-interface {v2, v5, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    const-string v5, "sdk_version"

    invoke-static {}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->getInstance()Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;

    invoke-static {}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->version()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    const-string v5, "game_channel_id"

    invoke-static {}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->getInstance()Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;

    move-result-object v6

    iget-object v6, v6, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->game_channel_id:Ljava/lang/String;

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    const-string v5, "channel_id"

    invoke-static {}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->getInstance()Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;

    move-result-object v6

    iget-object v6, v6, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->platform_channel_id:Ljava/lang/String;

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 191
    .local v4, "urlParams":Ljava/lang/StringBuilder;
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 192
    .local v1, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_7c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 193
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "&"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7c

    .line 195
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_a6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 196
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/sunborn/gameplatform/core/config/SunbornPlatformConfig;->getInstance()Lcom/sunborn/gameplatform/core/config/SunbornPlatformConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sunborn/gameplatform/core/config/SunbornPlatformConfig;->getCOM_SUNBORN_UC_DATA_CENTER_SECRET_KEY()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sunborn/gameplatform/core/common/SUtils;->getRequestMD5Sign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 197
    .local v3, "sign":Ljava/lang/String;
    invoke-static {v3}, Lcom/sunborn/gameplatform/core/common/SUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_104

    .line 198
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sunborn/gameplatform/core/config/SunbornPlatformConfig;->getInstance()Lcom/sunborn/gameplatform/core/config/SunbornPlatformConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sunborn/gameplatform/core/config/SunbornPlatformConfig;->getCOM_SUNBORN_UC_HTTP_TRACKING_DATA()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&sign="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 201
    :goto_103
    return-object v5

    :cond_104
    const/4 v5, 0x0

    goto :goto_103
.end method

.method private getUUIDFromFile(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    iget-object v1, p0, Lcom/sunborn/gameplatform/core/common/DataCenterService;->cCONFIG_UUID_TABLE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 71
    .local v0, "editor":Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/sunborn/gameplatform/core/common/DataCenterService;->cCONFIG_UUID_KEY:Ljava/lang/String;

    iget-object v2, p0, Lcom/sunborn/gameplatform/core/common/DataCenterService;->cEmptyString:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private writeUUIDToFile(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uuid"    # Ljava/lang/String;

    .prologue
    .line 75
    iget-object v1, p0, Lcom/sunborn/gameplatform/core/common/DataCenterService;->cCONFIG_UUID_TABLE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 76
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Lcom/sunborn/gameplatform/core/common/DataCenterService;->cCONFIG_UUID_KEY:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 77
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 78
    return-void
.end method


# virtual methods
.method public getUUID(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sunborn/gameplatform/core/common/DataCenterService;->mUUID:Ljava/lang/String;

    invoke-static {v0}, Lcom/sunborn/gameplatform/core/common/SUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 39
    invoke-direct {p0, p1}, Lcom/sunborn/gameplatform/core/common/DataCenterService;->getUUIDFromFile(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sunborn/gameplatform/core/common/DataCenterService;->mUUID:Ljava/lang/String;

    .line 40
    iget-object v0, p0, Lcom/sunborn/gameplatform/core/common/DataCenterService;->mUUID:Ljava/lang/String;

    invoke-static {v0}, Lcom/sunborn/gameplatform/core/common/SUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 41
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sunborn/gameplatform/core/common/DataCenterService;->mUUID:Ljava/lang/String;

    .line 42
    iget-object v0, p0, Lcom/sunborn/gameplatform/core/common/DataCenterService;->mUUID:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/sunborn/gameplatform/core/common/DataCenterService;->writeUUIDToFile(Landroid/content/Context;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/sunborn/gameplatform/core/common/DataCenterService;->mUUID:Ljava/lang/String;

    .line 48
    :goto_27
    return-object v0

    .line 45
    :cond_28
    iget-object v0, p0, Lcom/sunborn/gameplatform/core/common/DataCenterService;->mUUID:Ljava/lang/String;

    goto :goto_27

    .line 48
    :cond_2b
    iget-object v0, p0, Lcom/sunborn/gameplatform/core/common/DataCenterService;->mUUID:Ljava/lang/String;

    goto :goto_27
.end method

.method public getUUID(Landroid/content/Context;Lcom/sunborn/gameplatform/core/common/DataCenterService$IGetUUIDListener;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/sunborn/gameplatform/core/common/DataCenterService$IGetUUIDListener;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sunborn/gameplatform/core/common/DataCenterService;->mUUID:Ljava/lang/String;

    invoke-static {v0}, Lcom/sunborn/gameplatform/core/common/SUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 53
    invoke-direct {p0, p1}, Lcom/sunborn/gameplatform/core/common/DataCenterService;->getUUIDFromFile(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sunborn/gameplatform/core/common/DataCenterService;->mUUID:Ljava/lang/String;

    .line 54
    iget-object v0, p0, Lcom/sunborn/gameplatform/core/common/DataCenterService;->mUUID:Ljava/lang/String;

    invoke-static {v0}, Lcom/sunborn/gameplatform/core/common/SUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 55
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sunborn/gameplatform/core/common/DataCenterService;->mUUID:Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lcom/sunborn/gameplatform/core/common/DataCenterService;->mUUID:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/sunborn/gameplatform/core/common/DataCenterService;->writeUUIDToFile(Landroid/content/Context;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/sunborn/gameplatform/core/common/DataCenterService;->mUUID:Ljava/lang/String;

    invoke-interface {p2, v0}, Lcom/sunborn/gameplatform/core/common/DataCenterService$IGetUUIDListener;->OnSuccess(Ljava/lang/String;)V

    .line 65
    :goto_2a
    return-void

    .line 59
    :cond_2b
    iget-object v0, p0, Lcom/sunborn/gameplatform/core/common/DataCenterService;->mUUID:Ljava/lang/String;

    invoke-interface {p2, v0}, Lcom/sunborn/gameplatform/core/common/DataCenterService$IGetUUIDListener;->OnSuccess(Ljava/lang/String;)V

    goto :goto_2a

    .line 62
    :cond_31
    iget-object v0, p0, Lcom/sunborn/gameplatform/core/common/DataCenterService;->mUUID:Ljava/lang/String;

    invoke-interface {p2, v0}, Lcom/sunborn/gameplatform/core/common/DataCenterService$IGetUUIDListener;->OnSuccess(Ljava/lang/String;)V

    goto :goto_2a
.end method
