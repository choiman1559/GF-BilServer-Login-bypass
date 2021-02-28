.class public Lcom/alipay/sdk/protocol/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/alipay/sdk/protocol/a;

.field private b:Ljava/lang/String;

.field private c:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/sdk/protocol/b;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/alipay/sdk/protocol/a;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/sdk/protocol/b;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/sdk/protocol/b;->a:Lcom/alipay/sdk/protocol/a;

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/sdk/protocol/b;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_9

    move-object v0, v1

    :goto_8
    return-object v0

    :cond_9
    const-string v0, "name"

    const-string v2, ""

    invoke-virtual {p0, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/sdk/protocol/b;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    :goto_16
    array-length v3, v2

    if-ge v0, v3, :cond_39

    aget-object v3, v2, v0

    invoke-static {v3}, Lcom/alipay/sdk/protocol/a;->a(Ljava/lang/String;)Lcom/alipay/sdk/protocol/a;

    move-result-object v3

    sget-object v4, Lcom/alipay/sdk/protocol/a;->a:Lcom/alipay/sdk/protocol/a;

    if-ne v3, v4, :cond_26

    :goto_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_26
    new-instance v4, Lcom/alipay/sdk/protocol/b;

    aget-object v5, v2, v0

    invoke-direct {v4, v5, v3}, Lcom/alipay/sdk/protocol/b;-><init>(Ljava/lang/String;Lcom/alipay/sdk/protocol/a;)V

    aget-object v3, v2, v0

    invoke-static {v3}, Lcom/alipay/sdk/protocol/b;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/alipay/sdk/protocol/b;->c:[Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23

    :cond_39
    move-object v0, v1

    goto :goto_8
.end method

.method public static a(Lcom/alipay/sdk/protocol/b;)V
    .registers 6

    const/4 v4, 0x2

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/alipay/sdk/protocol/b;->c()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    const-string v1, "tid"

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-static {}, Lcom/alipay/sdk/sys/b;->a()Lcom/alipay/sdk/sys/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/sdk/sys/b;->b()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/sdk/tid/b;->a(Landroid/content/Context;)Lcom/alipay/sdk/tid/b;

    move-result-object v1

    aget-object v2, v0, v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    aget-object v2, v0, v4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    aget-object v2, v0, v3

    aget-object v0, v0, v4

    invoke-virtual {v1, v2, v0}, Lcom/alipay/sdk/tid/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a
.end method

.method private static a(Ljava/lang/String;)[Ljava/lang/String;
    .registers 9

    const/4 v1, 0x0

    const/4 v4, -0x1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/16 v3, 0x29

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-eq v0, v4, :cond_19

    if-eq v3, v4, :cond_19

    if-gt v3, v0, :cond_1b

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    return-object v0

    :cond_1b
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v3, "\' *, *\'"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v0, v1

    :goto_29
    if-ge v0, v4, :cond_47

    aget-object v5, v3, v0

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\'"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "\""

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    :cond_47
    new-array v0, v1, [Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_1a
.end method

.method private static b(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :cond_d
    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/alipay/sdk/protocol/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lcom/alipay/sdk/protocol/a;
    .registers 2

    iget-object v0, p0, Lcom/alipay/sdk/protocol/b;->a:Lcom/alipay/sdk/protocol/a;

    return-object v0
.end method

.method public c()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/alipay/sdk/protocol/b;->c:[Ljava/lang/String;

    return-object v0
.end method
