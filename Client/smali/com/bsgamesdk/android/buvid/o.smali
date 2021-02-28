.class public Lcom/bsgamesdk/android/buvid/o;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bsgamesdk/android/buvid/o$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;)Lcom/bsgamesdk/android/buvid/k;
    .registers 4

    new-instance v1, Lcom/bsgamesdk/android/buvid/k;

    invoke-direct {v1}, Lcom/bsgamesdk/android/buvid/k;-><init>()V

    :try_start_5
    const-string v0, "buvid"

    const-string v2, ""

    invoke-static {p0, v0, v2}, Lcom/bsgamesdk/android/buvid/o;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-static {}, Lcom/bsgamesdk/android/buvid/g;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_29

    new-instance v0, Lcom/bsgamesdk/android/buvid/k;

    invoke-direct {v0}, Lcom/bsgamesdk/android/buvid/k;-><init>()V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_24} :catch_5b

    :try_start_24
    iput-object v2, v0, Lcom/bsgamesdk/android/buvid/k;->d:Ljava/lang/String;

    iput-object v2, v0, Lcom/bsgamesdk/android/buvid/k;->c:Ljava/lang/String;
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_28} :catch_41

    :goto_28
    return-object v0

    :cond_29
    :try_start_29
    invoke-static {}, Lcom/bsgamesdk/android/buvid/b;->a()Lcom/bsgamesdk/android/buvid/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bsgamesdk/android/buvid/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_43

    new-instance v0, Lcom/bsgamesdk/android/buvid/k;

    invoke-direct {v0}, Lcom/bsgamesdk/android/buvid/k;-><init>()V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_3c} :catch_5b

    :try_start_3c
    iput-object v2, v0, Lcom/bsgamesdk/android/buvid/k;->d:Ljava/lang/String;

    iput-object v2, v0, Lcom/bsgamesdk/android/buvid/k;->c:Ljava/lang/String;
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_40} :catch_41

    goto :goto_28

    :catch_41
    move-exception v1

    goto :goto_28

    :cond_43
    move-object v0, v2

    :cond_44
    :try_start_44
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "curBuvid"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bsgamesdk/android/buvid/k;->d:Ljava/lang/String;

    const-string v0, "oldBuvid"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bsgamesdk/android/buvid/k;->c:Ljava/lang/String;
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_59} :catch_5b

    move-object v0, v1

    goto :goto_28

    :catch_5b
    move-exception v0

    move-object v0, v1

    goto :goto_28
.end method

.method private static a(Lcom/bsgamesdk/android/buvid/k;)Ljava/lang/String;
    .registers 4

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-eqz p0, :cond_1b

    const-string v1, "oldBuvid"

    iget-object v2, p0, Lcom/bsgamesdk/android/buvid/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "curBuvid"

    iget-object v2, p0, Lcom/bsgamesdk/android/buvid/k;->d:Ljava/lang/String;

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

    invoke-static {v0}, Lcom/bsgamesdk/android/buvid/o$a;->a(Landroid/content/SharedPreferences$Editor;)V

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
    invoke-static {v0}, Lcom/bsgamesdk/android/buvid/o$a;->a(Landroid/content/SharedPreferences$Editor;)V

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

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    :try_start_d
    invoke-static {p0}, Lcom/bsgamesdk/android/buvid/o;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/ab;->c(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_1c

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :cond_1c
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "uid_agreement_version"

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/ab;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/bsgamesdk/android/buvid/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_28} :catch_29

    goto :goto_c

    :catch_29
    move-exception v0

    goto :goto_c
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

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    :try_start_0
    const-string v0, "uid_agreement_version"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/bsgamesdk/android/buvid/o;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_a} :catch_b

    :goto_a
    return-object v0

    :catch_b
    move-exception v0

    const-string v0, ""

    goto :goto_a
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    :try_start_0
    new-instance v1, Lcom/bsgamesdk/android/buvid/k;

    invoke-direct {v1}, Lcom/bsgamesdk/android/buvid/k;-><init>()V

    const-string v0, "buvid"

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Lcom/bsgamesdk/android/buvid/o;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bsgamesdk/android/buvid/k;

    if-eqz v0, :cond_33

    iget-object v2, v0, Lcom/bsgamesdk/android/buvid/k;->d:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2e

    iget-object v0, v0, Lcom/bsgamesdk/android/buvid/k;->d:Ljava/lang/String;

    iput-object v0, v1, Lcom/bsgamesdk/android/buvid/k;->c:Ljava/lang/String;

    :goto_1c
    iput-object p1, v1, Lcom/bsgamesdk/android/buvid/k;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/bsgamesdk/android/buvid/o;->a(Lcom/bsgamesdk/android/buvid/k;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2d

    const-string v1, "buvid"

    invoke-static {p0, v1, v0}, Lcom/bsgamesdk/android/buvid/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2d
    :goto_2d
    return-void

    :cond_2e
    iput-object p1, v1, Lcom/bsgamesdk/android/buvid/k;->c:Ljava/lang/String;

    goto :goto_1c

    :catch_31
    move-exception v0

    goto :goto_2d

    :cond_33
    iput-object p1, v1, Lcom/bsgamesdk/android/buvid/k;->c:Ljava/lang/String;
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_35} :catch_31

    goto :goto_1c
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, ""

    :goto_8
    return-object v0

    :cond_9
    :try_start_9
    invoke-static {p0}, Lcom/bsgamesdk/android/buvid/o;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/ab;->c(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_1d} :catch_1e

    goto :goto_8

    :catch_1e
    move-exception v0

    :cond_1f
    const-string v0, ""

    goto :goto_8
.end method
