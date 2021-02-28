.class public Lcom/sanbao/micasdk/SDKTools;
.super Ljava/lang/Object;
.source "SDKTools.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sanbao/micasdk/SDKTools$BatteryChangedReceiver;
    }
.end annotation


# static fields
.field public static LOG_TAG:Ljava/lang/String;

.field private static battery:I

.field public static isListenerOn:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 33
    const-string v0, "MICA"

    sput-object v0, Lcom/sanbao/micasdk/SDKTools;->LOG_TAG:Ljava/lang/String;

    .line 34
    sput v1, Lcom/sanbao/micasdk/SDKTools;->battery:I

    .line 35
    sput-boolean v1, Lcom/sanbao/micasdk/SDKTools;->isListenerOn:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static GetBattery()I
    .registers 1

    .prologue
    .line 75
    sget v0, Lcom/sanbao/micasdk/SDKTools;->battery:I

    return v0
.end method

.method public static GetMetadata(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "mActivity"    # Landroid/app/Activity;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 42
    :try_start_0
    sget-object v3, Lcom/sanbao/micasdk/SDKTools;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "GetMetadata:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 44
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "dataValue":Ljava/lang/String;
    sget-object v3, Lcom/sanbao/micasdk/SDKTools;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "GetMetadataResult:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_3c} :catch_3d

    .line 49
    .end local v0    # "dataValue":Ljava/lang/String;
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :goto_3c
    return-object v0

    .line 47
    :catch_3d
    move-exception v2

    .line 48
    .local v2, "var4":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 49
    const-string v0, ""

    goto :goto_3c
.end method

.method public static PayWithAlipay(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "mActivity"    # Landroid/app/Activity;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 54
    const-string v0, ""

    return-object v0
.end method

.method public static SaveToSystemAlbum(Landroid/content/Context;Ljava/lang/String;)V
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 84
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    const-string v6, "mounted"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a3

    .line 85
    sget-object v5, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v5}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 87
    .local v2, "externalStoragePublicDirectory":Ljava/io/File;
    :try_start_13
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_1f

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_98

    .line 88
    :cond_1f
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 89
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_2d

    .line 90
    sget-object v5, Lcom/sanbao/micasdk/SDKTools;->LOG_TAG:Ljava/lang/String;

    const-string v6, "Bitmap is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "externalStoragePublicDirectory":Ljava/io/File;
    :goto_2c
    return-void

    .line 93
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "externalStoragePublicDirectory":Ljava/io/File;
    :cond_2d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 94
    .local v3, "imagePath":Ljava/lang/String;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 95
    .local v4, "out":Ljava/io/FileOutputStream;
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v0, v5, v6, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 96
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "file://"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 97
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Save to "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_92} :catch_93

    goto :goto_2c

    .line 101
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "imagePath":Ljava/lang/String;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    :catch_93
    move-exception v1

    .line 102
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2c

    .line 99
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_98
    :try_start_98
    const-string v5, "Create file failed."

    const/4 v6, 0x1

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_a2} :catch_93

    goto :goto_2c

    .line 105
    .end local v2    # "externalStoragePublicDirectory":Ljava/io/File;
    :cond_a3
    const-string v5, "MEDIA UNMOUNTED"

    invoke-static {p0, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_2c
.end method

.method public static SwitchActivityListener(Z)V
    .registers 4
    .param p0, "isOn"    # Z

    .prologue
    .line 79
    sget-object v0, Lcom/sanbao/micasdk/SDKTools;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SwitchActivityListener: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    sput-boolean p0, Lcom/sanbao/micasdk/SDKTools;->isListenerOn:Z

    .line 81
    return-void
.end method

.method static synthetic access$0()I
    .registers 1

    .prologue
    .line 34
    sget v0, Lcom/sanbao/micasdk/SDKTools;->battery:I

    return v0
.end method

.method static synthetic access$1(I)V
    .registers 1

    .prologue
    .line 34
    sput p0, Lcom/sanbao/micasdk/SDKTools;->battery:I

    return-void
.end method

.method public static getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 110
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 112
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    const-string v3, ""

    .line 114
    .local v3, "versionName":Ljava/lang/String;
    :try_start_6
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 115
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_11} :catch_12

    .line 119
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_11
    return-object v3

    .line 116
    :catch_12
    move-exception v0

    .line 117
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_11
.end method

.method public static getDisplayRotation(Landroid/app/Activity;)I
    .registers 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    .line 123
    if-nez p0, :cond_4

    .line 137
    :goto_3
    :pswitch_3
    return v1

    .line 125
    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 126
    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 127
    .local v0, "rotation":I
    packed-switch v0, :pswitch_data_1e

    goto :goto_3

    .line 131
    :pswitch_14
    const/16 v1, 0x5a

    goto :goto_3

    .line 133
    :pswitch_17
    const/16 v1, 0xb4

    goto :goto_3

    .line 135
    :pswitch_1a
    const/16 v1, 0x10e

    goto :goto_3

    .line 127
    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_3
        :pswitch_14
        :pswitch_17
        :pswitch_1a
    .end packed-switch
.end method

.method public static registerBatteryChangedReceiver(Landroid/app/Activity;)V
    .registers 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 58
    sget v1, Lcom/sanbao/micasdk/SDKTools;->battery:I

    if-nez v1, :cond_13

    .line 59
    new-instance v0, Lcom/sanbao/micasdk/SDKTools$1;

    invoke-direct {v0}, Lcom/sanbao/micasdk/SDKTools$1;-><init>()V

    .line 69
    .local v0, "batteryReceiver":Landroid/content/BroadcastReceiver;
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 72
    .end local v0    # "batteryReceiver":Landroid/content/BroadcastReceiver;
    :cond_13
    return-void
.end method
