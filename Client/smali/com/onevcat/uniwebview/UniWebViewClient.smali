.class Lcom/onevcat/uniwebview/UniWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "UniWebViewClient.java"


# instance fields
.field private dialog:Lcom/onevcat/uniwebview/UniWebViewDialog;

.field private httpStatusCode:I

.field private loadingSuccess:Z

.field private sslErrored:Z

.field private userStopped:Z


# direct methods
.method constructor <init>(Lcom/onevcat/uniwebview/UniWebViewDialog;)V
    .registers 3
    .param p1, "dialog"    # Lcom/onevcat/uniwebview/UniWebViewDialog;

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 36
    const/16 v0, 0xc8

    iput v0, p0, Lcom/onevcat/uniwebview/UniWebViewClient;->httpStatusCode:I

    .line 39
    iput-object p1, p0, Lcom/onevcat/uniwebview/UniWebViewClient;->dialog:Lcom/onevcat/uniwebview/UniWebViewDialog;

    .line 40
    return-void
.end method

.method private showHttpAuthDialog(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .registers 20
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/HttpAuthHandler;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "realm"    # Ljava/lang/String;

    .prologue
    .line 182
    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewClient;->dialog:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-virtual {v1}, Lcom/onevcat/uniwebview/UniWebViewDialog;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 183
    .local v10, "context":Landroid/content/Context;
    new-instance v11, Landroid/widget/LinearLayout;

    invoke-direct {v11, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 185
    .local v11, "layout":Landroid/widget/LinearLayout;
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, v10}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 187
    .local v3, "userText":Landroid/widget/EditText;
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/onevcat/uniwebview/R$string;->USERNAME:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 189
    new-instance v4, Landroid/widget/EditText;

    invoke-direct {v4, v10}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 190
    .local v4, "passwordText":Landroid/widget/EditText;
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/onevcat/uniwebview/R$string;->PASSWORD:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 191
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 193
    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 195
    invoke-virtual {v11, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 196
    invoke-virtual {v11, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 198
    new-instance v12, Landroid/app/AlertDialog$Builder;

    invoke-direct {v12, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 199
    .local v12, "mHttpAuthDialog":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/onevcat/uniwebview/R$string;->AUTH_REQUIRE_TITLE:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 200
    .local v9, "authTitleText":Ljava/lang/String;
    invoke-virtual {v12, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 201
    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 202
    invoke-virtual {v1, v11}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 203
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const v1, 0x104000a

    .line 204
    invoke-virtual {v10, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    new-instance v1, Lcom/onevcat/uniwebview/UniWebViewClient$2;

    move-object v2, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/onevcat/uniwebview/UniWebViewClient$2;-><init>(Lcom/onevcat/uniwebview/UniWebViewClient;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/HttpAuthHandler;)V

    invoke-virtual {v13, v14, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    .line 214
    invoke-virtual {v10, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/onevcat/uniwebview/UniWebViewClient$1;

    move-object/from16 v0, p2

    invoke-direct {v5, p0, v0}, Lcom/onevcat/uniwebview/UniWebViewClient$1;-><init>(Lcom/onevcat/uniwebview/UniWebViewClient;Landroid/webkit/HttpAuthHandler;)V

    invoke-virtual {v1, v2, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 219
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 220
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 7
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/16 v3, -0x4b2

    .line 58
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 59
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebClient onPageFinished: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->info(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewClient;->dialog:Lcom/onevcat/uniwebview/UniWebViewDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/UniWebViewDialog;->setLoading(Z)V

    .line 63
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewClient;->dialog:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->hideSpinner()V

    .line 64
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewClient;->dialog:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->hideSystemUI()V

    .line 66
    iget-boolean v0, p0, Lcom/onevcat/uniwebview/UniWebViewClient;->loadingSuccess:Z

    if-eqz v0, :cond_6c

    .line 67
    iget-boolean v0, p0, Lcom/onevcat/uniwebview/UniWebViewClient;->sslErrored:Z

    if-eqz v0, :cond_6d

    .line 68
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebClient onReceivedError for url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Error Code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Error: ssl error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->critical(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewClient;->dialog:Lcom/onevcat/uniwebview/UniWebViewDialog;

    iget-object v0, v0, Lcom/onevcat/uniwebview/UniWebViewDialog;->listener:Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;

    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewClient;->dialog:Lcom/onevcat/uniwebview/UniWebViewDialog;

    const-string v2, "ssl error"

    invoke-interface {v0, v1, v3, v2, p2}, Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;->onReceivedError(Lcom/onevcat/uniwebview/UniWebViewDialog;ILjava/lang/String;Ljava/lang/String;)V

    .line 78
    :cond_6c
    :goto_6c
    return-void

    .line 70
    :cond_6d
    iget-boolean v0, p0, Lcom/onevcat/uniwebview/UniWebViewClient;->userStopped:Z

    if-eqz v0, :cond_ab

    .line 71
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebClient onReceivedError for url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Error Code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3e7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Error: Operation cancelled."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->critical(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewClient;->dialog:Lcom/onevcat/uniwebview/UniWebViewDialog;

    iget-object v0, v0, Lcom/onevcat/uniwebview/UniWebViewDialog;->listener:Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;

    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewClient;->dialog:Lcom/onevcat/uniwebview/UniWebViewDialog;

    const/16 v2, -0x3e7

    const-string v3, "Operation cancelled."

    invoke-interface {v0, v1, v2, v3, p2}, Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;->onReceivedError(Lcom/onevcat/uniwebview/UniWebViewDialog;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_6c

    .line 74
    :cond_ab
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebClient onPageFinished: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Status Code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/onevcat/uniwebview/UniWebViewClient;->httpStatusCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Loading success: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/onevcat/uniwebview/UniWebViewClient;->loadingSuccess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->info(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewClient;->dialog:Lcom/onevcat/uniwebview/UniWebViewDialog;

    iget-object v0, v0, Lcom/onevcat/uniwebview/UniWebViewDialog;->listener:Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;

    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewClient;->dialog:Lcom/onevcat/uniwebview/UniWebViewDialog;

    iget v2, p0, Lcom/onevcat/uniwebview/UniWebViewClient;->httpStatusCode:I

    invoke-interface {v0, v1, v2, p2}, Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;->onPageFinished(Lcom/onevcat/uniwebview/UniWebViewDialog;ILjava/lang/String;)V

    goto :goto_6c
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 7
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 44
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 45
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebClient onPageStarted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->info(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewClient;->dialog:Lcom/onevcat/uniwebview/UniWebViewDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/UniWebViewDialog;->setLoading(Z)V

    .line 49
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewClient;->dialog:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->isShowSpinnerWhileLoading()Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewClient;->dialog:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 50
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewClient;->dialog:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->showSpinner()V

    .line 52
    :cond_38
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewClient;->dialog:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->hideSystemUI()V

    .line 53
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewClient;->dialog:Lcom/onevcat/uniwebview/UniWebViewDialog;

    iget-object v0, v0, Lcom/onevcat/uniwebview/UniWebViewDialog;->listener:Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;

    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewClient;->dialog:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-interface {v0, v1, p2}, Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;->onPageStarted(Lcom/onevcat/uniwebview/UniWebViewDialog;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebClient onReceivedError for url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Error Code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->critical(Ljava/lang/String;)V

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/onevcat/uniwebview/UniWebViewClient;->loadingSuccess:Z

    .line 96
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewClient;->dialog:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->hideSpinner()V

    .line 97
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewClient;->dialog:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->hideSystemUI()V

    .line 99
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewClient;->dialog:Lcom/onevcat/uniwebview/UniWebViewDialog;

    iget-object v0, v0, Lcom/onevcat/uniwebview/UniWebViewDialog;->listener:Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;

    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewClient;->dialog:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;->onReceivedError(Lcom/onevcat/uniwebview/UniWebViewDialog;ILjava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/HttpAuthHandler;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "realm"    # Ljava/lang/String;

    .prologue
    .line 159
    const/4 v2, 0x0

    .line 160
    .local v2, "username":Ljava/lang/String;
    const/4 v1, 0x0

    .line 162
    .local v1, "password":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/webkit/HttpAuthHandler;->useHttpAuthUsernamePassword()Z

    move-result v3

    if-eqz v3, :cond_1a

    if-eqz p1, :cond_1a

    .line 163
    invoke-virtual {p1, p3, p4}, Landroid/webkit/WebView;->getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "haup":[Ljava/lang/String;
    if-eqz v0, :cond_1a

    array-length v3, v0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1a

    .line 165
    const/4 v3, 0x0

    aget-object v2, v0, v3

    .line 166
    const/4 v3, 0x1

    aget-object v1, v0, v3

    .line 170
    .end local v0    # "haup":[Ljava/lang/String;
    :cond_1a
    if-eqz v2, :cond_22

    if-eqz v1, :cond_22

    .line 171
    invoke-virtual {p2, v2, v1}, Landroid/webkit/HttpAuthHandler;->proceed(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :goto_21
    return-void

    .line 173
    :cond_22
    iget-object v3, p0, Lcom/onevcat/uniwebview/UniWebViewClient;->dialog:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-virtual {v3}, Lcom/onevcat/uniwebview/UniWebViewDialog;->getShowHTTPAuthPopUpWindow()Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 174
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/onevcat/uniwebview/UniWebViewClient;->showHttpAuthDialog(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_21

    .line 176
    :cond_2e
    invoke-virtual {p2}, Landroid/webkit/HttpAuthHandler;->cancel()V

    goto :goto_21
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .registers 7
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Landroid/webkit/WebResourceRequest;
    .param p3, "errorResponse"    # Landroid/webkit/WebResourceResponse;

    .prologue
    .line 82
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebClient onReceivedHttpError. Code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->info(Ljava/lang/String;)V

    .line 83
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 84
    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result v0

    iput v0, p0, Lcom/onevcat/uniwebview/UniWebViewClient;->httpStatusCode:I

    .line 86
    :cond_2a
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 12
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .prologue
    const/4 v7, 0x1

    .line 128
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WebClient onReceivedSslError. Error url: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p3}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Error type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p3}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/onevcat/uniwebview/Logger;->critical(Ljava/lang/String;)V

    .line 131
    :try_start_2d
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v4

    const-string v5, "Trying to process SSL error..."

    invoke-virtual {v4, v5}, Lcom/onevcat/uniwebview/Logger;->verbose(Ljava/lang/String;)V

    .line 132
    new-instance v3, Ljava/net/URL;

    invoke-virtual {p3}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 133
    .local v3, "url":Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 135
    .local v2, "host":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/net/http/SslError;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v0

    .line 136
    .local v0, "certificate":Landroid/net/http/SslCertificate;
    invoke-virtual {v0}, Landroid/net/http/SslCertificate;->getIssuedBy()Landroid/net/http/SslCertificate$DName;

    move-result-object v4

    if-eqz v4, :cond_53

    invoke-virtual {v0}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v4

    if-nez v4, :cond_60

    .line 137
    :cond_53
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v4

    const-string v5, "Cannot get correct certificate issuer. SSL challenge failed."

    invoke-virtual {v4, v5}, Lcom/onevcat/uniwebview/Logger;->verbose(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 155
    .end local v0    # "certificate":Landroid/net/http/SslCertificate;
    .end local v2    # "host":Ljava/lang/String;
    .end local v3    # "url":Ljava/net/URL;
    :goto_5f
    return-void

    .line 142
    .restart local v0    # "certificate":Landroid/net/http/SslCertificate;
    .restart local v2    # "host":Ljava/lang/String;
    .restart local v3    # "url":Ljava/net/URL;
    :cond_60
    iget-object v4, p0, Lcom/onevcat/uniwebview/UniWebViewClient;->dialog:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-virtual {v4}, Lcom/onevcat/uniwebview/UniWebViewDialog;->getSslExceptionDomains()Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_bf

    .line 143
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found domain \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' in sslExceptionDomains, proceeding url..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/onevcat/uniwebview/Logger;->verbose(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V
    :try_end_8f
    .catch Ljava/net/MalformedURLException; {:try_start_2d .. :try_end_8f} :catch_90

    goto :goto_5f

    .line 150
    .end local v0    # "certificate":Landroid/net/http/SslCertificate;
    .end local v2    # "host":Ljava/lang/String;
    .end local v3    # "url":Ljava/net/URL;
    :catch_90
    move-exception v1

    .line 151
    .local v1, "e":Ljava/net/MalformedURLException;
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Url \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p3}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' is malformed. Refuse proceeding url. Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/onevcat/uniwebview/Logger;->verbose(Ljava/lang/String;)V

    .line 152
    iput-boolean v7, p0, Lcom/onevcat/uniwebview/UniWebViewClient;->sslErrored:Z

    .line 153
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    goto :goto_5f

    .line 146
    .end local v1    # "e":Ljava/net/MalformedURLException;
    .restart local v0    # "certificate":Landroid/net/http/SslCertificate;
    .restart local v2    # "host":Ljava/lang/String;
    .restart local v3    # "url":Ljava/net/URL;
    :cond_bf
    :try_start_bf
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Domain \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' is not in exception. Refuse proceeding url."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/onevcat/uniwebview/Logger;->verbose(Ljava/lang/String;)V

    .line 147
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/onevcat/uniwebview/UniWebViewClient;->sslErrored:Z

    .line 148
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V
    :try_end_e5
    .catch Ljava/net/MalformedURLException; {:try_start_bf .. :try_end_e5} :catch_90

    goto/16 :goto_5f
.end method

.method public prepareLoadingStates()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 227
    const/16 v0, 0xc8

    iput v0, p0, Lcom/onevcat/uniwebview/UniWebViewClient;->httpStatusCode:I

    .line 228
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onevcat/uniwebview/UniWebViewClient;->loadingSuccess:Z

    .line 229
    iput-boolean v1, p0, Lcom/onevcat/uniwebview/UniWebViewClient;->userStopped:Z

    .line 230
    iput-boolean v1, p0, Lcom/onevcat/uniwebview/UniWebViewClient;->sslErrored:Z

    .line 231
    return-void
.end method

.method public setUserStopped(Z)V
    .registers 2
    .param p1, "userStopped"    # Z

    .prologue
    .line 223
    iput-boolean p1, p0, Lcom/onevcat/uniwebview/UniWebViewClient;->userStopped:Z

    .line 224
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 9
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 105
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WebClient shouldOverrideUrlLoading: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/onevcat/uniwebview/Logger;->info(Ljava/lang/String;)V

    .line 106
    iget-object v3, p0, Lcom/onevcat/uniwebview/UniWebViewClient;->dialog:Lcom/onevcat/uniwebview/UniWebViewDialog;

    iget-object v3, v3, Lcom/onevcat/uniwebview/UniWebViewDialog;->listener:Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;

    iget-object v4, p0, Lcom/onevcat/uniwebview/UniWebViewClient;->dialog:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-interface {v3, v4, p2}, Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;->shouldOverrideUrlLoading(Lcom/onevcat/uniwebview/UniWebViewDialog;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_69

    .line 109
    const-string v3, "file://"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 110
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v2

    const-string v3, "Loading a local file. The local file loading will never be overridden."

    invoke-virtual {v2, v3}, Lcom/onevcat/uniwebview/Logger;->debug(Ljava/lang/String;)V

    .line 123
    :cond_39
    :goto_39
    return v1

    .line 114
    :cond_3a
    iget-object v3, p0, Lcom/onevcat/uniwebview/UniWebViewClient;->dialog:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-virtual {v3}, Lcom/onevcat/uniwebview/UniWebViewDialog;->getHeaders()Ljava/util/HashMap;

    move-result-object v0

    .line 115
    .local v0, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_39

    .line 116
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding customized header to request. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/onevcat/uniwebview/Logger;->debug(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p1, p2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    move v1, v2

    .line 118
    goto :goto_39

    .end local v0    # "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_69
    move v1, v2

    .line 123
    goto :goto_39
.end method
