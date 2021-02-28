.class public Lcom/unity3d/splash/services/core/configuration/EnvironmentCheck;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static hasJavascriptInterface(Ljava/lang/reflect/Method;)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-ge v2, v3, :cond_9

    :cond_8
    :goto_8
    return v0

    :cond_9
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v3

    if-eqz v3, :cond_1c

    array-length v4, v3

    move v2, v1

    :goto_11
    if-ge v2, v4, :cond_1c

    aget-object v5, v3, v2

    instance-of v5, v5, Landroid/webkit/JavascriptInterface;

    if-nez v5, :cond_8

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_1c
    move v0, v1

    goto :goto_8
.end method

.method public static isEnvironmentOk()Z
    .registers 1

    invoke-static {}, Lcom/unity3d/splash/services/core/configuration/EnvironmentCheck;->testProGuard()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/unity3d/splash/services/core/configuration/EnvironmentCheck;->testCacheDirectory()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static testCacheDirectory()Z
    .registers 1

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/SdkProperties;->getCacheDirectory()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_d

    const-string v0, "Unity Ads cache directory check OK"

    invoke-static {v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const-string v0, "Unity Ads cache directory check fail: no working cache directory available"

    invoke-static {v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->error(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_c
.end method

.method public static testProGuard()Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_2
    const-string v2, "com.unity3d.splash.services.core.webview.bridge.WebViewBridgeInterface"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "handleInvocation"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const-string v4, "handleCallback"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-static {v3}, Lcom/unity3d/splash/services/core/configuration/EnvironmentCheck;->hasJavascriptInterface(Ljava/lang/reflect/Method;)Z

    move-result v3

    if-eqz v3, :cond_40

    invoke-static {v2}, Lcom/unity3d/splash/services/core/configuration/EnvironmentCheck;->hasJavascriptInterface(Ljava/lang/reflect/Method;)Z

    move-result v2

    if-eqz v2, :cond_40

    const-string v2, "Unity Ads ProGuard check OK"

    invoke-static {v2}, Lcom/unity3d/splash/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    :goto_3f
    return v0

    :cond_40
    const-string v2, "Unity Ads ProGuard check fail: missing @JavascriptInterface annotations in Unity Ads web bridge"

    invoke-static {v2}, Lcom/unity3d/splash/services/core/log/DeviceLog;->error(Ljava/lang/String;)V
    :try_end_45
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_45} :catch_47
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_45} :catch_4f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_45} :catch_57

    move v0, v1

    goto :goto_3f

    :catch_47
    move-exception v0

    const-string v2, "Unity Ads ProGuard check fail: Unity Ads web bridge class not found"

    invoke-static {v2, v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    move v0, v1

    goto :goto_3f

    :catch_4f
    move-exception v0

    const-string v2, "Unity Ads ProGuard check fail: Unity Ads web bridge methods not found"

    invoke-static {v2, v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    move v0, v1

    goto :goto_3f

    :catch_57
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown exception during Unity Ads ProGuard check: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_3f
.end method
