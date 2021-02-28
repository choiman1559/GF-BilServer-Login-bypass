.class public Lcom/android/data/sdk/net/a;
.super Ljava/lang/Object;

# interfaces
.implements Lbsgamesdkhttp/s;


# instance fields
.field private a:Lcom/android/data/sdk/PreDefined;


# direct methods
.method public constructor <init>(Lcom/android/data/sdk/PreDefined;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/data/sdk/net/a;->a:Lcom/android/data/sdk/PreDefined;

    return-void
.end method

.method private a(Ljava/lang/String;Lbsgamesdkhttp/w;)Lbsgamesdkhttp/w;
    .registers 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_34

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_34

    invoke-virtual {p2}, Lbsgamesdkhttp/w;->a()Lbsgamesdkhttp/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lbsgamesdkhttp/HttpUrl;->n()Lbsgamesdkhttp/HttpUrl$Builder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbsgamesdkhttp/HttpUrl$Builder;->a(Ljava/lang/String;)Lbsgamesdkhttp/HttpUrl$Builder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lbsgamesdkhttp/HttpUrl$Builder;->d(Ljava/lang/String;)Lbsgamesdkhttp/HttpUrl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lbsgamesdkhttp/HttpUrl$Builder;->c()Lbsgamesdkhttp/HttpUrl;

    move-result-object v0

    invoke-virtual {p2}, Lbsgamesdkhttp/w;->e()Lbsgamesdkhttp/w$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbsgamesdkhttp/w$a;->a(Lbsgamesdkhttp/HttpUrl;)Lbsgamesdkhttp/w$a;

    move-result-object v0

    invoke-virtual {v0}, Lbsgamesdkhttp/w$a;->a()Lbsgamesdkhttp/w;

    move-result-object p2

    :cond_34
    return-object p2
.end method

.method private b(Lbsgamesdkhttp/s$a;)Lbsgamesdkhttp/y;
    .registers 12

    invoke-interface {p1}, Lbsgamesdkhttp/s$a;->a()Lbsgamesdkhttp/w;

    move-result-object v3

    invoke-static {}, Lcom/android/data/sdk/api/c;->a()Lcom/android/data/sdk/api/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/data/sdk/api/c;->c()Lcom/android/data/sdk/domain/model/SchemaHostList;

    move-result-object v4

    new-instance v5, Lcom/android/data/sdk/net/e;

    iget-object v0, p0, Lcom/android/data/sdk/net/a;->a:Lcom/android/data/sdk/PreDefined;

    invoke-direct {v5, v0}, Lcom/android/data/sdk/net/e;-><init>(Lcom/android/data/sdk/PreDefined;)V

    :try_start_13
    invoke-virtual {v3}, Lbsgamesdkhttp/w;->a()Lbsgamesdkhttp/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lbsgamesdkhttp/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/app/time/conf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-virtual {v4}, Lcom/android/data/sdk/domain/model/SchemaHostList;->getConfigSchemaHostList()Ljava/util/ArrayList;
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_26} :catch_72

    move-result-object v0

    :goto_27
    move-object v1, v0

    :goto_28
    const/4 v2, 0x0

    :goto_29
    :try_start_29
    invoke-interface {p1, v3}, Lbsgamesdkhttp/s$a;->a(Lbsgamesdkhttp/w;)Lbsgamesdkhttp/y;

    move-result-object v0

    invoke-virtual {v0}, Lbsgamesdkhttp/y;->b()I

    move-result v6

    const/16 v7, 0xc8

    if-eq v6, v7, :cond_7a

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v2, v6, :cond_57

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v5, v2, v1}, Lcom/android/data/sdk/net/e;->a(ILjava/util/List;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lcom/android/data/sdk/net/a;->a(Ljava/lang/String;Lbsgamesdkhttp/w;)Lbsgamesdkhttp/w;
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_4c} :catch_aa

    move-result-object v0

    move v9, v2

    move-object v2, v0

    move v0, v9

    :goto_50
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_d4

    const/4 v0, 0x0

    :cond_57
    :goto_57
    return-object v0

    :cond_58
    :try_start_58
    invoke-virtual {v3}, Lbsgamesdkhttp/w;->a()Lbsgamesdkhttp/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lbsgamesdkhttp/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/api/realtime_log/data_report_upload"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6d

    invoke-virtual {v4}, Lcom/android/data/sdk/domain/model/SchemaHostList;->getSchemaFreeHostList()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_27

    :cond_6d
    invoke-virtual {v4}, Lcom/android/data/sdk/domain/model/SchemaHostList;->getSchemaHostList()Ljava/util/ArrayList;
    :try_end_70
    .catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_70} :catch_72

    move-result-object v0

    goto :goto_27

    :catch_72
    move-exception v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    goto :goto_28

    :cond_7a
    :try_start_7a
    invoke-virtual {v3}, Lbsgamesdkhttp/w;->a()Lbsgamesdkhttp/HttpUrl;

    move-result-object v6

    invoke-virtual {v3}, Lbsgamesdkhttp/w;->a()Lbsgamesdkhttp/HttpUrl;

    move-result-object v7

    invoke-virtual {v7}, Lbsgamesdkhttp/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "/app/time/conf"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_57

    invoke-virtual {v3}, Lbsgamesdkhttp/w;->a()Lbsgamesdkhttp/HttpUrl;

    move-result-object v7

    invoke-virtual {v7}, Lbsgamesdkhttp/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "/api/realtime_log/data_report_upload"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_c7

    invoke-virtual {v6}, Lbsgamesdkhttp/HttpUrl;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lbsgamesdkhttp/HttpUrl;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v7, v6}, Lcom/android/data/sdk/domain/model/SchemaHostList;->sortSchemaFreeHosts(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a9
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_a9} :catch_aa

    goto :goto_57

    :catch_aa
    move-exception v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v2, v6, :cond_d3

    add-int/lit8 v0, v2, 0x1

    invoke-virtual {v5, v0, v1}, Lcom/android/data/sdk/net/e;->a(ILjava/util/List;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lcom/android/data/sdk/net/a;->a(Ljava/lang/String;Lbsgamesdkhttp/w;)Lbsgamesdkhttp/w;

    move-result-object v0

    move v9, v2

    move-object v2, v0

    move v0, v9

    goto :goto_50

    :cond_c7
    :try_start_c7
    invoke-virtual {v6}, Lbsgamesdkhttp/HttpUrl;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lbsgamesdkhttp/HttpUrl;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v7, v6}, Lcom/android/data/sdk/domain/model/SchemaHostList;->sortSchemaHosts(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d2
    .catch Ljava/io/IOException; {:try_start_c7 .. :try_end_d2} :catch_aa

    goto :goto_57

    :cond_d3
    throw v0

    :cond_d4
    move-object v3, v2

    move v2, v0

    goto/16 :goto_29
.end method


# virtual methods
.method public a(Lbsgamesdkhttp/s$a;)Lbsgamesdkhttp/y;
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/data/sdk/net/a;->b(Lbsgamesdkhttp/s$a;)Lbsgamesdkhttp/y;

    move-result-object v0

    return-object v0
.end method
