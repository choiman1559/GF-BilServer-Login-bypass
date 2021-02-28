.class public Lcom/android/data/sdk/net/d;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Lcom/android/data/sdk/domain/model/HttpMethod;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lbsgamesdkhttp/w;
    .registers 9

    iget-object v0, p0, Lcom/android/data/sdk/net/d;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    new-instance v2, Lbsgamesdkhttp/w$a;

    invoke-direct {v2}, Lbsgamesdkhttp/w$a;-><init>()V

    iget-object v0, p0, Lcom/android/data/sdk/net/d;->e:Ljava/util/Map;

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/android/data/sdk/net/d;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lbsgamesdkhttp/w$a;->b(Ljava/lang/String;Ljava/lang/String;)Lbsgamesdkhttp/w$a;

    goto :goto_1d

    :cond_39
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/data/sdk/net/d;->a:Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "UTF-8"

    iget-object v0, p0, Lcom/android/data/sdk/net/d;->d:Ljava/util/Map;

    if-eqz v0, :cond_af

    iget-object v0, p0, Lcom/android/data/sdk/net/d;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_af

    iget-object v0, p0, Lcom/android/data/sdk/net/d;->c:Lcom/android/data/sdk/domain/model/HttpMethod;

    sget-object v1, Lcom/android/data/sdk/domain/model/HttpMethod;->GET:Lcom/android/data/sdk/domain/model/HttpMethod;

    if-ne v0, v1, :cond_bc

    iget-object v0, p0, Lcom/android/data/sdk/net/d;->a:Ljava/lang/String;

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_bc

    const/16 v0, 0x3f

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/data/sdk/net/d;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v6, 0x3d

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/data/sdk/net/d;->b:Z

    if-eqz v1, :cond_98

    :try_start_94
    invoke-static {v0, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_97} :catch_a1

    move-result-object v0

    :cond_98
    :goto_98
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6d

    :catch_a1
    move-exception v1

    invoke-static {v1}, Lcom/android/data/sdk/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_98

    :cond_a6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_af
    :goto_af
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lbsgamesdkhttp/w$a;->a(Ljava/lang/String;)Lbsgamesdkhttp/w$a;

    invoke-virtual {v2}, Lbsgamesdkhttp/w$a;->a()Lbsgamesdkhttp/w;

    move-result-object v0

    goto/16 :goto_9

    :cond_bc
    iget-object v0, p0, Lcom/android/data/sdk/net/d;->c:Lcom/android/data/sdk/domain/model/HttpMethod;

    sget-object v1, Lcom/android/data/sdk/domain/model/HttpMethod;->POST:Lcom/android/data/sdk/domain/model/HttpMethod;

    if-ne v0, v1, :cond_af

    new-instance v5, Lbsgamesdkhttp/p$a;

    invoke-direct {v5}, Lbsgamesdkhttp/p$a;-><init>()V

    iget-object v0, p0, Lcom/android/data/sdk/net/d;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_d1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_103

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iget-boolean v0, p0, Lcom/android/data/sdk/net/d;->b:Z

    if-eqz v0, :cond_ff

    :try_start_ef
    invoke-static {v7, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Lbsgamesdkhttp/p$a;->b(Ljava/lang/String;Ljava/lang/String;)Lbsgamesdkhttp/p$a;
    :try_end_f6
    .catch Ljava/lang/Exception; {:try_start_ef .. :try_end_f6} :catch_f7

    goto :goto_d1

    :catch_f7
    move-exception v0

    invoke-static {v0}, Lcom/android/data/sdk/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    invoke-virtual {v5, v1, v7}, Lbsgamesdkhttp/p$a;->a(Ljava/lang/String;Ljava/lang/String;)Lbsgamesdkhttp/p$a;

    goto :goto_d1

    :cond_ff
    invoke-virtual {v5, v1, v7}, Lbsgamesdkhttp/p$a;->a(Ljava/lang/String;Ljava/lang/String;)Lbsgamesdkhttp/p$a;

    goto :goto_d1

    :cond_103
    invoke-virtual {v5}, Lbsgamesdkhttp/p$a;->a()Lbsgamesdkhttp/p;

    move-result-object v0

    invoke-virtual {v2, v0}, Lbsgamesdkhttp/w$a;->a(Lbsgamesdkhttp/x;)Lbsgamesdkhttp/w$a;

    goto :goto_af
.end method

.method public a(Lcom/android/data/sdk/domain/model/HttpMethod;)Lcom/android/data/sdk/net/d;
    .registers 2

    iput-object p1, p0, Lcom/android/data/sdk/net/d;->c:Lcom/android/data/sdk/domain/model/HttpMethod;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/android/data/sdk/net/d;
    .registers 2

    iput-object p1, p0, Lcom/android/data/sdk/net/d;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/util/Map;)Lcom/android/data/sdk/net/d;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/android/data/sdk/net/d;"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/data/sdk/net/d;->d:Ljava/util/Map;

    return-object p0
.end method
