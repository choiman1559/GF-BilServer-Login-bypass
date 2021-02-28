.class public Lcom/bilibili/baseconnect/SPUtil;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/baseconnect/SPUtil$SharedPreferencesCompat;
    }
.end annotation


# static fields
.field public static final FILE_NAME:Ljava/lang/String; = "share_data"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear(Landroid/content/Context;)V
    .registers 2

    const-string v0, "share_data"

    invoke-static {p0, v0}, Lcom/bilibili/baseconnect/SPUtil;->clear(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static clear(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lcom/bilibili/baseconnect/SPUtil$SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method public static contains(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    const-string v0, "share_data"

    invoke-static {p0, v0, p1}, Lcom/bilibili/baseconnect/SPUtil;->contains(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static contains(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    const-string v0, "share_data"

    invoke-static {p0, v0, p1, p2}, Lcom/bilibili/baseconnect/SPUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    instance-of v1, p3, Ljava/lang/String;

    if-eqz v1, :cond_10

    check-cast p3, Ljava/lang/String;

    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_f
    return-object v0

    :cond_10
    instance-of v1, p3, Ljava/lang/Integer;

    if-eqz v1, :cond_23

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_f

    :cond_23
    instance-of v1, p3, Ljava/lang/Boolean;

    if-eqz v1, :cond_36

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_f

    :cond_36
    instance-of v1, p3, Ljava/lang/Float;

    if-eqz v1, :cond_49

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_f

    :cond_49
    instance-of v1, p3, Ljava/lang/Long;

    if-eqz v1, :cond_5c

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, p2, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_f

    :cond_5c
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static getAll(Landroid/content/Context;)Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    const-string v0, "share_data"

    invoke-static {p0, v0}, Lcom/bilibili/baseconnect/SPUtil;->getAll(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static getAll(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    const-string v0, "share_data"

    invoke-static {p0, v0, p1, p2}, Lcom/bilibili/baseconnect/SPUtil;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 8

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    instance-of v1, p3, Ljava/lang/String;

    if-eqz v1, :cond_16

    check-cast p3, Ljava/lang/String;

    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_12
    invoke-static {v0}, Lcom/bilibili/baseconnect/SPUtil$SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    return-void

    :cond_16
    instance-of v1, p3, Ljava/lang/Integer;

    if-eqz v1, :cond_24

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_12

    :cond_24
    instance-of v1, p3, Ljava/lang/Boolean;

    if-eqz v1, :cond_32

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_12

    :cond_32
    instance-of v1, p3, Ljava/lang/Float;

    if-eqz v1, :cond_40

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_12

    :cond_40
    instance-of v1, p3, Ljava/lang/Long;

    if-eqz v1, :cond_4e

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, p2, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_12

    :cond_4e
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_12
.end method

.method public static remove(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    const-string v0, "share_data"

    invoke-static {p0, v0, p1}, Lcom/bilibili/baseconnect/SPUtil;->remove(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static remove(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lcom/bilibili/baseconnect/SPUtil$SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method
