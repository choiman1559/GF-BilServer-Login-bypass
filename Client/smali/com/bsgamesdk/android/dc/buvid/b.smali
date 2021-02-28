.class public Lcom/bsgamesdk/android/dc/buvid/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bsgamesdk/android/dc/buvid/b$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;)Lcom/bsgamesdk/android/dc/buvid/file/j;
    .registers 4

    :try_start_0
    const-string v0, "buvid"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/bsgamesdk/android/dc/buvid/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/bsgamesdk/android/dc/buvid/file/j;

    invoke-direct {v0}, Lcom/bsgamesdk/android/dc/buvid/file/j;-><init>()V

    const-string v2, "curBuvid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/bsgamesdk/android/dc/buvid/file/j;->d:Ljava/lang/String;

    const-string v2, "oldBuvid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bsgamesdk/android/dc/buvid/file/j;->c:Ljava/lang/String;
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_24} :catch_25

    :goto_24
    return-object v0

    :catch_25
    move-exception v0

    const/4 v0, 0x0

    goto :goto_24
.end method

.method private static a(Lcom/bsgamesdk/android/dc/buvid/file/j;)Ljava/lang/String;
    .registers 4

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-eqz p0, :cond_1b

    const-string v1, "oldBuvid"

    iget-object v2, p0, Lcom/bsgamesdk/android/dc/buvid/file/j;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "curBuvid"

    iget-object v2, p0, Lcom/bsgamesdk/android/dc/buvid/file/j;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_18} :catch_1a

    move-result-object v0

    :goto_19
    return-object v0

    :catch_1a
    move-exception v0

    :cond_1b
    const-string v0, ""

    goto :goto_19
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    const-string v0, "config_data"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lcom/bsgamesdk/android/dc/buvid/b$a;->a(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7

    const-string v0, "config_data"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_18

    check-cast p2, Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_14
    invoke-static {v0}, Lcom/bsgamesdk/android/dc/buvid/b$a;->a(Landroid/content/SharedPreferences$Editor;)V

    return-void

    :cond_18
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_26

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_14

    :cond_26
    instance-of v1, p2, Ljava/lang/Boolean;

    if-eqz v1, :cond_34

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_14

    :cond_34
    instance-of v1, p2, Ljava/lang/Float;

    if-eqz v1, :cond_42

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_14

    :cond_42
    instance-of v1, p2, Ljava/lang/Long;

    if-eqz v1, :cond_50

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, p1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_14

    :cond_50
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_14
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    const-string v0, "config_data"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_12

    check-cast p2, Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_11
    return-object v0

    :cond_12
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_25

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_11

    :cond_25
    instance-of v1, p2, Ljava/lang/Boolean;

    if-eqz v1, :cond_38

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_11

    :cond_38
    instance-of v1, p2, Ljava/lang/Float;

    if-eqz v1, :cond_4b

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_11

    :cond_4b
    instance-of v1, p2, Ljava/lang/Long;

    if-eqz v1, :cond_5e

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, p1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_11

    :cond_5e
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    :try_start_0
    new-instance v1, Lcom/bsgamesdk/android/dc/buvid/file/j;

    invoke-direct {v1}, Lcom/bsgamesdk/android/dc/buvid/file/j;-><init>()V

    const-string v0, "buvid"

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Lcom/bsgamesdk/android/dc/buvid/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bsgamesdk/android/dc/buvid/file/j;

    if-eqz v0, :cond_33

    iget-object v2, v0, Lcom/bsgamesdk/android/dc/buvid/file/j;->d:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2e

    iget-object v0, v0, Lcom/bsgamesdk/android/dc/buvid/file/j;->d:Ljava/lang/String;

    iput-object v0, v1, Lcom/bsgamesdk/android/dc/buvid/file/j;->c:Ljava/lang/String;

    :goto_1c
    iput-object p1, v1, Lcom/bsgamesdk/android/dc/buvid/file/j;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/bsgamesdk/android/dc/buvid/b;->a(Lcom/bsgamesdk/android/dc/buvid/file/j;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2d

    const-string v1, "buvid"

    invoke-static {p0, v1, v0}, Lcom/bsgamesdk/android/dc/buvid/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2d
    :goto_2d
    return-void

    :cond_2e
    iput-object p1, v1, Lcom/bsgamesdk/android/dc/buvid/file/j;->c:Ljava/lang/String;

    goto :goto_1c

    :catch_31
    move-exception v0

    goto :goto_2d

    :cond_33
    iput-object p1, v1, Lcom/bsgamesdk/android/dc/buvid/file/j;->c:Ljava/lang/String;
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_35} :catch_31

    goto :goto_1c
.end method
