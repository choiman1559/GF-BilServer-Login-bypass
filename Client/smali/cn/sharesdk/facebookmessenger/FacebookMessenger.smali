.class public Lcn/sharesdk/facebookmessenger/FacebookMessenger;
.super Lcn/sharesdk/framework/Platform;
.source "FacebookMessenger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/sharesdk/facebookmessenger/FacebookMessenger$ShareParams;
    }
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    const-class v0, Lcn/sharesdk/facebookmessenger/FacebookMessenger;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/sharesdk/facebookmessenger/FacebookMessenger;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcn/sharesdk/framework/Platform;-><init>()V

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/facebookmessenger/FacebookMessenger;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 16
    iget-object v0, p0, Lcn/sharesdk/facebookmessenger/FacebookMessenger;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic b(Lcn/sharesdk/facebookmessenger/FacebookMessenger;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 16
    iget-object v0, p0, Lcn/sharesdk/facebookmessenger/FacebookMessenger;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic c(Lcn/sharesdk/facebookmessenger/FacebookMessenger;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 16
    iget-object v0, p0, Lcn/sharesdk/facebookmessenger/FacebookMessenger;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic d(Lcn/sharesdk/facebookmessenger/FacebookMessenger;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 16
    iget-object v0, p0, Lcn/sharesdk/facebookmessenger/FacebookMessenger;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic e(Lcn/sharesdk/facebookmessenger/FacebookMessenger;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 16
    iget-object v0, p0, Lcn/sharesdk/facebookmessenger/FacebookMessenger;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic f(Lcn/sharesdk/facebookmessenger/FacebookMessenger;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 16
    iget-object v0, p0, Lcn/sharesdk/facebookmessenger/FacebookMessenger;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method


# virtual methods
.method protected checkAuthorize(ILjava/lang/Object;)Z
    .registers 5
    .param p1, "action"    # I
    .param p2, "extra"    # Ljava/lang/Object;

    .prologue
    .line 54
    invoke-virtual {p0}, Lcn/sharesdk/facebookmessenger/FacebookMessenger;->isClientValid()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcn/sharesdk/facebookmessenger/FacebookMessenger;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_14

    .line 55
    iget-object v0, p0, Lcn/sharesdk/facebookmessenger/FacebookMessenger;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v1, Lcn/sharesdk/facebookmessenger/FacebookMessengerClientNotExistException;

    invoke-direct {v1}, Lcn/sharesdk/facebookmessenger/FacebookMessengerClientNotExistException;-><init>()V

    invoke-interface {v0, p0, p1, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 57
    :cond_14
    invoke-virtual {p0}, Lcn/sharesdk/facebookmessenger/FacebookMessenger;->isClientValid()Z

    move-result v0

    return v0
.end method

.method protected doAuthorize([Ljava/lang/String;)V
    .registers 5
    .param p1, "permission"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 45
    invoke-virtual {p0}, Lcn/sharesdk/facebookmessenger/FacebookMessenger;->isClientValid()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 46
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lcn/sharesdk/facebookmessenger/FacebookMessenger;->afterRegister(ILjava/lang/Object;)V

    .line 50
    :cond_b
    :goto_b
    return-void

    .line 47
    :cond_c
    iget-object v0, p0, Lcn/sharesdk/facebookmessenger/FacebookMessenger;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_b

    .line 48
    iget-object v0, p0, Lcn/sharesdk/facebookmessenger/FacebookMessenger;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v1, Lcn/sharesdk/facebookmessenger/FacebookMessengerClientNotExistException;

    invoke-direct {v1}, Lcn/sharesdk/facebookmessenger/FacebookMessengerClientNotExistException;-><init>()V

    invoke-interface {v0, p0, v2, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_b
.end method

.method protected doCustomerProtocol(Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;Ljava/util/HashMap;)V
    .registers 7
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "customerAction"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 171
    .local p4, "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p5, "filePathes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcn/sharesdk/facebookmessenger/FacebookMessenger;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_9

    .line 172
    iget-object v0, p0, Lcn/sharesdk/facebookmessenger/FacebookMessenger;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v0, p0, p3}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 174
    :cond_9
    return-void
.end method

.method protected doShare(Lcn/sharesdk/framework/Platform$ShareParams;)V
    .registers 14
    .param p1, "params"    # Lcn/sharesdk/framework/Platform$ShareParams;

    .prologue
    const/16 v11, 0x9

    .line 73
    invoke-static {}, Lcn/sharesdk/facebookmessenger/a;->a()Lcn/sharesdk/facebookmessenger/a;

    move-result-object v0

    .line 75
    :try_start_6
    new-instance v1, Lcn/sharesdk/facebookmessenger/FacebookMessenger$1;

    invoke-direct {v1, p0, p1}, Lcn/sharesdk/facebookmessenger/FacebookMessenger$1;-><init>(Lcn/sharesdk/facebookmessenger/FacebookMessenger;Lcn/sharesdk/framework/Platform$ShareParams;)V

    .line 95
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getShareType()I

    move-result v2

    .line 96
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    .line 97
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v3

    .line 98
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getFilePath()Ljava/lang/String;

    move-result-object v4

    .line 99
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getTitle()Ljava/lang/String;

    move-result-object v6

    .line 100
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v9

    .line 101
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getUrl()Ljava/lang/String;

    move-result-object v7

    .line 102
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_38

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_58

    .line 103
    :cond_38
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_77

    .line 104
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/mob/tools/utils/BitmapHelper;->downloadBitmap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 105
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_ad

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_ad

    :goto_57
    move-object v3, v1

    .line 116
    :cond_58
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_62

    .line 117
    invoke-virtual {v0, v3}, Lcn/sharesdk/facebookmessenger/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 120
    :cond_62
    iget-object v1, p0, Lcn/sharesdk/facebookmessenger/FacebookMessenger;->a:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcn/sharesdk/facebookmessenger/a;->a(Lcn/sharesdk/framework/Platform;Ljava/lang/String;)V

    .line 121
    iget-object v1, p0, Lcn/sharesdk/facebookmessenger/FacebookMessenger;->a:Ljava/lang/String;

    iget-object v5, p0, Lcn/sharesdk/facebookmessenger/FacebookMessenger;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageArray()[Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v0 .. v10}, Lcn/sharesdk/facebookmessenger/a;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcn/sharesdk/framework/PlatformActionListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 128
    :cond_76
    :goto_76
    return-void

    .line 108
    :cond_77
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_88

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_58

    .line 109
    :cond_88
    iget-object v0, p0, Lcn/sharesdk/facebookmessenger/FacebookMessenger;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_76

    .line 110
    iget-object v0, p0, Lcn/sharesdk/facebookmessenger/FacebookMessenger;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v1, 0x9

    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "The params of image or filePath are missing!"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    :try_end_9a
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_9a} :catch_9b

    goto :goto_76

    .line 122
    :catch_9b
    move-exception v0

    .line 123
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 124
    iget-object v1, p0, Lcn/sharesdk/facebookmessenger/FacebookMessenger;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_76

    .line 125
    iget-object v1, p0, Lcn/sharesdk/facebookmessenger/FacebookMessenger;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v1, p0, v11, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_76

    :cond_ad
    move-object v1, v3

    goto :goto_57
.end method

.method protected filterFriendshipInfo(ILjava/util/HashMap;)Ljava/util/HashMap;
    .registers 4
    .param p1, "action"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 189
    .local p2, "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected filterShareContent(Lcn/sharesdk/framework/Platform$ShareParams;Ljava/util/HashMap;)Lcn/sharesdk/framework/b/b/f$a;
    .registers 7
    .param p1, "params"    # Lcn/sharesdk/framework/Platform$ShareParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/sharesdk/framework/Platform$ShareParams;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcn/sharesdk/framework/b/b/f$a;"
        }
    .end annotation

    .prologue
    .line 132
    .local p2, "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lcn/sharesdk/framework/b/b/f$a;

    invoke-direct {v0}, Lcn/sharesdk/framework/b/b/f$a;-><init>()V

    .line 133
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    .line 134
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v2

    .line 135
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_19

    .line 136
    iget-object v1, v0, Lcn/sharesdk/framework/b/b/f$a;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    :cond_18
    :goto_18
    return-object v0

    .line 137
    :cond_19
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 138
    iget-object v2, v0, Lcn/sharesdk/framework/b/b/f$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18
.end method

.method protected follow(Ljava/lang/String;)V
    .registers 4
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 151
    iget-object v0, p0, Lcn/sharesdk/facebookmessenger/FacebookMessenger;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_a

    .line 152
    iget-object v0, p0, Lcn/sharesdk/facebookmessenger/FacebookMessenger;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x6

    invoke-interface {v0, p0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 154
    :cond_a
    return-void
.end method

.method protected getBilaterals(IILjava/lang/String;)Ljava/util/HashMap;
    .registers 5
    .param p1, "count"    # I
    .param p2, "cursor"    # I
    .param p3, "account"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 185
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getFollowers(IILjava/lang/String;)Ljava/util/HashMap;
    .registers 5
    .param p1, "count"    # I
    .param p2, "cursor"    # I
    .param p3, "account"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 181
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getFollowings(IILjava/lang/String;)Ljava/util/HashMap;
    .registers 5
    .param p1, "count"    # I
    .param p2, "page"    # I
    .param p3, "account"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 177
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getFriendList(IILjava/lang/String;)V
    .registers 6
    .param p1, "count"    # I
    .param p2, "page"    # I
    .param p3, "account"    # Ljava/lang/String;

    .prologue
    .line 163
    iget-object v0, p0, Lcn/sharesdk/facebookmessenger/FacebookMessenger;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_a

    .line 164
    iget-object v0, p0, Lcn/sharesdk/facebookmessenger/FacebookMessenger;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 166
    :cond_a
    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 32
    sget-object v0, Lcn/sharesdk/facebookmessenger/FacebookMessenger;->NAME:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatformId()I
    .registers 2

    .prologue
    .line 28
    const/16 v0, 0x2e

    return v0
.end method

.method public getVersion()I
    .registers 2

    .prologue
    .line 36
    const/4 v0, 0x1

    return v0
.end method

.method public hasShareCallback()Z
    .registers 2

    .prologue
    .line 193
    const/4 v0, 0x1

    return v0
.end method

.method protected initDevInfo(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 24
    const-string v0, "AppId"

    invoke-virtual {p0, v0}, Lcn/sharesdk/facebookmessenger/FacebookMessenger;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/facebookmessenger/FacebookMessenger;->a:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public isClientValid()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 63
    :try_start_1
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.facebook.orca"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_f} :catch_11

    .line 64
    const/4 v0, 0x1

    .line 68
    :goto_10
    return v0

    .line 65
    :catch_11
    move-exception v1

    .line 66
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_10
.end method

.method protected setNetworkDevinfo()V
    .registers 3

    .prologue
    .line 40
    const-string v0, "api_key"

    const-string v1, "AppId"

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/facebookmessenger/FacebookMessenger;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/facebookmessenger/FacebookMessenger;->a:Ljava/lang/String;

    .line 41
    return-void
.end method

.method protected timeline(IILjava/lang/String;)V
    .registers 6
    .param p1, "count"    # I
    .param p2, "page"    # I
    .param p3, "account"    # Ljava/lang/String;

    .prologue
    .line 157
    iget-object v0, p0, Lcn/sharesdk/facebookmessenger/FacebookMessenger;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_a

    .line 158
    iget-object v0, p0, Lcn/sharesdk/facebookmessenger/FacebookMessenger;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x7

    invoke-interface {v0, p0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 160
    :cond_a
    return-void
.end method

.method protected userInfor(Ljava/lang/String;)V
    .registers 4
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 145
    iget-object v0, p0, Lcn/sharesdk/facebookmessenger/FacebookMessenger;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_b

    .line 146
    iget-object v0, p0, Lcn/sharesdk/facebookmessenger/FacebookMessenger;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v1, 0x8

    invoke-interface {v0, p0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 148
    :cond_b
    return-void
.end method
