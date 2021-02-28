.class public Lcom/unity3d/splash/services/core/misc/JsonStorage;
.super Ljava/lang/Object;


# instance fields
.field private _data:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private declared-synchronized createObjectTree(Ljava/lang/String;)V
    .registers 8

    monitor-enter p0

    :try_start_1
    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/unity3d/splash/services/core/misc/JsonStorage;->_data:Lorg/json/JSONObject;

    invoke-virtual {p1}, Ljava/lang/String;->length()I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_3a

    move-result v1

    if-nez v1, :cond_11

    :cond_f
    monitor-exit p0

    return-void

    :cond_11
    const/4 v1, 0x0

    move v2, v1

    :goto_13
    :try_start_13
    array-length v1, v3

    if-ge v2, v1, :cond_f

    aget-object v1, v3, v2

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_1b
    .catchall {:try_start_13 .. :try_end_1b} :catchall_3a

    move-result v1

    if-nez v1, :cond_3d

    :try_start_1e
    aget-object v1, v3, v2

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_28} :catch_33
    .catchall {:try_start_1e .. :try_end_28} :catchall_3a

    move-result-object v1

    :try_start_29
    aget-object v0, v3, v2

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2e} :catch_4b
    .catchall {:try_start_29 .. :try_end_2e} :catchall_3a

    move-result-object v0

    :goto_2f
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_13

    :catch_33
    move-exception v1

    :goto_34
    :try_start_34
    const-string v4, "Couldn\'t create new JSONObject"

    invoke-static {v4, v1}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_39
    .catchall {:try_start_34 .. :try_end_39} :catchall_3a

    goto :goto_2f

    :catchall_3a
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3d
    :try_start_3d
    aget-object v1, v3, v2

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_42} :catch_44
    .catchall {:try_start_3d .. :try_end_42} :catchall_3a

    move-result-object v0

    goto :goto_2f

    :catch_44
    move-exception v1

    :try_start_45
    const-string v4, "Couldn\'t get existing JSONObject"

    invoke-static {v4, v1}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_4a
    .catchall {:try_start_45 .. :try_end_4a} :catchall_3a

    goto :goto_2f

    :catch_4b
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_34
.end method

.method private declared-synchronized findObject(Ljava/lang/String;)Ljava/lang/Object;
    .registers 8

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_2
    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/unity3d/splash/services/core/misc/JsonStorage;->_data:Lorg/json/JSONObject;

    invoke-virtual {p1}, Ljava/lang/String;->length()I
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_40

    move-result v2

    if-nez v2, :cond_12

    :cond_10
    :goto_10
    monitor-exit p0

    return-object v0

    :cond_12
    const/4 v2, 0x0

    :goto_13
    :try_start_13
    array-length v4, v3

    if-ge v2, v4, :cond_10

    aget-object v4, v3, v2

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_1b
    .catchall {:try_start_13 .. :try_end_1b} :catchall_40

    move-result v4

    if-eqz v4, :cond_3e

    :try_start_1e
    aget-object v4, v3, v2

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_23} :catch_27
    .catchall {:try_start_1e .. :try_end_23} :catchall_40

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :catch_27
    move-exception v0

    :try_start_28
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Couldn\'t read JSONObject: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, v3, v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_3c
    .catchall {:try_start_28 .. :try_end_3c} :catchall_40

    move-object v0, v1

    goto :goto_10

    :cond_3e
    move-object v0, v1

    goto :goto_10

    :catchall_40
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getParentObjectTreeFor(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    monitor-enter p0

    :try_start_1
    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "."

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_25

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized clearData()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/unity3d/splash/services/core/misc/JsonStorage;->_data:Lorg/json/JSONObject;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized delete(Ljava/lang/String;)Z
    .registers 6

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Lcom/unity3d/splash/services/core/misc/JsonStorage;->_data:Lorg/json/JSONObject;

    if-nez v0, :cond_e

    const-string v0, "Data is NULL, readStorage probably not called"

    invoke-static {v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->error(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_3b

    move v0, v1

    :goto_c
    monitor-exit p0

    return v0

    :cond_e
    :try_start_e
    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/unity3d/splash/services/core/misc/JsonStorage;->getParentObjectTreeFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unity3d/splash/services/core/misc/JsonStorage;->findObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/json/JSONObject;

    if-eqz v0, :cond_39

    invoke-direct {p0, p1}, Lcom/unity3d/splash/services/core/misc/JsonStorage;->getParentObjectTreeFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unity3d/splash/services/core/misc/JsonStorage;->findObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    if-eqz v0, :cond_39

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_34
    .catchall {:try_start_e .. :try_end_34} :catchall_3b

    move-result-object v0

    if-eqz v0, :cond_39

    const/4 v0, 0x1

    goto :goto_c

    :cond_39
    move v0, v1

    goto :goto_c

    :catchall_3b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 6

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Lcom/unity3d/splash/services/core/misc/JsonStorage;->_data:Lorg/json/JSONObject;

    if-nez v0, :cond_d

    const-string v0, "Data is NULL, readStorage probably not called"

    invoke-static {v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->error(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_49

    :cond_b
    :goto_b
    monitor-exit p0

    return-object v1

    :cond_d
    :try_start_d
    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/unity3d/splash/services/core/misc/JsonStorage;->getParentObjectTreeFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unity3d/splash/services/core/misc/JsonStorage;->findObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/json/JSONObject;

    if-eqz v0, :cond_b

    invoke-direct {p0, p1}, Lcom/unity3d/splash/services/core/misc/JsonStorage;->getParentObjectTreeFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unity3d/splash/services/core/misc/JsonStorage;->findObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;
    :try_end_29
    .catchall {:try_start_d .. :try_end_29} :catchall_49

    if-eqz v0, :cond_b

    :try_start_2b
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v2, v3

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_47

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_3e} :catch_41
    .catchall {:try_start_2b .. :try_end_3e} :catchall_49

    move-result-object v0

    :goto_3f
    move-object v1, v0

    goto :goto_b

    :catch_41
    move-exception v0

    :try_start_42
    const-string v2, "Error getting data"

    invoke-static {v2, v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_47
    .catchall {:try_start_42 .. :try_end_47} :catchall_49

    :cond_47
    move-object v0, v1

    goto :goto_3f

    :catchall_49
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getData()Lorg/json/JSONObject;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/unity3d/splash/services/core/misc/JsonStorage;->_data:Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getKeys(Ljava/lang/String;Z)Ljava/util/List;
    .registers 12

    const/4 v4, 0x0

    monitor-enter p0

    :try_start_2
    invoke-virtual {p0, p1}, Lcom/unity3d/splash/services/core/misc/JsonStorage;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lorg/json/JSONObject;

    if-eqz v1, :cond_7c

    invoke-virtual {p0, p1}, Lcom/unity3d/splash/services/core/misc/JsonStorage;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_79

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    :cond_1b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_79

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    if-eqz p2, :cond_7e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "."

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/unity3d/splash/services/core/misc/JsonStorage;->getKeys(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v1

    :goto_46
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_1b

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_75
    .catchall {:try_start_2 .. :try_end_75} :catchall_76

    goto :goto_4f

    :catchall_76
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_79
    move-object v1, v3

    :goto_7a
    monitor-exit p0

    return-object v1

    :cond_7c
    move-object v1, v4

    goto :goto_7a

    :cond_7e
    move-object v1, v4

    goto :goto_46
.end method

.method public declared-synchronized hasData()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/unity3d/splash/services/core/misc/JsonStorage;->_data:Lorg/json/JSONObject;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/unity3d/splash/services/core/misc/JsonStorage;->_data:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_12

    move-result v0

    if-lez v0, :cond_10

    const/4 v0, 0x1

    :goto_e
    monitor-exit p0

    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_e

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized initData()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/unity3d/splash/services/core/misc/JsonStorage;->_data:Lorg/json/JSONObject;

    if-nez v0, :cond_f

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/unity3d/splash/services/core/misc/JsonStorage;->_data:Lorg/json/JSONObject;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_11

    const/4 v0, 0x1

    :goto_d
    monitor-exit p0

    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_d

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 7

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Lcom/unity3d/splash/services/core/misc/JsonStorage;->_data:Lorg/json/JSONObject;

    if-eqz v0, :cond_10

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_10

    if-nez p2, :cond_3b

    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Storage not properly initialized or incorrect parameters:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/unity3d/splash/services/core/misc/JsonStorage;->_data:Lorg/json/JSONObject;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->error(Ljava/lang/String;)V
    :try_end_38
    .catchall {:try_start_2 .. :try_end_38} :catchall_79

    move v0, v1

    :goto_39
    monitor-exit p0

    return v0

    :cond_3b
    :try_start_3b
    invoke-direct {p0, p1}, Lcom/unity3d/splash/services/core/misc/JsonStorage;->getParentObjectTreeFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unity3d/splash/services/core/misc/JsonStorage;->createObjectTree(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/unity3d/splash/services/core/misc/JsonStorage;->getParentObjectTreeFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unity3d/splash/services/core/misc/JsonStorage;->findObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/json/JSONObject;

    if-eqz v0, :cond_72

    invoke-direct {p0, p1}, Lcom/unity3d/splash/services/core/misc/JsonStorage;->getParentObjectTreeFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unity3d/splash/services/core/misc/JsonStorage;->findObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v2, "\\."

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_5d
    .catchall {:try_start_3b .. :try_end_5d} :catchall_79

    move-result-object v2

    if-eqz v0, :cond_68

    :try_start_60
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_68
    .catch Lorg/json/JSONException; {:try_start_60 .. :try_end_68} :catch_6a
    .catchall {:try_start_60 .. :try_end_68} :catchall_79

    :cond_68
    const/4 v0, 0x1

    goto :goto_39

    :catch_6a
    move-exception v0

    :try_start_6b
    const-string v2, "Couldn\'t set value"

    invoke-static {v2, v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    move v0, v1

    goto :goto_39

    :cond_72
    const-string v0, "Cannot set subvalue to an object that is not JSONObject"

    invoke-static {v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V
    :try_end_77
    .catchall {:try_start_6b .. :try_end_77} :catchall_79

    move v0, v1

    goto :goto_39

    :catchall_79
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setData(Lorg/json/JSONObject;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/unity3d/splash/services/core/misc/JsonStorage;->_data:Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
