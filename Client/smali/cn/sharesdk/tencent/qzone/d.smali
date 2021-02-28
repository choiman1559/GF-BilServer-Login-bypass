.class public Lcn/sharesdk/tencent/qzone/d;
.super Lcom/mob/tools/FakeActivity;
.source "ShareActivity.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Lcn/sharesdk/framework/PlatformActionListener;

.field private d:Lcn/sharesdk/framework/authorize/RegisterView;

.field private e:Landroid/webkit/WebView;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Z

.field private i:Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/mob/tools/FakeActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/tencent/qzone/d;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->c:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic a(Lcn/sharesdk/tencent/qzone/d;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcn/sharesdk/tencent/qzone/d;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b()Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 73
    :try_start_1
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, p0, Lcn/sharesdk/tencent/qzone/d;->activity:Landroid/app/Activity;

    .line 74
    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/16 v3, 0x80

    .line 73
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 75
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "QZoneWebShareAdapter"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    if-eqz v0, :cond_23

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_25

    :cond_23
    move-object v0, v1

    .line 90
    :goto_24
    return-object v0

    .line 80
    :cond_25
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 82
    instance-of v2, v0, Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;

    if-nez v2, :cond_33

    move-object v0, v1

    .line 83
    goto :goto_24

    .line 86
    :cond_33
    check-cast v0, Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_35} :catch_36

    goto :goto_24

    .line 87
    :catch_36
    move-exception v0

    .line 88
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 90
    goto :goto_24
.end method

.method static synthetic b(Lcn/sharesdk/tencent/qzone/d;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcn/sharesdk/tencent/qzone/d;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcn/sharesdk/tencent/qzone/d;->c(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 9

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 220
    if-nez p1, :cond_30

    const-string v0, ""

    .line 221
    :goto_7
    invoke-static {p1}, Lcom/mob/tools/utils/ResHelper;->urlToBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 222
    if-nez v1, :cond_36

    .line 223
    iput-boolean v4, p0, Lcn/sharesdk/tencent/qzone/d;->h:Z

    .line 224
    invoke-virtual {p0}, Lcn/sharesdk/tencent/qzone/d;->finish()V

    .line 225
    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/d;->c:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v2, Ljava/lang/Throwable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to parse callback uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v6, v5, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 260
    :goto_2f
    return-void

    .line 220
    :cond_30
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_7

    .line 229
    :cond_36
    const-string v2, "action"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 230
    const-string v3, "share"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6f

    const-string v3, "shareToQzone"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6f

    .line 231
    iput-boolean v4, p0, Lcn/sharesdk/tencent/qzone/d;->h:Z

    .line 232
    invoke-virtual {p0}, Lcn/sharesdk/tencent/qzone/d;->finish()V

    .line 233
    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/d;->c:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v2, Ljava/lang/Throwable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "action error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v6, v5, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_2f

    .line 237
    :cond_6f
    const-string v2, "result"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 238
    const-string v3, "cancel"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_86

    .line 239
    invoke-virtual {p0}, Lcn/sharesdk/tencent/qzone/d;->finish()V

    .line 240
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->c:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v0, v6, v5}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    goto :goto_2f

    .line 242
    :cond_86
    const-string v3, "complete"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b2

    .line 243
    iput-boolean v4, p0, Lcn/sharesdk/tencent/qzone/d;->h:Z

    .line 244
    invoke-virtual {p0}, Lcn/sharesdk/tencent/qzone/d;->finish()V

    .line 245
    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/d;->c:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v2, Ljava/lang/Throwable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "operation failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v6, v5, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto/16 :goto_2f

    .line 249
    :cond_b2
    const-string v2, "response"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 250
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e2

    .line 251
    iput-boolean v4, p0, Lcn/sharesdk/tencent/qzone/d;->h:Z

    .line 252
    invoke-virtual {p0}, Lcn/sharesdk/tencent/qzone/d;->finish()V

    .line 253
    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/d;->c:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v2, Ljava/lang/Throwable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "response empty"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v6, v5, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto/16 :goto_2f

    .line 257
    :cond_e2
    iput-boolean v4, p0, Lcn/sharesdk/tencent/qzone/d;->g:Z

    .line 258
    invoke-virtual {p0}, Lcn/sharesdk/tencent/qzone/d;->finish()V

    .line 259
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->c:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v2, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v2}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v2, v1}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {v0, v6, v5, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    goto/16 :goto_2f
.end method

.method private c()V
    .registers 5

    .prologue
    .line 126
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 127
    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/d;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 128
    const-string v1, "pkg_name"

    iget-object v2, p0, Lcn/sharesdk/tencent/qzone/d;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/d;->activity:Landroid/app/Activity;

    const/16 v2, 0x64

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_22} :catch_23

    .line 142
    :cond_22
    :goto_22
    return-void

    .line 137
    :catch_23
    move-exception v0

    .line 138
    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/d;->c:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_22

    .line 139
    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/d;->c:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_22
.end method

.method private c(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 263
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 264
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 267
    :try_start_e
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_18} :catch_25

    move-result-object v0

    .line 273
    :goto_19
    if-eqz v0, :cond_24

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_24

    .line 274
    invoke-virtual {p0, v1}, Lcn/sharesdk/tencent/qzone/d;->startActivity(Landroid/content/Intent;)V

    .line 276
    :cond_24
    return-void

    .line 269
    :catch_25
    move-exception v0

    .line 270
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 271
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private d()V
    .registers 6

    .prologue
    .line 145
    invoke-virtual {p0}, Lcn/sharesdk/tencent/qzone/d;->a()Lcn/sharesdk/framework/authorize/RegisterView;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->d:Lcn/sharesdk/framework/authorize/RegisterView;

    .line 147
    :try_start_6
    invoke-virtual {p0}, Lcn/sharesdk/tencent/qzone/d;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ssdk_share_to_qzone"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 148
    if-lez v0, :cond_1f

    .line 149
    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/d;->d:Lcn/sharesdk/framework/authorize/RegisterView;

    invoke-virtual {v1}, Lcn/sharesdk/framework/authorize/RegisterView;->c()Lcn/sharesdk/framework/TitleLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcn/sharesdk/framework/TitleLayout;->getTvTitle()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_1f} :catch_73

    .line 156
    :cond_1f
    :goto_1f
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->i:Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;

    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/d;->d:Lcn/sharesdk/framework/authorize/RegisterView;

    invoke-virtual {v1}, Lcn/sharesdk/framework/authorize/RegisterView;->d()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;->setBodyView(Landroid/widget/RelativeLayout;)V

    .line 157
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->i:Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;

    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/d;->d:Lcn/sharesdk/framework/authorize/RegisterView;

    invoke-virtual {v1}, Lcn/sharesdk/framework/authorize/RegisterView;->b()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;->setWebView(Landroid/webkit/WebView;)V

    .line 158
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->i:Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;

    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/d;->d:Lcn/sharesdk/framework/authorize/RegisterView;

    invoke-virtual {v1}, Lcn/sharesdk/framework/authorize/RegisterView;->c()Lcn/sharesdk/framework/TitleLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;->setTitleView(Lcn/sharesdk/framework/TitleLayout;)V

    .line 159
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->i:Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;

    invoke-virtual {v0}, Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;->onCreate()V

    .line 160
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/d;->d:Lcn/sharesdk/framework/authorize/RegisterView;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 162
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    .line 163
    const-string v1, "none"

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getDetailNetworkTypeForStatic()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_87

    .line 164
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/sharesdk/tencent/qzone/d;->h:Z

    .line 165
    invoke-virtual {p0}, Lcn/sharesdk/tencent/qzone/d;->finish()V

    .line 166
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->c:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Throwable;

    const-string v4, "failed to load webpage, network disconnected."

    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2, v3}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 171
    :goto_72
    return-void

    .line 151
    :catch_73
    move-exception v0

    .line 152
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 153
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->d:Lcn/sharesdk/framework/authorize/RegisterView;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/RegisterView;->c()Lcn/sharesdk/framework/TitleLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/TitleLayout;->setVisibility(I)V

    goto :goto_1f

    .line 170
    :cond_87
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->d:Lcn/sharesdk/framework/authorize/RegisterView;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/RegisterView;->b()Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_72
.end method


# virtual methods
.method protected a()Lcn/sharesdk/framework/authorize/RegisterView;
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 174
    new-instance v0, Lcn/sharesdk/framework/authorize/RegisterView;

    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/d;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcn/sharesdk/framework/authorize/RegisterView;-><init>(Landroid/content/Context;)V

    .line 175
    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/RegisterView;->c()Lcn/sharesdk/framework/TitleLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcn/sharesdk/framework/TitleLayout;->getChildCount()I

    move-result v1

    .line 176
    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/RegisterView;->c()Lcn/sharesdk/framework/TitleLayout;

    move-result-object v2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v2, v1}, Lcn/sharesdk/framework/TitleLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 177
    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/RegisterView;->a()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcn/sharesdk/tencent/qzone/d$1;

    invoke-direct {v2, p0}, Lcn/sharesdk/tencent/qzone/d$1;-><init>(Lcn/sharesdk/tencent/qzone/d;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/RegisterView;->b()Landroid/webkit/WebView;

    move-result-object v1

    iput-object v1, p0, Lcn/sharesdk/tencent/qzone/d;->e:Landroid/webkit/WebView;

    .line 194
    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/d;->e:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 195
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 196
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 197
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 198
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 199
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 200
    iget-object v2, p0, Lcn/sharesdk/tencent/qzone/d;->activity:Landroid/app/Activity;

    const-string v3, "database"

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 201
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 202
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 203
    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/d;->e:Landroid/webkit/WebView;

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 204
    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/d;->e:Landroid/webkit/WebView;

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 205
    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/d;->e:Landroid/webkit/WebView;

    new-instance v2, Lcn/sharesdk/tencent/qzone/d$2;

    invoke-direct {v2, p0}, Lcn/sharesdk/tencent/qzone/d$2;-><init>(Lcn/sharesdk/tencent/qzone/d;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 215
    return-object v0
.end method

.method public a(Lcn/sharesdk/framework/PlatformActionListener;)V
    .registers 2

    .prologue
    .line 52
    iput-object p1, p0, Lcn/sharesdk/tencent/qzone/d;->c:Lcn/sharesdk/framework/PlatformActionListener;

    .line 53
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tencent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->f:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .registers 3

    .prologue
    .line 47
    iput-object p1, p0, Lcn/sharesdk/tencent/qzone/d;->a:Ljava/lang/String;

    .line 48
    iput-boolean p2, p0, Lcn/sharesdk/tencent/qzone/d;->b:Z

    .line 49
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 328
    const/16 v0, 0x64

    if-ne p1, v0, :cond_e

    if-nez p2, :cond_e

    .line 329
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->c:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x0

    const/16 v2, 0x9

    invoke-interface {v0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 331
    :cond_e
    invoke-virtual {p0}, Lcn/sharesdk/tencent/qzone/d;->finish()V

    .line 332
    return-void
.end method

.method public onCreate()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 96
    :try_start_1
    const-string v0, "cn.sharesdk.tencent.qq.ReceiveActivity"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 97
    const-string v1, "setUriScheme"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 98
    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcn/sharesdk/tencent/qzone/d;->f:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v1, "setPlatformActionListener"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lcn/sharesdk/framework/PlatformActionListener;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 100
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcn/sharesdk/tencent/qzone/d;->c:Lcn/sharesdk/framework/PlatformActionListener;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-boolean v0, p0, Lcn/sharesdk/tencent/qzone/d;->b:Z

    if-eqz v0, :cond_43

    .line 102
    invoke-direct {p0}, Lcn/sharesdk/tencent/qzone/d;->c()V

    .line 122
    :cond_42
    :goto_42
    return-void

    .line 104
    :cond_43
    invoke-direct {p0}, Lcn/sharesdk/tencent/qzone/d;->d()V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_46} :catch_47

    goto :goto_42

    .line 106
    :catch_47
    move-exception v0

    .line 108
    :try_start_48
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->f:Ljava/lang/String;

    invoke-static {v0}, Lcn/sharesdk/tencent/qzone/ReceiveActivity;->a(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->c:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-static {v0}, Lcn/sharesdk/tencent/qzone/ReceiveActivity;->a(Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 110
    iget-boolean v0, p0, Lcn/sharesdk/tencent/qzone/d;->b:Z

    if-eqz v0, :cond_6c

    .line 111
    invoke-direct {p0}, Lcn/sharesdk/tencent/qzone/d;->c()V
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_59} :catch_5a

    goto :goto_42

    .line 115
    :catch_5a
    move-exception v0

    .line 116
    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/d;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 117
    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/d;->c:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_42

    .line 118
    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/d;->c:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v2, 0x9

    invoke-interface {v1, v6, v2, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_42

    .line 113
    :cond_6c
    :try_start_6c
    invoke-direct {p0}, Lcn/sharesdk/tencent/qzone/d;->d()V
    :try_end_6f
    .catch Ljava/lang/Throwable; {:try_start_6c .. :try_end_6f} :catch_5a

    goto :goto_42
.end method

.method public onDestroy()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 309
    iget-boolean v0, p0, Lcn/sharesdk/tencent/qzone/d;->b:Z

    if-nez v0, :cond_13

    iget-boolean v0, p0, Lcn/sharesdk/tencent/qzone/d;->h:Z

    if-nez v0, :cond_13

    iget-boolean v0, p0, Lcn/sharesdk/tencent/qzone/d;->g:Z

    if-nez v0, :cond_13

    .line 310
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->c:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 312
    :cond_13
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->e:Landroid/webkit/WebView;

    if-eqz v0, :cond_1c

    .line 313
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->e:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 315
    :cond_1c
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->i:Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;

    if-eqz v0, :cond_25

    .line 316
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->i:Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;

    invoke-virtual {v0}, Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;->onDestroy()V

    .line 318
    :cond_25
    return-void
.end method

.method public onFinish()Z
    .registers 2

    .prologue
    .line 321
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->i:Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;

    if-eqz v0, :cond_b

    .line 322
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->i:Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;

    invoke-virtual {v0}, Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;->onFinish()Z

    move-result v0

    .line 324
    :goto_a
    return v0

    :cond_b
    invoke-super {p0}, Lcom/mob/tools/FakeActivity;->onFinish()Z

    move-result v0

    goto :goto_a
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 285
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->i:Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;

    if-eqz v0, :cond_9

    .line 286
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->i:Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;

    invoke-virtual {v0}, Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;->onPause()V

    .line 288
    :cond_9
    return-void
.end method

.method public onRestart()V
    .registers 2

    .prologue
    .line 303
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->i:Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;

    if-eqz v0, :cond_9

    .line 304
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->i:Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;

    invoke-virtual {v0}, Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;->onRestart()V

    .line 306
    :cond_9
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 291
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->i:Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;

    if-eqz v0, :cond_9

    .line 292
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->i:Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;

    invoke-virtual {v0}, Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;->onResume()V

    .line 294
    :cond_9
    return-void
.end method

.method public onStart()V
    .registers 2

    .prologue
    .line 279
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->i:Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;

    if-eqz v0, :cond_9

    .line 280
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->i:Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;

    invoke-virtual {v0}, Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;->onStart()V

    .line 282
    :cond_9
    return-void
.end method

.method public onStop()V
    .registers 2

    .prologue
    .line 297
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->i:Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;

    if-eqz v0, :cond_9

    .line 298
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->i:Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;

    invoke-virtual {v0}, Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;->onStop()V

    .line 300
    :cond_9
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/mob/tools/FakeActivity;->setActivity(Landroid/app/Activity;)V

    .line 62
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->i:Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;

    if-nez v0, :cond_18

    .line 63
    invoke-direct {p0}, Lcn/sharesdk/tencent/qzone/d;->b()Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->i:Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;

    .line 64
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->i:Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;

    if-nez v0, :cond_18

    .line 65
    new-instance v0, Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;

    invoke-direct {v0}, Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->i:Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;

    .line 68
    :cond_18
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->i:Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;

    invoke-virtual {v0, p1}, Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;->setActivity(Landroid/app/Activity;)V

    .line 69
    return-void
.end method
