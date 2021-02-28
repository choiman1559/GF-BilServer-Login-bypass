.class public final Lcom/tencent/tp/s;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Z

.field private static c:Z

.field private static d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    sput-object v1, Lcom/tencent/tp/s;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/tp/s;->b:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/tp/s;->c:Z

    sput-object v1, Lcom/tencent/tp/s;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    const/4 v4, -0x1

    invoke-static {}, Lcom/tencent/tp/s;->a()Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "NotImp"

    :goto_9
    return-object v0

    :cond_a
    sget-object v0, Lcom/tencent/tp/s;->a:Ljava/lang/String;

    if-eqz v0, :cond_19

    sget-object v0, Lcom/tencent/tp/s;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_19

    sget-object v0, Lcom/tencent/tp/s;->a:Ljava/lang/String;

    goto :goto_9

    :cond_19
    const-string v0, ""

    invoke-static {p0}, Lcom/tencent/tp/s;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "CPUNAME"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_36

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_36
    :try_start_36
    const-string v0, "/proc/cpuinfo"

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const-string v0, ""

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_55
    if-eqz v1, :cond_cc

    const-string v3, "Processor"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v4, :cond_77

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_55

    :cond_77
    const-string v3, "vendor_id"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v4, :cond_97

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_55

    :cond_97
    const-string v3, "Hardware"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v4, :cond_e1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_cc
    :goto_cc
    if-eqz v2, :cond_d1

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_d1
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_d1} :catch_11d

    :cond_d1
    if-eqz v0, :cond_d9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_126

    :cond_d9
    const-string v0, "Unknown"

    sput-object v0, Lcom/tencent/tp/s;->a:Ljava/lang/String;

    const-string v0, "Unknown"

    goto/16 :goto_9

    :cond_e1
    :try_start_e1
    const-string v3, "model name"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v4, :cond_117

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_cc

    :cond_117
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_11a
    .catch Ljava/lang/Throwable; {:try_start_e1 .. :try_end_11a} :catch_11d

    move-result-object v1

    goto/16 :goto_55

    :catch_11d
    move-exception v0

    const-string v0, "Unknown"

    sput-object v0, Lcom/tencent/tp/s;->a:Ljava/lang/String;

    const-string v0, "Unknown"

    goto/16 :goto_9

    :cond_126
    sput-object v0, Lcom/tencent/tp/s;->a:Ljava/lang/String;

    goto/16 :goto_9
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/16 v3, 0x1000

    new-array v3, v3, [C

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    :goto_2d
    invoke-virtual {v1, v3}, Ljava/io/BufferedReader;->read([C)I

    move-result v5

    if-lez v5, :cond_3c

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v6, v5}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_37} :catch_38

    goto :goto_2d

    :catch_38
    move-exception v0

    const-string v0, ""

    :goto_3b
    return-object v0

    :cond_3c
    :try_start_3c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :goto_44
    invoke-virtual {v2, v3}, Ljava/io/BufferedReader;->read([C)I

    move-result v5

    if-lez v5, :cond_4f

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v6, v5}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_44

    :cond_4f
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    if-eqz v4, :cond_6a

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6a

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3b

    :cond_6a
    if-eqz v1, :cond_7f

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7f

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3b

    :cond_7f
    const-string v0, ""
    :try_end_81
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_81} :catch_38

    goto :goto_3b
.end method

.method public static a()Z
    .registers 1

    sget-boolean v0, Lcom/tencent/tp/s;->b:Z

    if-nez v0, :cond_a

    invoke-static {}, Lcom/tencent/tp/s;->k()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/tp/s;->b:Z

    :cond_a
    sget-boolean v0, Lcom/tencent/tp/s;->c:Z

    return v0
.end method

.method private static a([B)[B
    .registers 3

    if-eqz p0, :cond_5

    array-length v0, p0

    if-nez v0, :cond_7

    :cond_5
    const/4 p0, 0x0

    :cond_6
    return-object p0

    :cond_7
    const/4 v0, 0x0

    :goto_8
    array-length v1, p0

    if-ge v0, v1, :cond_6

    aget-byte v1, p0, v0

    xor-int/lit8 v1, v1, 0x2a

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_8
.end method

.method public static b()Ljava/lang/String;
    .registers 1

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    :goto_6
    return-object v0

    :catch_7
    move-exception v0

    const-string v0, "null"

    goto :goto_6
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    const/4 v3, -0x1

    invoke-static {p0}, Lcom/tencent/tp/s;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CPUNAME:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v3, :cond_6f

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ATOM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_4f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/tp/s;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/tencent/tp/l;->a()Lcom/tencent/tp/l;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/tencent/tp/l;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4e
    return-object v0

    :cond_4f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "REAL_DEVICE("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4e

    :cond_6f
    const-string v0, "REAL_DEVICE(arm)"

    goto :goto_4e
.end method

.method public static c()I
    .registers 1

    invoke-static {}, Lcom/tencent/tp/s;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    const-string v0, "PIFIJRI"

    invoke-static {v0}, Lcom/tencent/tp/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "s"

    invoke-static {v3}, Lcom/tencent/tp/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_2c} :catch_2e

    move-result-object v0

    :goto_2d
    return-object v0

    :catch_2e
    move-exception v1

    goto :goto_2d
.end method

.method public static d()Ljava/lang/String;
    .registers 3

    invoke-static {}, Lcom/tencent/tp/s;->a()Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "NotImp"

    :cond_8
    :goto_8
    return-object v0

    :cond_9
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x0

    const/16 v2, 0x8

    if-lt v1, v2, :cond_8

    :try_start_10
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_12} :catch_13

    goto :goto_8

    :catch_13
    move-exception v1

    goto :goto_8
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_1a

    :try_start_7
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-eqz v2, :cond_1a

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_19} :catch_1b

    move-result-object v0

    :cond_1a
    :goto_1a
    return-object v0

    :catch_1b
    move-exception v1

    goto :goto_1a
.end method

.method public static e()Ljava/lang/String;
    .registers 1

    :try_start_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2} :catch_3

    :goto_2
    return-object v0

    :catch_3
    move-exception v0

    const/4 v0, 0x0

    goto :goto_2
.end method

.method private static e(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    invoke-static {}, Lcom/tencent/tp/s;->a()Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "NotImp"

    :goto_8
    return-object v0

    :cond_9
    sget-object v0, Lcom/tencent/tp/s;->d:Ljava/lang/String;

    if-eqz v0, :cond_18

    sget-object v0, Lcom/tencent/tp/s;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_18

    sget-object v0, Lcom/tencent/tp/s;->d:Ljava/lang/String;

    goto :goto_8

    :cond_18
    const/16 v0, 0x752

    new-array v0, v0, [B

    fill-array-data v0, :array_d0

    invoke-static {v0}, Lcom/tencent/tp/s;->a([B)[B

    move-result-object v0

    if-nez v0, :cond_28

    sget-object v0, Lcom/tencent/tp/s;->d:Ljava/lang/String;

    goto :goto_8

    :cond_28
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v0, Ljava/util/zip/ZipInputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_32
    :try_start_32
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v2

    if-eqz v2, :cond_c8

    const/16 v2, 0x800

    new-array v2, v2, [B

    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/mycpuinfo"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-direct {v4, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    :goto_61
    const/4 v3, 0x0

    const/16 v5, 0x800

    invoke-virtual {v0, v2, v3, v5}, Ljava/util/zip/ZipInputStream;->read([BII)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_c0

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5, v3}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_6f
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_6f} :catch_70

    goto :goto_61

    :catch_70
    move-exception v0

    :goto_71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "chmod 755 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mycpuinfo\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tp/s;->a(Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mycpuinfo\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tp/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tencent/tp/s;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8

    :cond_c0
    :try_start_c0
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V

    goto/16 :goto_32

    :cond_c8
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_ce
    .catch Ljava/lang/Throwable; {:try_start_c0 .. :try_end_ce} :catch_70

    goto :goto_71

    nop

    :array_d0
    .array-data 1
        0x7at
        0x61t
        0x29t
        0x2et
        0x3et
        0x2at
        0x2at
        0x2at
        0x22t
        0x2at
        0x5dt
        0x65t
        -0x7dt
        0x62t
        -0x25t
        -0x5bt
        -0x7ct
        0x24t
        -0x70t
        0x2ct
        0x2at
        0x2at
        -0x4at
        0x3et
        0x2at
        0x2at
        0x23t
        0x2at
        0x2at
        0x2at
        0x47t
        0x53t
        0x49t
        0x5at
        0x5ft
        0x43t
        0x44t
        0x4ct
        0x45t
        -0x39t
        0x72t
        0x73t
        -0x5at
        0x61t
        0x7bt
        0x32t
        0x14t
        -0x23t
        -0x24t
        0x64t
        0x77t
        -0x5at
        -0x80t
        0x57t
        0x41t
        0x2t
        -0x60t
        -0x65t
        -0x1t
        0x38t
        -0x12t
        0x30t
        0x2ct
        -0x61t
        -0x3bt
        0x26t
        0x3bt
        0x61t
        0x77t
        -0x69t
        0x1ft
        -0x7t
        -0x3et
        -0x62t
        -0x47t
        -0x24t
        0x38t
        -0x52t
        0xat
        -0x61t
        -0x9t
        0x7et
        0x39t
        0x68t
        -0x38t
        0x6ft
        0x68t
        0x46t
        0x25t
        -0x5et
        0x22t
        0x8t
        0x57t
        0x3at
        0x6bt
        -0x79t
        -0x5dt
        0x2et
        -0x5dt
        0xat
        -0x35t
        -0x55t
        0x72t
        0x78t
        -0x65t
        -0x52t
        0xat
        0x3bt
        -0x54t
        -0x30t
        -0x1ct
        0x48t
        -0x34t
        -0x80t
        0x60t
        0x52t
        -0x28t
        0x18t
        0x4dt
        -0x28t
        -0x9t
        -0x2bt
        -0x2at
        -0x2bt
        -0x2bt
        -0x49t
        -0x2bt
        -0x2at
        0x4dt
        -0x3ft
        -0xat
        0x59t
        -0x3t
        -0x2ft
        -0x74t
        -0x5at
        -0x47t
        0xet
        -0x5dt
        -0x2at
        0x6t
        0x1ct
        -0x2at
        0x7bt
        0x47t
        -0x53t
        -0x59t
        -0x46t
        0x2bt
        -0x46t
        0x60t
        0x39t
        0x40t
        -0x71t
        0x5ft
        0x1dt
        0x7bt
        0x63t
        0x23t
        0x43t
        0x6ft
        0x70t
        0x38t
        0x11t
        -0x7t
        0x41t
        -0x55t
        0x2ct
        0x26t
        0x20t
        -0x35t
        -0x66t
        0x7bt
        -0x6ft
        0x7et
        -0x5ft
        0x4ct
        -0x52t
        0x69t
        -0x7dt
        -0x75t
        -0x2ct
        0x70t
        -0x30t
        -0x80t
        0x36t
        0x6ft
        0x7et
        0x5bt
        0x58t
        -0x2bt
        0x63t
        0x2dt
        -0x6t
        -0x4ct
        0x49t
        0x2ct
        0x26t
        0x59t
        0x2at
        -0x6ft
        -0x26t
        -0x1ft
        0x3at
        -0x3t
        0x37t
        0x6at
        0x51t
        0x24t
        0x7ft
        -0x38t
        -0x66t
        -0x5ft
        0x14t
        0x4ct
        0x16t
        0x1dt
        -0x22t
        -0x4ft
        -0x21t
        0x22t
        -0x2dt
        0x23t
        -0x49t
        0x7at
        -0x2t
        -0x34t
        0x1dt
        0x39t
        0x54t
        0x78t
        -0x76t
        -0xet
        -0x51t
        -0x4at
        0x2ft
        0x55t
        0x54t
        -0x2bt
        0x19t
        0x6t
        -0x25t
        -0x2ft
        -0x12t
        0x7dt
        -0x13t
        -0x59t
        0x4at
        0x4ft
        -0x4bt
        -0x71t
        -0x75t
        0x62t
        -0x4bt
        0x5at
        0x2t
        -0x68t
        0x16t
        0x32t
        -0x1ft
        0x21t
        -0x42t
        0x1dt
        -0x14t
        -0x74t
        0x6at
        -0x77t
        0x16t
        -0x69t
        0x47t
        -0x4ct
        -0xct
        -0x7t
        -0x78t
        -0x7t
        0x3t
        0x35t
        -0x45t
        -0x33t
        0x35t
        -0x4ft
        -0x73t
        0x65t
        -0x1dt
        -0x7t
        -0x33t
        -0x6t
        -0x60t
        0x31t
        0x4at
        0x79t
        -0x22t
        0x14t
        -0x63t
        0xat
        0x65t
        0x5t
        -0x73t
        -0x6dt
        0x71t
        0x5et
        -0x38t
        -0x23t
        -0x53t
        0x69t
        0x61t
        0x29t
        -0x2ct
        0x7at
        0xet
        0x4et
        -0x76t
        0x34t
        0x72t
        -0x71t
        -0x2dt
        0x1ft
        0x9t
        -0x6et
        -0x60t
        0x3t
        0x5bt
        0x69t
        0x21t
        0x6t
        -0x23t
        0x2dt
        0x0t
        -0x44t
        -0x2ft
        -0x43t
        0x43t
        -0x75t
        -0x26t
        0x5t
        -0x54t
        -0x28t
        0x3ft
        0x70t
        0x66t
        0xdt
        0x7ft
        -0x65t
        0x7at
        -0x12t
        0x72t
        0x2ct
        0x6dt
        0x1at
        0x3ct
        -0x5ft
        0x6et
        0x23t
        -0x74t
        0x9t
        -0x76t
        -0x51t
        0x6bt
        0x26t
        -0x40t
        -0x50t
        -0x75t
        -0x15t
        -0x6at
        0x1et
        0x34t
        -0x73t
        0x47t
        0x48t
        0x2ct
        0x66t
        0x3bt
        -0x49t
        -0x76t
        -0x77t
        0x5at
        -0x62t
        -0xat
        0x31t
        -0x5bt
        -0x8t
        0x70t
        -0xat
        -0x6t
        0x29t
        0x17t
        0x51t
        0x20t
        -0x71t
        0x78t
        -0x1et
        -0x56t
        -0x46t
        0x50t
        0x32t
        0x3ft
        -0x64t
        0x55t
        0x30t
        0x28t
        0x0t
        -0x6t
        0x2at
        -0x7et
        0x75t
        0x4at
        -0x79t
        0x4et
        0x1bt
        -0x13t
        0x1ct
        -0x65t
        0x44t
        -0x21t
        -0x56t
        0x8t
        -0x65t
        0x14t
        -0x63t
        0x11t
        -0x26t
        -0x64t
        0x5dt
        -0x51t
        0x56t
        0xat
        -0x32t
        0x9t
        0xbt
        0x35t
        0x69t
        -0x10t
        0x6bt
        0x56t
        0x2dt
        0x73t
        0x25t
        0x6bt
        0x14t
        0x78t
        -0x5dt
        -0x56t
        -0x4bt
        -0x7dt
        0x6et
        -0x16t
        0x40t
        0x0t
        -0x5ft
        0x52t
        0x15t
        -0x6dt
        -0x7t
        0x20t
        0x57t
        0x34t
        0x7et
        -0x7dt
        -0x18t
        0x40t
        -0x11t
        0x52t
        0x7ct
        -0x6t
        -0x40t
        -0x1ft
        -0x13t
        0x13t
        -0x42t
        -0x57t
        0x64t
        -0x80t
        -0x7ft
        0x7et
        -0x6bt
        -0x19t
        -0x22t
        -0x34t
        0x7et
        0x5dt
        0x78t
        -0x29t
        0x28t
        -0x7t
        0x71t
        0x79t
        -0x49t
        0x14t
        0x74t
        -0x4ct
        -0x52t
        -0x50t
        -0x8t
        0x17t
        0x35t
        -0x47t
        0x49t
        0x17t
        -0x1ct
        -0x19t
        0x3dt
        0x26t
        0x13t
        0x5dt
        0x31t
        0x70t
        0x5bt
        0xct
        0x5ft
        -0x44t
        0x6ct
        0x61t
        -0x49t
        -0x3ft
        0x6ct
        0x6ft
        -0x4dt
        -0x2dt
        0x56t
        0x5ct
        -0x24t
        0x3et
        0x0t
        0x31t
        0x19t
        -0x47t
        0x77t
        -0x52t
        0xet
        -0x4ct
        -0x69t
        0x29t
        -0x33t
        0x5bt
        0x18t
        -0x25t
        0x30t
        0x47t
        -0x7bt
        -0x59t
        -0x21t
        0x2t
        -0x42t
        0x49t
        -0x5ct
        -0x21t
        0x1et
        0x65t
        0xct
        -0xct
        -0x15t
        -0x58t
        0x70t
        -0x3ft
        0x4et
        -0x38t
        0x9t
        -0x7bt
        -0x6dt
        0x78t
        -0x66t
        0x69t
        0x3ct
        0xdt
        0x39t
        -0x4bt
        -0x6dt
        0x6ft
        0x67t
        -0x2dt
        0x3et
        0x79t
        -0x25t
        0x4et
        -0x13t
        -0x7t
        -0x5ct
        -0x1bt
        0x5et
        -0x71t
        0x47t
        0x4dt
        0x4dt
        -0x1ft
        0x72t
        -0x26t
        -0x63t
        -0x39t
        0x22t
        0x6bt
        -0x32t
        0x46t
        0x0t
        -0x35t
        -0x38t
        0x3bt
        0x7ft
        0x4et
        -0x31t
        -0x54t
        0x7et
        0x78t
        -0x5dt
        -0x39t
        0x65t
        -0x5t
        0x30t
        -0x19t
        -0xat
        0x16t
        -0xbt
        -0x4t
        0x21t
        0x18t
        -0x7dt
        -0x41t
        0x1et
        0x15t
        -0xct
        -0x6ct
        0x2ft
        0x41t
        0x55t
        -0x58t
        -0x63t
        -0x2bt
        -0x4at
        0x47t
        -0x1et
        0x63t
        -0x40t
        -0x58t
        0x66t
        -0x8t
        -0x31t
        -0x1dt
        0xat
        0x57t
        0x2t
        -0x3bt
        -0x7ct
        -0x2dt
        -0x80t
        -0xdt
        -0x4et
        -0x20t
        -0x80t
        -0x43t
        -0x4et
        -0x23t
        -0x7t
        -0x7et
        0x47t
        0x42t
        0x56t
        -0x16t
        -0x7at
        -0x73t
        0xft
        0x57t
        -0x1t
        0x1dt
        0x2t
        0x4ft
        -0xct
        0x76t
        0x64t
        -0x30t
        -0x1et
        0x63t
        0x35t
        -0x47t
        0x79t
        -0x1t
        0xft
        -0x34t
        0x17t
        -0x27t
        0x7ct
        -0x6bt
        0x21t
        -0x76t
        0x5ft
        0x1at
        -0x33t
        0x3t
        -0x34t
        0x5et
        -0x1t
        -0x62t
        -0x57t
        -0x2ct
        0x3bt
        0x16t
        -0x33t
        0x48t
        -0x2bt
        0x8t
        -0x4t
        0x2t
        0x73t
        -0x74t
        -0x8t
        0x42t
        -0x68t
        -0x5et
        0x4ct
        -0x30t
        0x33t
        0x47t
        0x74t
        0x5bt
        -0x10t
        -0x14t
        0x7t
        -0x37t
        -0x49t
        -0x74t
        -0x6bt
        -0x6dt
        0x13t
        -0x69t
        -0x61t
        0x13t
        -0x1bt
        -0x41t
        0x7ct
        -0x52t
        -0x1dt
        0x47t
        -0x30t
        0x17t
        -0x34t
        -0x22t
        0x38t
        0x59t
        0x74t
        0x5t
        0x67t
        0x6et
        -0x4dt
        0x11t
        0x31t
        0x1bt
        0x5dt
        0x4dt
        -0x73t
        0x9t
        -0x39t
        -0x59t
        -0x4dt
        0x6t
        -0x5ct
        0x4bt
        0x18t
        0x7bt
        -0x59t
        0x50t
        -0x48t
        -0x4et
        -0x6ct
        0x4dt
        -0x3t
        0x56t
        0x6dt
        0x42t
        0x6ct
        -0x3t
        0x56t
        0x6dt
        -0x6dt
        0x12t
        0x6bt
        -0x11t
        0x7ft
        -0xbt
        0x3t
        -0x32t
        0x52t
        -0x30t
        0x56t
        0x15t
        -0x2t
        -0x7t
        0x46t
        -0x30t
        -0x3bt
        0xet
        -0x4ct
        0x62t
        -0x4ft
        0x45t
        0x32t
        -0x40t
        0x1ct
        0x13t
        0x5bt
        0x63t
        0x60t
        -0x6at
        -0x41t
        -0x7et
        0x6bt
        -0x54t
        -0x75t
        -0x2ct
        0x18t
        0x39t
        0x3ct
        0x13t
        -0x25t
        0x7ct
        0x1ct
        -0xbt
        0x75t
        0x56t
        0x3t
        -0x4ft
        -0x23t
        0x15t
        0x36t
        0x19t
        -0x6bt
        -0x4et
        -0x3bt
        -0x6dt
        -0x7t
        0x4t
        -0x4at
        0x5t
        0xet
        -0x27t
        0x17t
        -0x2t
        0x8t
        -0x4t
        0x12t
        -0x31t
        0x11t
        0x68t
        0xdt
        -0x30t
        -0x31t
        -0x23t
        0x76t
        0x4t
        0x51t
        0x3bt
        0x25t
        -0x7t
        -0x63t
        0x55t
        -0x37t
        -0x70t
        -0x29t
        0x5et
        0x16t
        0x1t
        -0x6ft
        -0x73t
        0x56t
        -0x73t
        -0x7dt
        0x65t
        0x6ct
        0x58t
        -0x7et
        -0x28t
        -0x1t
        0x16t
        -0x18t
        0x3dt
        0x42t
        -0x2et
        0x21t
        -0x6ct
        0x6at
        -0x2ft
        -0x6ct
        -0x31t
        0x58t
        -0x7bt
        0x70t
        -0x2t
        -0x4et
        -0x73t
        0x22t
        -0x27t
        0x1ct
        -0x4et
        -0x11t
        -0x7et
        -0x20t
        -0x4ct
        0xft
        -0x1dt
        -0x46t
        0x61t
        0x6ct
        0x7bt
        0x5ct
        -0x3at
        0x5dt
        -0x64t
        0x66t
        -0x35t
        0x2ft
        0x48t
        0x1ct
        -0x65t
        -0x65t
        -0x68t
        0x45t
        0x4at
        0x61t
        -0x7t
        0x69t
        0x5et
        0x9t
        0x69t
        0x7et
        -0x1ft
        -0x3bt
        0x59t
        0x43t
        0x6et
        -0x5bt
        0x6ft
        0x69t
        0x10t
        0x11t
        0x5dt
        0x49t
        -0x80t
        0x7ct
        0x66t
        -0x7t
        0x0t
        -0x57t
        0x69t
        0x61t
        -0x70t
        -0x12t
        -0x6ft
        0x5dt
        -0x5dt
        0x1dt
        -0x2et
        0x6ft
        -0x4bt
        0x3ct
        -0x71t
        0x7ft
        0x72t
        0x5at
        0x62t
        -0x4ft
        -0x2bt
        -0x2at
        -0x9t
        0x71t
        0x19t
        -0x5ft
        0x62t
        0x41t
        0x7ft
        -0x7dt
        0x77t
        -0x65t
        -0x78t
        0x46t
        -0x47t
        -0x6et
        -0x9t
        0x6ft
        -0x1bt
        0x18t
        0x58t
        0x40t
        0x6ct
        0x23t
        0x49t
        0x37t
        -0x1ct
        0x43t
        0x24t
        -0x51t
        -0x62t
        0x3ct
        -0x2bt
        0x11t
        -0x4at
        -0x66t
        -0x1bt
        -0x73t
        -0x24t
        0x78t
        -0x53t
        -0x70t
        0x73t
        0x34t
        -0x9t
        -0x7et
        -0x7et
        0x1et
        0x4bt
        -0x77t
        -0x2at
        0x33t
        -0x16t
        0x36t
        -0x2et
        0x2ct
        0x23t
        0x75t
        0x68t
        -0x4ct
        -0x3ct
        0x5at
        -0x3ft
        0x24t
        -0x61t
        0x1et
        -0x37t
        0x7at
        -0x7et
        -0x6bt
        0x20t
        0x1at
        -0x36t
        0x45t
        0x4dt
        -0x25t
        0x11t
        0xdt
        0x58t
        0x15t
        0x17t
        0x56t
        0x11t
        -0x56t
        0x2t
        -0x2at
        -0x3at
        -0x16t
        -0x5et
        0x36t
        0x24t
        0x2bt
        0x54t
        -0xet
        0x10t
        0x71t
        -0x2ft
        -0x27t
        0x75t
        0x3t
        0x7ct
        0x6at
        -0x28t
        -0x16t
        0x5et
        0x33t
        0x72t
        0x20t
        -0x2bt
        0x6at
        -0x7ft
        0x55t
        -0xat
        0x7ct
        -0xft
        0x3ct
        0xft
        0x5et
        -0x61t
        -0x22t
        0x70t
        0x3t
        0xft
        -0x68t
        -0x4bt
        -0x2t
        -0x3t
        0x8t
        -0x24t
        -0x6et
        0x75t
        -0x28t
        -0xct
        0x40t
        -0x47t
        0x6dt
        0x5bt
        0x78t
        0x23t
        0x37t
        0x3dt
        -0x14t
        -0x6ct
        0x39t
        0x36t
        0x7ft
        -0x68t
        0x5at
        -0x14t
        -0x7t
        0x72t
        -0x5dt
        0x8t
        -0x2dt
        0x61t
        -0x74t
        0x7et
        0x2et
        0x4et
        0x49t
        0x33t
        0x24t
        0x64t
        0xft
        -0x4t
        -0x78t
        -0x7dt
        0x1ft
        -0xct
        -0x62t
        -0x10t
        -0x6at
        0x3ct
        -0x18t
        -0x6bt
        -0x40t
        0x41t
        0x4t
        0x1dt
        -0x57t
        -0x30t
        0x37t
        -0x40t
        0x12t
        0x6dt
        -0x25t
        -0x72t
        -0x14t
        0x27t
        0x27t
        0x4ft
        0x3ft
        0x33t
        -0xdt
        0x5ct
        0x72t
        -0x5bt
        -0x2ct
        -0x4ct
        0x64t
        0x1ft
        -0x2bt
        0x59t
        -0x10t
        -0xdt
        -0x54t
        -0x79t
        0x68t
        -0x4at
        -0x54t
        0x5et
        -0x3ct
        -0x16t
        -0x6bt
        -0x5ft
        0x37t
        0x5at
        0x22t
        0x58t
        0x1dt
        0x46t
        -0x43t
        0xbt
        -0x5bt
        0x69t
        0x50t
        -0x66t
        0x7t
        -0x7ct
        0x69t
        -0x40t
        -0x46t
        0x73t
        -0x1et
        -0x21t
        -0x46t
        0x0t
        0x52t
        0x5et
        -0x6ft
        -0x6et
        0xat
        -0x5bt
        0x6at
        0x24t
        -0x53t
        0x56t
        0x22t
        -0x7dt
        0x69t
        0x5ct
        -0x12t
        0x32t
        -0x64t
        0x6bt
        0x5ct
        0x2dt
        -0x23t
        0x26t
        0xet
        -0x7dt
        0x1t
        0x5ft
        -0x71t
        -0x7ct
        -0x2t
        -0x41t
        -0x70t
        0x78t
        0x7dt
        -0x2ct
        0x69t
        -0x1dt
        -0x75t
        0x3et
        -0x48t
        0x1ct
        -0x36t
        0x73t
        0x2dt
        0x54t
        0x5t
        0x5at
        0x29t
        -0x79t
        -0x56t
        0x40t
        -0x4dt
        -0x6bt
        0x55t
        0x1et
        0x3bt
        -0x6et
        0x1t
        -0x27t
        -0x6ft
        0x78t
        0x23t
        -0x6t
        0x66t
        -0xat
        0x5t
        -0x6ct
        -0x32t
        0x58t
        0x7bt
        0x2ft
        -0x68t
        -0x51t
        -0x31t
        0x24t
        0x12t
        0x6bt
        -0x38t
        -0x23t
        0x25t
        -0x73t
        -0x6et
        0x79t
        0x56t
        -0x44t
        -0x2et
        0x17t
        0x4et
        -0x7bt
        0x52t
        0x6dt
        -0x10t
        0x7t
        -0x27t
        -0x23t
        -0x72t
        0x1at
        -0x35t
        0x58t
        -0x71t
        -0x46t
        0x23t
        0xbt
        -0x47t
        0x68t
        -0x3ct
        0x48t
        -0x23t
        0x16t
        0x54t
        -0x53t
        0x5et
        -0x5dt
        -0x2ct
        -0x10t
        0x2at
        0x43t
        -0x3et
        -0x39t
        -0x7et
        0x4t
        0x58t
        -0x69t
        0x2at
        -0x69t
        -0x77t
        -0x6t
        -0xft
        0x21t
        -0x2dt
        0x3ft
        0x53t
        0x63t
        -0x32t
        -0xbt
        0x21t
        -0x59t
        -0x41t
        0x3ct
        -0x23t
        -0x4t
        0x65t
        -0x38t
        0x24t
        0x59t
        -0x69t
        0x57t
        -0x79t
        0x55t
        0x3at
        0xct
        0x40t
        0x36t
        0x1at
        0x3dt
        0x72t
        0x6ct
        0xdt
        0x47t
        -0x2at
        -0x4et
        0x1bt
        0x69t
        -0x9t
        0xft
        -0x37t
        -0x73t
        -0x41t
        0x5ft
        0x5dt
        0x25t
        -0x26t
        0x24t
        0x4ct
        -0x37t
        -0x7ft
        0x5t
        -0x14t
        0x23t
        0x9t
        0x3t
        -0x5bt
        -0x54t
        0x5ft
        0x5dt
        0x15t
        0x45t
        -0x6bt
        0x54t
        -0x62t
        -0x65t
        0x1dt
        0x74t
        0x3bt
        0x1dt
        0x48t
        -0x54t
        -0x64t
        -0x42t
        0x52t
        0x5bt
        0x2bt
        0x26t
        -0x14t
        -0x80t
        -0x5et
        0x7dt
        0x75t
        0x37t
        -0x5dt
        -0x7bt
        -0x7ct
        0x4et
        0x38t
        0x4t
        -0x38t
        -0x79t
        -0x6t
        -0x38t
        0x3ft
        -0x12t
        0x31t
        0x21t
        -0x54t
        -0x7dt
        -0x51t
        0x7dt
        -0x80t
        -0x18t
        0x2ct
        -0x25t
        -0x38t
        0x44t
        -0x5dt
        0x4dt
        0xet
        0x40t
        0x2et
        -0x69t
        0x30t
        0x55t
        -0x69t
        -0x22t
        -0x54t
        -0x22t
        0x4at
        0x2et
        -0x64t
        0x72t
        -0x42t
        -0x9t
        0x30t
        -0x69t
        -0x15t
        0x20t
        -0x2bt
        -0x68t
        0x32t
        -0xct
        0xdt
        0x41t
        0x41t
        -0x2ct
        0x20t
        0x37t
        0x3bt
        -0x43t
        -0x35t
        -0x60t
        -0x40t
        -0x3t
        0x48t
        0x1bt
        0x47t
        0x1ft
        -0x39t
        0x1ft
        0x4et
        -0x2at
        -0x7at
        0x7dt
        -0x11t
        -0x58t
        -0x61t
        0x0t
        0x61t
        0x6at
        -0x7ft
        0x26t
        0x2ft
        -0x5et
        -0x63t
        0x16t
        0x40t
        -0x66t
        0x2dt
        -0x3bt
        0x3dt
        0x7dt
        0x7bt
        -0x38t
        0x27t
        0x6et
        0x1t
        0x1t
        -0x5t
        -0x43t
        -0x3et
        -0x6bt
        0x16t
        -0x68t
        -0x18t
        0x61t
        -0x53t
        -0x1t
        0x51t
        0x4ft
        0x1at
        0x3ct
        0x25t
        0x6ft
        0x9t
        -0x32t
        0x45t
        0x61t
        0x69t
        -0x65t
        -0x7ct
        0x18t
        -0x65t
        0x54t
        -0xft
        -0x2et
        -0x29t
        -0x1ct
        -0xbt
        0x66t
        0x5at
        0x4ft
        -0x64t
        -0x43t
        0x12t
        0x64t
        -0x8t
        0x17t
        0x0t
        0x12t
        -0x60t
        -0xet
        0x71t
        -0x39t
        -0x52t
        0x67t
        0x4ct
        0x51t
        -0x5at
        0x49t
        0x45t
        -0x55t
        0x52t
        -0x49t
        -0x11t
        0x14t
        -0x42t
        -0xdt
        -0xct
        -0x37t
        0x32t
        -0x11t
        0x5et
        0x74t
        0x3et
        -0x55t
        -0x3ct
        0x48t
        -0x39t
        0x4et
        -0x64t
        -0x3t
        0x13t
        0x60t
        -0x7at
        0x16t
        -0x65t
        -0x63t
        -0x30t
        0x21t
        -0xct
        0x42t
        0x5ct
        0x6ct
        0x12t
        -0xat
        -0x58t
        0x7dt
        -0x1bt
        -0x18t
        0x31t
        0xet
        0x58t
        -0x66t
        -0x7t
        0x57t
        0x40t
        -0x37t
        -0x4et
        0x4bt
        -0x1dt
        -0x1bt
        0x3t
        -0x6et
        -0x17t
        0x6t
        -0x6at
        0x0t
        0x31t
        -0x13t
        0x34t
        -0xdt
        -0x20t
        -0x37t
        -0x71t
        -0x2t
        0x18t
        0x55t
        -0x80t
        -0x49t
        -0x77t
        -0x61t
        0xft
        -0x4ct
        0x8t
        0x4et
        -0x4dt
        -0x51t
        -0x33t
        -0x64t
        0x59t
        0x5et
        0x1t
        0x1at
        0x5t
        -0x5ft
        0x6t
        -0x6at
        0x23t
        0x5ct
        -0x5ct
        0x67t
        -0x8t
        -0x3bt
        -0x25t
        -0x20t
        0x41t
        0x52t
        -0x4t
        0x45t
        0x68t
        -0x6bt
        -0x27t
        0x7ct
        0x2at
        -0x59t
        -0xdt
        -0x50t
        -0x5et
        0x45t
        0x15t
        0x24t
        -0x32t
        0x72t
        -0x56t
        -0x63t
        0x3bt
        0x5at
        0x22t
        0x74t
        -0x50t
        -0x4ct
        -0x63t
        0x15t
        -0x26t
        0x78t
        0x48t
        -0x3at
        0x1ct
        0x5bt
        0x4t
        0x5t
        -0x2at
        -0x55t
        -0x63t
        0x7dt
        -0x1at
        -0x49t
        0x67t
        -0x4at
        -0x1t
        -0x3ft
        -0x42t
        0xdt
        0x6bt
        -0x1bt
        0x71t
        -0x63t
        -0x17t
        -0x44t
        0x45t
        0x34t
        -0x63t
        0x11t
        0x2at
        0x62t
        -0x64t
        0x53t
        -0x55t
        0x52t
        0x6dt
        0x7t
        -0x6at
        0x4dt
        0x37t
        0x2at
        -0x26t
        0x76t
        0x2ft
        0x52t
        -0x73t
        0x73t
        0x76t
        -0x5t
        -0x5bt
        -0x4ft
        0xdt
        -0x7ft
        0x3et
        -0x36t
        -0x71t
        0x6ft
        -0x6at
        -0x6ct
        -0x44t
        0x2ft
        0x5ft
        0x70t
        -0x3t
        0x69t
        -0x36t
        -0x78t
        -0xet
        0x15t
        0x1ft
        0x1et
        0x4dt
        -0x55t
        0x54t
        0x41t
        0x58t
        -0x7ft
        0x7t
        -0x69t
        -0x16t
        0x51t
        0x7at
        0x4at
        0x57t
        0x55t
        0x2at
        0x7at
        0x61t
        0x2bt
        0x28t
        0x15t
        0x2at
        0x3et
        0x2at
        0x2at
        0x2at
        0x22t
        0x2at
        0x5dt
        0x65t
        -0x7dt
        0x62t
        -0x25t
        -0x5bt
        -0x7ct
        0x24t
        -0x70t
        0x2ct
        0x2at
        0x2at
        -0x4at
        0x3et
        0x2at
        0x2at
        0x23t
        0x2at
        0xet
        0x2at
        0x2at
        0x2at
        0x2at
        0x2at
        0x2at
        0x2at
        0xat
        0x2at
        0x2at
        0x2at
        0x2at
        0x2at
        0x2at
        0x2at
        0x47t
        0x53t
        0x49t
        0x5at
        0x5ft
        0x43t
        0x44t
        0x4ct
        0x45t
        0x20t
        0x2at
        0xat
        0x2at
        0x2at
        0x2at
        0x2at
        0x2at
        0x2bt
        0x2at
        0x32t
        0x2at
        -0x1ct
        0x54t
        -0x24t
        0x5et
        -0x44t
        -0x7dt
        -0x5t
        0x2bt
        -0xdt
        0x77t
        -0x21t
        0x5et
        -0x44t
        -0x7dt
        -0x5t
        0x2bt
        0x14t
        0x76t
        -0x41t
        -0x56t
        -0xbt
        -0x71t
        -0x5t
        0x2bt
        0x7at
        0x61t
        0x2ft
        0x2ct
        0x2at
        0x2at
        0x2at
        0x2at
        0x2bt
        0x2at
        0x2bt
        0x2at
        0x71t
        0x2at
        0x2at
        0x2at
        -0x35t
        0x2ct
        0x2at
        0x2at
        0x2at
        0x2at
    .end array-data
.end method

.method public static f()Ljava/lang/String;
    .registers 1

    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    :goto_8
    return-object v0

    :catch_9
    move-exception v0

    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static g()Ljava/lang/String;
    .registers 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Lcom/tencent/tp/s;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ";Android "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/tencent/tp/s;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ",level "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/tencent/tp/s;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static h()Ljava/lang/String;
    .registers 1

    :try_start_0
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2} :catch_3

    :goto_2
    return-object v0

    :catch_3
    move-exception v0

    const-string v0, "null"

    goto :goto_2
.end method

.method public static i()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/tencent/tp/s;->a()Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "NotImp"

    :goto_8
    return-object v0

    :cond_9
    const-string v0, "UNKNOWN"

    :try_start_b
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_d} :catch_e

    goto :goto_8

    :catch_e
    move-exception v0

    const-string v0, "UNKNOWN"

    goto :goto_8
.end method

.method public static j()Ljava/lang/String;
    .registers 3

    invoke-static {}, Lcom/tencent/tp/s;->a()Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "NotImp"

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    :try_start_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/tp/s;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/tencent/tp/s;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_2e} :catch_30

    move-result-object v0

    goto :goto_8

    :catch_30
    move-exception v1

    goto :goto_8
.end method

.method private static k()V
    .registers 2

    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_24

    new-instance v1, Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/tp/s;->a([B)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    if-eqz v1, :cond_21

    invoke-static {v1}, Lcom/tencent/tp/r;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    :goto_1f
    sput-boolean v0, Lcom/tencent/tp/s;->c:Z

    :cond_21
    return-void

    :cond_22
    const/4 v0, 0x0

    goto :goto_1f

    :array_24
    .array-data 1
        0x63t
        0x59t
        0x6ft
        0x44t
        0x4bt
        0x48t
        0x46t
        0x4ft
        0x4et
        0x75t
        0x1bt
        0x10t
        0x4bt
        0x46t
        0x46t
        0x45t
        0x5dt
        0x75t
        0x42t
        0x5dt
    .end array-data
.end method

.method private static l()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/tencent/tp/s;->a()Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "NotImp"

    :goto_8
    return-object v0

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method
