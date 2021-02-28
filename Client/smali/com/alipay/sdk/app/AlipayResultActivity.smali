.class public Lcom/alipay/sdk/app/AlipayResultActivity;
.super Landroid/app/Activity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/sdk/app/AlipayResultActivity$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/sdk/app/AlipayResultActivity$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alipay/sdk/app/AlipayResultActivity;->a:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 7

    sget-object v0, Lcom/alipay/sdk/app/AlipayResultActivity;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/sdk/app/AlipayResultActivity$a;

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/alipay/sdk/app/AlipayResultActivity;->finish()V

    :goto_d
    return-void

    :cond_e
    :try_start_e
    const-string v1, "endCode"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "memo"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "result"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/sdk/app/AlipayResultActivity$a;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_23
    .catchall {:try_start_e .. :try_end_23} :catchall_27

    invoke-virtual {p0}, Lcom/alipay/sdk/app/AlipayResultActivity;->finish()V

    goto :goto_d

    :catchall_27
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/sdk/app/AlipayResultActivity;->finish()V

    throw v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 12

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    :try_start_3
    invoke-virtual {p0}, Lcom/alipay/sdk/app/AlipayResultActivity;->getIntent()Landroid/content/Intent;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_6} :catch_52

    move-result-object v0

    const/4 v1, 0x0

    :try_start_8
    const-string v2, "session"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "result"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    const-string v3, "scene"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lcom/alipay/sdk/sys/a$a;->a(Ljava/lang/String;)Lcom/alipay/sdk/sys/a;

    move-result-object v1

    if-nez v1, :cond_24

    invoke-virtual {p0}, Lcom/alipay/sdk/app/AlipayResultActivity;->finish()V

    :goto_23
    return-void

    :cond_24
    const-string v5, "biz"

    const-string v6, "BSPSession"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "|"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v5, v6, v7}, Lcom/alipay/sdk/app/statistic/a;->b(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_46} :catch_57

    :try_start_46
    const-string v5, "mqpSchemePay"

    invoke-static {v5, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6a

    invoke-direct {p0, v2, v4}, Lcom/alipay/sdk/app/AlipayResultActivity;->a(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_51} :catch_52

    goto :goto_23

    :catch_52
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/sdk/app/AlipayResultActivity;->finish()V

    goto :goto_23

    :catch_57
    move-exception v0

    :try_start_58
    const-string v2, "biz"

    const-string v3, "BSPSerError"

    invoke-static {v1, v2, v3, v0}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v2, "biz"

    const-string v3, "ParseBundleSerializableError"

    invoke-static {v1, v2, v3, v0}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/alipay/sdk/app/AlipayResultActivity;->finish()V

    goto :goto_23

    :cond_6a
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_72

    if-nez v4, :cond_d1

    :cond_72
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;
    :try_end_75
    .catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_75} :catch_52

    move-result-object v3

    if-eqz v3, :cond_d1

    :try_start_78
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/String;

    const/4 v5, 0x2

    invoke-static {v0, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    const-string v5, "UTF-8"

    invoke-direct {v3, v0, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "result"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v3, "session"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "biz"

    const-string v3, "BSPUriSession"

    invoke-static {v1, v0, v3, v2}, Lcom/alipay/sdk/app/statistic/a;->b(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V
    :try_end_a9
    .catch Ljava/lang/Throwable; {:try_start_78 .. :try_end_a9} :catch_124

    :try_start_a9
    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    :goto_ad
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v0, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c0
    .catch Ljava/lang/Throwable; {:try_start_a9 .. :try_end_c0} :catch_c1

    goto :goto_ad

    :catch_c1
    move-exception v0

    :goto_c2
    :try_start_c2
    const-string v4, "biz"

    const-string v5, "BSPResEx"

    invoke-static {v1, v4, v5, v0}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v4, "biz"

    const-string v5, "ParseSchemeQueryError"

    invoke-static {v1, v4, v5, v0}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v4, v3

    :cond_d1
    :goto_d1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d9

    if-nez v4, :cond_e7

    :cond_d9
    const-string v0, ""

    iget-object v2, v1, Lcom/alipay/sdk/sys/a;->p:Ljava/lang/String;

    invoke-static {p0, v1, v0, v2}, Lcom/alipay/sdk/app/statistic/a;->b(Landroid/content/Context;Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/sdk/app/AlipayResultActivity;->finish()V
    :try_end_e3
    .catch Ljava/lang/Throwable; {:try_start_c2 .. :try_end_e3} :catch_52

    goto/16 :goto_23

    :cond_e5
    move-object v4, v3

    goto :goto_d1

    :cond_e7
    :try_start_e7
    const-string v0, "biz"

    const-string v3, "PgReturn"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v0, v3, v5}, Lcom/alipay/sdk/app/statistic/a;->b(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x2328

    const-string v3, "OK"

    invoke-static {v2, v0, v3, v4}, Lcom/alipay/sdk/app/OpenAuthTask;->a(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_10c
    .catchall {:try_start_e7 .. :try_end_10c} :catchall_118

    :try_start_10c
    const-string v0, ""

    iget-object v2, v1, Lcom/alipay/sdk/sys/a;->p:Ljava/lang/String;

    invoke-static {p0, v1, v0, v2}, Lcom/alipay/sdk/app/statistic/a;->b(Landroid/content/Context;Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/sdk/app/AlipayResultActivity;->finish()V

    goto/16 :goto_23

    :catchall_118
    move-exception v0

    const-string v2, ""

    iget-object v3, v1, Lcom/alipay/sdk/sys/a;->p:Ljava/lang/String;

    invoke-static {p0, v1, v2, v3}, Lcom/alipay/sdk/app/statistic/a;->b(Landroid/content/Context;Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/sdk/app/AlipayResultActivity;->finish()V

    throw v0
    :try_end_124
    .catch Ljava/lang/Throwable; {:try_start_10c .. :try_end_124} :catch_52

    :catch_124
    move-exception v0

    move-object v3, v4

    goto :goto_c2
.end method
