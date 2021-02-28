.class public Lcom/onevcat/uniwebview/UniWebViewInterface;
.super Ljava/lang/Object;
.source "UniWebViewInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onevcat/uniwebview/UniWebViewInterface$DialogRunnable;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _getUnityActivity()Landroid/app/Activity;
    .registers 1

    .prologue
    .line 805
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private static _sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p0, "targetName"    # Ljava/lang/String;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "parameters"    # Ljava/lang/String;

    .prologue
    .line 809
    const-string v1, "%s@%s@%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 810
    .local v0, "message":Ljava/lang/String;
    const-string v1, "UniWebViewAndroidStaticListener"

    const-string v2, "OnJavaMessage"

    invoke-static {v1, v2, v0}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-static {p0, p1, p2}, Lcom/onevcat/uniwebview/UniWebViewInterface;->_sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100()Landroid/app/Activity;
    .registers 1

    .prologue
    .line 23
    invoke-static {}, Lcom/onevcat/uniwebview/UniWebViewInterface;->_getUnityActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public static addJavaScript(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "jsString"    # Ljava/lang/String;
    .param p2, "identifier"    # Ljava/lang/String;

    .prologue
    .line 317
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    const-string v1, "Interface addJavaScript"

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->info(Ljava/lang/String;)V

    .line 318
    new-instance v0, Lcom/onevcat/uniwebview/UniWebViewInterface$15;

    invoke-direct {v0, p0, p1, p2}, Lcom/onevcat/uniwebview/UniWebViewInterface$15;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/UniWebViewInterface;->runSafelyOnUiThread(Lcom/onevcat/uniwebview/UniWebViewInterface$DialogRunnable;)V

    .line 324
    return-void
.end method

.method public static addPermissionTrustDomain(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    .line 607
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interface addPermissionTrustDomain: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->info(Ljava/lang/String;)V

    .line 608
    new-instance v0, Lcom/onevcat/uniwebview/UniWebViewInterface$36;

    invoke-direct {v0, p0, p1}, Lcom/onevcat/uniwebview/UniWebViewInterface$36;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/UniWebViewInterface;->runSafelyOnUiThread(Lcom/onevcat/uniwebview/UniWebViewInterface$DialogRunnable;)V

    .line 614
    return-void
.end method

.method public static addSslExceptionDomain(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    .line 627
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interface addSslExceptionDomain: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->info(Ljava/lang/String;)V

    .line 628
    new-instance v0, Lcom/onevcat/uniwebview/UniWebViewInterface$38;

    invoke-direct {v0, p0, p1}, Lcom/onevcat/uniwebview/UniWebViewInterface$38;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/UniWebViewInterface;->runSafelyOnUiThread(Lcom/onevcat/uniwebview/UniWebViewInterface$DialogRunnable;)V

    .line 634
    return-void
.end method

.method public static addUrlScheme(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "scheme"    # Ljava/lang/String;

    .prologue
    .line 337
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    const-string v1, "Interface addUrlScheme"

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->info(Ljava/lang/String;)V

    .line 338
    new-instance v0, Lcom/onevcat/uniwebview/UniWebViewInterface$17;

    invoke-direct {v0, p0, p1}, Lcom/onevcat/uniwebview/UniWebViewInterface$17;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/UniWebViewInterface;->runSafelyOnUiThread(Lcom/onevcat/uniwebview/UniWebViewInterface$DialogRunnable;)V

    .line 345
    return-void
.end method

.method public static animateTo(Ljava/lang/String;IIIIFFLjava/lang/String;)Z
    .registers 20
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "duration"    # F
    .param p6, "delay"    # F
    .param p7, "identifier"    # Ljava/lang/String;

    .prologue
    .line 296
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "Interface animateTo: {%d, %d, %d, %d}"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->info(Ljava/lang/String;)V

    .line 298
    new-instance v10, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {v10, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 299
    .local v10, "latch":Ljava/util/concurrent/CountDownLatch;
    const/4 v0, 0x1

    new-array v2, v0, [Z

    .line 300
    .local v2, "result":[Z
    new-instance v0, Lcom/onevcat/uniwebview/UniWebViewInterface$14;

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v10}, Lcom/onevcat/uniwebview/UniWebViewInterface$14;-><init>(Ljava/lang/String;[ZIIIIFFLjava/lang/String;Ljava/util/concurrent/CountDownLatch;)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/UniWebViewInterface;->runSafelyOnUiThread(Lcom/onevcat/uniwebview/UniWebViewInterface$DialogRunnable;)V

    .line 309
    const-wide/16 v0, 0x64

    :try_start_4d
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v10, v0, v1, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_52
    .catch Ljava/lang/InterruptedException; {:try_start_4d .. :try_end_52} :catch_56

    .line 313
    :goto_52
    const/4 v0, 0x0

    aget-boolean v0, v2, v0

    return v0

    .line 310
    :catch_56
    move-exception v11

    .line 311
    .local v11, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v11}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_52
.end method

.method public static canGoBack(Ljava/lang/String;)Z
    .registers 7
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 496
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v3

    const-string v4, "Interface canGoBack"

    invoke-virtual {v3, v4}, Lcom/onevcat/uniwebview/Logger;->info(Ljava/lang/String;)V

    .line 498
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 499
    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    new-array v2, v5, [Z

    .line 500
    .local v2, "result":[Z
    new-instance v3, Lcom/onevcat/uniwebview/UniWebViewInterface$27;

    invoke-direct {v3, p0, v2, v1}, Lcom/onevcat/uniwebview/UniWebViewInterface$27;-><init>(Ljava/lang/String;[ZLjava/util/concurrent/CountDownLatch;)V

    invoke-static {v3}, Lcom/onevcat/uniwebview/UniWebViewInterface;->runSafelyOnUiThread(Lcom/onevcat/uniwebview/UniWebViewInterface$DialogRunnable;)V

    .line 509
    const-wide/16 v4, 0x64

    :try_start_1b
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_20
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_20} :catch_24

    .line 513
    :goto_20
    const/4 v3, 0x0

    aget-boolean v3, v2, v3

    return v3

    .line 510
    :catch_24
    move-exception v0

    .line 511
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_20
.end method

.method public static canGoForward(Ljava/lang/String;)Z
    .registers 7
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 517
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v3

    const-string v4, "Interface canGoForward"

    invoke-virtual {v3, v4}, Lcom/onevcat/uniwebview/Logger;->info(Ljava/lang/String;)V

    .line 518
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 519
    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    new-array v2, v5, [Z

    .line 520
    .local v2, "result":[Z
    new-instance v3, Lcom/onevcat/uniwebview/UniWebViewInterface$28;

    invoke-direct {v3, p0, v2, v1}, Lcom/onevcat/uniwebview/UniWebViewInterface$28;-><init>(Ljava/lang/String;[ZLjava/util/concurrent/CountDownLatch;)V

    invoke-static {v3}, Lcom/onevcat/uniwebview/UniWebViewInterface;->runSafelyOnUiThread(Lcom/onevcat/uniwebview/UniWebViewInterface$DialogRunnable;)V

    .line 529
    const-wide/16 v4, 0x64

    :try_start_1b
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_20
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_20} :catch_24

    .line 533
    :goto_20
    const/4 v3, 0x0

    aget-boolean v3, v2, v3

    return v3

    .line 530
    :catch_24
    move-exception v0

    .line 531
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_20
.end method

.method public static cleanCache(Ljava/lang/String;)V
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 407
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    const-string v1, "Interface cleanCache"

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->info(Ljava/lang/String;)V

    .line 408
    new-instance v0, Lcom/onevcat/uniwebview/UniWebViewInterface$21;

    invoke-direct {v0, p0}, Lcom/onevcat/uniwebview/UniWebViewInterface$21;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/UniWebViewInterface;->runSafelyOnUiThread(Lcom/onevcat/uniwebview/UniWebViewInterface$DialogRunnable;)V

    .line 414
    return-void
.end method

.method public static clearCookies()V
    .registers 2

    .prologue
    .line 417
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    const-string v1, "Interface clearCookies"

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->info(Ljava/lang/String;)V

    .line 418
    invoke-static {}, Lcom/onevcat/uniwebview/UniWebView;->clearCookies()V

    .line 419
    return-void
.end method

.method public static clearHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "realm"    # Ljava/lang/String;

    .prologue
    .line 434
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Interface clearHttpAuthUsernamePassword host: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", realm:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onevcat/uniwebview/Logger;->info(Ljava/lang/String;)V

    .line 435
    invoke-static {}, Lcom/onevcat/uniwebview/UniWebViewInterface;->_getUnityActivity()Landroid/app/Activity;

    move-result-object v0

    .line 436
    .local v0, "activity":Landroid/app/Activity;
    new-instance v1, Lcom/onevcat/uniwebview/UniWebViewInterface$22;

    invoke-direct {v1, v0, p0, p1}, Lcom/onevcat/uniwebview/UniWebViewInterface$22;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 443
    return-void
.end method

.method public static destroy(Ljava/lang/String;)V
    .registers 4
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 145
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interface destroy web view"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->info(Ljava/lang/String;)V

    .line 146
    new-instance v0, Lcom/onevcat/uniwebview/UniWebViewInterface$3;

    invoke-direct {v0, p0}, Lcom/onevcat/uniwebview/UniWebViewInterface$3;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/UniWebViewInterface;->runSafelyOnUiThread(Lcom/onevcat/uniwebview/UniWebViewInterface$DialogRunnable;)V

    .line 152
    return-void
.end method

.method public static evaluateJavaScript(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "jsString"    # Ljava/lang/String;
    .param p2, "identifier"    # Ljava/lang/String;

    .prologue
    .line 327
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    const-string v1, "Interface evaluateJavaScript"

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->info(Ljava/lang/String;)V

    .line 328
    new-instance v0, Lcom/onevcat/uniwebview/UniWebViewInterface$16;

    invoke-direct {v0, p0, p1, p2}, Lcom/onevcat/uniwebview/UniWebViewInterface$16;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/UniWebViewInterface;->runSafelyOnUiThread(Lcom/onevcat/uniwebview/UniWebViewInterface$DialogRunnable;)V

    .line 334
    return-void
.end method

.method public static getCookie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 427
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    .line 428
    .local v0, "logger":Lcom/onevcat/uniwebview/Logger;
    const-string v1, "Interface getCookie"

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->info(Ljava/lang/String;)V

    .line 430
    invoke-static {p0, p1}, Lcom/onevcat/uniwebview/UniWebView;->getCookie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 199
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v4

    const-string v5, "Interface getUrl"

    invoke-virtual {v4, v5}, Lcom/onevcat/uniwebview/Logger;->info(Ljava/lang/String;)V

    .line 200
    invoke-static {}, Lcom/onevcat/uniwebview/UniWebViewManager;->getInstance()Lcom/onevcat/uniwebview/UniWebViewManager;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/onevcat/uniwebview/UniWebViewManager;->getUniWebViewDialog(Ljava/lang/String;)Lcom/onevcat/uniwebview/UniWebViewDialog;

    move-result-object v0

    .line 202
    .local v0, "dialog":Lcom/onevcat/uniwebview/UniWebViewDialog;
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v6}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 203
    .local v2, "latch":Ljava/util/concurrent/CountDownLatch;
    new-array v3, v6, [Ljava/lang/String;

    .line 204
    .local v3, "result":[Ljava/lang/String;
    const-string v4, ""

    aput-object v4, v3, v7

    .line 205
    new-instance v4, Lcom/onevcat/uniwebview/UniWebViewInterface$8;

    invoke-direct {v4, p0, v3, v2}, Lcom/onevcat/uniwebview/UniWebViewInterface$8;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V

    invoke-static {v4}, Lcom/onevcat/uniwebview/UniWebViewInterface;->runSafelyOnUiThread(Lcom/onevcat/uniwebview/UniWebViewInterface$DialogRunnable;)V

    .line 214
    const-wide/16 v4, 0x64

    :try_start_28
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v6}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_2d
    .catch Ljava/lang/InterruptedException; {:try_start_28 .. :try_end_2d} :catch_30

    .line 218
    :goto_2d
    aget-object v4, v3, v7

    return-object v4

    .line 215
    :catch_30
    move-exception v1

    .line 216
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2d
.end method

.method public static getUserAgent(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 385
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v1

    .line 386
    .local v1, "logger":Lcom/onevcat/uniwebview/Logger;
    const-string v2, "Interface getUserAgent"

    invoke-virtual {v1, v2}, Lcom/onevcat/uniwebview/Logger;->info(Ljava/lang/String;)V

    .line 387
    invoke-static {}, Lcom/onevcat/uniwebview/UniWebViewManager;->getInstance()Lcom/onevcat/uniwebview/UniWebViewManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/onevcat/uniwebview/UniWebViewManager;->getUniWebViewDialog(Ljava/lang/String;)Lcom/onevcat/uniwebview/UniWebViewDialog;

    move-result-object v0

    .line 388
    .local v0, "dialog":Lcom/onevcat/uniwebview/UniWebViewDialog;
    invoke-static {v0, p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->getUserAgent(Lcom/onevcat/uniwebview/UniWebViewDialog;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getWebViewAlpha(Ljava/lang/String;)F
    .registers 4
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 470
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v1

    const-string v2, "Interface getWebViewAlpha"

    invoke-virtual {v1, v2}, Lcom/onevcat/uniwebview/Logger;->info(Ljava/lang/String;)V

    .line 471
    invoke-static {}, Lcom/onevcat/uniwebview/UniWebViewManager;->getInstance()Lcom/onevcat/uniwebview/UniWebViewManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/onevcat/uniwebview/UniWebViewManager;->getUniWebViewDialog(Ljava/lang/String;)Lcom/onevcat/uniwebview/UniWebViewDialog;

    move-result-object v0

    .line 472
    .local v0, "dialog":Lcom/onevcat/uniwebview/UniWebViewDialog;
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->getWebViewAlpha()F

    move-result v1

    :goto_17
    return v1

    :cond_18
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_17
.end method

.method public static goBack(Ljava/lang/String;)V
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 537
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    const-string v1, "Interface goBack"

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->info(Ljava/lang/String;)V

    .line 538
    new-instance v0, Lcom/onevcat/uniwebview/UniWebViewInterface$29;

    invoke-direct {v0, p0}, Lcom/onevcat/uniwebview/UniWebViewInterface$29;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/UniWebViewInterface;->runSafelyOnUiThread(Lcom/onevcat/uniwebview/UniWebViewInterface$DialogRunnable;)V

    .line 544
    return-void
.end method

.method public static goForward(Ljava/lang/String;)V
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 547
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    const-string v1, "Interface goForward"

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->info(Ljava/lang/String;)V

    .line 548
    new-instance v0, Lcom/onevcat/uniwebview/UniWebViewInterface$30;

    invoke-direct {v0, p0}, Lcom/onevcat/uniwebview/UniWebViewInterface$30;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/UniWebViewInterface;->runSafelyOnUiThread(Lcom/onevcat/uniwebview/UniWebViewInterface$DialogRunnable;)V

    .line 554
    return-void
.end method

.method public static hide(Ljava/lang/String;ZIFLjava/lang/String;)Z
    .registers 14
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "fade"    # Z
    .param p2, "edge"    # I
    .param p3, "duration"    # F
    .param p4, "identifier"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 273
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    const-string v1, "Interface hide"

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->info(Ljava/lang/String;)V

    .line 275
    new-instance v7, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v7, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 276
    .local v7, "latch":Ljava/util/concurrent/CountDownLatch;
    new-array v2, v3, [Z

    .line 277
    .local v2, "result":[Z
    new-instance v0, Lcom/onevcat/uniwebview/UniWebViewInterface$13;

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/onevcat/uniwebview/UniWebViewInterface$13;-><init>(Ljava/lang/String;[ZZIFLjava/lang/String;Ljava/util/concurrent/CountDownLatch;)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/UniWebViewInterface;->runSafelyOnUiThread(Lcom/onevcat/uniwebview/UniWebViewInterface$DialogRunnable;)V

    .line 286
    const-wide/16 v0, 0x64

    :try_start_20
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, v0, v1, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_25
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_25} :catch_29

    .line 290
    :goto_25
    const/4 v0, 0x0

    aget-boolean v0, v2, v0

    return v0

    .line 287
    :catch_29
    move-exception v8

    .line 288
    .local v8, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v8}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_25
.end method

.method public static init(Ljava/lang/String;IIII)V
    .registers 12
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 50
    new-instance v0, Lcom/onevcat/uniwebview/UniWebViewInterface$2;

    move-object v1, p0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/onevcat/uniwebview/UniWebViewInterface$2;-><init>(Ljava/lang/String;Ljava/lang/String;IIII)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/UniWebViewInterface;->runSafelyOnUiThread(Lcom/onevcat/uniwebview/UniWebViewInterface$DialogRunnable;)V

    .line 142
    return-void
.end method

.method public static load(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 155
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interface load: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->info(Ljava/lang/String;)V

    .line 156
    new-instance v0, Lcom/onevcat/uniwebview/UniWebViewInterface$4;

    invoke-direct {v0, p0, p1}, Lcom/onevcat/uniwebview/UniWebViewInterface$4;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/UniWebViewInterface;->runSafelyOnUiThread(Lcom/onevcat/uniwebview/UniWebViewInterface$DialogRunnable;)V

    .line 162
    return-void
.end method

.method public static loadHTMLString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "html"    # Ljava/lang/String;
    .param p2, "baseUrl"    # Ljava/lang/String;

    .prologue
    .line 165
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    const-string v1, "Interface loadHTMLString"

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->info(Ljava/lang/String;)V

    .line 166
    new-instance v0, Lcom/onevcat/uniwebview/UniWebViewInterface$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/onevcat/uniwebview/UniWebViewInterface$5;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/UniWebViewInterface;->runSafelyOnUiThread(Lcom/onevcat/uniwebview/UniWebViewInterface$DialogRunnable;)V

    .line 172
    return-void
.end method

.method public static prepare()V
    .registers 4

    .prologue
    .line 31
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 33
    .local v2, "latch":Ljava/util/concurrent/CountDownLatch;
    invoke-static {}, Lcom/onevcat/uniwebview/UniWebViewInterface;->_getUnityActivity()Landroid/app/Activity;

    move-result-object v0

    .line 34
    .local v0, "activity":Landroid/app/Activity;
    new-instance v3, Lcom/onevcat/uniwebview/UniWebViewInterface$1;

    invoke-direct {v3, v0, v2}, Lcom/onevcat/uniwebview/UniWebViewInterface$1;-><init>(Landroid/app/Activity;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 43
    :try_start_12
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_15
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_15} :catch_16

    .line 47
    :goto_15
    return-void

    .line 44
    :catch_16
    move-exception v1

    .line 45
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_15
.end method

.method public static print(Ljava/lang/String;)V
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 747
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    const-string v1, "Interface print"

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->info(Ljava/lang/String;)V

    .line 748
    new-instance v0, Lcom/onevcat/uniwebview/UniWebViewInterface$50;

    invoke-direct {v0, p0}, Lcom/onevcat/uniwebview/UniWebViewInterface$50;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/UniWebViewInterface;->runSafelyOnUiThread(Lcom/onevcat/uniwebview/UniWebViewInterface$DialogRunnable;)V

    .line 754
    return-void
.end method

.method public static reload(Ljava/lang/String;)V
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 175
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    const-string v1, "Interface reload"

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->info(Ljava/lang/String;)V

    .line 176
    new-instance v0, Lcom/onevcat/uniwebview/UniWebViewInterface$6;

    invoke-direct {v0, p0}, Lcom/onevcat/uniwebview/UniWebViewInterface$6;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/UniWebViewInterface;->runSafelyOnUiThread(Lcom/onevcat/uniwebview/UniWebViewInterface$DialogRunnable;)V

    .line 182
    return-void
.end method

.method public static removePermissionTrustDomain(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    .line 617
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interface removePermissionTrustDomain: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->info(Ljava/lang/String;)V

    .line 618
    new-instance v0, Lcom/onevcat/uniwebview/UniWebViewInterface$37;

    invoke-direct {v0, p0, p1}, Lcom/onevcat/uniwebview/UniWebViewInterface$37;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/UniWebViewInterface;->runSafelyOnUiThread(Lcom/onevcat/uniwebview/UniWebViewInterface$DialogRunnable;)V

    .line 624
    return-void
.end method

.method public static removeSslExceptionDomain(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    .line 637
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interface addSslExceptionDomain: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->info(Ljava/lang/String;)V

    .line 638
    new-instance v0, Lcom/onevcat/uniwebview/UniWebViewInterface$39;

    invoke-direct {v0, p0, p1}, Lcom/onevcat/uniwebview/UniWebViewInterface$39;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/UniWebViewInterface;->runSafelyOnUiThread(Lcom/onevcat/uniwebview/UniWebViewInterface$DialogRunnable;)V

    .line 644
    return-void
.end method

.method public static removeUrlScheme(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "scheme"    # Ljava/lang/String;

    .prologue
    .line 348
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    const-string v1, "Interface addUrlScheme"

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->info(Ljava/lang/String;)V

    .line 349
    new-instance v0, Lcom/onevcat/uniwebview/UniWebViewInterface$18;

    invoke-direct {v0, p0, p1}, Lcom/onevcat/uniwebview/UniWebViewInterface$18;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/UniWebViewInterface;->runSafelyOnUiThread(Lcom/onevcat/uniwebview/UniWebViewInterface$DialogRunnable;)V

    .line 356
    return-void
.end method

.method private static runSafelyOnUiThread(Lcom/onevcat/uniwebview/UniWebViewInterface$DialogRunnable;)V
    .registers 3
    .param p0, "r"    # Lcom/onevcat/uniwebview/UniWebViewInterface$DialogRunnable;

    .prologue
    .line 793
    invoke-static {}, Lcom/onevcat/uniwebview/UniWebViewInterface;->_getUnityActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/onevcat/uniwebview/UniWebViewInterface$53;

    invoke-direct {v1, p0}, Lcom/onevcat/uniwebview/UniWebViewInterface$53;-><init>(Lcom/onevcat/uniwebview/UniWebViewInterface$DialogRunnable;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 802
    return-void
.end method

.method public static screenHeight()F
    .registers 3

    .prologue
    .line 788
    invoke-static {}, Lcom/onevcat/uniwebview/UniWebViewInterface;->_getUnityActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 789
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    return v1
.end method

.method public static screenWidth()F
    .registers 3

    .prologue
    .line 783
    invoke-static {}, Lcom/onevcat/uniwebview/UniWebViewInterface;->_getUnityActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 784
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    return v1
.end method

.method public static scrollTo(Ljava/lang/String;IIZ)V
    .registers 7
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "animated"    # Z

    .prologue
    .line 773
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interface scrollTo ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), animated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->info(Ljava/lang/String;)V

    .line 774
    new-instance v0, Lcom/onevcat/uniwebview/UniWebViewInterface$52;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/onevcat/uniwebview/UniWebViewInterface$52;-><init>(Ljava/lang/String;IIZ)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/UniWebViewInterface;->runSafelyOnUiThread(Lcom/onevcat/uniwebview/UniWebViewInterface$DialogRunnable;)V

    .line 780
    return-void
.end method

.method public static setAllowAutoPlay(Z)V
    .registers 4
    .param p0, "flag"    # Z

    .prologue
    .line 392
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interface setAllowAutoPlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->info(Ljava/lang/String;)V

    .line 393
    invoke-static {p0}, Lcom/onevcat/uniwebview/UniWebView;->setAllowAutoPlay(Z)V

    .line 394
    return-void
.end method

.method public static setAllowHTTPAuthPopUpWindow(Ljava/lang/String;Z)V
    .registers 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "enabled"    # Z

    .prologue
    .line 707
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interface setAllowHTTPAuthPopUpWindow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->info(Ljava/lang/String;)V

    .line 708
    new-instance v0, Lcom/onevcat/uniwebview/UniWebViewInterface$46;

    invoke-direct {v0, p0, p1}, Lcom/onevcat/uniwebview/UniWebViewInterface$46;-><init>(Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/UniWebViewInterface;->runSafelyOnUiThread(Lcom/onevcat/uniwebview/UniWebViewInterface$DialogRunnable;)V

    .line 714
    return-void
.end method

.method public static setAllowJavaScriptOpenWindow(Z)V
    .registers 4
    .param p0, "flag"    # Z

    .prologue
    .line 397
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interface setAllowJavaScriptOpenWindow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->info(Ljava/lang/String;)V

    .line 398
    invoke-static {p0}, Lcom/onevcat/uniwebview/UniWebView;->setAllowJavaScriptOpenWindow(Z)V

    .line 399
    return-void
.end method

.method public static setBackButtonEnabled(Ljava/lang/String;Z)V
    .registers 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "enabled"    # Z

    .prologue
    .line 647
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    const-string v1, "Interface setBackButtonEnabled"

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->info(Ljava/lang/String;)V

    .line 648
    new-instance v0, Lcom/onevcat/uniwebview/UniWebViewInterface$40;

    invoke-direct {v0, p0, p1}, Lcom/onevcat/uniwebview/UniWebViewInterface$40;-><init>(Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/UniWebViewInterface;->runSafelyOnUiThread(Lcom/onevcat/uniwebview/UniWebViewInterface$DialogRunnable;)V

    .line 654
    return-void
.end method

.method public static setBackgroundColor(Ljava/lang/String;FFFF)V
    .registers 11
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "a"    # F

    .prologue
    .line 446
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "Interface setBackgroundColor: {%f, %f, %f, %f}"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->info(Ljava/lang/String;)V

    .line 447
    new-instance v0, Lcom/onevcat/uniwebview/UniWebViewInterface$23;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/onevcat/uniwebview/UniWebViewInterface$23;-><init>(Ljava/lang/String;FFFF)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/UniWebViewInterface;->runSafelyOnUiThread(Lcom/onevcat/uniwebview/UniWebViewInterface$DialogRunnable;)V

    .line 453
    return-void
.end method

.method public static setBouncesEnabled(Ljava/lang/String;Z)V
    .registers 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "enabled"    # Z

    .prologue
    .line 587
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    const-string v1, "Interface setBouncesEnabled"

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->info(Ljava/lang/String;)V

    .line 588
    new-instance v0, Lcom/onevcat/uniwebview/UniWebViewInterface$34;

    invoke-direct {v0, p0, p1}, Lcom/onevcat/uniwebview/UniWebViewInterface$34;-><init>(Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/UniWebViewInterface;->runSafelyOnUiThread(Lcom/onevcat/uniwebview/UniWebViewInterface$DialogRunnable;)V

    .line 594
    return-void
.end method

.method public static setCalloutEnabled(Ljava/lang/String;Z)V
    .registers 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "enabled"    # Z

    .prologue
    .line 717
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interface setCalloutEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->info(Ljava/lang/String;)V

    .line 718
    new-instance v0, Lcom/onevcat/uniwebview/UniWebViewInterface$47;

    invoke-direct {v0, p0, p1}, Lcom/onevcat/uniwebview/UniWebViewInterface$47;-><init>(Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/UniWebViewInterface;->runSafelyOnUiThread(Lcom/onevcat/uniwebview/UniWebViewInterface$DialogRunnable;)V

    .line 724
    return-void
.end method

.method public static setCookie(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "cookie"    # Ljava/lang/String;

    .prologue
    .line 422
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    const-string v1, "Interface setCookie"

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->info(Ljava/lang/String;)V

    .line 423
    invoke-static {p0, p1}, Lcom/onevcat/uniwebview/UniWebView;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    return-void
.end method

.method public static setDefaultFontSize(Ljava/lang/String;I)V
    .registers 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "size"    # I

    .prologue
    .line 737
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDefaultFontSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->info(Ljava/lang/String;)V

    .line 738
    new-instance v0, Lcom/onevcat/uniwebview/UniWebViewInterface$49;

    invoke-direct {v0, p0, p1}, Lcom/onevcat/uniwebview/UniWebViewInterface$49;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/UniWebViewInterface;->runSafelyOnUiThread(Lcom/onevcat/uniwebview/UniWebViewInterface$DialogRunnable;)V

    .line 744
    return-void
.end method

.method public static setFrame(Ljava/lang/String;IIII)V
    .registers 11
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 222
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "Interface setFrame: {%d, %d, %d, %d}"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->info(Ljava/lang/String;)V

    .line 223
    new-instance v0, Lcom/onevcat/uniwebview/UniWebViewInterface$9;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/onevcat/uniwebview/UniWebViewInterface$9;-><init>(Ljava/lang/String;IIII)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/UniWebViewInterface;->runSafelyOnUiThread(Lcom/onevcat/uniwebview/UniWebViewInterface$DialogRunnable;)V

    .line 229
    return-void
.end method

.method public static setHeaderField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 359
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interface setHeaderField for key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->info(Ljava/lang/String;)V

    .line 360
    new-instance v0, Lcom/onevcat/uniwebview/UniWebViewInterface$19;

    invoke-direct {v0, p0, p1, p2}, Lcom/onevcat/uniwebview/UniWebViewInterface$19;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/UniWebViewInterface;->runSafelyOnUiThread(Lcom/onevcat/uniwebview/UniWebViewInterface$DialogRunnable;)V

    .line 366
    return-void
.end method

.method public static setHorizontalScrollBarEnabled(Ljava/lang/String;Z)V
    .registers 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "enabled"    # Z

    .prologue
    .line 567
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interface setHorizontalScrollBarEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->info(Ljava/lang/String;)V

    .line 568
    new-instance v0, Lcom/onevcat/uniwebview/UniWebViewInterface$32;

    invoke-direct {v0, p0, p1}, Lcom/onevcat/uniwebview/UniWebViewInterface$32;-><init>(Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/UniWebViewInterface;->runSafelyOnUiThread(Lcom/onevcat/uniwebview/UniWebViewInterface$DialogRunnable;)V

    .line 574
    return-void
.end method

.method public static setImmersiveModeEnabled(Ljava/lang/String;Z)V
    .registers 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "enabled"    # Z

    .prologue
    .line 677
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    const-string v1, "Interface setImmersiveModeEnabled"

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->info(Ljava/lang/String;)V

    .line 678
    new-instance v0, Lcom/onevcat/uniwebview/UniWebViewInterface$43;

    invoke-direct {v0, p0, p1}, Lcom/onevcat/uniwebview/UniWebViewInterface$43;-><init>(Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/UniWebViewInterface;->runSafelyOnUiThread(Lcom/onevcat/uniwebview/UniWebViewInterface$DialogRunnable;)V

    .line 684
    return-void
.end method

.method public static setJavaScriptEnabled(Z)V
    .registers 4
    .param p0, "enabled"    # Z

    .prologue
    .line 402
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interface setJavaScriptEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->info(Ljava/lang/String;)V

    .line 403
    invoke-static {p0}, Lcom/onevcat/uniwebview/UniWebView;->setJavaScriptEnabled(Z)V

    .line 404
    return-void
.end method

.method public static setLoadWithOverviewMode(Ljava/lang/String;Z)V
    .registers 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "overview"    # Z

    .prologue
    .line 667
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    const-string v1, "Interface setLoadWithOverviewMode"

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->info(Ljava/lang/String;)V

    .line 668
    new-instance v0, Lcom/onevcat/uniwebview/UniWebViewInterface$42;

    invoke-direct {v0, p0, p1}, Lcom/onevcat/uniwebview/UniWebViewInterface$42;-><init>(Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/UniWebViewInterface;->runSafelyOnUiThread(Lcom/onevcat/uniwebview/UniWebViewInterface$DialogRunnable;)V

    .line 674
    return-void
.end method

.method public static setLogLevel(I)V
    .registers 2
    .param p0, "level"    # I

    .prologue
    .line 26
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onevcat/uniwebview/Logger;->setLevel(I)V

    .line 27
    return-void
.end method

.method public static setOpenLinksInExternalBrowser(Ljava/lang/String;Z)V
    .registers 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "flag"    # Z

    .prologue
    .line 557
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interface setOpenLinksInExternalBrowser: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->info(Ljava/lang/String;)V

    .line 558
    new-instance v0, Lcom/onevcat/uniwebview/UniWebViewInterface$31;

    invoke-direct {v0, p0, p1}, Lcom/onevcat/uniwebview/UniWebViewInterface$31;-><init>(Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/UniWebViewInterface;->runSafelyOnUiThread(Lcom/onevcat/uniwebview/UniWebViewInterface$DialogRunnable;)V

    .line 564
    return-void
.end method

.method public static setPosition(Ljava/lang/String;II)V
    .registers 9
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 232
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "Interface setPosition: {%d, %d}"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->info(Ljava/lang/String;)V

    .line 233
    new-instance v0, Lcom/onevcat/uniwebview/UniWebViewInterface$10;

    invoke-direct {v0, p0, p1, p2}, Lcom/onevcat/uniwebview/UniWebViewInterface$10;-><init>(Ljava/lang/String;II)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/UniWebViewInterface;->runSafelyOnUiThread(Lcom/onevcat/uniwebview/UniWebViewInterface$DialogRunnable;)V

    .line 239
    return-void
.end method

.method public static setShowSpinnerWhileLoading(Ljava/lang/String;Z)V
    .registers 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "show"    # Z

    .prologue
    .line 476
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interface setShowSpinnerWhenLoading: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->info(Ljava/lang/String;)V

    .line 477
    new-instance v0, Lcom/onevcat/uniwebview/UniWebViewInterface$25;

    invoke-direct {v0, p0, p1}, Lcom/onevcat/uniwebview/UniWebViewInterface$25;-><init>(Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/UniWebViewInterface;->runSafelyOnUiThread(Lcom/onevcat/uniwebview/UniWebViewInterface$DialogRunnable;)V

    .line 483
    return-void
.end method

.method public static setSize(Ljava/lang/String;II)V
    .registers 9
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 242
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "Interface setSize: {%d, %d}"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->info(Ljava/lang/String;)V

    .line 243
    new-instance v0, Lcom/onevcat/uniwebview/UniWebViewInterface$11;

    invoke-direct {v0, p0, p1, p2}, Lcom/onevcat/uniwebview/UniWebViewInterface$11;-><init>(Ljava/lang/String;II)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/UniWebViewInterface;->runSafelyOnUiThread(Lcom/onevcat/uniwebview/UniWebViewInterface$DialogRunnable;)V

    .line 249
    return-void
.end method

.method public static setSpinnerText(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 486
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interface setSpinnerText: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->info(Ljava/lang/String;)V

    .line 487
    new-instance v0, Lcom/onevcat/uniwebview/UniWebViewInterface$26;

    invoke-direct {v0, p0, p1}, Lcom/onevcat/uniwebview/UniWebViewInterface$26;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/UniWebViewInterface;->runSafelyOnUiThread(Lcom/onevcat/uniwebview/UniWebViewInterface$DialogRunnable;)V

    .line 493
    return-void
.end method

.method public static setSupportMultipleWindows(Ljava/lang/String;Z)V
    .registers 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "enabled"    # Z

    .prologue
    .line 727
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interface setSupportMultipleWindows: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->info(Ljava/lang/String;)V

    .line 728
    new-instance v0, Lcom/onevcat/uniwebview/UniWebViewInterface$48;

    invoke-direct {v0, p0, p1}, Lcom/onevcat/uniwebview/UniWebViewInterface$48;-><init>(Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/UniWebViewInterface;->runSafelyOnUiThread(Lcom/onevcat/uniwebview/UniWebViewInterface$DialogRunnable;)V

    .line 734
    return-void
.end method

.method public static setUseWideViewPort(Ljava/lang/String;Z)V
    .registers 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "use"    # Z

    .prologue
    .line 657
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    const-string v1, "Interface setUseWideViewPort"

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->info(Ljava/lang/String;)V

    .line 658
    new-instance v0, Lcom/onevcat/uniwebview/UniWebViewInterface$41;

    invoke-direct {v0, p0, p1}, Lcom/onevcat/uniwebview/UniWebViewInterface$41;-><init>(Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/UniWebViewInterface;->runSafelyOnUiThread(Lcom/onevcat/uniwebview/UniWebViewInterface$DialogRunnable;)V

    .line 664
    return-void
.end method

.method public static setUserAgent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 369
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v1

    .line 370
    .local v1, "logger":Lcom/onevcat/uniwebview/Logger;
    const-string v2, "Interface setUserAgent"

    invoke-virtual {v1, v2}, Lcom/onevcat/uniwebview/Logger;->info(Ljava/lang/String;)V

    .line 372
    invoke-static {}, Lcom/onevcat/uniwebview/UniWebViewManager;->getInstance()Lcom/onevcat/uniwebview/UniWebViewManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/onevcat/uniwebview/UniWebViewManager;->getUniWebViewDialog(Ljava/lang/String;)Lcom/onevcat/uniwebview/UniWebViewDialog;

    move-result-object v0

    .line 373
    .local v0, "dialog":Lcom/onevcat/uniwebview/UniWebViewDialog;
    invoke-static {v0, p0, p1}, Lcom/onevcat/uniwebview/UniWebViewDialog;->setUserAgent(Lcom/onevcat/uniwebview/UniWebViewDialog;Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    new-instance v2, Lcom/onevcat/uniwebview/UniWebViewInterface$20;

    invoke-direct {v2, p0, v1, p1, p0}, Lcom/onevcat/uniwebview/UniWebViewInterface$20;-><init>(Ljava/lang/String;Lcom/onevcat/uniwebview/Logger;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/onevcat/uniwebview/UniWebViewInterface;->runSafelyOnUiThread(Lcom/onevcat/uniwebview/UniWebViewInterface$DialogRunnable;)V

    .line 382
    return-void
.end method

.method public static setUserInteractionEnabled(Ljava/lang/String;Z)V
    .registers 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "enabled"    # Z

    .prologue
    .line 687
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    const-string v1, "Interface setUserInteractionEnabled"

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->info(Ljava/lang/String;)V

    .line 688
    new-instance v0, Lcom/onevcat/uniwebview/UniWebViewInterface$44;

    invoke-direct {v0, p0, p1}, Lcom/onevcat/uniwebview/UniWebViewInterface$44;-><init>(Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/UniWebViewInterface;->runSafelyOnUiThread(Lcom/onevcat/uniwebview/UniWebViewInterface$DialogRunnable;)V

    .line 694
    return-void
.end method

.method public static setVerticalScrollBarEnabled(Ljava/lang/String;Z)V
    .registers 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "enabled"    # Z

    .prologue
    .line 577
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interface setVerticalScrollBarEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->info(Ljava/lang/String;)V

    .line 578
    new-instance v0, Lcom/onevcat/uniwebview/UniWebViewInterface$33;

    invoke-direct {v0, p0, p1}, Lcom/onevcat/uniwebview/UniWebViewInterface$33;-><init>(Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/UniWebViewInterface;->runSafelyOnUiThread(Lcom/onevcat/uniwebview/UniWebViewInterface$DialogRunnable;)V

    .line 584
    return-void
.end method

.method public static setWebContentsDebuggingEnabled(Z)V
    .registers 4
    .param p0, "enabled"    # Z

    .prologue
    .line 697
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interface setWebContentsDebuggingEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->info(Ljava/lang/String;)V

    .line 698
    new-instance v0, Lcom/onevcat/uniwebview/UniWebViewInterface$45;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/onevcat/uniwebview/UniWebViewInterface$45;-><init>(Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/UniWebViewInterface;->runSafelyOnUiThread(Lcom/onevcat/uniwebview/UniWebViewInterface$DialogRunnable;)V

    .line 704
    return-void
.end method

.method public static setWebViewAlpha(Ljava/lang/String;F)V
    .registers 6
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "alpha"    # F

    .prologue
    .line 456
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Interface setWebViewAlpha: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onevcat/uniwebview/Logger;->info(Ljava/lang/String;)V

    .line 457
    invoke-static {}, Lcom/onevcat/uniwebview/UniWebViewManager;->getInstance()Lcom/onevcat/uniwebview/UniWebViewManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/onevcat/uniwebview/UniWebViewManager;->getUniWebViewDialog(Ljava/lang/String;)Lcom/onevcat/uniwebview/UniWebViewDialog;

    move-result-object v0

    .line 458
    .local v0, "dialog":Lcom/onevcat/uniwebview/UniWebViewDialog;
    if-eqz v0, :cond_28

    .line 459
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/onevcat/uniwebview/UniWebViewDialog;->setWebViewAlpha(FZ)V

    .line 461
    :cond_28
    new-instance v1, Lcom/onevcat/uniwebview/UniWebViewInterface$24;

    invoke-direct {v1, p0, p1}, Lcom/onevcat/uniwebview/UniWebViewInterface$24;-><init>(Ljava/lang/String;F)V

    invoke-static {v1}, Lcom/onevcat/uniwebview/UniWebViewInterface;->runSafelyOnUiThread(Lcom/onevcat/uniwebview/UniWebViewInterface$DialogRunnable;)V

    .line 467
    return-void
.end method

.method public static setZoomEnabled(Ljava/lang/String;Z)V
    .registers 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "enabled"    # Z

    .prologue
    .line 597
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    const-string v1, "Interface setZoomEnabled"

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->info(Ljava/lang/String;)V

    .line 598
    new-instance v0, Lcom/onevcat/uniwebview/UniWebViewInterface$35;

    invoke-direct {v0, p0, p1}, Lcom/onevcat/uniwebview/UniWebViewInterface$35;-><init>(Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/UniWebViewInterface;->runSafelyOnUiThread(Lcom/onevcat/uniwebview/UniWebViewInterface$DialogRunnable;)V

    .line 604
    return-void
.end method

.method public static show(Ljava/lang/String;ZIFLjava/lang/String;)Z
    .registers 14
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "fade"    # Z
    .param p2, "edge"    # I
    .param p3, "duration"    # F
    .param p4, "identifier"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 252
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    const-string v1, "Interface show"

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->info(Ljava/lang/String;)V

    .line 254
    new-instance v7, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v7, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 255
    .local v7, "latch":Ljava/util/concurrent/CountDownLatch;
    new-array v2, v3, [Z

    .line 256
    .local v2, "result":[Z
    new-instance v0, Lcom/onevcat/uniwebview/UniWebViewInterface$12;

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/onevcat/uniwebview/UniWebViewInterface$12;-><init>(Ljava/lang/String;[ZZIFLjava/lang/String;Ljava/util/concurrent/CountDownLatch;)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/UniWebViewInterface;->runSafelyOnUiThread(Lcom/onevcat/uniwebview/UniWebViewInterface$DialogRunnable;)V

    .line 265
    const-wide/16 v0, 0x64

    :try_start_20
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, v0, v1, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_25
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_25} :catch_29

    .line 269
    :goto_25
    const/4 v0, 0x0

    aget-boolean v0, v2, v0

    return v0

    .line 266
    :catch_29
    move-exception v8

    .line 267
    .local v8, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v8}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_25
.end method

.method public static showWebViewDialog(Ljava/lang/String;Z)V
    .registers 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "show"    # Z

    .prologue
    .line 758
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    const-string v1, "Interface showWebViewDialog"

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->info(Ljava/lang/String;)V

    .line 759
    new-instance v0, Lcom/onevcat/uniwebview/UniWebViewInterface$51;

    invoke-direct {v0, p0, p1}, Lcom/onevcat/uniwebview/UniWebViewInterface$51;-><init>(Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/UniWebViewInterface;->runSafelyOnUiThread(Lcom/onevcat/uniwebview/UniWebViewInterface$DialogRunnable;)V

    .line 770
    return-void
.end method

.method public static stop(Ljava/lang/String;)V
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 185
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    const-string v1, "Interface stop"

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->info(Ljava/lang/String;)V

    .line 187
    new-instance v0, Lcom/onevcat/uniwebview/UniWebViewInterface$7;

    invoke-direct {v0, p0, p0}, Lcom/onevcat/uniwebview/UniWebViewInterface$7;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/UniWebViewInterface;->runSafelyOnUiThread(Lcom/onevcat/uniwebview/UniWebViewInterface$DialogRunnable;)V

    .line 196
    return-void
.end method
