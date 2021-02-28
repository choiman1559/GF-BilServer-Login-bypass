.class public Lcom/alipay/sdk/tid/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/sdk/tid/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Ljava/lang/String;
    .registers 1

    const-string v0, "!@#23457"

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    invoke-static {}, Lcom/alipay/sdk/tid/b;->j()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_8

    :goto_7
    return-object v0

    :cond_8
    invoke-static {}, Lcom/alipay/sdk/tid/b;->j()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_52

    if-eqz p2, :cond_52

    invoke-static {}, Lcom/alipay/sdk/tid/b$a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/sdk/encrypt/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-static {}, Lcom/alipay/sdk/tid/b$a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/sdk/encrypt/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3d

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lcom/alipay/sdk/tid/b$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_3d
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4a

    const-string v1, "mspl"

    const-string v2, "tid_str: pref failed"

    invoke-static {v1, v2}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4a
    :goto_4a
    const-string v1, "mspl"

    const-string v2, "tid_str: from local"

    invoke-static {v1, v2}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_52
    move-object v0, v1

    goto :goto_4a
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/alipay/sdk/tid/b$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 10

    const/4 v5, 0x0

    invoke-static {}, Lcom/alipay/sdk/tid/b;->j()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_8

    :goto_7
    return-void

    :cond_8
    invoke-static {}, Lcom/alipay/sdk/tid/b;->j()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz p3, :cond_2e

    invoke-static {}, Lcom/alipay/sdk/tid/b$a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/alipay/sdk/encrypt/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3a

    const-string v3, "LocalPreference::putLocalPreferences failed %s\uff0c%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-object p2, v0

    :cond_2e
    :goto_2e
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_7

    :cond_3a
    move-object p2, v0

    goto :goto_2e
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/alipay/sdk/tid/b;->j()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_8

    :goto_7
    return v0

    :cond_8
    invoke-static {}, Lcom/alipay/sdk/tid/b;->j()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    goto :goto_7
.end method

.method private static b()Ljava/lang/String;
    .registers 3

    const-string v0, ""

    :try_start_2
    invoke-static {}, Lcom/alipay/sdk/tid/b;->j()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_d} :catch_31

    move-result-object v0

    :goto_e
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    const-string v0, "unknow"

    :cond_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "00000000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_31
    move-exception v1

    invoke-static {v1}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V

    goto :goto_e
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-static {}, Lcom/alipay/sdk/tid/b;->j()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    invoke-static {}, Lcom/alipay/sdk/tid/b;->j()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_6
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/alipay/sdk/tid/b$a;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/alipay/sdk/tid/b;->j()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_8

    :goto_7
    return v0

    :cond_8
    invoke-static {}, Lcom/alipay/sdk/tid/b;->j()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    goto :goto_7
.end method
