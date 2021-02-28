.class public Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridge;
.super Ljava/lang/Object;


# static fields
.field private static _classTable:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;
    .registers 5

    sget-object v0, Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridge;->_classTable:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/NoSuchMethodException;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodException;-><init>()V

    throw v0

    :cond_e
    sget-object v0, Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridge;->_classTable:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    new-instance v0, Ljava/lang/NoSuchMethodException;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodException;-><init>()V

    throw v0

    :cond_22
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-static {p2}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridge;->getTypes([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    return-object v0
.end method

.method private static getTypes([Ljava/lang/Object;)[Ljava/lang/Class;
    .registers 4

    if-nez p0, :cond_17

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    move-object v1, v0

    :goto_6
    if-eqz p0, :cond_1e

    const/4 v0, 0x0

    :goto_9
    array-length v2, p0

    if-ge v0, v2, :cond_1e

    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_17
    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    move-object v1, v0

    goto :goto_6

    :cond_1e
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    const-class v2, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;

    aput-object v2, v1, v0

    return-object v1
.end method

.method private static getValues([Ljava/lang/Object;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)[Ljava/lang/Object;
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_18

    if-nez p1, :cond_8

    const/4 v0, 0x0

    :cond_7
    :goto_7
    return-object v0

    :cond_8
    new-array v0, v0, [Ljava/lang/Object;

    :goto_a
    if-eqz p0, :cond_10

    array-length v2, p0

    invoke-static {p0, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_10
    if-eqz p1, :cond_7

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-object p1, v0, v1

    goto :goto_7

    :cond_18
    array-length v2, p0

    if-eqz p1, :cond_1f

    :goto_1b
    add-int/2addr v0, v2

    new-array v0, v0, [Ljava/lang/Object;

    goto :goto_a

    :cond_1f
    move v0, v1

    goto :goto_1b
.end method

.method public static handleCallback(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCallback(Ljava/lang/String;)Lcom/unity3d/splash/services/core/webview/bridge/NativeCallback;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_9
    invoke-static {p2, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridge;->getValues([Ljava/lang/Object;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/unity3d/splash/services/core/webview/bridge/NativeCallback;->invoke(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_10
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_9 .. :try_end_10} :catch_11
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_10} :catch_18
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_10} :catch_1f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_10} :catch_26

    return-void

    :catch_11
    move-exception v0

    const-string v1, "Error while invoking method"

    invoke-static {v1}, Lcom/unity3d/splash/services/core/log/DeviceLog;->error(Ljava/lang/String;)V

    throw v0

    :catch_18
    move-exception v0

    const-string v1, "Error while invoking method"

    invoke-static {v1}, Lcom/unity3d/splash/services/core/log/DeviceLog;->error(Ljava/lang/String;)V

    throw v0

    :catch_1f
    move-exception v0

    const-string v1, "Error while invoking method"

    invoke-static {v1}, Lcom/unity3d/splash/services/core/log/DeviceLog;->error(Ljava/lang/String;)V

    throw v0

    :catch_26
    move-exception v0

    const-string v1, "Error while invoking method"

    invoke-static {v1}, Lcom/unity3d/splash/services/core/log/DeviceLog;->error(Ljava/lang/String;)V

    throw v0
.end method

.method public static handleInvocation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 12

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    :try_start_5
    invoke-static {p0, p1, p2}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridge;->findMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_8} :catch_12
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_8} :catch_21

    move-result-object v0

    :try_start_9
    invoke-static {p2, p3}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridge;->getValues([Ljava/lang/Object;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)[Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_11} :catch_30
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_9 .. :try_end_11} :catch_45
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_11} :catch_5a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_11} :catch_6f

    return-void

    :catch_12
    move-exception v0

    sget-object v1, Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridgeError;->METHOD_NOT_FOUND:Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridgeError;

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p0, v2, v3

    aput-object p1, v2, v4

    aput-object p2, v2, v5

    invoke-virtual {p3, v1, v2}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    throw v0

    :catch_21
    move-exception v0

    sget-object v1, Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridgeError;->METHOD_NOT_FOUND:Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridgeError;

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p0, v2, v3

    aput-object p1, v2, v4

    aput-object p2, v2, v5

    invoke-virtual {p3, v1, v2}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    throw v0

    :catch_30
    move-exception v0

    sget-object v1, Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridgeError;->INVOCATION_FAILED:Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridgeError;

    new-array v2, v7, [Ljava/lang/Object;

    aput-object p0, v2, v3

    aput-object p1, v2, v4

    aput-object p2, v2, v5

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p3, v1, v2}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    throw v0

    :catch_45
    move-exception v0

    sget-object v1, Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridgeError;->INVOCATION_FAILED:Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridgeError;

    new-array v2, v7, [Ljava/lang/Object;

    aput-object p0, v2, v3

    aput-object p1, v2, v4

    aput-object p2, v2, v5

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p3, v1, v2}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    throw v0

    :catch_5a
    move-exception v0

    sget-object v1, Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridgeError;->INVOCATION_FAILED:Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridgeError;

    new-array v2, v7, [Ljava/lang/Object;

    aput-object p0, v2, v3

    aput-object p1, v2, v4

    aput-object p2, v2, v5

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p3, v1, v2}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    throw v0

    :catch_6f
    move-exception v0

    sget-object v1, Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridgeError;->INVOCATION_FAILED:Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridgeError;

    new-array v2, v7, [Ljava/lang/Object;

    aput-object p0, v2, v3

    aput-object p1, v2, v4

    aput-object p2, v2, v5

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p3, v1, v2}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    throw v0
.end method

.method public static setClassTable([Ljava/lang/Class;)V
    .registers 13

    const/4 v2, 0x0

    if-nez p0, :cond_4

    :cond_3
    return-void

    :cond_4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridge;->_classTable:Ljava/util/HashMap;

    array-length v4, p0

    move v3, v2

    :goto_d
    if-ge v3, v4, :cond_3

    aget-object v5, p0, v3

    if-eqz v5, :cond_7f

    invoke-virtual {v5}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.unity3d.splash.services"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_33

    invoke-virtual {v5}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.unity3d.splash.test"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7f

    :cond_33
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v7

    array-length v8, v7

    move v1, v2

    :goto_3e
    if-ge v1, v8, :cond_76

    aget-object v9, v7, v1

    const-class v0, Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;

    invoke-virtual {v9, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_6c

    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    invoke-virtual {v6, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    :goto_5a
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3e

    :cond_70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_5a

    :cond_76
    sget-object v0, Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridge;->_classTable:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7f
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_d
.end method
