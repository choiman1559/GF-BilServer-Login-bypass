.class public Lcom/onevcat/uniwebview/UniWebViewFileChooserActivity;
.super Landroid/app/Activity;
.source "UniWebViewFileChooserActivity.java"


# static fields
.field private static final FILECHOOSER_RESULTCODE:I = 0x1258e43

.field public static final INTENT_CHROME_CLIENT_NAME:Ljava/lang/String; = "chrome_client"

.field private static final WRITE_EXTERNAL_STORAGE_REQUEST_CODE:I = 0x1258e44


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private getChromeClient()Lcom/onevcat/uniwebview/UniWebViewChromeClient;
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 31
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebViewFileChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "chrome_client"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 32
    .local v1, "name":Ljava/lang/String;
    if-nez v1, :cond_17

    .line 33
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v3

    const-string v4, "The intent does not contain a extra name for chrome client. It should not happen."

    invoke-virtual {v3, v4}, Lcom/onevcat/uniwebview/Logger;->critical(Ljava/lang/String;)V

    .line 42
    :goto_16
    return-object v2

    .line 36
    :cond_17
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Getting chrome client with web view name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/onevcat/uniwebview/Logger;->verbose(Ljava/lang/String;)V

    .line 37
    invoke-static {}, Lcom/onevcat/uniwebview/UniWebViewManager;->getInstance()Lcom/onevcat/uniwebview/UniWebViewManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/onevcat/uniwebview/UniWebViewManager;->getUniWebViewDialog(Ljava/lang/String;)Lcom/onevcat/uniwebview/UniWebViewDialog;

    move-result-object v0

    .line 38
    .local v0, "dialog":Lcom/onevcat/uniwebview/UniWebViewDialog;
    if-nez v0, :cond_45

    .line 39
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v3

    const-string v4, "Cannot get a correct chrome client. Error."

    invoke-virtual {v3, v4}, Lcom/onevcat/uniwebview/Logger;->critical(Ljava/lang/String;)V

    goto :goto_16

    .line 42
    :cond_45
    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->getChromeClient()Lcom/onevcat/uniwebview/UniWebViewChromeClient;

    move-result-object v2

    goto :goto_16
.end method

.method private startFileChooserActivity()V
    .registers 14

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 99
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 100
    .local v7, "takePictureIntent":Landroid/content/Intent;
    invoke-direct {p0}, Lcom/onevcat/uniwebview/UniWebViewFileChooserActivity;->getChromeClient()Lcom/onevcat/uniwebview/UniWebViewChromeClient;

    move-result-object v1

    .line 102
    .local v1, "client":Lcom/onevcat/uniwebview/UniWebViewChromeClient;
    if-nez v1, :cond_22

    .line 103
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v8

    const-string v9, "Unexpected startFileChooserActivity since the chrome client has been already reset to null."

    invoke-virtual {v8, v9}, Lcom/onevcat/uniwebview/Logger;->critical(Ljava/lang/String;)V

    .line 104
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v8

    const-string v9, "There is not related chrome client with this file chooser. It might be an Android system issue and the file choosing process is terminated."

    invoke-virtual {v8, v9}, Lcom/onevcat/uniwebview/Logger;->critical(Ljava/lang/String;)V

    .line 160
    :goto_21
    return-void

    .line 108
    :cond_22
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebViewFileChooserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v8

    if-eqz v8, :cond_86

    .line 109
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v8

    const-string v9, "Found an activity for taking photo. Try to get image."

    invoke-virtual {v8, v9}, Lcom/onevcat/uniwebview/Logger;->verbose(Ljava/lang/String;)V

    .line 111
    const/4 v6, 0x0

    .line 113
    .local v6, "photoFile":Ljava/io/File;
    :try_start_36
    invoke-virtual {v1}, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->createImageFile()Ljava/io/File;

    move-result-object v6

    .line 114
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "photoFile: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/onevcat/uniwebview/Logger;->verbose(Ljava/lang/String;)V

    .line 115
    const-string v8, "PhotoPath"

    invoke-virtual {v1}, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->getCameraPhotoPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_61} :catch_f4

    .line 122
    :goto_61
    if-eqz v6, :cond_111

    .line 123
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "file:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->setCameraPhotoPath(Ljava/lang/String;)V

    .line 124
    const-string v8, "output"

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 131
    .end local v6    # "photoFile":Ljava/io/File;
    :cond_86
    :goto_86
    new-instance v2, Landroid/content/Intent;

    const-string v8, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 132
    .local v2, "contentSelectionIntent":Landroid/content/Intent;
    const-string v8, "android.intent.category.OPENABLE"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    invoke-virtual {v1}, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->getFileChooserParams()Landroid/webkit/WebChromeClient$FileChooserParams;

    move-result-object v5

    .line 134
    .local v5, "params":Landroid/webkit/WebChromeClient$FileChooserParams;
    const-string v8, "*/*"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    if-eqz v5, :cond_c1

    .line 137
    invoke-virtual {v5}, Landroid/webkit/WebChromeClient$FileChooserParams;->getAcceptTypes()[Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_c1

    .line 138
    invoke-virtual {v5}, Landroid/webkit/WebChromeClient$FileChooserParams;->getAcceptTypes()[Ljava/lang/String;

    move-result-object v8

    array-length v8, v8

    if-lt v8, v12, :cond_c1

    .line 139
    invoke-virtual {v5}, Landroid/webkit/WebChromeClient$FileChooserParams;->getAcceptTypes()[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v11

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c1

    .line 142
    const-string v8, "android.intent.extra.MIME_TYPES"

    invoke-virtual {v5}, Landroid/webkit/WebChromeClient$FileChooserParams;->getAcceptTypes()[Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    :cond_c1
    const-string v8, "android.intent.extra.ALLOW_MULTIPLE"

    invoke-virtual {v2, v8, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 148
    if-eqz v7, :cond_114

    .line 149
    new-array v4, v12, [Landroid/content/Intent;

    aput-object v7, v4, v11

    .line 154
    .local v4, "intentArray":[Landroid/content/Intent;
    :goto_cc
    new-instance v0, Landroid/content/Intent;

    const-string v8, "android.intent.action.CHOOSER"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 155
    .local v0, "chooserIntent":Landroid/content/Intent;
    const-string v8, "android.intent.extra.TITLE"

    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebViewFileChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/onevcat/uniwebview/R$string;->CHOOSE_IMAGE:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    const-string v8, "android.intent.extra.INTENT"

    invoke-virtual {v0, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 157
    const-string v8, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {v0, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 159
    const v8, 0x1258e43

    invoke-virtual {p0, v0, v8}, Lcom/onevcat/uniwebview/UniWebViewFileChooserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_21

    .line 116
    .end local v0    # "chooserIntent":Landroid/content/Intent;
    .end local v2    # "contentSelectionIntent":Landroid/content/Intent;
    .end local v4    # "intentArray":[Landroid/content/Intent;
    .end local v5    # "params":Landroid/webkit/WebChromeClient$FileChooserParams;
    .restart local v6    # "photoFile":Ljava/io/File;
    :catch_f4
    move-exception v3

    .line 118
    .local v3, "ex":Ljava/io/IOException;
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error while creating image file. Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/onevcat/uniwebview/Logger;->critical(Ljava/lang/String;)V

    goto/16 :goto_61

    .line 126
    .end local v3    # "ex":Ljava/io/IOException;
    :cond_111
    const/4 v7, 0x0

    goto/16 :goto_86

    .line 151
    .end local v6    # "photoFile":Ljava/io/File;
    .restart local v2    # "contentSelectionIntent":Landroid/content/Intent;
    .restart local v5    # "params":Landroid/webkit/WebChromeClient$FileChooserParams;
    :cond_114
    new-array v4, v11, [Landroid/content/Intent;

    .restart local v4    # "intentArray":[Landroid/content/Intent;
    goto :goto_cc
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 78
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File Chooser activity result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onevcat/uniwebview/Logger;->verbose(Ljava/lang/String;)V

    .line 80
    const v1, 0x1258e43

    if-ne p1, v1, :cond_2e

    .line 81
    invoke-direct {p0}, Lcom/onevcat/uniwebview/UniWebViewFileChooserActivity;->getChromeClient()Lcom/onevcat/uniwebview/UniWebViewChromeClient;

    move-result-object v0

    .line 82
    .local v0, "client":Lcom/onevcat/uniwebview/UniWebViewChromeClient;
    if-nez v0, :cond_35

    .line 83
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v1

    const-string v2, "Unexpected onActivityResult since the chrome client has been already reset to null."

    invoke-virtual {v1, v2}, Lcom/onevcat/uniwebview/Logger;->critical(Ljava/lang/String;)V

    .line 94
    .end local v0    # "client":Lcom/onevcat/uniwebview/UniWebViewChromeClient;
    :cond_2e
    :goto_2e
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 95
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebViewFileChooserActivity;->finish()V

    .line 96
    return-void

    .line 85
    .restart local v0    # "client":Lcom/onevcat/uniwebview/UniWebViewChromeClient;
    :cond_35
    const/4 v1, -0x1

    if-ne p2, v1, :cond_57

    .line 86
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File chooser got a file. : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onevcat/uniwebview/Logger;->info(Ljava/lang/String;)V

    .line 87
    const/4 v1, 0x1

    invoke-virtual {v0, p3, v1}, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->receivedFileValue(Landroid/content/Intent;Z)V

    goto :goto_2e

    .line 89
    :cond_57
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File chooser failed to get a file. Result code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onevcat/uniwebview/Logger;->critical(Ljava/lang/String;)V

    .line 90
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->receivedFileValue(Landroid/content/Intent;Z)V

    goto :goto_2e
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UniWebViewFileChooserActivity onCreate. Bound client: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/onevcat/uniwebview/UniWebViewFileChooserActivity;->getChromeClient()Lcom/onevcat/uniwebview/UniWebViewChromeClient;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->verbose(Ljava/lang/String;)V

    .line 51
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_3e

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v0}, Lcom/onevcat/uniwebview/UniWebViewFileChooserActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3e

    .line 52
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const v1, 0x1258e44

    invoke-virtual {p0, v0, v1}, Lcom/onevcat/uniwebview/UniWebViewFileChooserActivity;->requestPermissions([Ljava/lang/String;I)V

    .line 56
    :goto_3d
    return-void

    .line 54
    :cond_3e
    invoke-direct {p0}, Lcom/onevcat/uniwebview/UniWebViewFileChooserActivity;->startFileChooserActivity()V

    goto :goto_3d
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 7
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    const/4 v2, 0x0

    .line 60
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 61
    const v1, 0x1258e44

    if-ne p1, v1, :cond_10

    .line 62
    aget v1, p3, v2

    if-nez v1, :cond_11

    .line 63
    invoke-direct {p0}, Lcom/onevcat/uniwebview/UniWebViewFileChooserActivity;->startFileChooserActivity()V

    .line 74
    :cond_10
    :goto_10
    return-void

    .line 65
    :cond_11
    invoke-direct {p0}, Lcom/onevcat/uniwebview/UniWebViewFileChooserActivity;->getChromeClient()Lcom/onevcat/uniwebview/UniWebViewChromeClient;

    move-result-object v0

    .line 66
    .local v0, "client":Lcom/onevcat/uniwebview/UniWebViewChromeClient;
    if-nez v0, :cond_21

    .line 67
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v1

    const-string v2, "Unexpected onRequestPermissionsResult since the chrome client has been already reset to null."

    invoke-virtual {v1, v2}, Lcom/onevcat/uniwebview/Logger;->critical(Ljava/lang/String;)V

    goto :goto_10

    .line 69
    :cond_21
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->receivedFileValue(Landroid/content/Intent;Z)V

    .line 70
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebViewFileChooserActivity;->finish()V

    goto :goto_10
.end method
