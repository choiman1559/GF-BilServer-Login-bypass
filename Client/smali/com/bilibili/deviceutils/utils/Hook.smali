.class public Lcom/bilibili/deviceutils/utils/Hook;
.super Ljava/lang/Object;


# static fields
.field public static final MAPS:Ljava/lang/String; = "maps"

.field public static final SUBSTRATE:Ljava/lang/String; = "substrate"

.field public static final XPOSED:Ljava/lang/String; = "xposed"


# instance fields
.field public substrate:Z

.field public xposed:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/bilibili/deviceutils/utils/Hook;->xposed:Z

    iput-boolean v0, p0, Lcom/bilibili/deviceutils/utils/Hook;->substrate:Z

    return-void
.end method

.method public constructor <init>(ZZ)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/bilibili/deviceutils/utils/Hook;->xposed:Z

    iput-boolean v0, p0, Lcom/bilibili/deviceutils/utils/Hook;->substrate:Z

    iput-boolean p1, p0, Lcom/bilibili/deviceutils/utils/Hook;->xposed:Z

    iput-boolean p2, p0, Lcom/bilibili/deviceutils/utils/Hook;->substrate:Z

    return-void
.end method

.method public static checkExceptionStack()Lcom/bilibili/deviceutils/utils/Hook;
    .registers 8

    const/4 v7, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcom/bilibili/deviceutils/utils/Hook;

    invoke-direct {v2, v1, v1}, Lcom/bilibili/deviceutils/utils/Hook;-><init>(ZZ)V

    :try_start_7
    new-instance v0, Ljava/lang/Exception;

    const-string v3, "hook"

    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_f} :catch_f

    :catch_f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    if-eqz v3, :cond_3b

    array-length v4, v3

    move v0, v1

    :goto_18
    if-ge v0, v4, :cond_3b

    aget-object v1, v3, v0

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "xposed"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2a

    iput-boolean v7, v2, Lcom/bilibili/deviceutils/utils/Hook;->xposed:Z

    :cond_2a
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v5, "substrate"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_38

    iput-boolean v7, v2, Lcom/bilibili/deviceutils/utils/Hook;->substrate:Z

    :cond_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_3b
    return-object v2
.end method

.method public static checkMaps()Lcom/bilibili/deviceutils/utils/Hook;
    .registers 5

    const/4 v0, 0x0

    new-instance v1, Lcom/bilibili/deviceutils/utils/Hook;

    invoke-direct {v1, v0, v0}, Lcom/bilibili/deviceutils/utils/Hook;-><init>(ZZ)V

    :try_start_6
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/proc/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/maps"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    :goto_36
    if-eqz v0, :cond_62

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5d

    const-string v4, ".so"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4e

    const-string v4, ".jar"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5d

    :cond_4e
    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_5d
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_36

    :cond_62
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_69
    :goto_69
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "xposed"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_80

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/bilibili/deviceutils/utils/Hook;->xposed:Z

    :cond_80
    const-string v3, "substrate"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_69

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/bilibili/deviceutils/utils/Hook;->substrate:Z
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_8b} :catch_8c

    goto :goto_69

    :catch_8c
    move-exception v0

    :cond_8d
    return-object v1
.end method

.method public static checkPackage(Landroid/content/Context;)Lcom/bilibili/deviceutils/utils/Hook;
    .registers 7

    const/4 v5, 0x1

    const/4 v0, 0x0

    new-instance v1, Lcom/bilibili/deviceutils/utils/Hook;

    invoke-direct {v1, v0, v0}, Lcom/bilibili/deviceutils/utils/Hook;-><init>(ZZ)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_3c

    const/16 v2, 0x80

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_17
    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v4, "xposed"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2f

    iput-boolean v5, v1, Lcom/bilibili/deviceutils/utils/Hook;->xposed:Z

    :cond_2f
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "substrate"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    iput-boolean v5, v1, Lcom/bilibili/deviceutils/utils/Hook;->substrate:Z

    goto :goto_17

    :cond_3c
    return-object v1
.end method

.method public static getHook(Landroid/content/Context;)Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bilibili/deviceutils/utils/Hook;->checkPackage(Landroid/content/Context;)Lcom/bilibili/deviceutils/utils/Hook;

    move-result-object v3

    invoke-static {}, Lcom/bilibili/deviceutils/utils/Hook;->checkExceptionStack()Lcom/bilibili/deviceutils/utils/Hook;

    move-result-object v5

    invoke-static {}, Lcom/bilibili/deviceutils/utils/Hook;->checkMaps()Lcom/bilibili/deviceutils/utils/Hook;

    move-result-object v6

    iget-boolean v0, v3, Lcom/bilibili/deviceutils/utils/Hook;->xposed:Z

    if-nez v0, :cond_23

    iget-boolean v0, v5, Lcom/bilibili/deviceutils/utils/Hook;->xposed:Z

    if-nez v0, :cond_23

    iget-boolean v0, v6, Lcom/bilibili/deviceutils/utils/Hook;->xposed:Z

    if-eqz v0, :cond_60

    :cond_23
    move v0, v2

    :goto_24
    iget-boolean v3, v3, Lcom/bilibili/deviceutils/utils/Hook;->substrate:Z

    if-nez v3, :cond_30

    iget-boolean v3, v5, Lcom/bilibili/deviceutils/utils/Hook;->substrate:Z

    if-nez v3, :cond_30

    iget-boolean v3, v6, Lcom/bilibili/deviceutils/utils/Hook;->substrate:Z

    if-eqz v3, :cond_62

    :cond_30
    move v3, v2

    :goto_31
    const-string v5, "xposed"

    if-nez v0, :cond_37

    if-eqz v3, :cond_38

    :cond_37
    move v1, v2

    :cond_38
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_4b

    const-string v0, "xposed"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4b
    if-eqz v3, :cond_52

    const-string v0, "substrate"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_52
    const-string v0, "maps"

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v4

    :cond_60
    move v0, v1

    goto :goto_24

    :cond_62
    move v3, v1

    goto :goto_31
.end method


# virtual methods
.method public both()Z
    .registers 2

    iget-boolean v0, p0, Lcom/bilibili/deviceutils/utils/Hook;->xposed:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/bilibili/deviceutils/utils/Hook;->substrate:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public either()Z
    .registers 2

    iget-boolean v0, p0, Lcom/bilibili/deviceutils/utils/Hook;->xposed:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/bilibili/deviceutils/utils/Hook;->substrate:Z

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public neither()Z
    .registers 2

    iget-boolean v0, p0, Lcom/bilibili/deviceutils/utils/Hook;->xposed:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/bilibili/deviceutils/utils/Hook;->substrate:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
