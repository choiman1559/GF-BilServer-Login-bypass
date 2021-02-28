.class public Lcom/tencent/tpshell/TPShellApplication;
.super Landroid/app/Application;
.source "TPShellApplication.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "tprt"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static dec(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, ""

    :goto_8
    return-object v0

    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/4 v0, 0x0

    :goto_e
    array-length v2, v1

    if-ge v0, v2, :cond_1b

    aget-char v2, v1, v0

    xor-int/lit8 v2, v2, 0xa

    int-to-char v2, v2

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_1b
    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method private final native initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .registers 11

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    :try_start_4
    invoke-virtual {p0}, Lcom/tencent/tpshell/TPShellApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/tencent/tpshell/TPShellApplication;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tencent/tpshell/TPShellApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v1, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1f} :catch_4d

    const/16 v8, 0x15

    if-lt v7, v8, :cond_3a

    :try_start_23
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "splitSourceDirs"

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v7, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_39} :catch_4f

    move-object v5, v0

    :cond_3a
    :goto_3a
    :try_start_3a
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/tencent/tpshell/TPShellApplication;->initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4e

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "initialize failed."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_4d} :catch_4d

    :catch_4d
    move-exception v0

    :cond_4e
    return-void

    :catch_4f
    move-exception v0

    goto :goto_3a
.end method
