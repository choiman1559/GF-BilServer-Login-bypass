.class public Lcom/lohanry/android/framework/service/BaseModelFrameworkServiceImp;
.super Ljava/lang/Object;
.source "BaseModelFrameworkServiceImp.java"


# instance fields
.field protected TAG:Ljava/lang/String;

.field protected mEditorKey:Ljava/lang/String;

.field private mPreferencesFrameworkServiceImp:Lcom/lohanry/android/framework/service/PreferencesFrameworkServiceImp;


# direct methods
.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/lohanry/android/framework/service/BaseModelFrameworkServiceImp;->mEditorKey:Ljava/lang/String;

    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lohanry/android/framework/service/BaseModelFrameworkServiceImp;->TAG:Ljava/lang/String;

    .line 24
    sget-object v0, Lcom/lohanry/android/framework/service/FrameworkServiceManage;->PREFERENCES_SERVICE:Ljava/lang/String;

    invoke-static {v0}, Lcom/lohanry/android/framework/service/FrameworkServiceManage;->getService(Ljava/lang/String;)Lcom/lohanry/android/framework/service/FrameworkService;

    move-result-object v0

    check-cast v0, Lcom/lohanry/android/framework/service/PreferencesFrameworkServiceImp;

    iput-object v0, p0, Lcom/lohanry/android/framework/service/BaseModelFrameworkServiceImp;->mPreferencesFrameworkServiceImp:Lcom/lohanry/android/framework/service/PreferencesFrameworkServiceImp;

    .line 25
    return-void
.end method


# virtual methods
.method public declared-synchronized recovery(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 13
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "baseModel"    # Ljava/lang/Object;

    .prologue
    .line 52
    monitor-enter p0

    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Lcom/lohanry/android/framework/annotation/SaveItem;

    invoke-static {v5, v6}, Lcom/lohanry/android/framework/reflect/util/FieldsCache;->getDeclaredFields(Ljava/lang/Class;Ljava/lang/Class;)[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 53
    .local v2, "fields":[Ljava/lang/reflect/Field;
    array-length v7, v2

    const/4 v5, 0x0

    move v6, v5

    :goto_e
    if-ge v6, v7, :cond_51

    aget-object v1, v2, v6

    .line 54
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 55
    const-class v5, Lcom/lohanry/android/framework/annotation/SaveItem;

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_4e

    move-result-object v5

    if-eqz v5, :cond_45

    .line 57
    :try_start_1e
    const-class v5, Lcom/lohanry/android/framework/annotation/SaveItem;

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lcom/lohanry/android/framework/annotation/SaveItem;

    invoke-interface {v5}, Lcom/lohanry/android/framework/annotation/SaveItem;->value()Ljava/lang/String;

    move-result-object v3

    .line 58
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_34

    .line 59
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    .line 61
    :cond_34
    iget-object v5, p0, Lcom/lohanry/android/framework/service/BaseModelFrameworkServiceImp;->mPreferencesFrameworkServiceImp:Lcom/lohanry/android/framework/service/PreferencesFrameworkServiceImp;

    iget-object v8, p0, Lcom/lohanry/android/framework/service/BaseModelFrameworkServiceImp;->mEditorKey:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v9

    invoke-virtual {v5, p1, v8, v3, v9}, Lcom/lohanry/android/framework/service/PreferencesFrameworkServiceImp;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v4

    .line 62
    .local v4, "o":Ljava/lang/Object;
    if-eqz v4, :cond_45

    .line 63
    invoke-virtual {v1, p2, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_45} :catch_49
    .catchall {:try_start_1e .. :try_end_45} :catchall_4e

    .line 53
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "o":Ljava/lang/Object;
    :cond_45
    :goto_45
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_e

    .line 65
    :catch_49
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_4e

    goto :goto_45

    .line 52
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v2    # "fields":[Ljava/lang/reflect/Field;
    :catchall_4e
    move-exception v5

    monitor-exit p0

    throw v5

    .line 71
    .restart local v2    # "fields":[Ljava/lang/reflect/Field;
    :cond_51
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized save(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 12
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "baseModel"    # Ljava/lang/Object;

    .prologue
    .line 31
    monitor-enter p0

    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lcom/lohanry/android/framework/annotation/SaveItem;

    invoke-static {v4, v5}, Lcom/lohanry/android/framework/reflect/util/FieldsCache;->getDeclaredFields(Ljava/lang/Class;Ljava/lang/Class;)[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 32
    .local v2, "fields":[Ljava/lang/reflect/Field;
    array-length v6, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_e
    if-ge v5, v6, :cond_4b

    aget-object v1, v2, v5

    .line 33
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 34
    const-class v4, Lcom/lohanry/android/framework/annotation/SaveItem;

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    if-eqz v4, :cond_3f

    .line 35
    const-class v4, Lcom/lohanry/android/framework/annotation/SaveItem;

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/lohanry/android/framework/annotation/SaveItem;

    invoke-interface {v4}, Lcom/lohanry/android/framework/annotation/SaveItem;->value()Ljava/lang/String;

    move-result-object v3

    .line 36
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_34

    .line 37
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_48

    move-result-object v3

    .line 40
    :cond_34
    :try_start_34
    iget-object v4, p0, Lcom/lohanry/android/framework/service/BaseModelFrameworkServiceImp;->mPreferencesFrameworkServiceImp:Lcom/lohanry/android/framework/service/PreferencesFrameworkServiceImp;

    iget-object v7, p0, Lcom/lohanry/android/framework/service/BaseModelFrameworkServiceImp;->mEditorKey:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v4, p1, v7, v3, v8}, Lcom/lohanry/android/framework/service/PreferencesFrameworkServiceImp;->saveValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3f
    .catch Ljava/lang/IllegalAccessException; {:try_start_34 .. :try_end_3f} :catch_43
    .catchall {:try_start_34 .. :try_end_3f} :catchall_48

    .line 32
    .end local v3    # "key":Ljava/lang/String;
    :cond_3f
    :goto_3f
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_e

    .line 41
    .restart local v3    # "key":Ljava/lang/String;
    :catch_43
    move-exception v0

    .line 42
    .local v0, "e":Ljava/lang/IllegalAccessException;
    :try_start_44
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_48

    goto :goto_3f

    .line 31
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v2    # "fields":[Ljava/lang/reflect/Field;
    .end local v3    # "key":Ljava/lang/String;
    :catchall_48
    move-exception v4

    monitor-exit p0

    throw v4

    .line 46
    .restart local v2    # "fields":[Ljava/lang/reflect/Field;
    :cond_4b
    monitor-exit p0

    return-void
.end method
