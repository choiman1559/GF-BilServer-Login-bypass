.class public Lcom/bsgamesdk/android/utils/h;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/cookie/Cookie;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/bsgamesdk/android/api/asynchttp/PersistentCookieStore;
    .registers 6

    new-instance v2, Lcom/bsgamesdk/android/api/asynchttp/PersistentCookieStore;

    invoke-direct {v2, p0}, Lcom/bsgamesdk/android/api/asynchttp/PersistentCookieStore;-><init>(Landroid/content/Context;)V

    sget-object v0, Lcom/bsgamesdk/android/utils/h;->a:Ljava/util/List;

    if-nez v0, :cond_f

    invoke-virtual {v2}, Lcom/bsgamesdk/android/api/asynchttp/PersistentCookieStore;->getCookies()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/bsgamesdk/android/utils/h;->a:Ljava/util/List;

    :cond_f
    sget-object v0, Lcom/bsgamesdk/android/utils/h;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {v2}, Lcom/bsgamesdk/android/api/asynchttp/PersistentCookieStore;->getCookies()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/bsgamesdk/android/utils/h;->a:Ljava/util/List;

    :cond_1d
    const/4 v0, 0x0

    move v1, v0

    :goto_1f
    sget-object v0, Lcom/bsgamesdk/android/utils/h;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_66

    sget-object v0, Lcom/bsgamesdk/android/utils/h;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/cookie/Cookie;

    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v0

    const-string v3, ".bilibili.com"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_57

    :try_start_3b
    sget-object v0, Lcom/bsgamesdk/android/utils/h;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/impl/cookie/BasicClientCookie;

    invoke-virtual {v0}, Lorg/apache/http/impl/cookie/BasicClientCookie;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/impl/cookie/BasicClientCookie;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5b

    invoke-virtual {v0, p1}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setDomain(Ljava/lang/String;)V

    :goto_52
    sget-object v3, Lcom/bsgamesdk/android/utils/h;->a:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_57
    :goto_57
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1f

    :cond_5b
    const-string v3, ".biligame.com"

    invoke-virtual {v0, v3}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setComment(Ljava/lang/String;)V
    :try_end_60
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_3b .. :try_end_60} :catch_61

    goto :goto_52

    :catch_61
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_57

    :cond_66
    sget-object v0, Lcom/bsgamesdk/android/utils/h;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/cookie/Cookie;

    invoke-virtual {v2, v0}, Lcom/bsgamesdk/android/api/asynchttp/PersistentCookieStore;->addCookie(Lorg/apache/http/cookie/Cookie;)V

    goto :goto_6c

    :cond_7c
    return-object v2
.end method
