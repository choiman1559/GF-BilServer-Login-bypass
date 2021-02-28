.class public Llib/xdsdk/passport/SPTools;
.super Ljava/lang/Object;
.source "SPTools.java"


# static fields
.field public static FILE_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 8
    const-string v0, "file_name"

    sput-object v0, Llib/xdsdk/passport/SPTools;->FILE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInt(Landroid/app/Activity;Ljava/lang/String;I)I
    .registers 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "i"    # I

    .line 32
    sget-object v0, Llib/xdsdk/passport/SPTools;->FILE_NAME:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 33
    .local v0, "r0":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_e

    .line 34
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1

    .line 36
    :cond_e
    const/4 v1, -0x1

    return v1
.end method

.method public static getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "str2"    # Ljava/lang/String;

    .line 19
    sget-object v0, Llib/xdsdk/passport/SPTools;->FILE_NAME:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 20
    .local v0, "r0":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_e

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_10

    :cond_e
    const-string v1, ""

    :goto_10
    return-object v1
.end method

.method public static putInt(Landroid/app/Activity;Ljava/lang/String;I)V
    .registers 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "i"    # I

    .line 24
    sget-object v0, Llib/xdsdk/passport/SPTools;->FILE_NAME:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 25
    .local v0, "r0":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_14

    .line 26
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 27
    .local v1, "r1":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 29
    .end local v1    # "r1":Landroid/content/SharedPreferences$Editor;
    :cond_14
    return-void
.end method

.method public static putString(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "str2"    # Ljava/lang/String;

    .line 11
    sget-object v0, Llib/xdsdk/passport/SPTools;->FILE_NAME:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 12
    .local v0, "r0":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_14

    .line 13
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 14
    .local v1, "r1":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 16
    .end local v1    # "r1":Landroid/content/SharedPreferences$Editor;
    :cond_14
    return-void
.end method
