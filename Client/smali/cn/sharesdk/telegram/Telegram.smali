.class public Lcn/sharesdk/telegram/Telegram;
.super Lcn/sharesdk/framework/Platform;
.source "Telegram.java"


# static fields
.field public static final NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    const-class v0, Lcn/sharesdk/telegram/Telegram;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/sharesdk/telegram/Telegram;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcn/sharesdk/framework/Platform;-><init>()V

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/telegram/Telegram;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 14
    iget-object v0, p0, Lcn/sharesdk/telegram/Telegram;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic b(Lcn/sharesdk/telegram/Telegram;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 14
    iget-object v0, p0, Lcn/sharesdk/telegram/Telegram;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic c(Lcn/sharesdk/telegram/Telegram;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 14
    iget-object v0, p0, Lcn/sharesdk/telegram/Telegram;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic d(Lcn/sharesdk/telegram/Telegram;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 14
    iget-object v0, p0, Lcn/sharesdk/telegram/Telegram;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic e(Lcn/sharesdk/telegram/Telegram;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 14
    iget-object v0, p0, Lcn/sharesdk/telegram/Telegram;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic f(Lcn/sharesdk/telegram/Telegram;)Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 14
    iget-object v0, p0, Lcn/sharesdk/telegram/Telegram;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method


# virtual methods
.method protected checkAuthorize(ILjava/lang/Object;)Z
    .registers 5
    .param p1, "action"    # I
    .param p2, "extra"    # Ljava/lang/Object;

    .prologue
    .line 63
    invoke-virtual {p0}, Lcn/sharesdk/telegram/Telegram;->isClientValid()Z

    move-result v0

    if-nez v0, :cond_16

    .line 64
    iget-object v0, p0, Lcn/sharesdk/telegram/Telegram;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_14

    .line 65
    iget-object v0, p0, Lcn/sharesdk/telegram/Telegram;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v1, Lcn/sharesdk/telegram/TelegramClientNotExistException;

    invoke-direct {v1}, Lcn/sharesdk/telegram/TelegramClientNotExistException;-><init>()V

    invoke-interface {v0, p0, p1, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 67
    :cond_14
    const/4 v0, 0x0

    .line 69
    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x1

    goto :goto_15
.end method

.method protected doAuthorize([Ljava/lang/String;)V
    .registers 4
    .param p1, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 47
    iget-object v0, p0, Lcn/sharesdk/telegram/Telegram;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_a

    .line 48
    iget-object v0, p0, Lcn/sharesdk/telegram/Telegram;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 50
    :cond_a
    return-void
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
    .line 128
    .local p4, "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p5, "filePathes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcn/sharesdk/telegram/Telegram;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_9

    .line 129
    iget-object v0, p0, Lcn/sharesdk/telegram/Telegram;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v0, p0, p3}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 131
    :cond_9
    return-void
.end method

.method protected doShare(Lcn/sharesdk/framework/Platform$ShareParams;)V
    .registers 5
    .param p1, "params"    # Lcn/sharesdk/framework/Platform$ShareParams;

    .prologue
    .line 73
    new-instance v0, Lcn/sharesdk/telegram/Telegram$1;

    invoke-direct {v0, p0, p1}, Lcn/sharesdk/telegram/Telegram$1;-><init>(Lcn/sharesdk/telegram/Telegram;Lcn/sharesdk/framework/Platform$ShareParams;)V

    .line 94
    new-instance v1, Lcn/sharesdk/telegram/a;

    invoke-direct {v1}, Lcn/sharesdk/telegram/a;-><init>()V

    .line 95
    invoke-virtual {v1, p1}, Lcn/sharesdk/telegram/a;->a(Lcn/sharesdk/framework/Platform$ShareParams;)V

    .line 96
    invoke-virtual {v1, v0}, Lcn/sharesdk/telegram/a;->a(Lcn/sharesdk/telegram/ActionListener;)V

    .line 97
    invoke-virtual {v1, p0}, Lcn/sharesdk/telegram/a;->a(Lcn/sharesdk/framework/Platform;)V

    .line 98
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcn/sharesdk/telegram/a;->show(Landroid/content/Context;Landroid/content/Intent;)V

    .line 99
    return-void
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
    .line 146
    .local p2, "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected filterShareContent(Lcn/sharesdk/framework/Platform$ShareParams;Ljava/util/HashMap;)Lcn/sharesdk/framework/b/b/f$a;
    .registers 6
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

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 153
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/sharesdk/framework/b/b/f$a;->b:Ljava/lang/String;

    .line 155
    :cond_15
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageData()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_25

    .line 156
    iget-object v1, v0, Lcn/sharesdk/framework/b/b/f$a;->f:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageData()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    :cond_24
    :goto_24
    return-object v0

    .line 157
    :cond_25
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_39

    .line 158
    iget-object v1, v0, Lcn/sharesdk/framework/b/b/f$a;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 159
    :cond_39
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 160
    iget-object v1, v0, Lcn/sharesdk/framework/b/b/f$a;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24
.end method

.method protected follow(Ljava/lang/String;)V
    .registers 4
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 102
    iget-object v0, p0, Lcn/sharesdk/telegram/Telegram;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_a

    .line 103
    iget-object v0, p0, Lcn/sharesdk/telegram/Telegram;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x6

    invoke-interface {v0, p0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 105
    :cond_a
    return-void
.end method

.method protected getBilaterals(IILjava/lang/String;)Ljava/util/HashMap;
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
    .line 142
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getFollowers(IILjava/lang/String;)Ljava/util/HashMap;
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
    .line 138
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
    .line 134
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getFriendList(IILjava/lang/String;)V
    .registers 6
    .param p1, "count"    # I
    .param p2, "page"    # I
    .param p3, "account"    # Ljava/lang/String;

    .prologue
    .line 120
    iget-object v0, p0, Lcn/sharesdk/telegram/Telegram;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_a

    .line 121
    iget-object v0, p0, Lcn/sharesdk/telegram/Telegram;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 123
    :cond_a
    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    sget-object v0, Lcn/sharesdk/telegram/Telegram;->NAME:Ljava/lang/String;

    return-object v0
.end method

.method protected getPlatformId()I
    .registers 2

    .prologue
    .line 38
    const/16 v0, 0x2f

    return v0
.end method

.method public getVersion()I
    .registers 2

    .prologue
    .line 34
    const/4 v0, 0x1

    return v0
.end method

.method public hasShareCallback()Z
    .registers 2

    .prologue
    .line 166
    const/4 v0, 0x0

    return v0
.end method

.method protected initDevInfo(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 27
    return-void
.end method

.method public isClientValid()Z
    .registers 2

    .prologue
    .line 53
    invoke-static {}, Lcn/sharesdk/telegram/a/a;->a()Lcn/sharesdk/telegram/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/sharesdk/telegram/a/a;->b()Z

    move-result v0

    .line 55
    if-eqz v0, :cond_c

    .line 56
    const/4 v0, 0x1

    .line 58
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method protected setNetworkDevinfo()V
    .registers 1

    .prologue
    .line 44
    return-void
.end method

.method protected timeline(IILjava/lang/String;)V
    .registers 6
    .param p1, "count"    # I
    .param p2, "page"    # I
    .param p3, "account"    # Ljava/lang/String;

    .prologue
    .line 108
    iget-object v0, p0, Lcn/sharesdk/telegram/Telegram;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_a

    .line 109
    iget-object v0, p0, Lcn/sharesdk/telegram/Telegram;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x7

    invoke-interface {v0, p0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 111
    :cond_a
    return-void
.end method

.method protected userInfor(Ljava/lang/String;)V
    .registers 4
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 114
    iget-object v0, p0, Lcn/sharesdk/telegram/Telegram;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_b

    .line 115
    iget-object v0, p0, Lcn/sharesdk/telegram/Telegram;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v1, 0x8

    invoke-interface {v0, p0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 117
    :cond_b
    return-void
.end method
