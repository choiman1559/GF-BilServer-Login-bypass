.class public Lcn/sharesdk/linkedin/c;
.super Lcom/mob/tools/FakeActivity;
.source "ShareActivity.java"


# instance fields
.field private a:Lcn/sharesdk/framework/PlatformActionListener;

.field private b:Lcn/sharesdk/framework/Platform;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/mob/tools/FakeActivity;-><init>()V

    return-void
.end method

.method private a()V
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 60
    new-instance v2, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 61
    iget v1, p0, Lcn/sharesdk/linkedin/c;->g:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_b3

    .line 62
    const-string v1, "image/*"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    :cond_12
    :goto_12
    iget-object v1, p0, Lcn/sharesdk/linkedin/c;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3d

    iget-object v1, p0, Lcn/sharesdk/linkedin/c;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3d

    .line 68
    :try_start_22
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcn/sharesdk/linkedin/c;->f:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/mob/tools/utils/BitmapHelper;->downloadBitmap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 69
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_fd

    .line 72
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 74
    :goto_3b
    iput-object v1, p0, Lcn/sharesdk/linkedin/c;->h:Ljava/lang/String;
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_3d} :catch_fa

    .line 81
    :cond_3d
    :goto_3d
    :try_start_3d
    iget-object v1, p0, Lcn/sharesdk/linkedin/c;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, p0, Lcn/sharesdk/linkedin/c;->h:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v3, v4, v5}, Landroid/provider/MediaStore$Images$Media;->insertImage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_4e} :catch_c4

    move-result-object v0

    .line 88
    :cond_4f
    :goto_4f
    const-string v1, "android.intent.extra.TITLE"

    iget-object v3, p0, Lcn/sharesdk/linkedin/c;->c:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    const-string v1, "android.intent.extra.TEXT"

    iget-object v3, p0, Lcn/sharesdk/linkedin/c;->d:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    if-eqz v0, :cond_d5

    .line 91
    const-string v1, "android.intent.extra.STREAM"

    if-nez v0, :cond_69

    iget-object v0, p0, Lcn/sharesdk/linkedin/c;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :cond_69
    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 95
    :cond_6c
    :goto_6c
    iget-object v0, p0, Lcn/sharesdk/linkedin/c;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7b

    .line 96
    const-string v0, "android.intent.extra.SUBJECT"

    iget-object v1, p0, Lcn/sharesdk/linkedin/c;->e:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    :cond_7b
    iget-object v0, p0, Lcn/sharesdk/linkedin/c;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 99
    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 100
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ad

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 101
    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.linkedin"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8a

    .line 103
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    :cond_ad
    const/16 v0, 0x33e7

    :try_start_af
    invoke-virtual {p0, v2, v0}, Lcn/sharesdk/linkedin/c;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_b2
    .catch Ljava/lang/Throwable; {:try_start_af .. :try_end_b2} :catch_e5

    .line 117
    :goto_b2
    return-void

    .line 63
    :cond_b3
    iget v1, p0, Lcn/sharesdk/linkedin/c;->g:I

    const/4 v3, 0x4

    if-eq v1, v3, :cond_bd

    iget v1, p0, Lcn/sharesdk/linkedin/c;->g:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_12

    .line 64
    :cond_bd
    const-string v1, "text/plain"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_12

    .line 83
    :catch_c4
    move-exception v1

    .line 84
    iget-object v1, p0, Lcn/sharesdk/linkedin/c;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4f

    .line 85
    iget-object v0, p0, Lcn/sharesdk/linkedin/c;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_4f

    .line 92
    :cond_d5
    iget-object v0, p0, Lcn/sharesdk/linkedin/c;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6c

    .line 93
    const-string v0, "android.intent.extra.STREAM"

    iget-object v1, p0, Lcn/sharesdk/linkedin/c;->f:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_6c

    .line 111
    :catch_e5
    move-exception v0

    .line 112
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 113
    iget-object v1, p0, Lcn/sharesdk/linkedin/c;->a:Lcn/sharesdk/framework/PlatformActionListener;

    iget-object v2, p0, Lcn/sharesdk/linkedin/c;->b:Lcn/sharesdk/framework/Platform;

    const/16 v3, 0x9

    invoke-interface {v1, v2, v3, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 114
    invoke-virtual {p0}, Lcn/sharesdk/linkedin/c;->finish()V

    goto :goto_b2

    .line 75
    :catch_fa
    move-exception v1

    goto/16 :goto_3d

    :cond_fd
    move-object v1, v0

    goto/16 :goto_3b
.end method


# virtual methods
.method public a(Lcn/sharesdk/framework/PlatformActionListener;Lcn/sharesdk/framework/Platform;)V
    .registers 3

    .prologue
    .line 55
    iput-object p1, p0, Lcn/sharesdk/linkedin/c;->a:Lcn/sharesdk/framework/PlatformActionListener;

    .line 56
    iput-object p2, p0, Lcn/sharesdk/linkedin/c;->b:Lcn/sharesdk/framework/Platform;

    .line 57
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 7

    .prologue
    .line 46
    iput-object p1, p0, Lcn/sharesdk/linkedin/c;->c:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcn/sharesdk/linkedin/c;->d:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lcn/sharesdk/linkedin/c;->e:Ljava/lang/String;

    .line 49
    iput-object p4, p0, Lcn/sharesdk/linkedin/c;->f:Ljava/lang/String;

    .line 50
    iput p5, p0, Lcn/sharesdk/linkedin/c;->g:I

    .line 51
    iput-object p6, p0, Lcn/sharesdk/linkedin/c;->h:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 9
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/16 v4, 0x9

    .line 121
    const/16 v0, 0x33e7

    if-ne v0, p1, :cond_21

    iget-object v0, p0, Lcn/sharesdk/linkedin/c;->a:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_21

    .line 122
    const/4 v0, -0x1

    if-ne p2, v0, :cond_25

    .line 123
    iget-object v0, p0, Lcn/sharesdk/linkedin/c;->a:Lcn/sharesdk/framework/PlatformActionListener;

    iget-object v1, p0, Lcn/sharesdk/linkedin/c;->b:Lcn/sharesdk/framework/Platform;

    new-instance v2, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v2}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    invoke-interface {v0, v1, v4, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    .line 131
    :cond_21
    :goto_21
    invoke-virtual {p0}, Lcn/sharesdk/linkedin/c;->finish()V

    .line 132
    return-void

    .line 124
    :cond_25
    if-nez p2, :cond_2f

    .line 125
    iget-object v0, p0, Lcn/sharesdk/linkedin/c;->a:Lcn/sharesdk/framework/PlatformActionListener;

    iget-object v1, p0, Lcn/sharesdk/linkedin/c;->b:Lcn/sharesdk/framework/Platform;

    invoke-interface {v0, v1, v4}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    goto :goto_21

    .line 127
    :cond_2f
    const-string v0, "com.linkedin.thirdparty.authorize.RESULT_ACTION_ERROR_DESCRIPTION"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    iget-object v1, p0, Lcn/sharesdk/linkedin/c;->a:Lcn/sharesdk/framework/PlatformActionListener;

    iget-object v2, p0, Lcn/sharesdk/linkedin/c;->b:Lcn/sharesdk/framework/Platform;

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v4, v3}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_21
.end method

.method public onCreate()V
    .registers 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/mob/tools/FakeActivity;->onCreate()V

    .line 42
    invoke-direct {p0}, Lcn/sharesdk/linkedin/c;->a()V

    .line 43
    return-void
.end method
