.class public Lcn/sharesdk/framework/d;
.super Landroid/webkit/WebViewClient;
.source "SSDKWebViewClient.java"


# static fields
.field public static final ERROR_AUTHENTICATION:I = -0x4

.field public static final ERROR_BAD_URL:I = -0xc

.field public static final ERROR_CONNECT:I = -0x6

.field public static final ERROR_FAILED_SSL_HANDSHAKE:I = -0xb

.field public static final ERROR_FILE:I = -0xd

.field public static final ERROR_FILE_NOT_FOUND:I = -0xe

.field public static final ERROR_HOST_LOOKUP:I = -0x2

.field public static final ERROR_IO:I = -0x7

.field public static final ERROR_PROXY_AUTHENTICATION:I = -0x5

.field public static final ERROR_REDIRECT_LOOP:I = -0x9

.field public static final ERROR_TIMEOUT:I = -0x8

.field public static final ERROR_TOO_MANY_REQUESTS:I = -0xf

.field public static final ERROR_UNKNOWN:I = -0x1

.field public static final ERROR_UNSUPPORTED_AUTH_SCHEME:I = -0x3

.field public static final ERROR_UNSUPPORTED_SCHEME:I = -0xa


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .registers 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "isReload"    # Z

    .prologue
    .line 199
    return-void
.end method

.method public onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .registers 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "dontResend"    # Landroid/os/Message;
    .param p3, "resend"    # Landroid/os/Message;

    .prologue
    .line 184
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 185
    return-void
.end method

.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 132
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 119
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 104
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 169
    return-void
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/HttpAuthHandler;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "realm"    # Ljava/lang/String;

    .prologue
    .line 305
    invoke-virtual {p2}, Landroid/webkit/HttpAuthHandler;->cancel()V

    .line 306
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 15
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x4

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 217
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_e7

    .line 218
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 223
    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getOSLanguage()Ljava/lang/String;

    move-result-object v1

    .line 224
    const-string v2, "zh"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b1

    .line 225
    const/4 v1, 0x5

    new-array v4, v1, [Ljava/lang/String;

    const/16 v1, 0xe

    new-array v1, v1, [C

    fill-array-data v1, :array_ec

    .line 226
    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v7

    const/16 v1, 0xc

    new-array v1, v1, [C

    fill-array-data v1, :array_fe

    .line 227
    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v9

    const/16 v1, 0xe

    new-array v1, v1, [C

    fill-array-data v1, :array_10e

    .line 228
    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v6

    const/16 v1, 0xd

    new-array v1, v1, [C

    fill-array-data v1, :array_120

    .line 229
    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v10

    const/16 v1, 0xb

    new-array v1, v1, [C

    fill-array-data v1, :array_132

    .line 230
    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v8

    .line 232
    new-array v1, v8, [C

    fill-array-data v1, :array_142

    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v3

    .line 233
    new-array v1, v6, [C

    fill-array-data v1, :array_14a

    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    .line 234
    new-array v1, v6, [C

    fill-array-data v1, :array_150

    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    .line 248
    :goto_82
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 249
    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 250
    invoke-virtual {p3}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result v0

    packed-switch v0, :pswitch_data_156

    .line 264
    aget-object v0, v4, v8

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 267
    :goto_96
    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 268
    new-instance v0, Lcn/sharesdk/framework/d$1;

    invoke-direct {v0, p0, p2}, Lcn/sharesdk/framework/d$1;-><init>(Lcn/sharesdk/framework/d;Landroid/webkit/SslErrorHandler;)V

    invoke-virtual {v5, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 278
    new-instance v0, Lcn/sharesdk/framework/d$2;

    invoke-direct {v0, p0, p2}, Lcn/sharesdk/framework/d$2;-><init>(Lcn/sharesdk/framework/d;Landroid/webkit/SslErrorHandler;)V

    invoke-virtual {v5, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 284
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 288
    :goto_b0
    return-void

    .line 236
    :cond_b1
    const/4 v1, 0x5

    new-array v4, v1, [Ljava/lang/String;

    const-string v1, "Certificate is untrusted. Do you want to continue anyway?"

    aput-object v1, v4, v7

    const-string v1, "Certificate has expired. Do you want to continue anyway?"

    aput-object v1, v4, v9

    const-string v1, "Certificate ID is mismatched. Do you want to continue anyway?"

    aput-object v1, v4, v6

    const-string v1, "Certificate is not yet valid. Do you want to continue anyway?"

    aput-object v1, v4, v10

    const-string v1, "Certificate error. Do you want to continue anyway?"

    aput-object v1, v4, v8

    .line 243
    const-string v3, "SSL Certificate Error"

    .line 244
    const-string v2, "Yes"

    .line 245
    const-string v1, "No"

    goto :goto_82

    .line 252
    :pswitch_cf
    aget-object v0, v4, v7

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_96

    .line 255
    :pswitch_d5
    aget-object v0, v4, v9

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_96

    .line 258
    :pswitch_db
    aget-object v0, v4, v6

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_96

    .line 261
    :pswitch_e1
    aget-object v0, v4, v10

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_96

    .line 286
    :cond_e7
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    goto :goto_b0

    .line 225
    nop

    :array_ec
    .array-data 2
        0x4e0ds
        0x53d7s
        0x4fe1s
        0x4efbs
        0x7684s
        -0x743fs
        0x4e66s
        0x3002s
        0x4f60s
        -0x767fs
        0x7ee7s
        0x7eeds
        0x5417s
        -0xe1s
    .end array-data

    .line 226
    :array_fe
    .array-data 2
        -0x743fs
        0x4e66s
        0x5df2s
        -0x7039s
        0x671fs
        0x3002s
        0x4f60s
        -0x767fs
        0x7ee7s
        0x7eeds
        0x5417s
        -0xe1s
    .end array-data

    .line 227
    :array_10e
    .array-data 2
        -0x743fs
        0x4e66s
        0x49s
        0x44s
        0x4e0ds
        0x5339s
        -0x6eb3s
        0x3002s
        0x4f60s
        -0x767fs
        0x7ee7s
        0x7eeds
        0x5417s
        -0xe1s
    .end array-data

    .line 228
    :array_120
    .array-data 2
        -0x743fs
        0x4e66s
        0x5c1as
        0x672as
        0x751fs
        0x6548s
        0x3002s
        0x4f60s
        -0x767fs
        0x7ee7s
        0x7eeds
        0x5417s
        -0xe1s
    .end array-data

    .line 229
    nop

    :array_132
    .array-data 2
        -0x743fs
        0x4e66s
        -0x6ae7s
        -0x7411s
        0x3002s
        0x4f60s
        -0x767fs
        0x7ee7s
        0x7eeds
        0x5417s
        -0xe1s
    .end array-data

    .line 232
    nop

    :array_142
    .array-data 2
        -0x743fs
        0x4e66s
        -0x6ae7s
        -0x7411s
    .end array-data

    .line 233
    :array_14a
    .array-data 2
        0x7ee7s
        0x7eeds
    .end array-data

    .line 234
    :array_150
    .array-data 2
        0x505cs
        0x6b62s
    .end array-data

    .line 250
    :pswitch_data_156
    .packed-switch 0x0
        :pswitch_e1
        :pswitch_d5
        :pswitch_db
        :pswitch_cf
    .end packed-switch
.end method

.method public onScaleChanged(Landroid/webkit/WebView;FF)V
    .registers 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "oldScale"    # F
    .param p3, "newScale"    # F

    .prologue
    .line 355
    return-void
.end method

.method public onTooManyRedirects(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .registers 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "cancelMsg"    # Landroid/os/Message;
    .param p3, "continueMsg"    # Landroid/os/Message;

    .prologue
    .line 150
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 151
    return-void
.end method

.method public onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V
    .registers 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 340
    return-void
.end method

.method public shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 323
    const/4 v0, 0x0

    return v0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method
