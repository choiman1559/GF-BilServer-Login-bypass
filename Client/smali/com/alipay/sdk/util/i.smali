.class public Lcom/alipay/sdk/util/i;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "pref_trade_token"

.field public static final b:Ljava/lang/String; = ";"

.field public static final c:Ljava/lang/String; = "result={"

.field public static final d:Ljava/lang/String; = "}"

.field public static final e:Ljava/lang/String; = "trade_token=\""

.field public static final f:Ljava/lang/String; = "\""

.field public static final g:Ljava/lang/String; = "trade_token="


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/alipay/sdk/sys/a;Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    const-string v0, "pref_trade_token"

    const-string v1, ""

    invoke-static {p0, p1, v0, v1}, Lcom/alipay/sdk/util/j;->b(Lcom/alipay/sdk/sys/a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mspl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get trade token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_8
    return-object v0

    :cond_9
    const-string v1, ";"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move v1, v2

    :goto_10
    array-length v3, v4

    if-ge v1, v3, :cond_8

    aget-object v3, v4, v1

    const-string v5, "result={"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_77

    aget-object v3, v4, v1

    const-string v5, "}"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_77

    aget-object v3, v4, v1

    const-string v5, "result={"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    aget-object v6, v4, v1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const-string v7, "}"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v5, "&"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move v3, v2

    :goto_47
    array-length v6, v5

    if-ge v3, v6, :cond_77

    aget-object v6, v5, v3

    const-string v7, "trade_token=\""

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7a

    aget-object v6, v5, v3

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7a

    aget-object v0, v5, v3

    const-string v6, "trade_token=\""

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    aget-object v3, v5, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const-string v5, "\""

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v3, v5

    invoke-virtual {v0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_77
    :goto_77
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_7a
    aget-object v6, v5, v3

    const-string v7, "trade_token="

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_91

    aget-object v0, v5, v3

    const-string v3, "trade_token="

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_77

    :cond_91
    add-int/lit8 v3, v3, 0x1

    goto :goto_47
.end method

.method public static a(Lcom/alipay/sdk/sys/a;Landroid/content/Context;Ljava/lang/String;)V
    .registers 7

    :try_start_0
    invoke-static {p2}, Lcom/alipay/sdk/util/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mspl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "trade token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_27

    const-string v1, "pref_trade_token"

    invoke-static {p0, p1, v1, v0}, Lcom/alipay/sdk/util/j;->a(Lcom/alipay/sdk/sys/a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_27} :catch_28

    :cond_27
    :goto_27
    return-void

    :catch_28
    move-exception v0

    const-string v1, "biz"

    const-string v2, "SaveTradeTokenError"

    invoke-static {p0, v1, v2, v0}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V

    goto :goto_27
.end method
