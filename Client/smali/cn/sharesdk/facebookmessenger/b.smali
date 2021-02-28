.class public Lcn/sharesdk/facebookmessenger/b;
.super Lcom/mob/tools/FakeActivity;
.source "ShareActivity.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcn/sharesdk/framework/Platform;

.field private c:Lcn/sharesdk/framework/PlatformActionListener;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/mob/tools/FakeActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/content/Intent;
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 78
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 79
    const-string v2, "DATA_FAILURES_FATAL"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 80
    iget v2, p0, Lcn/sharesdk/facebookmessenger/b;->f:I

    packed-switch v2, :pswitch_data_11c

    .line 119
    :goto_10
    :pswitch_10
    new-instance v2, Landroid/content/Intent;

    const-string v0, "com.facebook.platform.PLATFORM_ACTIVITY"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 120
    const-string v0, "com.facebook.orca"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    const-string v0, "com.facebook.platform.protocol.PROTOCOL_VERSION"

    const v3, 0x1339f47

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v3, "com.facebook.platform.protocol.PROTOCOL_ACTION"

    const-string v4, "com.facebook.platform.action.request.MESSAGE_DIALOG"

    .line 123
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v3, "com.facebook.platform.extra.APPLICATION_ID"

    iget-object v4, p0, Lcn/sharesdk/facebookmessenger/b;->a:Ljava/lang/String;

    .line 124
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 127
    const-string v3, "action_id"

    const-string v4, "058c4bdc-b6f7-48b6-88e0-5f984adfa355"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v3, "app_name"

    invoke-virtual {p0}, Lcn/sharesdk/facebookmessenger/b;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mob/tools/utils/DeviceHelper;->getAppName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v3, "com.facebook.platform.protocol.BRIDGE_ARGS"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 132
    if-nez v1, :cond_119

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 133
    :goto_62
    const-string v1, "com.facebook.platform.protocol.METHOD_ARGS"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 134
    return-object v2

    .line 82
    :pswitch_68
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 83
    iget-object v3, p0, Lcn/sharesdk/facebookmessenger/b;->d:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_87

    .line 84
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcn/sharesdk/facebookmessenger/b;->d:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    .line 85
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    :cond_87
    iget-object v3, p0, Lcn/sharesdk/facebookmessenger/b;->k:[Ljava/lang/String;

    if-eqz v3, :cond_cd

    iget-object v3, p0, Lcn/sharesdk/facebookmessenger/b;->k:[Ljava/lang/String;

    array-length v3, v3

    if-lez v3, :cond_cd

    .line 90
    :goto_90
    iget-object v3, p0, Lcn/sharesdk/facebookmessenger/b;->k:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_cd

    .line 91
    iget-object v3, p0, Lcn/sharesdk/facebookmessenger/b;->k:[Ljava/lang/String;

    aget-object v3, v3, v0

    .line 92
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b2

    .line 93
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    .line 94
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_af
    :goto_af
    add-int/lit8 v0, v0, 0x1

    goto :goto_90

    .line 95
    :cond_b2
    iget-object v3, p0, Lcn/sharesdk/facebookmessenger/b;->e:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_af

    .line 96
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcn/sharesdk/facebookmessenger/b;->e:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    .line 97
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_af

    .line 101
    :cond_cd
    const-string v0, "PHOTOS"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_10

    .line 104
    :pswitch_d4
    iget-object v2, p0, Lcn/sharesdk/facebookmessenger/b;->b:Lcn/sharesdk/framework/Platform;

    iget-object v3, p0, Lcn/sharesdk/facebookmessenger/b;->h:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcn/sharesdk/framework/Platform;->getShortLintk(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 105
    const-string v2, "LINK"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcn/sharesdk/facebookmessenger/b;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f0

    .line 107
    const-string v0, "DESCRIPTION"

    iget-object v2, p0, Lcn/sharesdk/facebookmessenger/b;->j:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_f0
    iget-object v0, p0, Lcn/sharesdk/facebookmessenger/b;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ff

    .line 110
    const-string v0, "TITLE"

    iget-object v2, p0, Lcn/sharesdk/facebookmessenger/b;->g:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_ff
    iget-object v0, p0, Lcn/sharesdk/facebookmessenger/b;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_110

    .line 113
    const-string v0, "IMAGE"

    iget-object v2, p0, Lcn/sharesdk/facebookmessenger/b;->i:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    .line 115
    :cond_110
    const-string v0, "IMAGE"

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    :cond_119
    move-object v0, v1

    .line 132
    goto/16 :goto_62

    .line 80
    :pswitch_data_11c
    .packed-switch 0x2
        :pswitch_68
        :pswitch_10
        :pswitch_d4
    .end packed-switch
.end method

.method public a(Lcn/sharesdk/framework/Platform;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 45
    iput-object p2, p0, Lcn/sharesdk/facebookmessenger/b;->a:Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lcn/sharesdk/facebookmessenger/b;->b:Lcn/sharesdk/framework/Platform;

    .line 47
    return-void
.end method

.method public a(Lcn/sharesdk/framework/PlatformActionListener;)V
    .registers 2

    .prologue
    .line 50
    iput-object p1, p0, Lcn/sharesdk/facebookmessenger/b;->c:Lcn/sharesdk/framework/PlatformActionListener;

    .line 51
    return-void
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 10

    .prologue
    .line 55
    iput-object p1, p0, Lcn/sharesdk/facebookmessenger/b;->a:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Lcn/sharesdk/facebookmessenger/b;->d:Ljava/lang/String;

    .line 57
    iput-object p4, p0, Lcn/sharesdk/facebookmessenger/b;->e:Ljava/lang/String;

    .line 58
    iput p2, p0, Lcn/sharesdk/facebookmessenger/b;->f:I

    .line 59
    iput-object p5, p0, Lcn/sharesdk/facebookmessenger/b;->g:Ljava/lang/String;

    .line 60
    iput-object p6, p0, Lcn/sharesdk/facebookmessenger/b;->h:Ljava/lang/String;

    .line 61
    iput-object p7, p0, Lcn/sharesdk/facebookmessenger/b;->j:Ljava/lang/String;

    .line 62
    iput-object p8, p0, Lcn/sharesdk/facebookmessenger/b;->i:Ljava/lang/String;

    .line 63
    iput-object p9, p0, Lcn/sharesdk/facebookmessenger/b;->k:[Ljava/lang/String;

    .line 64
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 8
    .param p1, "REQUEST_CODE"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/16 v3, 0x9

    .line 68
    if-ne p1, p1, :cond_16

    const/4 v0, -0x1

    if-ne p2, v0, :cond_16

    .line 69
    iget-object v0, p0, Lcn/sharesdk/facebookmessenger/b;->c:Lcn/sharesdk/framework/PlatformActionListener;

    iget-object v1, p0, Lcn/sharesdk/facebookmessenger/b;->b:Lcn/sharesdk/framework/Platform;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v3, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    .line 73
    :cond_f
    :goto_f
    invoke-virtual {p0}, Lcn/sharesdk/facebookmessenger/b;->finish()V

    .line 74
    invoke-super {p0, p1, p2, p3}, Lcom/mob/tools/FakeActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 75
    return-void

    .line 70
    :cond_16
    if-ne p1, p1, :cond_f

    if-nez p2, :cond_f

    .line 71
    iget-object v0, p0, Lcn/sharesdk/facebookmessenger/b;->c:Lcn/sharesdk/framework/PlatformActionListener;

    iget-object v1, p0, Lcn/sharesdk/facebookmessenger/b;->b:Lcn/sharesdk/framework/Platform;

    invoke-interface {v0, v1, v3}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    goto :goto_f
.end method

.method public onCreate()V
    .registers 6

    .prologue
    .line 35
    :try_start_0
    invoke-virtual {p0}, Lcn/sharesdk/facebookmessenger/b;->a()Landroid/content/Intent;

    move-result-object v0

    const v1, 0xfad0

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/facebookmessenger/b;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    .line 42
    :cond_a
    :goto_a
    return-void

    .line 36
    :catch_b
    move-exception v0

    .line 37
    iget-object v0, p0, Lcn/sharesdk/facebookmessenger/b;->c:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_a

    .line 38
    iget-object v0, p0, Lcn/sharesdk/facebookmessenger/b;->c:Lcn/sharesdk/framework/PlatformActionListener;

    iget-object v1, p0, Lcn/sharesdk/facebookmessenger/b;->b:Lcn/sharesdk/framework/Platform;

    const/16 v2, 0x9

    new-instance v3, Ljava/lang/Throwable;

    const-string v4, "start Activity error!"

    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2, v3}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 39
    invoke-virtual {p0}, Lcn/sharesdk/facebookmessenger/b;->finish()V

    goto :goto_a
.end method
