.class public Lcn/sharesdk/renren/c;
.super Lcn/sharesdk/framework/authorize/d;
.source "RenrenSSOProcessor.java"


# instance fields
.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcn/sharesdk/framework/authorize/c;)V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/authorize/d;-><init>(Lcn/sharesdk/framework/authorize/c;)V

    .line 31
    return-void
.end method

.method static synthetic a(Lcn/sharesdk/renren/c;)Lcn/sharesdk/framework/authorize/c;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcn/sharesdk/renren/c;->a:Lcn/sharesdk/framework/authorize/c;

    return-object v0
.end method

.method private a(Landroid/accounts/AccountManager;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Handler;)V
    .registers 13

    .prologue
    .line 146
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 147
    const-string v1, "package_name"

    iget-object v2, p0, Lcn/sharesdk/renren/c;->a:Lcn/sharesdk/framework/authorize/c;

    invoke-virtual {v2}, Lcn/sharesdk/framework/authorize/c;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const-string v1, "client_id"

    iget-object v2, p0, Lcn/sharesdk/renren/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const-string v1, "token_type"

    const-string v2, "bearer"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const-string v1, "client_info"

    invoke-direct {p0}, Lcn/sharesdk/renren/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object v1, p0, Lcn/sharesdk/renren/c;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 152
    const-string v1, "scope"

    iget-object v2, p0, Lcn/sharesdk/renren/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    :cond_3a
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    .line 156
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 157
    const-string v0, "API_VERSION"

    const-string v1, "2.0"

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v0, "key_for_fix_4_0_bug"

    const/4 v1, 0x1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 159
    const-string v0, "key_for_fix_4_0_bug_account"

    invoke-virtual {v4, v0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 160
    iget-object v0, p0, Lcn/sharesdk/renren/c;->a:Lcn/sharesdk/framework/authorize/c;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/c;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    .line 161
    const/4 v3, 0x0

    new-instance v6, Lcn/sharesdk/renren/c$2;

    invoke-direct {v6, p0, p1, p3}, Lcn/sharesdk/renren/c$2;-><init>(Lcn/sharesdk/renren/c;Landroid/accounts/AccountManager;Ljava/lang/String;)V

    move-object v0, p1

    move-object v1, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 189
    return-void
.end method

.method private a(Landroid/accounts/AccountManager;Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 211
    const-string v0, "authtoken"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 212
    if-nez v0, :cond_e

    .line 213
    const-string v0, "key_for_fix_4_0_bug_token"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 215
    :cond_e
    invoke-virtual {p1, p3, v0}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 218
    invoke-virtual {p2}, Landroid/os/Bundle;->clear()V

    .line 219
    const-string v1, "access_token"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 220
    const-string v2, "access_token"

    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string v2, "expires"

    const-string v3, "expires"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 223
    const/4 v3, -0x1

    if-le v2, v3, :cond_57

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_57

    .line 224
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 225
    const-string v2, "user_id"

    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    :cond_57
    const-string v1, "mac_key"

    const-string v2, "mac_key"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string v1, "mac_algorithm"

    const-string v2, "mac_algorithm"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string v1, "scope"

    const-string v2, "scope"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    return-void
.end method

.method static synthetic a(Lcn/sharesdk/renren/c;Landroid/accounts/AccountManager;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Handler;)V
    .registers 5

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/sharesdk/renren/c;->a(Landroid/accounts/AccountManager;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/renren/c;Landroid/accounts/AccountManager;Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcn/sharesdk/renren/c;->a(Landroid/accounts/AccountManager;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcn/sharesdk/renren/c;)Lcn/sharesdk/framework/authorize/SSOListener;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcn/sharesdk/renren/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    return-object v0
.end method

.method private b()Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v2, 0x1

    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    const/4 v1, 0x0

    .line 90
    .line 92
    :try_start_4
    iget-object v0, p0, Lcn/sharesdk/renren/c;->a:Lcn/sharesdk/framework/authorize/c;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/c;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "com.renren.mobile.android"

    const/4 v4, 0x0

    .line 93
    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 94
    iget v0, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    const v4, 0x4dab98

    if-gt v0, v4, :cond_b3

    move v0, v1

    .line 98
    :goto_1d
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 99
    const-string v4, "[.]"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 100
    const/4 v4, 0x0

    aget-object v3, v3, v4

    const-string v4, "v"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mob/tools/utils/ResHelper;->parseInt(Ljava/lang/String;)I
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_33} :catch_56

    move-result v3

    .line 101
    const/4 v4, 0x5

    if-ge v3, v4, :cond_38

    move v0, v1

    .line 111
    :cond_38
    :goto_38
    :try_start_38
    iget-object v3, p0, Lcn/sharesdk/renren/c;->a:Lcn/sharesdk/framework/authorize/c;

    invoke-virtual {v3}, Lcn/sharesdk/framework/authorize/c;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.renren.mobile.apad"

    const/4 v5, 0x0

    .line 112
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 113
    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_4b} :catch_60

    const v4, 0x2dc6c0

    if-ge v3, v4, :cond_b1

    .line 121
    :goto_50
    if-nez v0, :cond_69

    if-nez v1, :cond_69

    .line 122
    const/4 v0, 0x0

    .line 141
    :goto_55
    return-object v0

    .line 104
    :catch_56
    move-exception v0

    .line 105
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    move v0, v1

    .line 106
    goto :goto_38

    .line 116
    :catch_60
    move-exception v2

    .line 117
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_50

    .line 125
    :cond_69
    if-eqz v0, :cond_70

    if-nez v1, :cond_70

    .line 126
    const-string v0, "com.renren.renren_account_manager"

    goto :goto_55

    .line 128
    :cond_70
    if-nez v0, :cond_77

    if-eqz v1, :cond_77

    .line 129
    const-string v0, "com.renren.renren_account_manager_for_hd"

    goto :goto_55

    .line 132
    :cond_77
    iget-object v0, p0, Lcn/sharesdk/renren/c;->a:Lcn/sharesdk/framework/authorize/c;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/c;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 133
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x43200000    # 160.0f

    mul-float/2addr v0, v1

    float-to-double v0, v0

    .line 134
    iget-object v2, p0, Lcn/sharesdk/renren/c;->a:Lcn/sharesdk/framework/authorize/c;

    invoke-virtual {v2}, Lcn/sharesdk/framework/authorize/c;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/mob/tools/utils/ResHelper;->getScreenWidth(Landroid/content/Context;)I

    move-result v2

    int-to-double v2, v2

    .line 135
    iget-object v4, p0, Lcn/sharesdk/renren/c;->a:Lcn/sharesdk/framework/authorize/c;

    invoke-virtual {v4}, Lcn/sharesdk/framework/authorize/c;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/mob/tools/utils/ResHelper;->getScreenHeight(Landroid/content/Context;)I

    move-result v4

    int-to-double v4, v4

    .line 137
    mul-double/2addr v2, v2

    mul-double/2addr v4, v4

    add-double/2addr v2, v4

    mul-double/2addr v0, v0

    mul-double/2addr v0, v6

    mul-double/2addr v0, v6

    cmpl-double v0, v2, v0

    if-lez v0, :cond_ae

    .line 138
    const-string v0, "com.renren.renren_account_manager_for_hd"

    goto :goto_55

    .line 141
    :cond_ae
    const-string v0, "com.renren.renren_account_manager_for_hd"

    goto :goto_55

    :cond_b1
    move v1, v2

    goto :goto_50

    :cond_b3
    move v0, v2

    goto/16 :goto_1d
.end method

.method static synthetic c(Lcn/sharesdk/renren/c;)Lcn/sharesdk/framework/authorize/SSOListener;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcn/sharesdk/renren/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    return-object v0
.end method

.method private c()Ljava/lang/String;
    .registers 7

    .prologue
    .line 192
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 193
    const-string v1, "model"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    iget-object v1, p0, Lcn/sharesdk/renren/c;->a:Lcn/sharesdk/framework/authorize/c;

    invoke-virtual {v1}, Lcn/sharesdk/framework/authorize/c;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v1

    .line 195
    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    .line 196
    const-string v3, "uniqid"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    const-string v3, "os"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "android_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    const-string v3, "screen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcn/sharesdk/renren/c;->a:Lcn/sharesdk/framework/authorize/c;

    invoke-virtual {v5}, Lcn/sharesdk/framework/authorize/c;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/mob/tools/utils/ResHelper;->getScreenWidth(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcn/sharesdk/renren/c;->a:Lcn/sharesdk/framework/authorize/c;

    .line 199
    invoke-virtual {v5}, Lcn/sharesdk/framework/authorize/c;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/mob/tools/utils/ResHelper;->getScreenHeight(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 198
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    const-string v3, "from"

    const v4, 0x927cc9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    const-string v3, "sdkkey"

    const-string v4, "01023000"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    const-string v3, "mac"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const-string v2, "other"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcn/sharesdk/renren/c;->a:Lcn/sharesdk/framework/authorize/c;

    .line 204
    invoke-virtual {v3}, Lcn/sharesdk/framework/authorize/c;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 203
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const-string v1, "version"

    const-string v2, "2.0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcn/sharesdk/renren/c;)Lcn/sharesdk/framework/authorize/c;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcn/sharesdk/renren/c;->a:Lcn/sharesdk/framework/authorize/c;

    return-object v0
.end method

.method static synthetic e(Lcn/sharesdk/renren/c;)Lcn/sharesdk/framework/authorize/SSOListener;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcn/sharesdk/renren/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    return-object v0
.end method

.method static synthetic f(Lcn/sharesdk/renren/c;)Lcn/sharesdk/framework/authorize/SSOListener;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcn/sharesdk/renren/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    return-object v0
.end method

.method static synthetic g(Lcn/sharesdk/renren/c;)Lcn/sharesdk/framework/authorize/c;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcn/sharesdk/renren/c;->a:Lcn/sharesdk/framework/authorize/c;

    return-object v0
.end method

.method static synthetic h(Lcn/sharesdk/renren/c;)Lcn/sharesdk/framework/authorize/SSOListener;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcn/sharesdk/renren/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    return-object v0
.end method

.method static synthetic i(Lcn/sharesdk/renren/c;)Lcn/sharesdk/framework/authorize/SSOListener;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcn/sharesdk/renren/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    return-object v0
.end method

.method static synthetic j(Lcn/sharesdk/renren/c;)Lcn/sharesdk/framework/authorize/SSOListener;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcn/sharesdk/renren/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    return-object v0
.end method

.method static synthetic k(Lcn/sharesdk/renren/c;)Lcn/sharesdk/framework/authorize/SSOListener;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcn/sharesdk/renren/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    return-object v0
.end method

.method static synthetic l(Lcn/sharesdk/renren/c;)Lcn/sharesdk/framework/authorize/SSOListener;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcn/sharesdk/renren/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    return-object v0
.end method

.method static synthetic m(Lcn/sharesdk/renren/c;)Lcn/sharesdk/framework/authorize/SSOListener;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcn/sharesdk/renren/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 42
    invoke-direct {p0}, Lcn/sharesdk/renren/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 43
    if-nez v1, :cond_1d

    .line 44
    iget-object v0, p0, Lcn/sharesdk/renren/c;->a:Lcn/sharesdk/framework/authorize/c;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/c;->finish()V

    .line 45
    iget-object v0, p0, Lcn/sharesdk/renren/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    if-eqz v0, :cond_1c

    .line 46
    iget-object v0, p0, Lcn/sharesdk/renren/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "You may not have installed Renren client"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcn/sharesdk/framework/authorize/SSOListener;->onFailed(Ljava/lang/Throwable;)V

    .line 87
    :cond_1c
    :goto_1c
    return-void

    .line 51
    :cond_1d
    iget-object v0, p0, Lcn/sharesdk/renren/c;->a:Lcn/sharesdk/framework/authorize/c;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/c;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    .line 52
    invoke-static {v5}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 53
    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v3

    .line 54
    new-instance v7, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v7, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 55
    array-length v4, v3

    if-nez v4, :cond_44

    .line 56
    new-instance v6, Lcn/sharesdk/renren/c$1;

    invoke-direct {v6, p0, v1, v0, v7}, Lcn/sharesdk/renren/c$1;-><init>(Lcn/sharesdk/renren/c;Ljava/lang/String;Landroid/accounts/AccountManager;Landroid/os/Handler;)V

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    goto :goto_1c

    .line 86
    :cond_44
    const/4 v2, 0x0

    aget-object v2, v3, v2

    invoke-direct {p0, v0, v2, v1, v7}, Lcn/sharesdk/renren/c;->a(Landroid/accounts/AccountManager;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Handler;)V

    goto :goto_1c
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 34
    iput-object p1, p0, Lcn/sharesdk/renren/c;->d:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 38
    iput-object p1, p0, Lcn/sharesdk/renren/c;->e:Ljava/lang/String;

    .line 39
    return-void
.end method
