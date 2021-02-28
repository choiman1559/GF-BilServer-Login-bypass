.class Lcom/tencent/tp/e;
.super Ljava/lang/Object;


# static fields
.field private static a:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/tencent/tp/e;->a:J

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 2

    const-string v0, "i_beg"

    invoke-static {v0}, Lcom/tencent/tp/r;->a(Ljava/lang/String;)V

    :try_start_5
    invoke-static {p0}, Lcom/tencent/tp/e;->b(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/tencent/tp/e;->a(Landroid/content/Context;Z)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_c} :catch_12

    :goto_c
    const-string v0, "i_end"

    invoke-static {v0}, Lcom/tencent/tp/r;->a(Ljava/lang/String;)V

    return-void

    :catch_12
    move-exception v0

    goto :goto_c
.end method

.method private static a(Landroid/content/Context;Z)V
    .registers 7

    invoke-static {}, Lcom/tencent/tp/l;->a()Lcom/tencent/tp/l;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/tp/l;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_b

    :cond_a
    return-void

    :cond_b
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_f

    if-eqz p1, :cond_27

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-gtz v2, :cond_f

    :cond_27
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v2, Lcom/tencent/tp/c;

    invoke-direct {v2, p0, v0}, Lcom/tencent/tp/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/tencent/tp/c;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moduls="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tp/r;->a(Ljava/lang/String;)V

    goto :goto_f
.end method

.method private static b(Landroid/content/Context;)V
    .registers 9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    sget-wide v2, Lcom/tencent/tp/e;->a:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xb4

    cmp-long v2, v2, v4

    if-gez v2, :cond_12

    :cond_11
    return-void

    :cond_12
    sput-wide v0, Lcom/tencent/tp/e;->a:J

    invoke-static {}, Lcom/tencent/tp/l;->a()Lcom/tencent/tp/l;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/tp/l;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_11

    const-string v1, "vkf_ivhz="

    invoke-static {v1}, Lcom/tencent/tp/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "|vkf_kvoc="

    invoke-static {v2}, Lcom/tencent/tp/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "|dn_ntn="

    invoke-static {v3}, Lcom/tencent/tp/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "|dn_zso="

    invoke-static {v4}, Lcom/tencent/tp/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3a
    :goto_3a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_3a

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-lez v7, :cond_85

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_71
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-nez v0, :cond_8b

    const-string v0, "1"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_7d
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tp/r;->a(Ljava/lang/String;)V

    goto :goto_3a

    :cond_85
    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_71

    :cond_8b
    const-string v0, "0"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7d
.end method
