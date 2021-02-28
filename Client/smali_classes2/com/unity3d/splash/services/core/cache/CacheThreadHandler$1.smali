.class Lcom/unity3d/splash/services/core/cache/CacheThreadHandler$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unity3d/splash/services/core/request/IWebRequestProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/splash/services/core/cache/CacheThreadHandler;->downloadFile(Ljava/lang/String;Ljava/lang/String;IIILjava/util/HashMap;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private lastProgressEventTime:J

.field final synthetic this$0:Lcom/unity3d/splash/services/core/cache/CacheThreadHandler;

.field final synthetic val$progressInterval:I

.field final synthetic val$targetFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/unity3d/splash/services/core/cache/CacheThreadHandler;Ljava/io/File;I)V
    .registers 6

    iput-object p1, p0, Lcom/unity3d/splash/services/core/cache/CacheThreadHandler$1;->this$0:Lcom/unity3d/splash/services/core/cache/CacheThreadHandler;

    iput-object p2, p0, Lcom/unity3d/splash/services/core/cache/CacheThreadHandler$1;->val$targetFile:Ljava/io/File;

    iput p3, p0, Lcom/unity3d/splash/services/core/cache/CacheThreadHandler$1;->val$progressInterval:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/unity3d/splash/services/core/cache/CacheThreadHandler$1;->lastProgressEventTime:J

    return-void
.end method


# virtual methods
.method public onRequestProgress(Ljava/lang/String;JJ)V
    .registers 12

    iget v0, p0, Lcom/unity3d/splash/services/core/cache/CacheThreadHandler$1;->val$progressInterval:I

    if-lez v0, :cond_37

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/unity3d/splash/services/core/cache/CacheThreadHandler$1;->lastProgressEventTime:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/unity3d/splash/services/core/cache/CacheThreadHandler$1;->val$progressInterval:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_37

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/unity3d/splash/services/core/cache/CacheThreadHandler$1;->lastProgressEventTime:J

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v0

    sget-object v1, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->CACHE:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/splash/services/core/cache/CacheEvent;->DOWNLOAD_PROGRESS:Lcom/unity3d/splash/services/core/cache/CacheEvent;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :cond_37
    return-void
.end method

.method public onRequestStart(Ljava/lang/String;JILjava/util/Map;)V
    .registers 14

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v0

    sget-object v1, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->CACHE:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/splash/services/core/cache/CacheEvent;->DOWNLOAD_STARTED:Lcom/unity3d/splash/services/core/cache/CacheEvent;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/unity3d/splash/services/core/cache/CacheThreadHandler$1;->val$targetFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/unity3d/splash/services/core/cache/CacheThreadHandler$1;->val$targetFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long/2addr v6, p2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-static {p5}, Lcom/unity3d/splash/services/core/api/Request;->getResponseHeadersMap(Ljava/util/Map;)Lorg/json/JSONArray;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    return-void
.end method
