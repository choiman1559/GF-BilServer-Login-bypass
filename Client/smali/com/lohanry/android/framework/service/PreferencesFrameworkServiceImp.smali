.class public Lcom/lohanry/android/framework/service/PreferencesFrameworkServiceImp;
.super Ljava/lang/Object;
.source "PreferencesFrameworkServiceImp.java"

# interfaces
.implements Lcom/lohanry/android/framework/service/FrameworkService;


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private R_W_MODEL:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    const-class v0, Lcom/lohanry/android/framework/service/PreferencesFrameworkServiceImp;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lohanry/android/framework/service/PreferencesFrameworkServiceImp;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/lohanry/android/framework/service/PreferencesFrameworkServiceImp;->R_W_MODEL:I

    return-void
.end method


# virtual methods
.method public getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 9
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "editorKey"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "t"    # Ljava/lang/reflect/Type;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 48
    if-nez p1, :cond_c

    .line 49
    sget-object v2, Lcom/lohanry/android/framework/service/PreferencesFrameworkServiceImp;->TAG:Ljava/lang/String;

    const-string v3, "ActionContext is null"

    invoke-static {v2, v3}, Lcom/lohanry/android/framework/tools/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_b
    :goto_b
    return-object v1

    .line 52
    :cond_c
    iget v2, p0, Lcom/lohanry/android/framework/service/PreferencesFrameworkServiceImp;->R_W_MODEL:I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 53
    .local v0, "read":Landroid/content/SharedPreferences;
    const-class v2, Ljava/lang/String;

    if-ne p4, v2, :cond_1d

    .line 54
    const-string v1, ""

    invoke-interface {v0, p3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_b

    .line 55
    :cond_1d
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p4, v2, :cond_25

    const-class v2, Ljava/lang/Boolean;

    if-ne p4, v2, :cond_2e

    .line 56
    :cond_25
    invoke-interface {v0, p3, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_b

    .line 57
    :cond_2e
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p4, v2, :cond_36

    const-class v2, Ljava/lang/Float;

    if-ne p4, v2, :cond_40

    .line 58
    :cond_36
    const/4 v1, 0x0

    invoke-interface {v0, p3, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_b

    .line 59
    :cond_40
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p4, v2, :cond_48

    const-class v2, Ljava/lang/Integer;

    if-ne p4, v2, :cond_51

    .line 60
    :cond_48
    invoke-interface {v0, p3, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_b

    .line 61
    :cond_51
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p4, v2, :cond_59

    const-class v2, Ljava/lang/Long;

    if-ne p4, v2, :cond_b

    .line 62
    :cond_59
    const-wide/16 v2, 0x0

    invoke-interface {v0, p3, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_b
.end method

.method public saveValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 9
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "editorKey"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/Object;

    .prologue
    .line 26
    if-nez p1, :cond_a

    .line 27
    sget-object v1, Lcom/lohanry/android/framework/service/PreferencesFrameworkServiceImp;->TAG:Ljava/lang/String;

    const-string v2, "ActionContext is null"

    invoke-static {v1, v2}, Lcom/lohanry/android/framework/tools/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .end local p4    # "value":Ljava/lang/Object;
    :cond_9
    :goto_9
    return-void

    .line 30
    .restart local p4    # "value":Ljava/lang/Object;
    :cond_a
    iget v1, p0, Lcom/lohanry/android/framework/service/PreferencesFrameworkServiceImp;->R_W_MODEL:I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 31
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    instance-of v1, p4, Ljava/lang/String;

    if-eqz v1, :cond_21

    .line 32
    check-cast p4, Ljava/lang/String;

    .end local p4    # "value":Ljava/lang/Object;
    invoke-interface {v0, p3, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 44
    :goto_1d
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_9

    .line 33
    .restart local p4    # "value":Ljava/lang/Object;
    :cond_21
    instance-of v1, p4, Ljava/lang/Boolean;

    if-eqz v1, :cond_2f

    .line 34
    check-cast p4, Ljava/lang/Boolean;

    .end local p4    # "value":Ljava/lang/Object;
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, p3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1d

    .line 35
    .restart local p4    # "value":Ljava/lang/Object;
    :cond_2f
    instance-of v1, p4, Ljava/lang/Float;

    if-eqz v1, :cond_3d

    .line 36
    check-cast p4, Ljava/lang/Float;

    .end local p4    # "value":Ljava/lang/Object;
    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-interface {v0, p3, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_1d

    .line 37
    .restart local p4    # "value":Ljava/lang/Object;
    :cond_3d
    instance-of v1, p4, Ljava/lang/Integer;

    if-eqz v1, :cond_4b

    .line 38
    check-cast p4, Ljava/lang/Integer;

    .end local p4    # "value":Ljava/lang/Object;
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, p3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_1d

    .line 39
    .restart local p4    # "value":Ljava/lang/Object;
    :cond_4b
    instance-of v1, p4, Ljava/lang/Long;

    if-eqz v1, :cond_9

    .line 40
    check-cast p4, Ljava/lang/Long;

    .end local p4    # "value":Ljava/lang/Object;
    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, p3, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_1d
.end method
