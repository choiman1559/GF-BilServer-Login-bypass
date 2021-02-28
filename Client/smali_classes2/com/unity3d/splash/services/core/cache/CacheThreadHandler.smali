.class Lcom/unity3d/splash/services/core/cache/CacheThreadHandler;
.super Landroid/os/Handler;


# instance fields
.field private _active:Z

.field private _canceled:Z

.field private _currentRequest:Lcom/unity3d/splash/services/core/request/WebRequest;


# direct methods
.method constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/splash/services/core/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/splash/services/core/request/WebRequest;

    iput-boolean v1, p0, Lcom/unity3d/splash/services/core/cache/CacheThreadHandler;->_canceled:Z

    iput-boolean v1, p0, Lcom/unity3d/splash/services/core/cache/CacheThreadHandler;->_active:Z

    return-void
.end method

.method private downloadFile(Ljava/lang/String;Ljava/lang/String;IIILjava/util/HashMap;Z)V
    .registers 28

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/unity3d/splash/services/core/cache/CacheThreadHandler;->_canceled:Z

    if-nez v6, :cond_a

    if-eqz p1, :cond_a

    if-nez p2, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz p7, :cond_6a

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Unity Ads cache: resuming download "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bytes"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/unity3d/splash/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    :goto_48
    invoke-static {}, Lcom/unity3d/splash/services/core/device/Device;->isActiveNetworkConnected()Z

    move-result v6

    if-nez v6, :cond_8b

    const-string v6, "Unity Ads cache: download cancelled, no internet connection available"

    invoke-static {v6}, Lcom/unity3d/splash/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v6

    sget-object v7, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->CACHE:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v8, Lcom/unity3d/splash/services/core/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/splash/services/core/cache/CacheEvent;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    sget-object v11, Lcom/unity3d/splash/services/core/cache/CacheError;->NO_INTERNET:Lcom/unity3d/splash/services/core/cache/CacheError;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object p1, v9, v10

    invoke-virtual {v6, v7, v8, v9}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto :goto_a

    :cond_6a
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Unity Ads cache: start downloading "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/unity3d/splash/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    goto :goto_48

    :cond_8b
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/unity3d/splash/services/core/cache/CacheThreadHandler;->_active:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const/4 v7, 0x0

    :try_start_95
    new-instance v19, Ljava/io/FileOutputStream;

    move-object/from16 v0, v19

    move/from16 v1, p7

    invoke-direct {v0, v11, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_9e
    .catch Ljava/io/FileNotFoundException; {:try_start_95 .. :try_end_9e} :catch_125
    .catch Ljava/net/MalformedURLException; {:try_start_95 .. :try_end_9e} :catch_17e
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_9e} :catch_1d9
    .catch Ljava/lang/IllegalStateException; {:try_start_95 .. :try_end_9e} :catch_234
    .catch Lcom/unity3d/splash/services/core/request/NetworkIOException; {:try_start_95 .. :try_end_9e} :catch_28f
    .catchall {:try_start_95 .. :try_end_9e} :catchall_2ea

    :try_start_9e
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/unity3d/splash/services/core/cache/CacheThreadHandler;->getWebRequest(Ljava/lang/String;IILjava/util/HashMap;)Lcom/unity3d/splash/services/core/request/WebRequest;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/unity3d/splash/services/core/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/splash/services/core/request/WebRequest;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/unity3d/splash/services/core/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/splash/services/core/request/WebRequest;

    new-instance v7, Lcom/unity3d/splash/services/core/cache/CacheThreadHandler$1;

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v7, v0, v11, v1}, Lcom/unity3d/splash/services/core/cache/CacheThreadHandler$1;-><init>(Lcom/unity3d/splash/services/core/cache/CacheThreadHandler;Ljava/io/File;I)V

    invoke-virtual {v6, v7}, Lcom/unity3d/splash/services/core/request/WebRequest;->setProgressListener(Lcom/unity3d/splash/services/core/request/IWebRequestProgressListener;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/unity3d/splash/services/core/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/splash/services/core/request/WebRequest;

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lcom/unity3d/splash/services/core/request/WebRequest;->makeStreamRequest(Ljava/io/OutputStream;)J

    move-result-wide v12

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/unity3d/splash/services/core/cache/CacheThreadHandler;->_active:Z

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/unity3d/splash/services/core/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/splash/services/core/request/WebRequest;

    invoke-virtual {v6}, Lcom/unity3d/splash/services/core/request/WebRequest;->getContentLength()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/unity3d/splash/services/core/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/splash/services/core/request/WebRequest;

    invoke-virtual {v6}, Lcom/unity3d/splash/services/core/request/WebRequest;->isCanceled()Z

    move-result v16

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/unity3d/splash/services/core/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/splash/services/core/request/WebRequest;

    invoke-virtual {v6}, Lcom/unity3d/splash/services/core/request/WebRequest;->getResponseCode()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/unity3d/splash/services/core/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/splash/services/core/request/WebRequest;

    invoke-virtual {v6}, Lcom/unity3d/splash/services/core/request/WebRequest;->getResponseHeaders()Ljava/util/Map;

    move-result-object v18

    move-object/from16 v7, p0

    move-object/from16 v10, p1

    invoke-direct/range {v7 .. v18}, Lcom/unity3d/splash/services/core/cache/CacheThreadHandler;->postProcessDownload(JLjava/lang/String;Ljava/io/File;JJZILjava/util/Map;)V
    :try_end_f6
    .catch Ljava/io/FileNotFoundException; {:try_start_9e .. :try_end_f6} :catch_32e
    .catch Ljava/net/MalformedURLException; {:try_start_9e .. :try_end_f6} :catch_32b
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_f6} :catch_328
    .catch Ljava/lang/IllegalStateException; {:try_start_9e .. :try_end_f6} :catch_325
    .catch Lcom/unity3d/splash/services/core/request/NetworkIOException; {:try_start_9e .. :try_end_f6} :catch_322
    .catchall {:try_start_9e .. :try_end_f6} :catchall_31c

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/unity3d/splash/services/core/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/splash/services/core/request/WebRequest;

    :try_start_fb
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileOutputStream;->close()V
    :try_end_fe
    .catch Ljava/lang/Exception; {:try_start_fb .. :try_end_fe} :catch_100

    goto/16 :goto_a

    :catch_100
    move-exception v6

    const-string v7, "Error closing stream"

    invoke-static {v7, v6}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v7

    sget-object v8, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->CACHE:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v9, Lcom/unity3d/splash/services/core/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/splash/services/core/cache/CacheEvent;

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    sget-object v12, Lcom/unity3d/splash/services/core/cache/CacheError;->FILE_IO_ERROR:Lcom/unity3d/splash/services/core/cache/CacheError;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object p1, v10, v11

    const/4 v11, 0x2

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v10, v11

    invoke-virtual {v7, v8, v9, v10}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto/16 :goto_a

    :catch_125
    move-exception v6

    :goto_126
    :try_start_126
    const-string v8, "Couldn\'t create target file"

    invoke-static {v8, v6}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/unity3d/splash/services/core/cache/CacheThreadHandler;->_active:Z

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v8

    sget-object v9, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->CACHE:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v10, Lcom/unity3d/splash/services/core/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/splash/services/core/cache/CacheEvent;

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    sget-object v13, Lcom/unity3d/splash/services/core/cache/CacheError;->FILE_IO_ERROR:Lcom/unity3d/splash/services/core/cache/CacheError;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object p1, v11, v12

    const/4 v12, 0x2

    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v11, v12

    invoke-virtual {v8, v9, v10, v11}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z
    :try_end_14d
    .catchall {:try_start_126 .. :try_end_14d} :catchall_31e

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/unity3d/splash/services/core/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/splash/services/core/request/WebRequest;

    if-eqz v7, :cond_a

    :try_start_154
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_157
    .catch Ljava/lang/Exception; {:try_start_154 .. :try_end_157} :catch_159

    goto/16 :goto_a

    :catch_159
    move-exception v6

    const-string v7, "Error closing stream"

    invoke-static {v7, v6}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v7

    sget-object v8, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->CACHE:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v9, Lcom/unity3d/splash/services/core/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/splash/services/core/cache/CacheEvent;

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    sget-object v12, Lcom/unity3d/splash/services/core/cache/CacheError;->FILE_IO_ERROR:Lcom/unity3d/splash/services/core/cache/CacheError;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object p1, v10, v11

    const/4 v11, 0x2

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v10, v11

    invoke-virtual {v7, v8, v9, v10}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto/16 :goto_a

    :catch_17e
    move-exception v6

    move-object/from16 v19, v7

    :goto_181
    :try_start_181
    const-string v7, "Malformed URL"

    invoke-static {v7, v6}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/unity3d/splash/services/core/cache/CacheThreadHandler;->_active:Z

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v7

    sget-object v8, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->CACHE:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v9, Lcom/unity3d/splash/services/core/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/splash/services/core/cache/CacheEvent;

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    sget-object v12, Lcom/unity3d/splash/services/core/cache/CacheError;->MALFORMED_URL:Lcom/unity3d/splash/services/core/cache/CacheError;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object p1, v10, v11

    const/4 v11, 0x2

    invoke-virtual {v6}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v10, v11

    invoke-virtual {v7, v8, v9, v10}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z
    :try_end_1a8
    .catchall {:try_start_181 .. :try_end_1a8} :catchall_31c

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/unity3d/splash/services/core/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/splash/services/core/request/WebRequest;

    if-eqz v19, :cond_a

    :try_start_1af
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileOutputStream;->close()V
    :try_end_1b2
    .catch Ljava/lang/Exception; {:try_start_1af .. :try_end_1b2} :catch_1b4

    goto/16 :goto_a

    :catch_1b4
    move-exception v6

    const-string v7, "Error closing stream"

    invoke-static {v7, v6}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v7

    sget-object v8, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->CACHE:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v9, Lcom/unity3d/splash/services/core/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/splash/services/core/cache/CacheEvent;

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    sget-object v12, Lcom/unity3d/splash/services/core/cache/CacheError;->FILE_IO_ERROR:Lcom/unity3d/splash/services/core/cache/CacheError;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object p1, v10, v11

    const/4 v11, 0x2

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v10, v11

    invoke-virtual {v7, v8, v9, v10}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto/16 :goto_a

    :catch_1d9
    move-exception v6

    move-object/from16 v19, v7

    :goto_1dc
    :try_start_1dc
    const-string v7, "Couldn\'t request stream"

    invoke-static {v7, v6}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/unity3d/splash/services/core/cache/CacheThreadHandler;->_active:Z

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v7

    sget-object v8, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->CACHE:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v9, Lcom/unity3d/splash/services/core/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/splash/services/core/cache/CacheEvent;

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    sget-object v12, Lcom/unity3d/splash/services/core/cache/CacheError;->FILE_IO_ERROR:Lcom/unity3d/splash/services/core/cache/CacheError;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object p1, v10, v11

    const/4 v11, 0x2

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v10, v11

    invoke-virtual {v7, v8, v9, v10}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z
    :try_end_203
    .catchall {:try_start_1dc .. :try_end_203} :catchall_31c

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/unity3d/splash/services/core/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/splash/services/core/request/WebRequest;

    if-eqz v19, :cond_a

    :try_start_20a
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileOutputStream;->close()V
    :try_end_20d
    .catch Ljava/lang/Exception; {:try_start_20a .. :try_end_20d} :catch_20f

    goto/16 :goto_a

    :catch_20f
    move-exception v6

    const-string v7, "Error closing stream"

    invoke-static {v7, v6}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v7

    sget-object v8, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->CACHE:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v9, Lcom/unity3d/splash/services/core/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/splash/services/core/cache/CacheEvent;

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    sget-object v12, Lcom/unity3d/splash/services/core/cache/CacheError;->FILE_IO_ERROR:Lcom/unity3d/splash/services/core/cache/CacheError;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object p1, v10, v11

    const/4 v11, 0x2

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v10, v11

    invoke-virtual {v7, v8, v9, v10}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto/16 :goto_a

    :catch_234
    move-exception v6

    move-object/from16 v19, v7

    :goto_237
    :try_start_237
    const-string v7, "Illegal state"

    invoke-static {v7, v6}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/unity3d/splash/services/core/cache/CacheThreadHandler;->_active:Z

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v7

    sget-object v8, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->CACHE:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v9, Lcom/unity3d/splash/services/core/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/splash/services/core/cache/CacheEvent;

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    sget-object v12, Lcom/unity3d/splash/services/core/cache/CacheError;->ILLEGAL_STATE:Lcom/unity3d/splash/services/core/cache/CacheError;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object p1, v10, v11

    const/4 v11, 0x2

    invoke-virtual {v6}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v10, v11

    invoke-virtual {v7, v8, v9, v10}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z
    :try_end_25e
    .catchall {:try_start_237 .. :try_end_25e} :catchall_31c

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/unity3d/splash/services/core/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/splash/services/core/request/WebRequest;

    if-eqz v19, :cond_a

    :try_start_265
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileOutputStream;->close()V
    :try_end_268
    .catch Ljava/lang/Exception; {:try_start_265 .. :try_end_268} :catch_26a

    goto/16 :goto_a

    :catch_26a
    move-exception v6

    const-string v7, "Error closing stream"

    invoke-static {v7, v6}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v7

    sget-object v8, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->CACHE:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v9, Lcom/unity3d/splash/services/core/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/splash/services/core/cache/CacheEvent;

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    sget-object v12, Lcom/unity3d/splash/services/core/cache/CacheError;->FILE_IO_ERROR:Lcom/unity3d/splash/services/core/cache/CacheError;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object p1, v10, v11

    const/4 v11, 0x2

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v10, v11

    invoke-virtual {v7, v8, v9, v10}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto/16 :goto_a

    :catch_28f
    move-exception v6

    move-object/from16 v19, v7

    :goto_292
    :try_start_292
    const-string v7, "Network error"

    invoke-static {v7, v6}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/unity3d/splash/services/core/cache/CacheThreadHandler;->_active:Z

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v7

    sget-object v8, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->CACHE:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v9, Lcom/unity3d/splash/services/core/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/splash/services/core/cache/CacheEvent;

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    sget-object v12, Lcom/unity3d/splash/services/core/cache/CacheError;->NETWORK_ERROR:Lcom/unity3d/splash/services/core/cache/CacheError;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object p1, v10, v11

    const/4 v11, 0x2

    invoke-virtual {v6}, Lcom/unity3d/splash/services/core/request/NetworkIOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v10, v11

    invoke-virtual {v7, v8, v9, v10}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z
    :try_end_2b9
    .catchall {:try_start_292 .. :try_end_2b9} :catchall_31c

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/unity3d/splash/services/core/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/splash/services/core/request/WebRequest;

    if-eqz v19, :cond_a

    :try_start_2c0
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileOutputStream;->close()V
    :try_end_2c3
    .catch Ljava/lang/Exception; {:try_start_2c0 .. :try_end_2c3} :catch_2c5

    goto/16 :goto_a

    :catch_2c5
    move-exception v6

    const-string v7, "Error closing stream"

    invoke-static {v7, v6}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v7

    sget-object v8, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->CACHE:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v9, Lcom/unity3d/splash/services/core/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/splash/services/core/cache/CacheEvent;

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    sget-object v12, Lcom/unity3d/splash/services/core/cache/CacheError;->FILE_IO_ERROR:Lcom/unity3d/splash/services/core/cache/CacheError;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object p1, v10, v11

    const/4 v11, 0x2

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v10, v11

    invoke-virtual {v7, v8, v9, v10}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto/16 :goto_a

    :catchall_2ea
    move-exception v6

    move-object/from16 v19, v7

    :goto_2ed
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/unity3d/splash/services/core/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/splash/services/core/request/WebRequest;

    if-eqz v19, :cond_2f7

    :try_start_2f4
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileOutputStream;->close()V
    :try_end_2f7
    .catch Ljava/lang/Exception; {:try_start_2f4 .. :try_end_2f7} :catch_2f8

    :cond_2f7
    :goto_2f7
    throw v6

    :catch_2f8
    move-exception v7

    const-string v8, "Error closing stream"

    invoke-static {v8, v7}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v8

    sget-object v9, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->CACHE:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v10, Lcom/unity3d/splash/services/core/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/splash/services/core/cache/CacheEvent;

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    sget-object v13, Lcom/unity3d/splash/services/core/cache/CacheError;->FILE_IO_ERROR:Lcom/unity3d/splash/services/core/cache/CacheError;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object p1, v11, v12

    const/4 v12, 0x2

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v11, v12

    invoke-virtual {v8, v9, v10, v11}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto :goto_2f7

    :catchall_31c
    move-exception v6

    goto :goto_2ed

    :catchall_31e
    move-exception v6

    move-object/from16 v19, v7

    goto :goto_2ed

    :catch_322
    move-exception v6

    goto/16 :goto_292

    :catch_325
    move-exception v6

    goto/16 :goto_237

    :catch_328
    move-exception v6

    goto/16 :goto_1dc

    :catch_32b
    move-exception v6

    goto/16 :goto_181

    :catch_32e
    move-exception v6

    move-object/from16 v7, v19

    goto/16 :goto_126
.end method

.method private getWebRequest(Ljava/lang/String;IILjava/util/HashMap;)Lcom/unity3d/splash/services/core/request/WebRequest;
    .registers 11

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    if-eqz p4, :cond_a

    invoke-virtual {v3, p4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_a
    new-instance v0, Lcom/unity3d/splash/services/core/request/WebRequest;

    const-string v2, "GET"

    move-object v1, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/unity3d/splash/services/core/request/WebRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;II)V

    return-object v0
.end method

.method private postProcessDownload(JLjava/lang/String;Ljava/io/File;JJZILjava/util/Map;)V
    .registers 21

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p4, v2, v3}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v2

    if-nez v2, :cond_12

    const-string v2, "Unity Ads cache: could not set file readable!"

    invoke-static {v2}, Lcom/unity3d/splash/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    :cond_12
    if-nez p9, :cond_79

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unity Ads cache: File "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes downloaded in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unity3d/splash/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v2

    sget-object v3, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->CACHE:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v4, Lcom/unity3d/splash/services/core/cache/CacheEvent;->DOWNLOAD_END:Lcom/unity3d/splash/services/core/cache/CacheEvent;

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p3, v5, v6

    const/4 v6, 0x1

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v6

    const/4 v0, 0x4

    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x5

    invoke-static/range {p11 .. p11}, Lcom/unity3d/splash/services/core/api/Request;->getResponseHeadersMap(Ljava/util/Map;)Lorg/json/JSONArray;

    move-result-object v1

    aput-object v1, v5, v0

    invoke-virtual {v2, v3, v4, v5}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :goto_78
    return-void

    :cond_79
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unity Ads cache: downloading of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " stopped"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unity3d/splash/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v2

    sget-object v3, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->CACHE:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v4, Lcom/unity3d/splash/services/core/cache/CacheEvent;->DOWNLOAD_STOPPED:Lcom/unity3d/splash/services/core/cache/CacheEvent;

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p3, v5, v6

    const/4 v6, 0x1

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v6

    const/4 v0, 0x4

    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x5

    invoke-static/range {p11 .. p11}, Lcom/unity3d/splash/services/core/api/Request;->getResponseHeadersMap(Ljava/util/Map;)Lorg/json/JSONArray;

    move-result-object v1

    aput-object v1, v5, v0

    invoke-virtual {v2, v3, v4, v5}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto :goto_78
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 14

    const/4 v11, 0x0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    const-string v0, "source"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "source"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v0, "target"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "target"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v0, "connectTimeout"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v0, "connectTimeout"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v0, "readTimeout"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v0, "readTimeout"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v0, "progressInterval"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v0, "progressInterval"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v0, "append"

    invoke-virtual {v8, v0, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    const-string v0, "append"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-virtual {v8}, Landroid/os/Bundle;->size()I

    move-result v0

    if-lez v0, :cond_78

    const-string v0, "There are headers left in data, reading them"

    invoke-static {v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v8}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_60
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_78

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v6, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_60

    :cond_78
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v7, :cond_85

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_8d

    :cond_85
    if-nez v7, :cond_ba

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_ba

    :cond_8d
    iput-boolean v11, p0, Lcom/unity3d/splash/services/core/cache/CacheThreadHandler;->_active:Z

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v3

    sget-object v4, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->CACHE:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v5, Lcom/unity3d/splash/services/core/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/splash/services/core/cache/CacheEvent;

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    sget-object v8, Lcom/unity3d/splash/services/core/cache/CacheError;->FILE_STATE_WRONG:Lcom/unity3d/splash/services/core/cache/CacheError;

    aput-object v8, v6, v11

    const/4 v8, 0x1

    aput-object v1, v6, v8

    const/4 v1, 0x2

    aput-object v2, v6, v1

    const/4 v1, 0x3

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v6, v1

    const/4 v1, 0x4

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v6, v1

    invoke-virtual {v3, v4, v5, v6}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :goto_b9
    return-void

    :cond_ba
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_c6

    goto :goto_b9

    :pswitch_c0
    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/unity3d/splash/services/core/cache/CacheThreadHandler;->downloadFile(Ljava/lang/String;Ljava/lang/String;IIILjava/util/HashMap;Z)V

    goto :goto_b9

    nop

    :pswitch_data_c6
    .packed-switch 0x1
        :pswitch_c0
    .end packed-switch
.end method

.method public isActive()Z
    .registers 2

    iget-boolean v0, p0, Lcom/unity3d/splash/services/core/cache/CacheThreadHandler;->_active:Z

    return v0
.end method

.method public setCancelStatus(Z)V
    .registers 3

    iput-boolean p1, p0, Lcom/unity3d/splash/services/core/cache/CacheThreadHandler;->_canceled:Z

    if-eqz p1, :cond_10

    iget-object v0, p0, Lcom/unity3d/splash/services/core/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/splash/services/core/request/WebRequest;

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/splash/services/core/cache/CacheThreadHandler;->_active:Z

    iget-object v0, p0, Lcom/unity3d/splash/services/core/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/splash/services/core/request/WebRequest;

    invoke-virtual {v0}, Lcom/unity3d/splash/services/core/request/WebRequest;->cancel()V

    :cond_10
    return-void
.end method
