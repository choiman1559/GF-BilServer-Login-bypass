.class public Lcom/onevcat/uniwebview/UniWebViewChromeClient;
.super Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;
.source "UniWebViewChromeClient.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private alertDialog:Landroid/app/AlertDialog;

.field private callback:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private cameraPhotoPath:Ljava/lang/String;

.field private dialog:Lcom/onevcat/uniwebview/UniWebViewDialog;

.field private params:Landroid/webkit/WebChromeClient$FileChooserParams;

.field private popUpWebView:Lcom/onevcat/uniwebview/UniWebView;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;Lcom/onevcat/uniwebview/UniWebView;Lcom/onevcat/uniwebview/UniWebViewDialog;)V
    .registers 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "activityNonVideoView"    # Landroid/view/View;
    .param p3, "activityVideoView"    # Landroid/view/ViewGroup;
    .param p4, "loadingView"    # Landroid/view/View;
    .param p5, "webView"    # Lcom/onevcat/uniwebview/UniWebView;
    .param p6, "dialog"    # Lcom/onevcat/uniwebview/UniWebViewDialog;

    .prologue
    .line 56
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;-><init>(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;Lcom/onevcat/uniwebview/VideoEnabledWebView;)V

    .line 57
    iput-object p1, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->activity:Landroid/app/Activity;

    .line 58
    iput-object p6, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->dialog:Lcom/onevcat/uniwebview/UniWebViewDialog;

    .line 59
    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;Lcom/onevcat/uniwebview/UniWebViewDialog;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "dialog"    # Lcom/onevcat/uniwebview/UniWebViewDialog;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->activity:Landroid/app/Activity;

    .line 65
    iput-object p2, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->dialog:Lcom/onevcat/uniwebview/UniWebViewDialog;

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/onevcat/uniwebview/UniWebViewChromeClient;)Lcom/onevcat/uniwebview/UniWebViewDialog;
    .registers 2
    .param p0, "x0"    # Lcom/onevcat/uniwebview/UniWebViewChromeClient;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->dialog:Lcom/onevcat/uniwebview/UniWebViewDialog;

    return-object v0
.end method

.method static synthetic access$102(Lcom/onevcat/uniwebview/UniWebViewChromeClient;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 2
    .param p0, "x0"    # Lcom/onevcat/uniwebview/UniWebViewChromeClient;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->alertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method private copyInputStreamToFile(Ljava/io/InputStream;Ljava/io/File;)V
    .registers 8
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 314
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 315
    .local v3, "out":Ljava/io/OutputStream;
    const/16 v4, 0x400

    new-array v0, v4, [B

    .line 317
    .local v0, "buf":[B
    :goto_9
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "len":I
    if-lez v2, :cond_19

    .line 318
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    goto :goto_9

    .line 322
    .end local v0    # "buf":[B
    .end local v2    # "len":I
    .end local v3    # "out":Ljava/io/OutputStream;
    :catch_14
    move-exception v1

    .line 323
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 325
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_18
    return-void

    .line 320
    .restart local v0    # "buf":[B
    .restart local v2    # "len":I
    .restart local v3    # "out":Ljava/io/OutputStream;
    :cond_19
    :try_start_19
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 321
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1f} :catch_14

    goto :goto_18
.end method

.method private showAlert()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    .line 119
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->dialog:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->getImmersiveMode()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 120
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 121
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 122
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->dialog:Lcom/onevcat/uniwebview/UniWebViewDialog;

    .line 123
    invoke-virtual {v1}, Lcom/onevcat/uniwebview/UniWebViewDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    .line 122
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 125
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 129
    :goto_3c
    return-void

    .line 127
    :cond_3d
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_3c
.end method

.method private uriToFilename(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 328
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->activity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/onevcat/uniwebview/ProviderPathConverter;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method createImageFile()Ljava/io/File;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 333
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMdd_HHmmss"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 334
    .local v2, "timeStamp":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IMAGE_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 335
    .local v0, "imageFileName":Ljava/lang/String;
    sget-object v3, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 336
    .local v1, "storageDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3a

    .line 337
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 339
    :cond_3a
    const-string v3, ".png"

    invoke-static {v0, v3, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    return-object v3
.end method

.method createTempFile(Landroid/net/Uri;)Ljava/io/File;
    .registers 11
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 347
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    .line 348
    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    .line 350
    .local v7, "cursor":Landroid/database/Cursor;
    const-string v8, ""

    .line 351
    .local v8, "displayName":Ljava/lang/String;
    if-eqz v7, :cond_24

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 352
    const-string v0, "_display_name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 355
    :cond_24
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 357
    invoke-static {v8, v2, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method getAlertDialog()Landroid/app/AlertDialog;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->alertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method getCameraPhotoPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 369
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->cameraPhotoPath:Ljava/lang/String;

    return-object v0
.end method

.method getFileChooserParams()Landroid/webkit/WebChromeClient$FileChooserParams;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->params:Landroid/webkit/WebChromeClient$FileChooserParams;

    return-object v0
.end method

.method public getPopUpWebView()Lcom/onevcat/uniwebview/UniWebView;
    .registers 2

    .prologue
    .line 373
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->popUpWebView:Lcom/onevcat/uniwebview/UniWebView;

    return-object v0
.end method

.method public onCloseWindow(Landroid/webkit/WebView;)V
    .registers 3
    .param p1, "window"    # Landroid/webkit/WebView;

    .prologue
    .line 248
    invoke-super {p0, p1}, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->onCloseWindow(Landroid/webkit/WebView;)V

    .line 249
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->dialog:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->getWebView()Lcom/onevcat/uniwebview/UniWebView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onevcat/uniwebview/UniWebView;->removeView(Landroid/view/View;)V

    .line 250
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->setPopUpWebView(Lcom/onevcat/uniwebview/UniWebView;)V

    .line 251
    return-void
.end method

.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .registers 13
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "isDialog"    # Z
    .param p3, "isUserGesture"    # Z
    .param p4, "resultMsg"    # Landroid/os/Message;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v7, -0x1

    .line 222
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreateWindow: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isUserGesture: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/onevcat/uniwebview/Logger;->info(Ljava/lang/String;)V

    .line 223
    iget-object v4, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->dialog:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-virtual {v4}, Lcom/onevcat/uniwebview/UniWebViewDialog;->getWebView()Lcom/onevcat/uniwebview/UniWebView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onevcat/uniwebview/UniWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebSettings;->supportMultipleWindows()Z

    move-result v4

    if-eqz v4, :cond_88

    if-eqz p3, :cond_88

    .line 224
    new-instance v0, Lcom/onevcat/uniwebview/UniWebView;

    iget-object v4, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->activity:Landroid/app/Activity;

    invoke-direct {v0, v4}, Lcom/onevcat/uniwebview/UniWebView;-><init>(Landroid/content/Context;)V

    .line 226
    .local v0, "newWebView":Lcom/onevcat/uniwebview/UniWebView;
    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 228
    new-instance v4, Lcom/onevcat/uniwebview/UniWebViewChromeClient;

    iget-object v5, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->activity:Landroid/app/Activity;

    iget-object v6, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->dialog:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-direct {v4, v5, v6}, Lcom/onevcat/uniwebview/UniWebViewChromeClient;-><init>(Landroid/app/Activity;Lcom/onevcat/uniwebview/UniWebViewDialog;)V

    invoke-virtual {v0, v4}, Lcom/onevcat/uniwebview/UniWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 230
    new-instance v4, Landroid/webkit/WebViewClient;

    invoke-direct {v4}, Landroid/webkit/WebViewClient;-><init>()V

    invoke-virtual {v0, v4}, Lcom/onevcat/uniwebview/UniWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 231
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 232
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/UniWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 233
    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    iget-object v5, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->dialog:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-virtual {v5}, Lcom/onevcat/uniwebview/UniWebViewDialog;->getWebView()Lcom/onevcat/uniwebview/UniWebView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/onevcat/uniwebview/UniWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->addView(Landroid/view/View;)V

    .line 235
    iget-object v2, p4, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/webkit/WebView$WebViewTransport;

    .line 236
    .local v2, "transport":Landroid/webkit/WebView$WebViewTransport;
    invoke-virtual {v2, v0}, Landroid/webkit/WebView$WebViewTransport;->setWebView(Landroid/webkit/WebView;)V

    .line 237
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    .line 239
    invoke-virtual {p0, v0}, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->setPopUpWebView(Lcom/onevcat/uniwebview/UniWebView;)V

    .line 242
    .end local v0    # "newWebView":Lcom/onevcat/uniwebview/UniWebView;
    .end local v1    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v2    # "transport":Landroid/webkit/WebView$WebViewTransport;
    :goto_87
    return v3

    :cond_88
    invoke-super {p0, p1, p2, p3, p4}, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z

    move-result v3

    goto :goto_87
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .registers 5
    .param p1, "origin"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/webkit/GeolocationPermissions$Callback;

    .prologue
    .line 216
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p2, p1, v0, v1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    .line 217
    return-void
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 9
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;

    .prologue
    .line 133
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->dialog:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-virtual {v1}, Lcom/onevcat/uniwebview/UniWebViewDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 135
    .local v0, "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 136
    invoke-virtual {v1, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 137
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    .line 138
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/onevcat/uniwebview/UniWebViewChromeClient$2;

    invoke-direct {v3, p0, p4}, Lcom/onevcat/uniwebview/UniWebViewChromeClient$2;-><init>(Lcom/onevcat/uniwebview/UniWebViewChromeClient;Landroid/webkit/JsResult;)V

    .line 139
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 145
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->alertDialog:Landroid/app/AlertDialog;

    .line 146
    invoke-direct {p0}, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->showAlert()V

    .line 147
    const/4 v1, 0x1

    return v1
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 9
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;

    .prologue
    .line 152
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->dialog:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-virtual {v1}, Lcom/onevcat/uniwebview/UniWebViewDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 154
    .local v0, "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 155
    invoke-virtual {v1, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x108009b

    .line 156
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 157
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040013

    new-instance v3, Lcom/onevcat/uniwebview/UniWebViewChromeClient$4;

    invoke-direct {v3, p0, p4}, Lcom/onevcat/uniwebview/UniWebViewChromeClient$4;-><init>(Lcom/onevcat/uniwebview/UniWebViewChromeClient;Landroid/webkit/JsResult;)V

    .line 158
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040009

    new-instance v3, Lcom/onevcat/uniwebview/UniWebViewChromeClient$3;

    invoke-direct {v3, p0, p4}, Lcom/onevcat/uniwebview/UniWebViewChromeClient$3;-><init>(Lcom/onevcat/uniwebview/UniWebViewChromeClient;Landroid/webkit/JsResult;)V

    .line 165
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 171
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->alertDialog:Landroid/app/AlertDialog;

    .line 172
    invoke-direct {p0}, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->showAlert()V

    .line 173
    const/4 v1, 0x1

    return v1
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .registers 10
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/String;
    .param p5, "result"    # Landroid/webkit/JsPromptResult;

    .prologue
    .line 178
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->dialog:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-virtual {v2}, Lcom/onevcat/uniwebview/UniWebViewDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 180
    .local v0, "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 181
    invoke-virtual {v2, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x108009b

    .line 182
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    .line 183
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 185
    new-instance v1, Landroid/widget/EditText;

    iget-object v2, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->dialog:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-virtual {v2}, Lcom/onevcat/uniwebview/UniWebViewDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 186
    .local v1, "input":Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->setSingleLine()V

    .line 187
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 189
    const v2, 0x1040013

    new-instance v3, Lcom/onevcat/uniwebview/UniWebViewChromeClient$5;

    invoke-direct {v3, p0, v1, p5}, Lcom/onevcat/uniwebview/UniWebViewChromeClient$5;-><init>(Lcom/onevcat/uniwebview/UniWebViewChromeClient;Landroid/widget/EditText;Landroid/webkit/JsPromptResult;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 202
    const v2, 0x1040009

    new-instance v3, Lcom/onevcat/uniwebview/UniWebViewChromeClient$6;

    invoke-direct {v3, p0, p5}, Lcom/onevcat/uniwebview/UniWebViewChromeClient$6;-><init>(Lcom/onevcat/uniwebview/UniWebViewChromeClient;Landroid/webkit/JsPromptResult;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 210
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->alertDialog:Landroid/app/AlertDialog;

    .line 211
    invoke-direct {p0}, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->showAlert()V

    .line 212
    const/4 v2, 0x1

    return v2
.end method

.method public onPermissionRequest(Landroid/webkit/PermissionRequest;)V
    .registers 5
    .param p1, "request"    # Landroid/webkit/PermissionRequest;

    .prologue
    .line 90
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UniWebViewChromeClient onPermissionRequest, url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/webkit/PermissionRequest;->getOrigin()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->info(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/onevcat/uniwebview/UniWebViewChromeClient$1;

    invoke-direct {v1, p0, p1}, Lcom/onevcat/uniwebview/UniWebViewChromeClient$1;-><init>(Lcom/onevcat/uniwebview/UniWebViewChromeClient;Landroid/webkit/PermissionRequest;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 112
    return-void
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .registers 7
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p3, "fileChooserParams"    # Landroid/webkit/WebChromeClient$FileChooserParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback",
            "<[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 70
    .local p2, "filePathCallback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<[Landroid/net/Uri;>;"
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v1

    const-string v2, "UniWebViewChromeClient onShowFileChooser."

    invoke-virtual {v1, v2}, Lcom/onevcat/uniwebview/Logger;->info(Ljava/lang/String;)V

    .line 71
    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->callback:Landroid/webkit/ValueCallback;

    if-eqz v1, :cond_1c

    .line 72
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v1

    const-string v2, "Trying to show another file chooser before previous one finished. Discard previous upload!"

    invoke-virtual {v1, v2}, Lcom/onevcat/uniwebview/Logger;->critical(Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->callback:Landroid/webkit/ValueCallback;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 76
    :cond_1c
    iput-object p2, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->callback:Landroid/webkit/ValueCallback;

    .line 77
    iput-object p3, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->params:Landroid/webkit/WebChromeClient$FileChooserParams;

    .line 79
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v1

    const-string v2, "Start file chooser activity."

    invoke-virtual {v1, v2}, Lcom/onevcat/uniwebview/Logger;->verbose(Ljava/lang/String;)V

    .line 81
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->activity:Landroid/app/Activity;

    const-class v2, Lcom/onevcat/uniwebview/UniWebViewFileChooserActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "chrome_client"

    iget-object v2, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->dialog:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-virtual {v2}, Lcom/onevcat/uniwebview/UniWebViewDialog;->getWebViewName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 85
    const/4 v1, 0x1

    return v1
.end method

.method receivedFileValue(Landroid/content/Intent;Z)V
    .registers 18
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "hasImage"    # Z

    .prologue
    .line 254
    const/4 v10, 0x0

    .line 255
    .local v10, "results":[Landroid/net/Uri;
    if-eqz p1, :cond_bf

    .line 256
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v11

    .line 257
    .local v11, "uri":Ljava/lang/String;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 258
    .local v12, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    if-eqz v11, :cond_3d

    .line 259
    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    :cond_15
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_58

    .line 271
    if-eqz p2, :cond_2d

    iget-object v13, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->cameraPhotoPath:Ljava/lang/String;

    if-eqz v13, :cond_2d

    .line 272
    const/4 v13, 0x1

    new-array v10, v13, [Landroid/net/Uri;

    .end local v10    # "results":[Landroid/net/Uri;
    const/4 v13, 0x0

    iget-object v14, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->cameraPhotoPath:Ljava/lang/String;

    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    aput-object v14, v10, v13

    .line 304
    .end local v11    # "uri":Ljava/lang/String;
    .end local v12    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .restart local v10    # "results":[Landroid/net/Uri;
    :cond_2d
    :goto_2d
    iget-object v13, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->callback:Landroid/webkit/ValueCallback;

    if-eqz v13, :cond_36

    .line 305
    iget-object v13, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->callback:Landroid/webkit/ValueCallback;

    invoke-interface {v13, v10}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 308
    :cond_36
    const/4 v13, 0x0

    iput-object v13, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->callback:Landroid/webkit/ValueCallback;

    .line 309
    const/4 v13, 0x0

    iput-object v13, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->params:Landroid/webkit/WebChromeClient$FileChooserParams;

    .line 310
    return-void

    .line 261
    .restart local v11    # "uri":Ljava/lang/String;
    .restart local v12    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_3d
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v8

    .line 262
    .local v8, "mClipData":Landroid/content/ClipData;
    if-eqz v8, :cond_15

    .line 263
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_44
    invoke-virtual {v8}, Landroid/content/ClipData;->getItemCount()I

    move-result v13

    if-ge v5, v13, :cond_15

    .line 264
    invoke-virtual {v8, v5}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v7

    .line 265
    .local v7, "item":Landroid/content/ClipData$Item;
    invoke-virtual {v7}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 266
    .local v0, "clipUri":Landroid/net/Uri;
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    add-int/lit8 v5, v5, 0x1

    goto :goto_44

    .line 275
    .end local v0    # "clipUri":Landroid/net/Uri;
    .end local v5    # "i":I
    .end local v7    # "item":Landroid/content/ClipData$Item;
    .end local v8    # "mClipData":Landroid/content/ClipData;
    :cond_58
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 276
    .local v2, "convertedResults":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_5e
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v5, v13, :cond_b4

    .line 277
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 278
    .local v1, "contentUri":Landroid/net/Uri;
    invoke-direct {p0, v1}, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->uriToFilename(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v9

    .line 279
    .local v9, "path":Ljava/lang/String;
    if-eqz v9, :cond_7f

    .line 280
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v13}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    :goto_7c
    add-int/lit8 v5, v5, 0x1

    goto :goto_5e

    .line 283
    :cond_7f
    :try_start_7f
    iget-object v13, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->activity:Landroid/app/Activity;

    invoke-virtual {v13}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    invoke-virtual {v13, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v6

    .line 284
    .local v6, "input":Ljava/io/InputStream;
    invoke-virtual {p0, v1}, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->createTempFile(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v4

    .line 285
    .local v4, "f":Ljava/io/File;
    invoke-direct {p0, v6, v4}, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->copyInputStreamToFile(Ljava/io/InputStream;Ljava/io/File;)V

    .line 286
    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_97
    .catch Ljava/io/FileNotFoundException; {:try_start_7f .. :try_end_97} :catch_98
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_97} :catch_a6

    goto :goto_7c

    .line 287
    .end local v4    # "f":Ljava/io/File;
    .end local v6    # "input":Ljava/io/InputStream;
    :catch_98
    move-exception v3

    .line 288
    .local v3, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 289
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v13

    const-string v14, "Can not get correct path on disk storage."

    invoke-virtual {v13, v14}, Lcom/onevcat/uniwebview/Logger;->critical(Ljava/lang/String;)V

    goto :goto_7c

    .line 290
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :catch_a6
    move-exception v3

    .line 291
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 292
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v13

    const-string v14, "Can not get correct path on disk storage."

    invoke-virtual {v13, v14}, Lcom/onevcat/uniwebview/Logger;->critical(Ljava/lang/String;)V

    goto :goto_7c

    .line 296
    .end local v1    # "contentUri":Landroid/net/Uri;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v9    # "path":Ljava/lang/String;
    :cond_b4
    const/4 v13, 0x0

    new-array v13, v13, [Landroid/net/Uri;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "results":[Landroid/net/Uri;
    check-cast v10, [Landroid/net/Uri;

    .restart local v10    # "results":[Landroid/net/Uri;
    goto/16 :goto_2d

    .line 299
    .end local v2    # "convertedResults":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .end local v5    # "i":I
    .end local v11    # "uri":Ljava/lang/String;
    .end local v12    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_bf
    if-eqz p2, :cond_2d

    iget-object v13, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->cameraPhotoPath:Ljava/lang/String;

    if-eqz v13, :cond_2d

    .line 300
    const/4 v13, 0x1

    new-array v10, v13, [Landroid/net/Uri;

    .end local v10    # "results":[Landroid/net/Uri;
    const/4 v13, 0x0

    iget-object v14, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->cameraPhotoPath:Ljava/lang/String;

    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    aput-object v14, v10, v13

    .restart local v10    # "results":[Landroid/net/Uri;
    goto/16 :goto_2d
.end method

.method setCameraPhotoPath(Ljava/lang/String;)V
    .registers 2
    .param p1, "cameraPhotoPath"    # Ljava/lang/String;

    .prologue
    .line 365
    iput-object p1, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->cameraPhotoPath:Ljava/lang/String;

    .line 366
    return-void
.end method

.method public setPopUpWebView(Lcom/onevcat/uniwebview/UniWebView;)V
    .registers 2
    .param p1, "popUpWebView"    # Lcom/onevcat/uniwebview/UniWebView;

    .prologue
    .line 377
    iput-object p1, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->popUpWebView:Lcom/onevcat/uniwebview/UniWebView;

    .line 378
    return-void
.end method
