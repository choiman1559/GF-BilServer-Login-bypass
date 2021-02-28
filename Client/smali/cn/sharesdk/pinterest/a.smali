.class public Lcn/sharesdk/pinterest/a;
.super Lcn/sharesdk/framework/b;
.source "PinterestHelper.java"


# static fields
.field private static b:Lcn/sharesdk/pinterest/a;


# instance fields
.field private c:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcn/sharesdk/framework/Platform;)V
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/b;-><init>(Lcn/sharesdk/framework/Platform;)V

    .line 34
    return-void
.end method

.method public static a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/pinterest/a;
    .registers 2

    .prologue
    .line 26
    sget-object v0, Lcn/sharesdk/pinterest/a;->b:Lcn/sharesdk/pinterest/a;

    if-nez v0, :cond_b

    .line 27
    new-instance v0, Lcn/sharesdk/pinterest/a;

    invoke-direct {v0, p0}, Lcn/sharesdk/pinterest/a;-><init>(Lcn/sharesdk/framework/Platform;)V

    sput-object v0, Lcn/sharesdk/pinterest/a;->b:Lcn/sharesdk/pinterest/a;

    .line 29
    :cond_b
    sget-object v0, Lcn/sharesdk/pinterest/a;->b:Lcn/sharesdk/pinterest/a;

    return-object v0
.end method

.method private b()Z
    .registers 3

    .prologue
    .line 109
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 37
    iput-object p1, p0, Lcn/sharesdk/pinterest/a;->c:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/sharesdk/framework/PlatformActionListener;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 55
    iget-object v0, p0, Lcn/sharesdk/pinterest/a;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 56
    new-instance v0, Lcn/sharesdk/pinterest/ClientIDNotExistException;

    invoke-direct {v0}, Lcn/sharesdk/pinterest/ClientIDNotExistException;-><init>()V

    throw v0

    .line 59
    :cond_10
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 60
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c7

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_c7

    .line 61
    :cond_27
    invoke-direct {p0}, Lcn/sharesdk/pinterest/a;->b()Z

    move-result v0

    if-nez v0, :cond_33

    .line 62
    new-instance v0, Lcn/sharesdk/pinterest/SystemVersionTooLowException;

    invoke-direct {v0}, Lcn/sharesdk/pinterest/SystemVersionTooLowException;-><init>()V

    throw v0

    .line 65
    :cond_33
    invoke-virtual {p0}, Lcn/sharesdk/pinterest/a;->a()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 66
    new-instance v0, Lcn/sharesdk/pinterest/PinterestClientNotExistException;

    invoke-direct {v0}, Lcn/sharesdk/pinterest/PinterestClientNotExistException;-><init>()V

    throw v0

    .line 69
    :cond_3f
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 70
    const-string v0, "com.pinterest.action.PIN_IT"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    const/high16 v0, 0x10000000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 72
    const-string v0, "com.pinterest.EXTRA_PARTNER_ID"

    iget-object v4, p0, Lcn/sharesdk/pinterest/a;->c:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    const-string v0, "com.pinterest.EXTRA_DESCRIPTION"

    invoke-virtual {v3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 75
    const-string v4, "com.pinterest.EXTRA_PARTNER_PACKAGE"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_cd

    .line 79
    const-string v0, "com.pinterest.EXTRA_IMAGE"

    invoke-virtual {v3, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move v0, v1

    .line 82
    :goto_73
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_94

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_94

    .line 83
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, p2}, Lcom/mob/tools/utils/ResHelper;->pathToContentUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 84
    if-eqz v4, :cond_94

    .line 85
    const-string v2, "com.pinterest.EXTRA_URI"

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move v2, v1

    .line 89
    :cond_94
    if-nez v0, :cond_9e

    if-nez v2, :cond_9e

    .line 90
    new-instance v0, Lcn/sharesdk/pinterest/ImageNotFoundException;

    invoke-direct {v0}, Lcn/sharesdk/pinterest/ImageNotFoundException;-><init>()V

    throw v0

    .line 92
    :cond_9e
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_bf

    .line 93
    const-string v0, "com.pinterest.EXTRA_URL"

    invoke-virtual {v3, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    :cond_a9
    new-instance v0, Lcn/sharesdk/pinterest/b;

    invoke-direct {v0}, Lcn/sharesdk/pinterest/b;-><init>()V

    .line 99
    iget-object v1, p0, Lcn/sharesdk/pinterest/a;->a:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v0, v1, p5}, Lcn/sharesdk/pinterest/b;->a(Lcn/sharesdk/framework/Platform;Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 100
    invoke-virtual {v0, v3}, Lcn/sharesdk/pinterest/b;->a(Landroid/content/Intent;)V

    .line 101
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/pinterest/b;->show(Landroid/content/Context;Landroid/content/Intent;)V

    .line 102
    return-void

    .line 94
    :cond_bf
    if-nez v2, :cond_a9

    .line 95
    new-instance v0, Lcn/sharesdk/pinterest/SourceUrlNotFoundException;

    invoke-direct {v0}, Lcn/sharesdk/pinterest/SourceUrlNotFoundException;-><init>()V

    throw v0

    .line 105
    :cond_c7
    new-instance v0, Lcn/sharesdk/pinterest/ImageNotFoundException;

    invoke-direct {v0}, Lcn/sharesdk/pinterest/ImageNotFoundException;-><init>()V

    throw v0

    :cond_cd
    move v0, v2

    goto :goto_73
.end method

.method public a()Z
    .registers 9

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 113
    invoke-direct {p0}, Lcn/sharesdk/pinterest/a;->b()Z

    move-result v2

    if-nez v2, :cond_9

    .line 135
    :goto_8
    return v1

    .line 119
    :cond_9
    :try_start_9
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.pinterest"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 120
    if-eqz v2, :cond_4c

    .line 121
    iget v3, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_4a

    .line 122
    :goto_20
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v3

    const-string v4, "Pinterest versionCode:%s versionName:%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 123
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v2, v5, v6

    .line 122
    invoke-virtual {v3, v4, v5}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 128
    :goto_3a
    if-nez v0, :cond_48

    .line 129
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    const-string v3, "Pinterest app version too low!"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_48
    :goto_48
    move v1, v0

    .line 135
    goto :goto_8

    :cond_4a
    move v0, v1

    .line 121
    goto :goto_20

    .line 125
    :cond_4c
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const-string v2, "Pinterest app not installed!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_58} :catch_5a

    move v0, v1

    goto :goto_3a

    .line 131
    :catch_5a
    move-exception v0

    .line 132
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    move v0, v1

    .line 133
    goto :goto_48
.end method

.method public getAuthorizeUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 46
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAuthorizeWebviewClient(Lcn/sharesdk/framework/authorize/e;)Lcn/sharesdk/framework/authorize/b;
    .registers 3
    .param p1, "webAct"    # Lcn/sharesdk/framework/authorize/e;

    .prologue
    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRedirectUri()Ljava/lang/String;
    .registers 2

    .prologue
    .line 50
    const/4 v0, 0x0

    return-object v0
.end method
