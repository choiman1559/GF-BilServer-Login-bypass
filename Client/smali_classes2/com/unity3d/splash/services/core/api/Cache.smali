.class public Lcom/unity3d/splash/services/core/api/Cache;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteFile(Ljava/lang/String;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 5
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    const/4 v2, 0x0

    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/unity3d/splash/services/core/api/Cache;->fileIdToFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_16

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    :goto_15
    return-void

    :cond_16
    sget-object v0, Lcom/unity3d/splash/services/core/cache/CacheError;->FILE_IO_ERROR:Lcom/unity3d/splash/services/core/cache/CacheError;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_15
.end method

.method public static download(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/Boolean;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 9
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    const/4 v3, 0x0

    invoke-static {}, Lcom/unity3d/splash/services/core/cache/CacheThread;->isActive()Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lcom/unity3d/splash/services/core/cache/CacheError;->FILE_ALREADY_CACHING:Lcom/unity3d/splash/services/core/cache/CacheError;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p4, v0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    :goto_e
    return-void

    :cond_f
    invoke-static {}, Lcom/unity3d/splash/services/core/device/Device;->isActiveNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_1d

    sget-object v0, Lcom/unity3d/splash/services/core/cache/CacheError;->NO_INTERNET:Lcom/unity3d/splash/services/core/cache/CacheError;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p4, v0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_e

    :cond_1d
    :try_start_1d
    invoke-static {p2}, Lcom/unity3d/splash/services/core/api/Request;->getHeadersMap(Lorg/json/JSONArray;)Ljava/util/HashMap;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_20} :catch_32

    move-result-object v0

    invoke-static {p1}, Lcom/unity3d/splash/services/core/api/Cache;->fileIdToFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {p0, v1, v0, v2}, Lcom/unity3d/splash/services/core/cache/CacheThread;->download(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Z)V

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p4, v0}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    goto :goto_e

    :catch_32
    move-exception v0

    const-string v1, "Error mapping headers for the request"

    invoke-static {v1, v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    sget-object v0, Lcom/unity3d/splash/services/core/request/WebRequestError;->MAPPING_HEADERS_FAILED:Lcom/unity3d/splash/services/core/request/WebRequestError;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {p4, v0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_e
.end method

.method private static fileIdToFilename(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/SdkProperties;->getCacheDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/SdkProperties;->getCacheFilePrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCacheDirectoryExists(Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 4
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    const/4 v2, 0x0

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/SdkProperties;->getCacheDirectory()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_f

    sget-object v0, Lcom/unity3d/splash/services/core/cache/CacheError;->CACHE_DIRECTORY_NULL:Lcom/unity3d/splash/services/core/cache/CacheError;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    :goto_e
    return-void

    :cond_f
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-virtual {p0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    goto :goto_e
.end method

.method public static getCacheDirectoryType(Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 4
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    const/4 v2, 0x0

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/SdkProperties;->getCacheDirectoryObject()Lcom/unity3d/splash/services/core/cache/CacheDirectory;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unity3d/splash/services/core/cache/CacheDirectory;->getCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_19

    :cond_11
    sget-object v0, Lcom/unity3d/splash/services/core/cache/CacheError;->CACHE_DIRECTORY_NULL:Lcom/unity3d/splash/services/core/cache/CacheError;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    :goto_18
    return-void

    :cond_19
    invoke-static {}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unity3d/splash/services/core/cache/CacheDirectory;->getCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2f

    sget-object v0, Lcom/unity3d/splash/services/core/cache/CacheError;->CACHE_DIRECTORY_DOESNT_EXIST:Lcom/unity3d/splash/services/core/cache/CacheError;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_18

    :cond_2f
    invoke-virtual {v0}, Lcom/unity3d/splash/services/core/cache/CacheDirectory;->getType()Lcom/unity3d/splash/services/core/cache/CacheDirectoryType;

    move-result-object v0

    if-nez v0, :cond_3d

    sget-object v0, Lcom/unity3d/splash/services/core/cache/CacheError;->CACHE_DIRECTORY_TYPE_NULL:Lcom/unity3d/splash/services/core/cache/CacheError;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_18

    :cond_3d
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/unity3d/splash/services/core/cache/CacheDirectoryType;->name()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-virtual {p0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    goto :goto_18
.end method

.method public static getFileContent(Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 10
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    const/4 v3, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {p0}, Lcom/unity3d/splash/services/core/api/Cache;->fileIdToFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1f

    sget-object v1, Lcom/unity3d/splash/services/core/cache/CacheError;->FILE_NOT_FOUND:Lcom/unity3d/splash/services/core/cache/CacheError;

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p0, v2, v4

    aput-object v0, v2, v5

    invoke-virtual {p2, v1, v2}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    :goto_1e
    return-void

    :cond_1f
    :try_start_1f
    invoke-static {v1}, Lcom/unity3d/splash/services/core/misc/Utilities;->readFileBytes(Ljava/io/File;)[B
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_33

    move-result-object v1

    if-nez p1, :cond_65

    sget-object v1, Lcom/unity3d/splash/services/core/cache/CacheError;->UNSUPPORTED_ENCODING:Lcom/unity3d/splash/services/core/cache/CacheError;

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v4

    aput-object v0, v2, v5

    aput-object p1, v2, v6

    invoke-virtual {p2, v1, v2}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_1e

    :catch_33
    move-exception v1

    sget-object v2, Lcom/unity3d/splash/services/core/cache/CacheError;->FILE_IO_ERROR:Lcom/unity3d/splash/services/core/cache/CacheError;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v4

    aput-object v0, v3, v5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-virtual {p2, v2, v3}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_1e

    :cond_65
    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_87

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_7f
    new-array v1, v5, [Ljava/lang/Object;

    aput-object v0, v1, v4

    invoke-virtual {p2, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    goto :goto_1e

    :cond_87
    const-string v2, "Base64"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_94

    invoke-static {v1, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    goto :goto_7f

    :cond_94
    sget-object v1, Lcom/unity3d/splash/services/core/cache/CacheError;->UNSUPPORTED_ENCODING:Lcom/unity3d/splash/services/core/cache/CacheError;

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v4

    aput-object v0, v2, v5

    aput-object p1, v2, v6

    invoke-virtual {p2, v1, v2}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto/16 :goto_1e
.end method

.method public static getFileInfo(Ljava/lang/String;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 6
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    const/4 v3, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/unity3d/splash/services/core/api/Cache;->getFileJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p1, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_e} :catch_f

    :goto_e
    return-void

    :catch_f
    move-exception v0

    const-string v1, "Error creating JSON"

    invoke-static {v1, v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    sget-object v0, Lcom/unity3d/splash/services/core/cache/CacheError;->JSON_ERROR:Lcom/unity3d/splash/services/core/cache/CacheError;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_e
.end method

.method private static getFileJson(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 7

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "id"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Lcom/unity3d/splash/services/core/api/Cache;->fileIdToFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_32

    const-string v2, "found"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "size"

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "mtime"

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :goto_31
    return-object v0

    :cond_32
    const-string v1, "found"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_31
.end method

.method public static getFilePath(Ljava/lang/String;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 5
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    const/4 v2, 0x0

    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/unity3d/splash/services/core/api/Cache;->fileIdToFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/unity3d/splash/services/core/api/Cache;->fileIdToFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    :goto_1c
    return-void

    :cond_1d
    sget-object v0, Lcom/unity3d/splash/services/core/cache/CacheError;->FILE_NOT_FOUND:Lcom/unity3d/splash/services/core/cache/CacheError;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_1c
.end method

.method public static getFiles(Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 11
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/SdkProperties;->getCacheDirectory()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    const-string v2, "Unity Ads cache: checking app directory for Unity Ads cached files"

    invoke-static {v2}, Lcom/unity3d/splash/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    new-instance v2, Lcom/unity3d/splash/services/core/api/Cache$1;

    invoke-direct {v2}, Lcom/unity3d/splash/services/core/api/Cache$1;-><init>()V

    invoke-virtual {v0, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_1c

    array-length v0, v2

    if-nez v0, :cond_28

    :cond_1c
    new-array v0, v3, [Ljava/lang/Object;

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    aput-object v3, v0, v1

    invoke-virtual {p0, v0}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    :cond_28
    :try_start_28
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    array-length v4, v2

    move v0, v1

    :goto_2f
    if-ge v0, v4, :cond_73

    aget-object v5, v2, v0

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/SdkProperties;->getCacheFilePrefix()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Unity Ads cache: found "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " bytes"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/unity3d/splash/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/unity3d/splash/services/core/api/Cache;->getFileJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    :cond_73
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v3, v0, v2

    invoke-virtual {p0, v0}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V
    :try_end_7c
    .catch Lorg/json/JSONException; {:try_start_28 .. :try_end_7c} :catch_7d

    goto :goto_8

    :catch_7d
    move-exception v0

    const-string v2, "Error creating JSON"

    invoke-static {v2, v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    sget-object v0, Lcom/unity3d/splash/services/core/cache/CacheError;->JSON_ERROR:Lcom/unity3d/splash/services/core/cache/CacheError;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto/16 :goto_8
.end method

.method public static getFreeSpace(Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 5
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/SdkProperties;->getCacheDirectory()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/unity3d/splash/services/core/device/Device;->getFreeSpace(Ljava/io/File;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    return-void
.end method

.method public static getHash(Ljava/lang/String;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 5
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/unity3d/splash/services/core/misc/Utilities;->Sha256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    return-void
.end method

.method private static getMetaData(Ljava/lang/String;Lorg/json/JSONArray;)Landroid/util/SparseArray;
    .registers 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0xa
    .end annotation

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_33

    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_1d
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_52

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_30

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_33
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "File: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " doesn\'t exist"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_52
    return-object v1
.end method

.method public static getMetaData(Ljava/lang/String;Lorg/json/JSONArray;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 10
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    const/4 v6, 0x1

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/unity3d/splash/services/core/api/Cache;->fileIdToFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_6
    invoke-static {v0, p1}, Lcom/unity3d/splash/services/core/api/Cache;->getMetaData(Ljava/lang/String;Lorg/json/JSONArray;)Landroid/util/SparseArray;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_9} :catch_2f
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_9} :catch_3e
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_9} :catch_4d

    move-result-object v2

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    move v0, v1

    :goto_10
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_5c

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :catch_2f
    move-exception v0

    sget-object v2, Lcom/unity3d/splash/services/core/cache/CacheError;->JSON_ERROR:Lcom/unity3d/splash/services/core/cache/CacheError;

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-virtual {p2, v2, v3}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    :goto_3d
    return-void

    :catch_3e
    move-exception v0

    sget-object v2, Lcom/unity3d/splash/services/core/cache/CacheError;->INVALID_ARGUMENT:Lcom/unity3d/splash/services/core/cache/CacheError;

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-virtual {p2, v2, v3}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_3d

    :catch_4d
    move-exception v0

    sget-object v2, Lcom/unity3d/splash/services/core/cache/CacheError;->FILE_IO_ERROR:Lcom/unity3d/splash/services/core/cache/CacheError;

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-virtual {p2, v2, v3}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_3d

    :cond_5c
    new-array v0, v6, [Ljava/lang/Object;

    aput-object v3, v0, v1

    invoke-virtual {p2, v0}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    goto :goto_3d
.end method

.method public static getProgressInterval(Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 4
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/splash/services/core/cache/CacheThread;->getProgressInterval()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    return-void
.end method

.method public static getTimeouts(Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 4
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/splash/services/core/cache/CacheThread;->getConnectTimeout()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {}, Lcom/unity3d/splash/services/core/cache/CacheThread;->getReadTimeout()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    return-void
.end method

.method public static getTotalSpace(Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 5
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/SdkProperties;->getCacheDirectory()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/unity3d/splash/services/core/device/Device;->getTotalSpace(Ljava/io/File;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    return-void
.end method

.method public static isCaching(Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 4
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/splash/services/core/cache/CacheThread;->isActive()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    return-void
.end method

.method public static recreateCacheDirectory(Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 3
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/SdkProperties;->getCacheDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lcom/unity3d/splash/services/core/cache/CacheError;->CACHE_DIRECTORY_EXISTS:Lcom/unity3d/splash/services/core/cache/CacheError;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    :goto_12
    return-void

    :cond_13
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/unity3d/splash/services/core/properties/SdkProperties;->setCacheDirectory(Lcom/unity3d/splash/services/core/cache/CacheDirectory;)V

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/SdkProperties;->getCacheDirectory()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_25

    sget-object v0, Lcom/unity3d/splash/services/core/cache/CacheError;->CACHE_DIRECTORY_NULL:Lcom/unity3d/splash/services/core/cache/CacheError;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_12

    :cond_25
    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    goto :goto_12
.end method

.method public static setFileContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 13
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/unity3d/splash/services/core/api/Cache;->fileIdToFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x0

    :try_start_9
    const-string v0, "UTF-8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9 .. :try_end_e} :catch_3b

    move-result-object v0

    if-eqz p1, :cond_c3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_c3

    const-string v4, "Base64"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4a

    invoke-static {p2, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    move-object v4, v0

    :goto_24
    :try_start_24
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/io/FileNotFoundException; {:try_start_24 .. :try_end_29} :catch_68
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_29} :catch_8a
    .catchall {:try_start_24 .. :try_end_29} :catchall_ac

    :try_start_29
    invoke-virtual {v0, v4}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2f
    .catch Ljava/io/FileNotFoundException; {:try_start_29 .. :try_end_2f} :catch_c1
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2f} :catch_bf
    .catchall {:try_start_29 .. :try_end_2f} :catchall_ba

    :try_start_2f
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_32} :catch_60

    move v0, v2

    :goto_33
    if-eqz v0, :cond_3a

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p3, v0}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    :cond_3a
    :goto_3a
    return-void

    :catch_3b
    move-exception v0

    sget-object v0, Lcom/unity3d/splash/services/core/cache/CacheError;->UNSUPPORTED_ENCODING:Lcom/unity3d/splash/services/core/cache/CacheError;

    new-array v1, v7, [Ljava/lang/Object;

    aput-object p0, v1, v3

    aput-object v5, v1, v2

    aput-object p1, v1, v6

    invoke-virtual {p3, v0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_3a

    :cond_4a
    const-string v4, "UTF-8"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c3

    sget-object v0, Lcom/unity3d/splash/services/core/cache/CacheError;->UNSUPPORTED_ENCODING:Lcom/unity3d/splash/services/core/cache/CacheError;

    new-array v1, v7, [Ljava/lang/Object;

    aput-object p0, v1, v3

    aput-object v5, v1, v2

    aput-object p1, v1, v6

    invoke-virtual {p3, v0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_3a

    :catch_60
    move-exception v0

    const-string v1, "Error closing FileOutputStream"

    invoke-static {v1, v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    move v0, v2

    goto :goto_33

    :catch_68
    move-exception v0

    move-object v0, v1

    :goto_6a
    :try_start_6a
    sget-object v1, Lcom/unity3d/splash/services/core/cache/CacheError;->FILE_NOT_FOUND:Lcom/unity3d/splash/services/core/cache/CacheError;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v2, v4

    const/4 v4, 0x1

    aput-object v5, v2, v4

    const/4 v4, 0x2

    aput-object p1, v2, v4

    invoke-virtual {p3, v1, v2}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V
    :try_end_7b
    .catchall {:try_start_6a .. :try_end_7b} :catchall_ba

    if-eqz v0, :cond_80

    :try_start_7d
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_80} :catch_82

    :cond_80
    move v0, v3

    goto :goto_33

    :catch_82
    move-exception v0

    const-string v1, "Error closing FileOutputStream"

    invoke-static {v1, v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    move v0, v3

    goto :goto_33

    :catch_8a
    move-exception v0

    move-object v0, v1

    :goto_8c
    :try_start_8c
    sget-object v1, Lcom/unity3d/splash/services/core/cache/CacheError;->FILE_IO_ERROR:Lcom/unity3d/splash/services/core/cache/CacheError;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v2, v4

    const/4 v4, 0x1

    aput-object v5, v2, v4

    const/4 v4, 0x2

    aput-object p1, v2, v4

    invoke-virtual {p3, v1, v2}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V
    :try_end_9d
    .catchall {:try_start_8c .. :try_end_9d} :catchall_ba

    if-eqz v0, :cond_a2

    :try_start_9f
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_a2} :catch_a4

    :cond_a2
    move v0, v3

    goto :goto_33

    :catch_a4
    move-exception v0

    const-string v1, "Error closing FileOutputStream"

    invoke-static {v1, v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    move v0, v3

    goto :goto_33

    :catchall_ac
    move-exception v0

    :goto_ad
    if-eqz v1, :cond_b2

    :try_start_af
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_b2} :catch_b3

    :cond_b2
    :goto_b2
    throw v0

    :catch_b3
    move-exception v1

    const-string v2, "Error closing FileOutputStream"

    invoke-static {v2, v1}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_b2

    :catchall_ba
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_ad

    :catch_bf
    move-exception v1

    goto :goto_8c

    :catch_c1
    move-exception v1

    goto :goto_6a

    :cond_c3
    move-object v4, v0

    goto/16 :goto_24
.end method

.method public static setProgressInterval(Ljava/lang/Integer;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 3
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/unity3d/splash/services/core/cache/CacheThread;->setProgressInterval(I)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    return-void
.end method

.method public static setTimeouts(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 4
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/unity3d/splash/services/core/cache/CacheThread;->setConnectTimeout(I)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/unity3d/splash/services/core/cache/CacheThread;->setReadTimeout(I)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p2, v0}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    return-void
.end method

.method public static stop(Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 3
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/splash/services/core/cache/CacheThread;->isActive()Z

    move-result v0

    if-nez v0, :cond_f

    sget-object v0, Lcom/unity3d/splash/services/core/cache/CacheError;->NOT_CACHING:Lcom/unity3d/splash/services/core/cache/CacheError;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    :goto_e
    return-void

    :cond_f
    invoke-static {}, Lcom/unity3d/splash/services/core/cache/CacheThread;->cancel()V

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    goto :goto_e
.end method
