.class public Lcn/sharesdk/system/email/b;
.super Ljava/lang/Object;
.source "Helper.java"


# static fields
.field private static a:Lcn/sharesdk/system/email/b;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcn/sharesdk/system/email/b;
    .registers 1

    .prologue
    .line 24
    sget-object v0, Lcn/sharesdk/system/email/b;->a:Lcn/sharesdk/system/email/b;

    if-nez v0, :cond_b

    .line 25
    new-instance v0, Lcn/sharesdk/system/email/b;

    invoke-direct {v0}, Lcn/sharesdk/system/email/b;-><init>()V

    sput-object v0, Lcn/sharesdk/system/email/b;->a:Lcn/sharesdk/system/email/b;

    .line 27
    :cond_b
    sget-object v0, Lcn/sharesdk/system/email/b;->a:Lcn/sharesdk/system/email/b;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Landroid/text/Spanned;Ljava/lang/String;Lcn/sharesdk/system/email/ActionListener;)V
    .registers 11

    .prologue
    const/16 v4, 0x18

    .line 32
    .line 34
    :try_start_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 35
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 36
    const-string v1, "android.intent.extra.EMAIL"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 39
    if-eqz p4, :cond_3e

    .line 40
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 42
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v4, :cond_4b

    .line 43
    const-string v1, "android.intent.extra.STREAM"

    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p4}, Lcom/mob/tools/utils/ResHelper;->pathToContentUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 49
    :cond_3e
    :goto_3e
    const-string v1, "message/rfc822"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 92
    :cond_4a
    :goto_4a
    return-void

    .line 45
    :cond_4b
    const-string v2, "android.intent.extra.STREAM"

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_54} :catch_55

    goto :goto_3e

    .line 52
    :catch_55
    move-exception v0

    .line 55
    :try_start_56
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 56
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 57
    const-string v0, "android.intent.extra.EMAIL"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    if-eqz p2, :cond_6e

    .line 59
    const-string v0, "android.intent.extra.SUBJECT"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    :cond_6e
    if-eqz p3, :cond_7a

    .line 62
    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {v1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 63
    const-string v0, "text/html"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    :cond_7a
    if-eqz p4, :cond_ad

    .line 66
    invoke-static {}, Ljava/net/URLConnection;->getFileNameMap()Ljava/net/FileNameMap;

    move-result-object v0

    invoke-interface {v0, p4}, Ljava/net/FileNameMap;->getContentTypeFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    if-eqz v0, :cond_8c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_8e

    .line 68
    :cond_8c
    const-string v0, "*/*"

    .line 70
    :cond_8e
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_ad

    .line 72
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v4, :cond_bc

    .line 73
    const-string v2, "android.intent.extra.STREAM"

    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p4}, Lcom/mob/tools/utils/ResHelper;->pathToContentUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 77
    :goto_aa
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    :cond_ad
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_b4
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_b4} :catch_b5

    goto :goto_4a

    .line 85
    :catch_b5
    move-exception v0

    .line 87
    if-eqz p5, :cond_4a

    .line 88
    invoke-interface {p5, v0}, Lcn/sharesdk/system/email/ActionListener;->onError(Ljava/lang/Throwable;)V

    goto :goto_4a

    .line 75
    :cond_bc
    :try_start_bc
    const-string v3, "android.intent.extra.STREAM"

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_c5
    .catch Ljava/lang/Throwable; {:try_start_bc .. :try_end_c5} :catch_b5

    goto :goto_aa
.end method
