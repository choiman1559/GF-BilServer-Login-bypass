.class public Lcom/bilibili/deviceutils/helper/DeviceHelper;
.super Ljava/lang/Object;


# static fields
.field private static final sCarrierMap:Ljava/util/Map;
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
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/bilibili/deviceutils/helper/DeviceHelper$1;

    invoke-direct {v0}, Lcom/bilibili/deviceutils/helper/DeviceHelper$1;-><init>()V

    sput-object v0, Lcom/bilibili/deviceutils/helper/DeviceHelper;->sCarrierMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static camera2SizeToString([Landroid/util/Size;)Ljava/lang/String;
    .registers 7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_34

    array-length v2, p0

    const/4 v0, 0x0

    :goto_d
    if-ge v0, v2, :cond_34

    aget-object v3, p0, v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_1c

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1c
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x78

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static cameraSizeToSting(Ljava/lang/Iterable;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_20

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_20
    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x78

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static check()Z
    .registers 6

    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    const-string v4, "/proc/self/maps"

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e} :catch_38
    .catchall {:try_start_2 .. :try_end_e} :catchall_41

    :cond_e
    :try_start_e
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_31

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_18
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_27} :catch_53
    .catchall {:try_start_e .. :try_end_27} :catchall_51

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    if-eqz v1, :cond_30

    :try_start_2d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_4b

    :cond_30
    :goto_30
    return v0

    :cond_31
    if-eqz v1, :cond_36

    :try_start_33
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_4d

    :cond_36
    :goto_36
    const/4 v0, 0x0

    goto :goto_30

    :catch_38
    move-exception v1

    :goto_39
    if-eqz v0, :cond_36

    :try_start_3b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_3f

    goto :goto_36

    :catch_3f
    move-exception v0

    goto :goto_36

    :catchall_41
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_45
    if-eqz v1, :cond_4a

    :try_start_47
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_4f

    :cond_4a
    :goto_4a
    throw v0

    :catch_4b
    move-exception v1

    goto :goto_30

    :catch_4d
    move-exception v0

    goto :goto_36

    :catch_4f
    move-exception v1

    goto :goto_4a

    :catchall_51
    move-exception v0

    goto :goto_45

    :catch_53
    move-exception v0

    move-object v0, v1

    goto :goto_39
.end method

.method public static checkHasPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 9

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    :try_start_3
    const-string v3, "android.support.v4.content.ContextCompat"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_4a

    move-result-object v0

    :goto_9
    if-nez v0, :cond_11

    :try_start_b
    const-string v3, "androidx.core.content.ContextCompat"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_48

    move-result-object v0

    :cond_11
    :goto_11
    if-nez v0, :cond_15

    move v0, v1

    :goto_14
    return v0

    :cond_15
    :try_start_15
    const-string v3, "checkSelfPermission"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_3b} :catch_42

    move-result v0

    if-eqz v0, :cond_40

    move v0, v2

    goto :goto_14

    :cond_40
    move v0, v1

    goto :goto_14

    :catch_42
    move-exception v0

    invoke-static {v0}, Lcom/bilibili/deviceutils/DeviceLog;->printStackTrace(Ljava/lang/Exception;)V

    move v0, v1

    goto :goto_14

    :catch_48
    move-exception v3

    goto :goto_11

    :catch_4a
    move-exception v3

    goto :goto_9
.end method

.method public static checkPkg(Landroid/content/Context;)Z
    .registers 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p0, :cond_5

    :goto_4
    return v3

    :cond_5
    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v3

    :goto_17
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_28} :catch_36

    move-result v0

    if-eqz v0, :cond_38

    add-int/lit8 v0, v1, 0x1

    :goto_2d
    move v1, v0

    goto :goto_17

    :cond_2f
    if-le v1, v2, :cond_34

    move v0, v2

    :goto_32
    move v3, v0

    goto :goto_4

    :cond_34
    move v0, v3

    goto :goto_32

    :catch_36
    move-exception v0

    goto :goto_4

    :cond_38
    move v0, v1

    goto :goto_2d
.end method

.method private static getCarrierFromJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method private static getJsonFromAssets(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :try_start_6
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v0, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_18} :catch_4f
    .catchall {:try_start_6 .. :try_end_18} :catchall_40

    :goto_18
    :try_start_18
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_30

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_21} :catch_22
    .catchall {:try_start_18 .. :try_end_21} :catchall_4c

    goto :goto_18

    :catch_22
    move-exception v0

    :goto_23
    :try_start_23
    invoke-static {v0}, Lcom/bilibili/deviceutils/DeviceLog;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_4c

    if-eqz v1, :cond_2b

    :try_start_28
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_3b

    :cond_2b
    :goto_2b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_30
    if-eqz v1, :cond_2b

    :try_start_32
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_36

    goto :goto_2b

    :catch_36
    move-exception v0

    invoke-static {v0}, Lcom/bilibili/deviceutils/DeviceLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_2b

    :catch_3b
    move-exception v0

    invoke-static {v0}, Lcom/bilibili/deviceutils/DeviceLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_2b

    :catchall_40
    move-exception v0

    :goto_41
    if-eqz v2, :cond_46

    :try_start_43
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_47

    :cond_46
    :goto_46
    throw v0

    :catch_47
    move-exception v1

    invoke-static {v1}, Lcom/bilibili/deviceutils/DeviceLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_46

    :catchall_4c
    move-exception v0

    move-object v2, v1

    goto :goto_41

    :catch_4f
    move-exception v0

    move-object v1, v2

    goto :goto_23
.end method

.method public static getNetIp()Ljava/lang/String;
    .registers 6

    :try_start_0
    new-instance v1, Ljava/net/URL;

    const-string v2, "https://ifconfig.co/json"

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    const/16 v3, 0x7d0

    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const/16 v3, 0x7d0

    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->setReadTimeout(I)V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_6a

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    const-string v4, "utf-8"

    invoke-direct {v3, v1, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_36
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_57

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_52} :catch_53

    goto :goto_36

    :catch_53
    move-exception v1

    const-string v1, ""

    :goto_56
    return-object v1

    :cond_57
    :try_start_57
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "ip"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_68} :catch_53

    move-result-object v1

    goto :goto_56

    :cond_6a
    const-string v1, ""

    goto :goto_56
.end method

.method public static intIP2StringIP(I)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit16 v1, p0, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isCanExecute(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ls -l "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1b} :catch_52
    .catchall {:try_start_1 .. :try_end_1b} :catchall_59

    move-result-object v1

    :try_start_1c
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-lt v2, v3, :cond_4b

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_3b} :catch_65
    .catchall {:try_start_1c .. :try_end_3b} :catchall_63

    move-result v0

    const/16 v2, 0x73

    if-eq v0, v2, :cond_44

    const/16 v2, 0x78

    if-ne v0, v2, :cond_4b

    :cond_44
    const/4 v0, 0x1

    if-eqz v1, :cond_4a

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    :cond_4a
    :goto_4a
    return v0

    :cond_4b
    if-eqz v1, :cond_50

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    :cond_50
    :goto_50
    const/4 v0, 0x0

    goto :goto_4a

    :catch_52
    move-exception v1

    :goto_53
    if-eqz v0, :cond_50

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    goto :goto_50

    :catchall_59
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_5d
    if-eqz v1, :cond_62

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    :cond_62
    throw v0

    :catchall_63
    move-exception v0

    goto :goto_5d

    :catch_65
    move-exception v0

    move-object v0, v1

    goto :goto_53
.end method

.method public static isExecutable(Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ls -l "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1b} :catch_56
    .catchall {:try_start_1 .. :try_end_1b} :catchall_5d

    move-result-object v1

    :try_start_1c
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-lt v2, v3, :cond_4f

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_3f} :catch_69
    .catchall {:try_start_1c .. :try_end_3f} :catchall_67

    move-result v0

    const/16 v2, 0x73

    if-eq v0, v2, :cond_48

    const/16 v2, 0x78

    if-ne v0, v2, :cond_4f

    :cond_48
    const/4 v0, 0x1

    if-eqz v1, :cond_4e

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    :cond_4e
    :goto_4e
    return v0

    :cond_4f
    if-eqz v1, :cond_54

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    :cond_54
    :goto_54
    const/4 v0, 0x0

    goto :goto_4e

    :catch_56
    move-exception v1

    :goto_57
    if-eqz v0, :cond_54

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    goto :goto_54

    :catchall_5d
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_61
    if-eqz v1, :cond_66

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    :cond_66
    throw v0

    :catchall_67
    move-exception v0

    goto :goto_61

    :catch_69
    move-exception v0

    move-object v0, v1

    goto :goto_57
.end method

.method static operatorToCarrier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    :goto_6
    return-object p2

    :cond_7
    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceHelper;->sCarrierMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceHelper;->sCarrierMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object p2, v0

    goto :goto_6

    :cond_19
    const-string v0, "sa_mcc_mnc_mini.json"

    invoke-static {v0, p0}, Lcom/bilibili/deviceutils/helper/DeviceHelper;->getJsonFromAssets(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_30

    sget-object v0, Lcom/bilibili/deviceutils/helper/DeviceHelper;->sCarrierMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2a} :catch_2b

    goto :goto_6

    :catch_2b
    move-exception v0

    invoke-static {v0}, Lcom/bilibili/deviceutils/DeviceLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_6

    :cond_30
    :try_start_30
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1, p1}, Lcom/bilibili/deviceutils/helper/DeviceHelper;->getCarrierFromJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lcom/bilibili/deviceutils/helper/DeviceHelper;->sCarrierMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_44} :catch_2b

    move-object p2, v0

    goto :goto_6
.end method

.method static restSize(Ljava/util/List;I)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;I)I"
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v0, Lcom/bilibili/deviceutils/helper/DeviceHelper$2;

    invoke-direct {v0}, Lcom/bilibili/deviceutils/helper/DeviceHelper$2;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move v1, v2

    :goto_a
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1f

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    if-ge v0, p1, :cond_1b

    :goto_1a
    return v1

    :cond_1b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a

    :cond_1f
    move v1, v2

    goto :goto_1a
.end method
