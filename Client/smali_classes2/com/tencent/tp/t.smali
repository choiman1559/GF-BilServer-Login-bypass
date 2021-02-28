.class public final Lcom/tencent/tp/t;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/util/Map;

.field b:Landroid/content/Context;

.field c:Ljava/lang/String;

.field d:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/tp/t;->a:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tp/t;->b:Landroid/content/Context;

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 3

    :try_start_0
    invoke-static {p1}, Lcom/tencent/tp/r;->c(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    goto :goto_3
.end method


# virtual methods
.method public a(Landroid/content/Context;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    iget-object v1, p0, Lcom/tencent/tp/t;->b:Landroid/content/Context;

    if-nez v1, :cond_3

    iput-object p1, p0, Lcom/tencent/tp/t;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_21

    :try_start_10
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/tp/t;->c:Ljava/lang/String;

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v0, p0, Lcom/tencent/tp/t;->d:I
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_21} :catch_23

    :cond_21
    :goto_21
    const/4 v0, 0x1

    goto :goto_3

    :catch_23
    move-exception v0

    goto :goto_21
.end method

.method public a(Ljava/lang/String;)Z
    .registers 15

    const/16 v12, 0x3f

    const-wide/16 v10, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/tencent/tp/t;->b:Landroid/content/Context;

    if-nez v0, :cond_b

    :cond_a
    :goto_a
    return v3

    :cond_b
    iget-object v0, p0, Lcom/tencent/tp/t;->a:Ljava/util/Map;

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/tencent/tp/l;->a()Lcom/tencent/tp/l;

    move-result-object v5

    const/16 v0, 0x10

    invoke-static {p1, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v6

    const-wide/16 v0, 0x2

    and-long/2addr v0, v6

    cmp-long v0, v0, v10

    if-eqz v0, :cond_138

    move v4, v2

    :goto_21
    const-wide/16 v0, 0x4

    and-long/2addr v0, v6

    cmp-long v0, v0, v10

    if-eqz v0, :cond_13b

    move v1, v2

    :goto_29
    const-wide/16 v8, 0x8

    and-long/2addr v6, v8

    cmp-long v0, v6, v10

    if-eqz v0, :cond_13e

    move v0, v2

    :goto_31
    if-nez v4, :cond_33

    :cond_33
    if-nez v1, :cond_4c

    invoke-static {}, Lcom/tencent/tp/s;->a()Z

    move-result v1

    if-eqz v1, :cond_4c

    iget-object v1, p0, Lcom/tencent/tp/t;->a:Ljava/util/Map;

    const-string v4, "Wmviy"

    invoke-static {v4}, Lcom/tencent/tp/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/tencent/tp/t;->b:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/tencent/tp/l;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4c
    if-nez v0, :cond_5f

    iget-object v0, p0, Lcom/tencent/tp/t;->a:Ljava/util/Map;

    const-string v1, "KvxfvbzIvhz"

    invoke-static {v1}, Lcom/tencent/tp/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/tencent/tp/t;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5f
    iget-object v0, p0, Lcom/tencent/tp/t;->a:Ljava/util/Map;

    const-string v1, "VkkIvhz"

    invoke-static {v1}, Lcom/tencent/tp/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/tencent/tp/t;->b:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/tp/s;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/tencent/tp/s;->a()Z

    move-result v0

    if-eqz v0, :cond_cd

    iget-object v0, p0, Lcom/tencent/tp/t;->a:Ljava/util/Map;

    const-string v1, "XkpVwd"

    invoke-static {v1}, Lcom/tencent/tp/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/tencent/tp/s;->j()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/tp/t;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/tp/s;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_93

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_99

    :cond_93
    const-string v0, "Pifijri"

    invoke-static {v0}, Lcom/tencent/tp/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_99
    iget-object v1, p0, Lcom/tencent/tp/t;->a:Ljava/util/Map;

    const-string v4, "XkpHjyzg"

    invoke-static {v4}, Lcom/tencent/tp/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "xkp_hjyzg:"

    invoke-static {v4}, Lcom/tencent/tp/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tp/r;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tp/t;->a:Ljava/util/Map;

    const-string v1, "Kgvoajmh"

    invoke-static {v1}, Lcom/tencent/tp/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/tencent/tp/s;->g()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_cd
    iget-object v0, p0, Lcom/tencent/tp/t;->a:Ljava/util/Map;

    const-string v1, "Gvibpvbz"

    invoke-static {v1}, Lcom/tencent/tp/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/tencent/tp/s;->f()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/tp/t;->a:Ljava/util/Map;

    const-string v1, "NdhpgvojmIvhz"

    invoke-static {v1}, Lcom/tencent/tp/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/tencent/tp/t;->b:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/tp/s;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/tp/t;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_f7
    :goto_f7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_141

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_f7

    iget-object v1, p0, Lcom/tencent/tp/t;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_113

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_113
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v12, :cond_134

    invoke-virtual {v0, v3, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_134
    invoke-direct {p0, v0}, Lcom/tencent/tp/t;->b(Ljava/lang/String;)V

    goto :goto_f7

    :cond_138
    move v4, v3

    goto/16 :goto_21

    :cond_13b
    move v1, v3

    goto/16 :goto_29

    :cond_13e
    move v0, v3

    goto/16 :goto_31

    :cond_141
    move v3, v2

    goto/16 :goto_a
.end method
