.class public abstract Lcn/sharesdk/framework/Platform;
.super Ljava/lang/Object;
.source "Platform.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/sharesdk/framework/Platform$ShareParams;
    }
.end annotation


# static fields
.field public static final ACTION_AUTHORIZING:I = 0x1

.field protected static final ACTION_CUSTOMER:I = 0xa0000

.field public static final ACTION_FOLLOWING_USER:I = 0x6

.field protected static final ACTION_GETTING_BILATERAL_LIST:I = 0xa

.field protected static final ACTION_GETTING_FOLLOWER_LIST:I = 0xb

.field public static final ACTION_GETTING_FRIEND_LIST:I = 0x2

.field public static final ACTION_SENDING_DIRECT_MESSAGE:I = 0x5

.field public static final ACTION_SHARE:I = 0x9

.field public static final ACTION_TIMELINE:I = 0x7

.field public static final ACTION_USER_INFOR:I = 0x8

.field public static final CUSTOMER_ACTION_MASK:I = 0xffff

.field public static final SHARE_APPS:I = 0x7

.field public static final SHARE_EMOJI:I = 0x9

.field public static final SHARE_FILE:I = 0x8

.field public static final SHARE_IMAGE:I = 0x2

.field public static final SHARE_MUSIC:I = 0x5

.field public static final SHARE_TEXT:I = 0x1

.field public static final SHARE_VIDEO:I = 0x6

.field public static final SHARE_WEBPAGE:I = 0x4

.field public static final SHARE_WXMINIPROGRAM:I = 0xb

.field public static final SHARE_ZHIFUBAO:I = 0xa


# instance fields
.field private a:Lcn/sharesdk/framework/c;

.field protected final db:Lcn/sharesdk/framework/PlatformDb;

.field protected listener:Lcn/sharesdk/framework/PlatformActionListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance v0, Lcn/sharesdk/framework/c;

    invoke-direct {v0, p0}, Lcn/sharesdk/framework/c;-><init>(Lcn/sharesdk/framework/Platform;)V

    iput-object v0, p0, Lcn/sharesdk/framework/Platform;->a:Lcn/sharesdk/framework/c;

    .line 106
    iget-object v0, p0, Lcn/sharesdk/framework/Platform;->a:Lcn/sharesdk/framework/c;

    invoke-virtual {v0}, Lcn/sharesdk/framework/c;->g()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/framework/Platform;->db:Lcn/sharesdk/framework/PlatformDb;

    .line 107
    iget-object v0, p0, Lcn/sharesdk/framework/Platform;->a:Lcn/sharesdk/framework/c;

    invoke-virtual {v0}, Lcn/sharesdk/framework/c;->i()Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/framework/Platform;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    .line 108
    return-void
.end method


# virtual methods
.method public SSOSetting(Z)V
    .registers 3
    .param p1, "disable"    # Z

    .prologue
    .line 190
    iget-object v0, p0, Lcn/sharesdk/framework/Platform;->a:Lcn/sharesdk/framework/c;

    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/c;->a(Z)V

    .line 191
    return-void
.end method

.method a()V
    .registers 3

    .prologue
    .line 111
    iget-object v0, p0, Lcn/sharesdk/framework/Platform;->a:Lcn/sharesdk/framework/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/c;->a(Z)V

    .line 112
    iget-object v0, p0, Lcn/sharesdk/framework/Platform;->a:Lcn/sharesdk/framework/c;

    invoke-virtual {p0}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/c;->a(Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method protected afterRegister(ILjava/lang/Object;)V
    .registers 4
    .param p1, "action"    # I
    .param p2, "extra"    # Ljava/lang/Object;

    .prologue
    .line 343
    iget-object v0, p0, Lcn/sharesdk/framework/Platform;->a:Lcn/sharesdk/framework/c;

    invoke-virtual {v0, p1, p2}, Lcn/sharesdk/framework/c;->b(ILjava/lang/Object;)V

    .line 344
    return-void
.end method

.method public authorize()V
    .registers 2

    .prologue
    .line 204
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/sharesdk/framework/Platform;->authorize([Ljava/lang/String;)V

    .line 205
    return-void
.end method

.method public authorize([Ljava/lang/String;)V
    .registers 3
    .param p1, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 209
    iget-object v0, p0, Lcn/sharesdk/framework/Platform;->a:Lcn/sharesdk/framework/c;

    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/c;->a([Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method b()Z
    .registers 2

    .prologue
    .line 199
    iget-object v0, p0, Lcn/sharesdk/framework/Platform;->a:Lcn/sharesdk/framework/c;

    invoke-virtual {v0}, Lcn/sharesdk/framework/c;->f()Z

    move-result v0

    return v0
.end method

.method protected abstract checkAuthorize(ILjava/lang/Object;)Z
.end method

.method protected copyDevinfo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "dst"    # Ljava/lang/String;

    .prologue
    .line 118
    invoke-static {p1, p2}, Lcn/sharesdk/framework/ShareSDK;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method protected copyNetworkDevinfo(II)V
    .registers 3
    .param p1, "src"    # I
    .param p2, "dst"    # I

    .prologue
    .line 122
    invoke-static {p1, p2}, Lcn/sharesdk/framework/ShareSDK;->a(II)V

    .line 123
    return-void
.end method

.method public customerProtocol(Ljava/lang/String;Ljava/lang/String;SLjava/util/HashMap;Ljava/util/HashMap;)V
    .registers 12
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "customerAction"    # S
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "S",
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
    .line 334
    .local p4, "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p5, "filePathes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcn/sharesdk/framework/Platform;->a:Lcn/sharesdk/framework/c;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcn/sharesdk/framework/c;->a(Ljava/lang/String;Ljava/lang/String;SLjava/util/HashMap;Ljava/util/HashMap;)V

    .line 335
    return-void
.end method

.method protected abstract doAuthorize([Ljava/lang/String;)V
.end method

.method protected abstract doCustomerProtocol(Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;Ljava/util/HashMap;)V
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
.end method

.method protected abstract doShare(Lcn/sharesdk/framework/Platform$ShareParams;)V
.end method

.method protected abstract filterFriendshipInfo(ILjava/util/HashMap;)Ljava/util/HashMap;
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
.end method

.method protected abstract filterShareContent(Lcn/sharesdk/framework/Platform$ShareParams;Ljava/util/HashMap;)Lcn/sharesdk/framework/b/b/f$a;
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
.end method

.method protected abstract follow(Ljava/lang/String;)V
.end method

.method public followFriend(Ljava/lang/String;)V
    .registers 3
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 244
    iget-object v0, p0, Lcn/sharesdk/framework/Platform;->a:Lcn/sharesdk/framework/c;

    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/c;->b(Ljava/lang/String;)V

    .line 245
    return-void
.end method

.method protected abstract getBilaterals(IILjava/lang/String;)Ljava/util/HashMap;
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
.end method

.method public getDb()Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 348
    iget-object v0, p0, Lcn/sharesdk/framework/Platform;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method public getDevinfo(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "field"    # Ljava/lang/String;

    .prologue
    .line 126
    invoke-virtual {p0}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcn/sharesdk/framework/Platform;->getDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "field"    # Ljava/lang/String;

    .prologue
    .line 130
    invoke-static {p1, p2}, Lcn/sharesdk/framework/ShareSDK;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getFollowers(IILjava/lang/String;)Ljava/util/HashMap;
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
.end method

.method protected abstract getFollowings(IILjava/lang/String;)Ljava/util/HashMap;
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
.end method

.method protected abstract getFriendList(IILjava/lang/String;)V
.end method

.method public getId()I
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, Lcn/sharesdk/framework/Platform;->a:Lcn/sharesdk/framework/c;

    invoke-virtual {v0}, Lcn/sharesdk/framework/c;->a()I

    move-result v0

    return v0
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method protected getNetworkDevinfo(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "platformId"    # I
    .param p2, "onlineField"    # Ljava/lang/String;
    .param p3, "offlineField"    # Ljava/lang/String;

    .prologue
    .line 139
    iget-object v0, p0, Lcn/sharesdk/framework/Platform;->a:Lcn/sharesdk/framework/c;

    invoke-virtual {v0, p1, p2, p3}, Lcn/sharesdk/framework/c;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "onlineField"    # Ljava/lang/String;
    .param p2, "offlineField"    # Ljava/lang/String;

    .prologue
    .line 134
    invoke-virtual {p0}, Lcn/sharesdk/framework/Platform;->getPlatformId()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcn/sharesdk/framework/Platform;->getNetworkDevinfo(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlatformActionListener()Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 171
    iget-object v0, p0, Lcn/sharesdk/framework/Platform;->a:Lcn/sharesdk/framework/c;

    invoke-virtual {v0}, Lcn/sharesdk/framework/c;->c()Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getPlatformId()I
.end method

.method public getShortLintk(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "checkHref"    # Z

    .prologue
    .line 358
    iget-object v0, p0, Lcn/sharesdk/framework/Platform;->a:Lcn/sharesdk/framework/c;

    invoke-virtual {v0, p1, p2}, Lcn/sharesdk/framework/c;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSortId()I
    .registers 2

    .prologue
    .line 158
    iget-object v0, p0, Lcn/sharesdk/framework/Platform;->a:Lcn/sharesdk/framework/c;

    invoke-virtual {v0}, Lcn/sharesdk/framework/c;->b()I

    move-result v0

    return v0
.end method

.method public getTimeLine(Ljava/lang/String;II)V
    .registers 5
    .param p1, "account"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "page"    # I

    .prologue
    .line 251
    iget-object v0, p0, Lcn/sharesdk/framework/Platform;->a:Lcn/sharesdk/framework/c;

    invoke-virtual {v0, p1, p2, p3}, Lcn/sharesdk/framework/c;->a(Ljava/lang/String;II)V

    .line 252
    return-void
.end method

.method public abstract getVersion()I
.end method

.method public abstract hasShareCallback()Z
.end method

.method protected abstract initDevInfo(Ljava/lang/String;)V
.end method

.method protected innerAuthorize(ILjava/lang/Object;)V
    .registers 4
    .param p1, "action"    # I
    .param p2, "extra"    # Ljava/lang/Object;

    .prologue
    .line 222
    iget-object v0, p0, Lcn/sharesdk/framework/Platform;->a:Lcn/sharesdk/framework/c;

    invoke-virtual {v0, p1, p2}, Lcn/sharesdk/framework/c;->a(ILjava/lang/Object;)V

    .line 223
    return-void
.end method

.method public isAuthValid()Z
    .registers 2

    .prologue
    .line 176
    iget-object v0, p0, Lcn/sharesdk/framework/Platform;->a:Lcn/sharesdk/framework/c;

    invoke-virtual {v0}, Lcn/sharesdk/framework/c;->d()Z

    move-result v0

    return v0
.end method

.method public isClientValid()Z
    .registers 2

    .prologue
    .line 181
    const/4 v0, 0x0

    return v0
.end method

.method public isSSODisable()Z
    .registers 2

    .prologue
    .line 195
    iget-object v0, p0, Lcn/sharesdk/framework/Platform;->a:Lcn/sharesdk/framework/c;

    invoke-virtual {v0}, Lcn/sharesdk/framework/c;->e()Z

    move-result v0

    return v0
.end method

.method public listFriend(IILjava/lang/String;)V
    .registers 5
    .param p1, "count"    # I
    .param p2, "page"    # I
    .param p3, "account"    # Ljava/lang/String;

    .prologue
    .line 275
    iget-object v0, p0, Lcn/sharesdk/framework/Platform;->a:Lcn/sharesdk/framework/c;

    invoke-virtual {v0, p1, p2, p3}, Lcn/sharesdk/framework/c;->a(IILjava/lang/String;)V

    .line 276
    return-void
.end method

.method public removeAccount(Z)V
    .registers 3
    .param p1, "removeCookie"    # Z

    .prologue
    .line 353
    iget-object v0, p0, Lcn/sharesdk/framework/Platform;->a:Lcn/sharesdk/framework/c;

    invoke-virtual {v0}, Lcn/sharesdk/framework/c;->h()V

    .line 354
    invoke-static {p1}, Lcn/sharesdk/framework/ShareSDK;->removeCookieOnAuthorize(Z)V

    .line 355
    return-void
.end method

.method protected abstract setNetworkDevinfo()V
.end method

.method public setPlatformActionListener(Lcn/sharesdk/framework/PlatformActionListener;)V
    .registers 3
    .param p1, "l"    # Lcn/sharesdk/framework/PlatformActionListener;

    .prologue
    .line 167
    iget-object v0, p0, Lcn/sharesdk/framework/Platform;->a:Lcn/sharesdk/framework/c;

    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/c;->a(Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 168
    return-void
.end method

.method public share(Lcn/sharesdk/framework/Platform$ShareParams;)V
    .registers 3
    .param p1, "params"    # Lcn/sharesdk/framework/Platform$ShareParams;

    .prologue
    .line 236
    iget-object v0, p0, Lcn/sharesdk/framework/Platform;->a:Lcn/sharesdk/framework/c;

    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/c;->a(Lcn/sharesdk/framework/Platform$ShareParams;)V

    .line 237
    return-void
.end method

.method public showUser(Ljava/lang/String;)V
    .registers 3
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 262
    iget-object v0, p0, Lcn/sharesdk/framework/Platform;->a:Lcn/sharesdk/framework/c;

    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/c;->c(Ljava/lang/String;)V

    .line 263
    return-void
.end method

.method protected abstract timeline(IILjava/lang/String;)V
.end method

.method protected uploadImageToFileServer(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .registers 3
    .param p1, "imageData"    # Landroid/graphics/Bitmap;

    .prologue
    .line 371
    iget-object v0, p0, Lcn/sharesdk/framework/Platform;->a:Lcn/sharesdk/framework/c;

    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/c;->a(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected uploadImageToFileServer(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "imagePath"    # Ljava/lang/String;

    .prologue
    .line 366
    iget-object v0, p0, Lcn/sharesdk/framework/Platform;->a:Lcn/sharesdk/framework/c;

    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract userInfor(Ljava/lang/String;)V
.end method
