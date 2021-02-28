.class public Lcom/bilibili/deviceutils/utils/Va;
.super Ljava/lang/Object;


# static fields
.field private static EXEC:[Ljava/lang/String; = null

.field private static final PER_USER_RANGE:I = 0x186a0

.field private static final PS:Ljava/lang/String; = "ps"

.field private static VA_PACKAGES:[Ljava/lang/String; = null

.field public static final VIRTUAL:Ljava/lang/String; = "virtual"

.field public static final VIRTUAL_PROC:Ljava/lang/String; = "virtual_proc"


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "ps"

    aput-object v1, v0, v2

    const-string v1, "sh"

    aput-object v1, v0, v3

    sput-object v0, Lcom/bilibili/deviceutils/utils/Va;->EXEC:[Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.bly.dkplat"

    aput-object v1, v0, v2

    const-string v1, "com.by.chaos"

    aput-object v1, v0, v3

    const-string v1, "com.lbe.parallel"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "com.excelliance.dualaid"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.lody.virtual"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.qihoo.magic"

    aput-object v2, v0, v1

    sput-object v0, Lcom/bilibili/deviceutils/utils/Va;->VA_PACKAGES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkVirtual(Landroid/content/Context;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/bilibili/deviceutils/utils/Va;->path(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p0}, Lcom/bilibili/deviceutils/utils/Va;->packages(Landroid/content/Context;)Z

    move-result v1

    invoke-static {p0}, Lcom/bilibili/deviceutils/utils/Va;->uid(Landroid/content/Context;)Landroid/util/Pair;

    move-result-object v2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "virtual"

    if-nez v0, :cond_21

    if-nez v1, :cond_21

    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_38

    :cond_21
    const-string v0, "1"

    :goto_23
    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "virtual_proc"

    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v3

    :cond_38
    const-string v0, "0"

    goto :goto_23
.end method

.method private static packages(Landroid/content/Context;)Z
    .registers 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_35

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v3

    :goto_16
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_27} :catch_34

    move-result v0

    if-eqz v0, :cond_37

    add-int/lit8 v0, v1, 0x1

    :goto_2c
    move v1, v0

    goto :goto_16

    :cond_2e
    if-le v1, v2, :cond_32

    move v0, v2

    :goto_31
    return v0

    :cond_32
    move v0, v3

    goto :goto_31

    :catch_34
    move-exception v0

    :cond_35
    move v0, v3

    goto :goto_31

    :cond_37
    move v0, v1

    goto :goto_2c
.end method

.method private static path(Landroid/content/Context;)Z
    .registers 7

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/bilibili/deviceutils/utils/Va;->VA_PACKAGES:[Ljava/lang/String;

    array-length v4, v3

    move v1, v0

    :goto_d
    if-ge v1, v4, :cond_18

    aget-object v5, v3, v1

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_19

    const/4 v0, 0x1

    :cond_18
    return v0

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_d
.end method

.method private static uid(Landroid/content/Context;)Landroid/util/Pair;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/bilibili/deviceutils/utils/Va;->uid()Ljava/lang/String;

    move-result-object v5

    :try_start_b
    const-string v0, "ps"

    invoke-static {v0}, Lcom/bilibili/deviceutils/utils/Bridge;->execByRuntime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8b

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1e} :catch_6f

    move v4, v1

    move v0, v1

    :goto_20
    if-ge v4, v7, :cond_71

    :try_start_22
    aget-object v8, v6, v4

    invoke-virtual {v8, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6c

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x0

    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/bilibili/deviceutils/utils/Va;->EXEC:[Ljava/lang/String;

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6c

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_4c} :catch_87

    :try_start_4c
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "/data/data/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v9, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_67} :catch_89

    move-result v8

    if-eqz v8, :cond_6c

    add-int/lit8 v0, v0, 0x1

    :cond_6c
    :goto_6c
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    :catch_6f
    move-exception v0

    move v0, v1

    :cond_71
    :goto_71
    if-le v0, v2, :cond_74

    move v1, v2

    :cond_74
    new-instance v2, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v1, :cond_81

    move-object v0, v3

    :goto_7d
    invoke-direct {v2, v4, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    :cond_81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_7d

    :catch_87
    move-exception v4

    goto :goto_71

    :catch_89
    move-exception v8

    goto :goto_6c

    :cond_8b
    move v0, v1

    goto :goto_71
.end method

.method private static uid()Ljava/lang/String;
    .registers 4

    const v2, 0x186a0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    div-int v1, v0, v2

    rem-int/2addr v0, v2

    add-int/lit16 v0, v0, -0x2710

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "u"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
