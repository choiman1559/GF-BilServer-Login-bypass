.class public Lcom/bsgamesdk/android/model/c;
.super Ljava/lang/Object;


# static fields
.field public static A:Ljava/lang/String;

.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Z

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field public static g:Ljava/lang/String;

.field public static h:Ljava/lang/String;

.field public static i:Ljava/lang/String;

.field public static j:Ljava/lang/String;

.field public static k:Ljava/lang/String;

.field public static l:Ljava/lang/String;

.field public static m:Ljava/lang/String;

.field public static n:Ljava/lang/String;

.field public static o:Ljava/lang/String;

.field public static p:Ljava/lang/String;

.field public static q:Ljava/lang/String;

.field public static r:Ljava/lang/String;

.field public static s:Ljava/lang/String;

.field public static t:Ljava/lang/String;

.field public static u:Ljava/lang/String;

.field public static v:Ljava/lang/String;

.field public static w:Ljava/lang/String;

.field public static x:Z

.field public static y:Ljava/lang/String;

.field public static z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "1"

    sput-object v0, Lcom/bsgamesdk/android/model/c;->c:Ljava/lang/String;

    const-string v0, "0"

    sput-object v0, Lcom/bsgamesdk/android/model/c;->q:Ljava/lang/String;

    const-string v0, "1"

    sput-object v0, Lcom/bsgamesdk/android/model/c;->s:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/bsgamesdk/android/model/c;->t:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/bsgamesdk/android/model/c;->u:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/bsgamesdk/android/model/c;->v:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/bsgamesdk/android/model/c;->w:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/bsgamesdk/android/model/c;->x:Z

    const-string v0, "bs_udid"

    sput-object v0, Lcom/bsgamesdk/android/model/c;->y:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/bsgamesdk/android/model/c;->z:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/bsgamesdk/android/model/c;->A:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static a()Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_2c

    sget-object v1, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    :goto_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    array-length v3, v1

    :goto_f
    if-ge v0, v3, :cond_41

    aget-object v4, v1, v0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_29

    const-string v5, "unknown"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_29

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x2c

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_2c
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    aput-object v3, v1, v2
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_39} :catch_3a

    goto :goto_9

    :catch_3a
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    const-string v0, "unknown"

    :goto_40
    return-object v0

    :cond_41
    :try_start_41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_4d} :catch_3a

    move-result-object v0

    goto :goto_40
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    :try_start_0
    const-string v0, "BSGameSdk_Type"

    invoke-static {p0, v0}, Lcom/bsgamesdk/android/model/c;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2b

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    check-cast v0, Ljava/lang/String;

    :goto_e
    return-object v0

    :cond_f
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_2b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_25} :catch_27

    move-result-object v0

    goto :goto_e

    :catch_27
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    :cond_2b
    const-string v0, "1"

    goto :goto_e
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 11

    sput-object p1, Lcom/bsgamesdk/android/model/c;->f:Ljava/lang/String;

    sput-object p2, Lcom/bsgamesdk/android/model/c;->a:Ljava/lang/String;

    sput-object p3, Lcom/bsgamesdk/android/model/c;->g:Ljava/lang/String;

    sput-boolean p7, Lcom/bsgamesdk/android/model/c;->d:Z

    invoke-static {p0}, Lcom/bsgamesdk/android/model/c;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bsgamesdk/android/model/c;->i:Ljava/lang/String;

    invoke-static {p0}, Lcom/bsgamesdk/android/model/c;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bsgamesdk/android/model/c;->j:Ljava/lang/String;

    sput-object p5, Lcom/bsgamesdk/android/model/c;->k:Ljava/lang/String;

    sput-object p6, Lcom/bsgamesdk/android/model/c;->l:Ljava/lang/String;

    sput-object p8, Lcom/bsgamesdk/android/model/c;->m:Ljava/lang/String;

    sput-object p4, Lcom/bsgamesdk/android/model/c;->b:Ljava/lang/String;

    invoke-static {p0}, Lcom/bsgamesdk/android/model/c;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bsgamesdk/android/model/c;->c:Ljava/lang/String;

    invoke-static {p0}, Lcom/bsgamesdk/android/utils/o;->a(Landroid/content/Context;)Lcom/bsgamesdk/android/utils/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bsgamesdk/android/utils/o;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bsgamesdk/android/model/c;->e:Ljava/lang/String;

    :try_start_2c
    invoke-static {}, Lcom/bsgamesdk/android/utils/udid/f;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bsgamesdk/android/model/c;->p:Ljava/lang/String;

    sget-object v0, Lcom/bsgamesdk/android/model/c;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-static {p0}, Lcom/bsgamesdk/android/buvid/o;->a(Landroid/content/Context;)Lcom/bsgamesdk/android/buvid/k;

    move-result-object v0

    iget-object v0, v0, Lcom/bsgamesdk/android/buvid/k;->d:Ljava/lang/String;

    sput-object v0, Lcom/bsgamesdk/android/model/c;->p:Ljava/lang/String;

    :cond_42
    sget-object v0, Lcom/bsgamesdk/android/model/c;->y:Ljava/lang/String;

    sget-object v1, Lcom/bsgamesdk/android/model/c;->p:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/bsgamesdk/android/buvid/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_49} :catch_77

    :goto_49
    invoke-static {p0}, Lcom/bsgamesdk/android/model/c;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bsgamesdk/android/model/c;->t:Ljava/lang/String;

    invoke-static {p0}, Lcom/bsgamesdk/android/model/c;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bsgamesdk/android/model/c;->u:Ljava/lang/String;

    invoke-static {p0}, Lcom/bsgamesdk/android/model/c;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bsgamesdk/android/model/c;->v:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/ab;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bsgamesdk/android/model/c;->q:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/model/c;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bsgamesdk/android/model/c;->r:Ljava/lang/String;

    invoke-static {p0}, Lcom/bsgamesdk/android/model/c;->c(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/bsgamesdk/android/model/c;->b(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/bsgamesdk/android/model/c;->x:Z

    invoke-static {p0}, Lcom/bsgamesdk/android/model/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bsgamesdk/android/model/c;->s:Ljava/lang/String;

    return-void

    :catch_77
    move-exception v0

    goto :goto_49
.end method

.method public static a(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/bsgamesdk/android/model/c;->z:Ljava/lang/String;

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/4 v1, 0x0

    :try_start_1
    const-string v0, ""

    const-string v1, ""
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5} :catch_56

    :try_start_5
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    const-string v3, "utf-8"

    invoke-direct {v0, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_18} :catch_28

    move-object v2, v0

    :goto_19
    :try_start_19
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_21} :catch_5e

    move-result-object v0

    if-eqz v0, :cond_65

    :goto_24
    :try_start_24
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_27} :catch_63

    :goto_27
    return-object v0

    :catch_28
    move-exception v0

    :try_start_29
    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "assets/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_54} :catch_5e

    move-object v2, v0

    goto :goto_19

    :catch_56
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_5a
    invoke-static {v1}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_27

    :catch_5e
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_5a

    :catch_63
    move-exception v1

    goto :goto_5a

    :cond_65
    move-object v0, v1

    goto :goto_24
.end method

.method public static b(Ljava/lang/String;)V
    .registers 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, ""

    sput-object v0, Lcom/bsgamesdk/android/model/c;->A:Ljava/lang/String;

    :goto_a
    return-void

    :cond_b
    :try_start_b
    const-string v0, "AFL8d3X7KKCj6KEk5ZXjbA=="

    invoke-static {p0, v0}, Lcom/bsgamesdk/android/utils/AESUtil;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bsgamesdk/android/model/c;->A:Ljava/lang/String;
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_13} :catch_14

    goto :goto_a

    :catch_14
    move-exception v0

    const-string v0, ""

    sput-object v0, Lcom/bsgamesdk/android/model/c;->A:Ljava/lang/String;

    goto :goto_a
.end method

.method public static b(Landroid/content/Context;)Z
    .registers 3

    :try_start_0
    const-string v0, "BSGameSdk_PaidGame"

    invoke-static {p0, v0}, Lcom/bsgamesdk/android/model/c;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_17

    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_17

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_13

    move-result v0

    :goto_12
    return v0

    :catch_13
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    :cond_17
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    invoke-static {}, Lcom/bsgamesdk/android/api/b;->a()Lcom/bsgamesdk/android/api/b;

    move-result-object v3

    const/4 v0, 0x0

    invoke-virtual {v3}, Lcom/bsgamesdk/android/api/b;->G()Z

    move-result v1

    if-nez v1, :cond_22

    invoke-virtual {v3}, Lcom/bsgamesdk/android/api/b;->E()Z

    move-result v1

    if-eqz v1, :cond_22

    sget-object v1, Lcom/bsgamesdk/android/b;->a:Lcom/bsgamesdk/android/dynamic/IConstant;

    invoke-interface {v1}, Lcom/bsgamesdk/android/dynamic/IConstant;->getSDK_Version()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Lcom/bsgamesdk/android/api/b;->F()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_22

    const/4 v0, 0x1

    :cond_22
    const/4 v1, 0x0

    :try_start_23
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_38} :catch_b1

    :goto_38
    :try_start_38
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_40} :catch_da

    move-result-object v1

    :try_start_41
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/bsgamesdk/android/model/c;->k:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_107

    if-eqz v0, :cond_e2

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string v2, "utf8"

    invoke-direct {v3, v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const-string v0, ""

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_a7} :catch_137

    move-result v4

    if-nez v4, :cond_13e

    :goto_aa
    :try_start_aa
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_b0} :catch_13c

    :goto_b0
    return-object v0

    :catch_b1
    move-exception v2

    :try_start_b2
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "assets/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    const-string v5, "utf-8"

    invoke-direct {v2, v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_d8
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_d8} :catch_da

    goto/16 :goto_38

    :catch_da
    move-exception v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    :goto_de
    invoke-static {v1}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_b0

    :cond_e2
    :try_start_e2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_134

    invoke-virtual {v3}, Lcom/bsgamesdk/android/api/b;->G()Z

    move-result v0

    if-eqz v0, :cond_134

    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const-string v2, "utf8"

    invoke-direct {v3, v4, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    move-object v0, v1

    goto :goto_b0

    :cond_107
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_134

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_134

    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-eqz v0, :cond_134

    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const-string v2, "utf8"

    invoke-direct {v3, v4, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/Writer;->close()V
    :try_end_134
    .catch Ljava/lang/Exception; {:try_start_e2 .. :try_end_134} :catch_137

    :cond_134
    move-object v0, v1

    goto/16 :goto_b0

    :catch_137
    move-exception v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    goto :goto_de

    :catch_13c
    move-exception v1

    goto :goto_de

    :cond_13e
    move-object v0, v1

    goto/16 :goto_aa
.end method

.method public static c(Landroid/content/Context;)V
    .registers 4

    sget-object v0, Lcom/bsgamesdk/android/b;->b:Lcom/bsgamesdk/android/dynamic/IUtils;

    invoke-interface {v0, p0}, Lcom/bsgamesdk/android/dynamic/IUtils;->getUserParcelable(Landroid/content/Context;)Lcom/bsgamesdk/android/model/UserParcelable;

    move-result-object v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    new-instance v1, Lcom/bsgamesdk/android/model/m;

    invoke-direct {v1, p0}, Lcom/bsgamesdk/android/model/m;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/bsgamesdk/android/model/m;->a(Lcom/bsgamesdk/android/model/UserParcelable;)V

    const-string v0, "uid"

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Lcom/bsgamesdk/android/model/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Lcom/bsgamesdk/android/model/c;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    :goto_a
    return-object v0

    :cond_b
    const-string v0, "1"

    goto :goto_a
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    const-string v0, "ext.txt"

    invoke-static {p0, v0}, Lcom/bsgamesdk/android/model/c;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static f(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    const-string v0, ""

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_11} :catch_12

    :goto_11
    return-object v0

    :catch_12
    move-exception v1

    invoke-static {v1}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_11
.end method

.method private static g(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    const-wide/16 v0, 0x0

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v0, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_11} :catch_26

    int-to-long v0, v0

    :goto_12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_26
    move-exception v2

    invoke-static {v2}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_12
.end method

.method private static h(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    const-string v0, "distributor.txt"

    invoke-static {p0, v0}, Lcom/bsgamesdk/android/model/c;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static i(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    const-string v0, ""

    :try_start_2
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2e} :catch_30

    move-result-object v0

    :goto_2f
    return-object v0

    :catch_30
    move-exception v1

    invoke-static {v1}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_2f
.end method
