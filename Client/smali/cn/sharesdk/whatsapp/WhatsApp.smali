.class public Lcn/sharesdk/whatsapp/WhatsApp;
.super Lcn/sharesdk/framework/Platform;
.source "WhatsApp.java"


# static fields
.field public static final NAME:Ljava/lang/String;


# instance fields
.field private a:Lcn/sharesdk/whatsapp/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    const-class v0, Lcn/sharesdk/whatsapp/WhatsApp;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/sharesdk/whatsapp/WhatsApp;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0}, Lcn/sharesdk/framework/Platform;-><init>()V

    .line 27
    new-instance v0, Lcn/sharesdk/whatsapp/b;

    invoke-direct {v0, p0}, Lcn/sharesdk/whatsapp/b;-><init>(Lcn/sharesdk/framework/Platform;)V

    iput-object v0, p0, Lcn/sharesdk/whatsapp/WhatsApp;->a:Lcn/sharesdk/whatsapp/b;

    .line 28
    return-void
.end method

.method static synthetic a(Lcn/sharesdk/whatsapp/WhatsApp;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcn/sharesdk/whatsapp/WhatsApp;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic b(Lcn/sharesdk/whatsapp/WhatsApp;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcn/sharesdk/whatsapp/WhatsApp;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic c(Lcn/sharesdk/whatsapp/WhatsApp;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcn/sharesdk/whatsapp/WhatsApp;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic d(Lcn/sharesdk/whatsapp/WhatsApp;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcn/sharesdk/whatsapp/WhatsApp;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic e(Lcn/sharesdk/whatsapp/WhatsApp;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcn/sharesdk/whatsapp/WhatsApp;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic f(Lcn/sharesdk/whatsapp/WhatsApp;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcn/sharesdk/whatsapp/WhatsApp;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method


# virtual methods
.method protected checkAuthorize(ILjava/lang/Object;)Z
    .registers 5
    .param p1, "action"    # I
    .param p2, "extra"    # Ljava/lang/Object;

    .prologue
    .line 66
    invoke-virtual {p0}, Lcn/sharesdk/whatsapp/WhatsApp;->isClientValid()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 67
    const/4 v0, 0x1

    .line 72
    :goto_7
    return v0

    .line 69
    :cond_8
    iget-object v0, p0, Lcn/sharesdk/whatsapp/WhatsApp;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_16

    .line 70
    iget-object v0, p0, Lcn/sharesdk/whatsapp/WhatsApp;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v1, Lcn/sharesdk/whatsapp/WhatsAppClientNotExistException;

    invoke-direct {v1}, Lcn/sharesdk/whatsapp/WhatsAppClientNotExistException;-><init>()V

    invoke-interface {v0, p0, p1, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 72
    :cond_16
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected doAuthorize([Ljava/lang/String;)V
    .registers 5
    .param p1, "permission"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 57
    invoke-virtual {p0}, Lcn/sharesdk/whatsapp/WhatsApp;->isClientValid()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 58
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lcn/sharesdk/whatsapp/WhatsApp;->afterRegister(ILjava/lang/Object;)V

    .line 62
    :cond_b
    :goto_b
    return-void

    .line 59
    :cond_c
    iget-object v0, p0, Lcn/sharesdk/whatsapp/WhatsApp;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_b

    .line 60
    iget-object v0, p0, Lcn/sharesdk/whatsapp/WhatsApp;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v1, Lcn/sharesdk/whatsapp/WhatsAppClientNotExistException;

    invoke-direct {v1}, Lcn/sharesdk/whatsapp/WhatsAppClientNotExistException;-><init>()V

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
    .line 189
    .local p4, "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p5, "filePathes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcn/sharesdk/whatsapp/WhatsApp;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_9

    .line 190
    iget-object v0, p0, Lcn/sharesdk/whatsapp/WhatsApp;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v0, p0, p3}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 192
    :cond_9
    return-void
.end method

.method protected doShare(Lcn/sharesdk/framework/Platform$ShareParams;)V
    .registers 11
    .param p1, "params"    # Lcn/sharesdk/framework/Platform$ShareParams;

    .prologue
    const/16 v8, 0x9

    .line 78
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 80
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getFilePath()Ljava/lang/String;

    move-result-object v3

    .line 81
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 84
    :try_start_12
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v5

    .line 87
    new-instance v6, Lcn/sharesdk/whatsapp/WhatsApp$1;

    invoke-direct {v6, p0, p1}, Lcn/sharesdk/whatsapp/WhatsApp$1;-><init>(Lcn/sharesdk/whatsapp/WhatsApp;Lcn/sharesdk/framework/Platform$ShareParams;)V

    .line 113
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_33

    .line 114
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcn/sharesdk/whatsapp/WhatsApp;->getShortLintk(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 115
    invoke-virtual {p1, v0}, Lcn/sharesdk/framework/Platform$ShareParams;->setText(Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Lcn/sharesdk/whatsapp/WhatsApp;->a:Lcn/sharesdk/whatsapp/b;

    invoke-virtual {v1, v0, v2, v6}, Lcn/sharesdk/whatsapp/b;->a(Ljava/lang/String;Ljava/lang/String;Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 140
    :cond_32
    :goto_32
    return-void

    .line 117
    :cond_33
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4b

    .line 118
    iget-object v1, p0, Lcn/sharesdk/whatsapp/WhatsApp;->a:Lcn/sharesdk/whatsapp/b;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0, v6}, Lcn/sharesdk/whatsapp/b;->a(ILjava/lang/String;Lcn/sharesdk/framework/PlatformActionListener;)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_3f} :catch_40

    goto :goto_32

    .line 135
    :catch_40
    move-exception v0

    .line 136
    iget-object v1, p0, Lcn/sharesdk/whatsapp/WhatsApp;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_32

    .line 137
    iget-object v1, p0, Lcn/sharesdk/whatsapp/WhatsApp;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v1, p0, v8, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_32

    .line 119
    :cond_4b
    :try_start_4b
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6f

    .line 120
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/mob/tools/utils/BitmapHelper;->downloadBitmap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 121
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_68

    .line 123
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 125
    :cond_68
    iget-object v1, p0, Lcn/sharesdk/whatsapp/WhatsApp;->a:Lcn/sharesdk/whatsapp/b;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0, v6}, Lcn/sharesdk/whatsapp/b;->a(ILjava/lang/String;Lcn/sharesdk/framework/PlatformActionListener;)V

    goto :goto_32

    .line 126
    :cond_6f
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7c

    .line 127
    iget-object v0, p0, Lcn/sharesdk/whatsapp/WhatsApp;->a:Lcn/sharesdk/whatsapp/b;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v3, v6}, Lcn/sharesdk/whatsapp/b;->a(ILjava/lang/String;Lcn/sharesdk/framework/PlatformActionListener;)V

    goto :goto_32

    .line 128
    :cond_7c
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_88

    .line 129
    iget-object v0, p0, Lcn/sharesdk/whatsapp/WhatsApp;->a:Lcn/sharesdk/whatsapp/b;

    invoke-virtual {v0, v4, v6}, Lcn/sharesdk/whatsapp/b;->a(Ljava/lang/String;Lcn/sharesdk/framework/PlatformActionListener;)V

    goto :goto_32

    .line 131
    :cond_88
    iget-object v0, p0, Lcn/sharesdk/whatsapp/WhatsApp;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_32

    .line 132
    iget-object v0, p0, Lcn/sharesdk/whatsapp/WhatsApp;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v1, 0x9

    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "Missing parameters"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    :try_end_9a
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_9a} :catch_40

    goto :goto_32
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
    .line 207
    .local p2, "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected filterShareContent(Lcn/sharesdk/framework/Platform$ShareParams;Ljava/util/HashMap;)Lcn/sharesdk/framework/b/b/f$a;
    .registers 8
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
    .line 151
    .local p2, "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lcn/sharesdk/framework/b/b/f$a;

    invoke-direct {v0}, Lcn/sharesdk/framework/b/b/f$a;-><init>()V

    .line 152
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v1

    .line 153
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    .line 154
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v3

    .line 156
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1e

    .line 157
    iput-object v1, v0, Lcn/sharesdk/framework/b/b/f$a;->b:Ljava/lang/String;

    .line 163
    :cond_19
    :goto_19
    if-eqz p2, :cond_1d

    .line 164
    iput-object p2, v0, Lcn/sharesdk/framework/b/b/f$a;->g:Ljava/util/HashMap;

    .line 166
    :cond_1d
    return-object v0

    .line 158
    :cond_1e
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 159
    iget-object v1, v0, Lcn/sharesdk/framework/b/b/f$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 160
    :cond_2a
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 161
    iget-object v1, v0, Lcn/sharesdk/framework/b/b/f$a;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19
.end method

.method protected follow(Ljava/lang/String;)V
    .registers 4
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 170
    iget-object v0, p0, Lcn/sharesdk/whatsapp/WhatsApp;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_a

    .line 171
    iget-object v0, p0, Lcn/sharesdk/whatsapp/WhatsApp;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x6

    invoke-interface {v0, p0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 173
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
    .line 203
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
    .line 199
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
    .line 195
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getFriendList(IILjava/lang/String;)V
    .registers 6
    .param p1, "count"    # I
    .param p2, "page"    # I
    .param p3, "account"    # Ljava/lang/String;

    .prologue
    .line 182
    iget-object v0, p0, Lcn/sharesdk/whatsapp/WhatsApp;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_a

    .line 183
    iget-object v0, p0, Lcn/sharesdk/whatsapp/WhatsApp;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 185
    :cond_a
    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 39
    sget-object v0, Lcn/sharesdk/whatsapp/WhatsApp;->NAME:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatformId()I
    .registers 2

    .prologue
    .line 35
    const/16 v0, 0x2b

    return v0
.end method

.method public getVersion()I
    .registers 2

    .prologue
    .line 43
    const/4 v0, 0x1

    return v0
.end method

.method public hasShareCallback()Z
    .registers 2

    .prologue
    .line 211
    const/4 v0, 0x1

    return v0
.end method

.method protected initDevInfo(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 32
    return-void
.end method

.method public isClientValid()Z
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcn/sharesdk/whatsapp/WhatsApp;->a:Lcn/sharesdk/whatsapp/b;

    invoke-virtual {v0}, Lcn/sharesdk/whatsapp/b;->a()Z

    move-result v0

    return v0
.end method

.method protected setNetworkDevinfo()V
    .registers 1

    .prologue
    .line 53
    return-void
.end method

.method protected timeline(IILjava/lang/String;)V
    .registers 6
    .param p1, "count"    # I
    .param p2, "page"    # I
    .param p3, "account"    # Ljava/lang/String;

    .prologue
    .line 176
    iget-object v0, p0, Lcn/sharesdk/whatsapp/WhatsApp;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_a

    .line 177
    iget-object v0, p0, Lcn/sharesdk/whatsapp/WhatsApp;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x7

    invoke-interface {v0, p0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 179
    :cond_a
    return-void
.end method

.method protected userInfor(Ljava/lang/String;)V
    .registers 4
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 144
    iget-object v0, p0, Lcn/sharesdk/whatsapp/WhatsApp;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_b

    .line 145
    iget-object v0, p0, Lcn/sharesdk/whatsapp/WhatsApp;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v1, 0x8

    invoke-interface {v0, p0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 147
    :cond_b
    return-void
.end method
