.class public final Lcom/alipay/sdk/app/OpenAuthTask;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/sdk/app/OpenAuthTask$a;,
        Lcom/alipay/sdk/app/OpenAuthTask$Callback;,
        Lcom/alipay/sdk/app/OpenAuthTask$BizType;
    }
.end annotation


# static fields
.field public static final Duplex:I = 0x1388

.field public static final NOT_INSTALLED:I = 0xfa1

.field public static final OK:I = 0x2328

.field public static final SYS_ERR:I = 0xfa0

.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/sdk/app/OpenAuthTask$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private static b:J = 0x0L

.field private static final c:I = 0x7a


# instance fields
.field private volatile d:Z

.field private final e:Landroid/app/Activity;

.field private f:Lcom/alipay/sdk/app/OpenAuthTask$Callback;

.field private final g:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alipay/sdk/app/OpenAuthTask;->a:Ljava/util/Map;

    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/alipay/sdk/app/OpenAuthTask;->b:J

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/sdk/app/OpenAuthTask;->d:Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/sdk/app/OpenAuthTask;->g:Landroid/os/Handler;

    iput-object p1, p0, Lcom/alipay/sdk/app/OpenAuthTask;->e:Landroid/app/Activity;

    invoke-static {}, Lcom/alipay/sdk/sys/b;->a()Lcom/alipay/sdk/sys/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/sdk/sys/b;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/sdk/app/OpenAuthTask;)Lcom/alipay/sdk/app/OpenAuthTask$Callback;
    .registers 2

    iget-object v0, p0, Lcom/alipay/sdk/app/OpenAuthTask;->f:Lcom/alipay/sdk/app/OpenAuthTask$Callback;

    return-object v0
.end method

.method private a(JLjava/lang/String;Lcom/alipay/sdk/app/OpenAuthTask$BizType;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "startTime"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "session"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "package"

    iget-object v2, p0, Lcom/alipay/sdk/app/OpenAuthTask;->e:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p4, :cond_29

    const-string v1, "appId"

    invoke-static {p4}, Lcom/alipay/sdk/app/OpenAuthTask$BizType;->access$100(Lcom/alipay/sdk/app/OpenAuthTask$BizType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_29
    const-string v1, "sdkVersion"

    const-string v2, "h.a.3.7.4"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mqpURL"

    invoke-virtual {v0, v1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/alipay/sdk/app/OpenAuthTask$BizType;Ljava/util/Map;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/sdk/app/OpenAuthTask$BizType;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "missing bizType"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "alipays"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "platformapi"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "startapp"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "appId"

    invoke-static {p1}, Lcom/alipay/sdk/app/OpenAuthTask$BizType;->access$100(Lcom/alipay/sdk/app/OpenAuthTask$BizType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    sget-object v0, Lcom/alipay/sdk/app/e;->a:[I

    invoke-virtual {p1}, Lcom/alipay/sdk/app/OpenAuthTask$BizType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_74

    :goto_36
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_3e

    :pswitch_5a
    const-string v0, "appClearTop"

    const-string v1, "false"

    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "startMultApp"

    const-string v3, "YES"

    invoke-virtual {v0, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_36

    :cond_6a
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_5a
    .end packed-switch
.end method

.method static a(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    sget-object v0, Lcom/alipay/sdk/app/OpenAuthTask;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/sdk/app/OpenAuthTask$Callback;

    if-eqz v0, :cond_d

    :try_start_a
    invoke-interface {v0, p1, p2, p3}, Lcom/alipay/sdk/app/OpenAuthTask$Callback;->onResult(ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_d} :catch_e

    :cond_d
    :goto_d
    return-void

    :catch_e
    move-exception v0

    invoke-static {v0}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V

    goto :goto_d
.end method

.method private a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Lcom/alipay/sdk/app/OpenAuthTask$BizType;Ljava/util/Map;Z)Z
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/sdk/sys/a;",
            "Ljava/lang/String;",
            "Lcom/alipay/sdk/app/OpenAuthTask$BizType;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/alipay/sdk/app/OpenAuthTask;->d:Z

    if-eqz v0, :cond_17

    iget-object v6, p0, Lcom/alipay/sdk/app/OpenAuthTask;->g:Landroid/os/Handler;

    new-instance v0, Lcom/alipay/sdk/app/OpenAuthTask$a;

    const/16 v2, 0xfa0

    const-string v3, "\u8be5 OpenAuthTask \u5df2\u5728\u6267\u884c"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/alipay/sdk/app/OpenAuthTask$a;-><init>(Lcom/alipay/sdk/app/OpenAuthTask;ILjava/lang/String;Landroid/os/Bundle;Lcom/alipay/sdk/app/e;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/sdk/app/OpenAuthTask;->d:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sget-wide v0, Lcom/alipay/sdk/app/OpenAuthTask;->b:J

    sub-long v0, v2, v0

    const-wide/16 v4, 0xbb8

    cmp-long v0, v0, v4

    if-gtz v0, :cond_3b

    iget-object v6, p0, Lcom/alipay/sdk/app/OpenAuthTask;->g:Landroid/os/Handler;

    new-instance v0, Lcom/alipay/sdk/app/OpenAuthTask$a;

    const/16 v2, 0x1388

    const-string v3, "3s \u5185\u91cd\u590d\u652f\u4ed8"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/alipay/sdk/app/OpenAuthTask$a;-><init>(Lcom/alipay/sdk/app/OpenAuthTask;ILjava/lang/String;Landroid/os/Bundle;Lcom/alipay/sdk/app/e;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    goto :goto_16

    :cond_3b
    sput-wide v2, Lcom/alipay/sdk/app/OpenAuthTask;->b:J

    const/16 v0, 0x20

    invoke-static {v0}, Lcom/alipay/sdk/util/n;->a(I)Ljava/lang/String;

    move-result-object v4

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, p4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const-string v0, "mqpPkgName"

    iget-object v5, p0, Lcom/alipay/sdk/app/OpenAuthTask;->e:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "mqpScene"

    const-string v5, "sdk"

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/alipay/sdk/data/a;->j()Lcom/alipay/sdk/data/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sdk/data/a;->i()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/alipay/sdk/data/a;->j()Lcom/alipay/sdk/data/a;

    move-result-object v5

    iget-boolean v5, v5, Lcom/alipay/sdk/data/a;->a:Z

    if-eqz v5, :cond_6c

    if-nez v0, :cond_6e

    :cond_6c
    sget-object v0, Lcom/alipay/sdk/app/i;->a:Ljava/util/List;

    :cond_6e
    iget-object v5, p0, Lcom/alipay/sdk/app/OpenAuthTask;->e:Landroid/app/Activity;

    invoke-static {p1, v5, v0}, Lcom/alipay/sdk/util/n;->a(Lcom/alipay/sdk/sys/a;Landroid/content/Context;Ljava/util/List;)Lcom/alipay/sdk/util/n$a;

    move-result-object v7

    if-eqz v7, :cond_8e

    invoke-virtual {v7, p1}, Lcom/alipay/sdk/util/n$a;->a(Lcom/alipay/sdk/sys/a;)Z

    move-result v0

    if-nez v0, :cond_8e

    invoke-virtual {v7}, Lcom/alipay/sdk/util/n$a;->a()Z

    move-result v0

    if-nez v0, :cond_8e

    iget-object v0, v7, Lcom/alipay/sdk/util/n$a;->a:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_8e

    iget-object v0, v7, Lcom/alipay/sdk/util/n$a;->a:Landroid/content/pm/PackageInfo;

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    const/16 v5, 0x7a

    if-ge v0, v5, :cond_e6

    :cond_8e
    if-eqz p5, :cond_d2

    const-string v0, "mqpScheme"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "mqpNotifyName"

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "mqpScene"

    const-string v2, "landing"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p3, v1}, Lcom/alipay/sdk/app/OpenAuthTask;->a(Lcom/alipay/sdk/app/OpenAuthTask$BizType;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/alipay/sdk/app/OpenAuthTask;->e:Landroid/app/Activity;

    const-class v3, Lcom/alipay/sdk/app/H5OpenAuthActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "https://render.alipay.com/p/s/i?scheme=%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "url"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1, v1}, Lcom/alipay/sdk/sys/a$a;->a(Lcom/alipay/sdk/sys/a;Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/alipay/sdk/app/OpenAuthTask;->e:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x0

    goto/16 :goto_16

    :cond_d2
    iget-object v6, p0, Lcom/alipay/sdk/app/OpenAuthTask;->g:Landroid/os/Handler;

    new-instance v0, Lcom/alipay/sdk/app/OpenAuthTask$a;

    const/16 v2, 0xfa1

    const-string v3, "\u652f\u4ed8\u5b9d\u672a\u5b89\u88c5\u6216\u7b7e\u540d\u9519\u8bef"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/alipay/sdk/app/OpenAuthTask$a;-><init>(Lcom/alipay/sdk/app/OpenAuthTask;ILjava/lang/String;Landroid/os/Bundle;Lcom/alipay/sdk/app/e;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    goto/16 :goto_16

    :cond_e6
    :try_start_e6
    invoke-static {p1}, Lcom/alipay/sdk/sys/a;->a(Lcom/alipay/sdk/sys/a;)Ljava/util/HashMap;

    move-result-object v0

    const-string v5, "ts_scheme"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string v0, "mqpLoc"

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_105
    .catch Ljava/lang/Throwable; {:try_start_e6 .. :try_end_105} :catch_131

    :goto_105
    :try_start_105
    invoke-direct {p0, p3, v1}, Lcom/alipay/sdk/app/OpenAuthTask;->a(Lcom/alipay/sdk/app/OpenAuthTask$BizType;Ljava/util/Map;)Ljava/lang/String;
    :try_end_108
    .catch Ljava/lang/Throwable; {:try_start_105 .. :try_end_108} :catch_13a

    move-result-object v6

    sget-object v0, Lcom/alipay/sdk/app/OpenAuthTask;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/alipay/sdk/app/OpenAuthTask;->f:Lcom/alipay/sdk/app/OpenAuthTask$Callback;

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    move-object v1, p0

    move-object v5, p3

    :try_start_113
    invoke-direct/range {v1 .. v6}, Lcom/alipay/sdk/app/OpenAuthTask;->a(JLjava/lang/String;Lcom/alipay/sdk/app/OpenAuthTask$BizType;Ljava/lang/String;)Ljava/lang/String;
    :try_end_116
    .catch Lorg/json/JSONException; {:try_start_113 .. :try_end_116} :catch_14f

    move-result-object v0

    :goto_117
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_158

    iget-object v6, p0, Lcom/alipay/sdk/app/OpenAuthTask;->g:Landroid/os/Handler;

    new-instance v0, Lcom/alipay/sdk/app/OpenAuthTask$a;

    const/16 v2, 0xfa0

    const-string v3, "\u53c2\u6570\u9519\u8bef"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/alipay/sdk/app/OpenAuthTask$a;-><init>(Lcom/alipay/sdk/app/OpenAuthTask;ILjava/lang/String;Landroid/os/Bundle;Lcom/alipay/sdk/app/e;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    goto/16 :goto_16

    :catch_131
    move-exception v0

    :try_start_132
    const-string v5, "biz"

    const-string v6, "OpenAuthLocEx"

    invoke-static {p1, v5, v6, v0}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_139
    .catch Ljava/lang/Throwable; {:try_start_132 .. :try_end_139} :catch_13a

    goto :goto_105

    :catch_13a
    move-exception v0

    iget-object v6, p0, Lcom/alipay/sdk/app/OpenAuthTask;->g:Landroid/os/Handler;

    new-instance v0, Lcom/alipay/sdk/app/OpenAuthTask$a;

    const/16 v2, 0xfa0

    const-string v3, "\u4e1a\u52a1\u53c2\u6570\u9519\u8bef"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/alipay/sdk/app/OpenAuthTask$a;-><init>(Lcom/alipay/sdk/app/OpenAuthTask;ILjava/lang/String;Landroid/os/Bundle;Lcom/alipay/sdk/app/e;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    goto/16 :goto_16

    :catch_14f
    move-exception v1

    const-string v5, "biz"

    const-string v6, "JSONEx"

    invoke-static {p1, v5, v6, v1}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_117

    :cond_158
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v5, "alipays"

    invoke-virtual {v1, v5}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v5, "platformapi"

    invoke-virtual {v1, v5}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v5, "startapp"

    invoke-virtual {v1, v5}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v5, "appId"

    const-string v6, "20001129"

    invoke-virtual {v1, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v5, "payload"

    invoke-virtual {v1, v5, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v1, v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, v7, Lcom/alipay/sdk/util/n$a;->a:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_194
    const-string v0, "biz"

    const-string v5, "PgOpenStarting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v5, v2}, Lcom/alipay/sdk/app/statistic/a;->b(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v4}, Lcom/alipay/sdk/sys/a$a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/sdk/app/OpenAuthTask;->e:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1b6
    .catch Ljava/lang/Throwable; {:try_start_194 .. :try_end_1b6} :catch_1b9

    :goto_1b6
    const/4 v0, 0x0

    goto/16 :goto_16

    :catch_1b9
    move-exception v0

    const-string v1, "biz"

    const-string v2, "StartWalletEx"

    invoke-static {p1, v1, v2, v0}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1b6
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lcom/alipay/sdk/app/OpenAuthTask$BizType;Ljava/util/Map;Lcom/alipay/sdk/app/OpenAuthTask$Callback;Z)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alipay/sdk/app/OpenAuthTask$BizType;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alipay/sdk/app/OpenAuthTask$Callback;",
            "Z)V"
        }
    .end annotation

    new-instance v1, Lcom/alipay/sdk/sys/a;

    iget-object v0, p0, Lcom/alipay/sdk/app/OpenAuthTask;->e:Landroid/app/Activity;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "oa-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lcom/alipay/sdk/sys/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1e
    iput-object p4, p0, Lcom/alipay/sdk/app/OpenAuthTask;->f:Lcom/alipay/sdk/app/OpenAuthTask$Callback;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/alipay/sdk/app/OpenAuthTask;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Lcom/alipay/sdk/app/OpenAuthTask$BizType;Ljava/util/Map;Z)Z
    :try_end_28
    .catchall {:try_start_1e .. :try_end_28} :catchall_35

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/alipay/sdk/app/OpenAuthTask;->e:Landroid/app/Activity;

    const-string v2, ""

    iget-object v3, v1, Lcom/alipay/sdk/sys/a;->p:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/sdk/app/statistic/a;->b(Landroid/content/Context;Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;)V

    :cond_34
    return-void

    :catchall_35
    move-exception v0

    throw v0
.end method
