.class public Lcn/sharesdk/onekeyshare/themes/classic/ClassicTheme;
.super Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;
.source "ClassicTheme.java"


# static fields
.field private static final MIN_CLICK_DELAY_TIME:I = 0x3e8

.field private static lastTime:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;-><init>()V

    return-void
.end method


# virtual methods
.method protected showEditPage(Landroid/content/Context;Lcn/sharesdk/framework/Platform;Lcn/sharesdk/framework/Platform$ShareParams;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "platform"    # Lcn/sharesdk/framework/Platform;
    .param p3, "sp"    # Lcn/sharesdk/framework/Platform$ShareParams;

    .prologue
    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v0, v2, Landroid/content/res/Configuration;->orientation:I

    .line 50
    .local v0, "orientation":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1d

    .line 51
    new-instance v1, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;

    invoke-direct {v1, p0}, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;-><init>(Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;)V

    .line 55
    .local v1, "page":Lcn/sharesdk/onekeyshare/themes/classic/EditPage;
    :goto_12
    invoke-virtual {v1, p2}, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->setPlatform(Lcn/sharesdk/framework/Platform;)V

    .line 56
    invoke-virtual {v1, p3}, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->setShareParams(Lcn/sharesdk/framework/Platform$ShareParams;)V

    .line 57
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->show(Landroid/content/Context;Landroid/content/Intent;)V

    .line 58
    return-void

    .line 53
    .end local v1    # "page":Lcn/sharesdk/onekeyshare/themes/classic/EditPage;
    :cond_1d
    new-instance v1, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;

    invoke-direct {v1, p0}, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;-><init>(Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;)V

    .restart local v1    # "page":Lcn/sharesdk/onekeyshare/themes/classic/EditPage;
    goto :goto_12
.end method

.method protected showPlatformPage(Landroid/content/Context;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v2, v4, Landroid/content/res/Configuration;->orientation:I

    .line 33
    .local v2, "orientation":I
    const/4 v4, 0x1

    if-ne v2, v4, :cond_27

    .line 34
    new-instance v3, Lcn/sharesdk/onekeyshare/themes/classic/port/PlatformPagePort;

    invoke-direct {v3, p0}, Lcn/sharesdk/onekeyshare/themes/classic/port/PlatformPagePort;-><init>(Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;)V

    .line 38
    .local v3, "page":Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;
    :goto_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 39
    .local v0, "currentTime":J
    sget-wide v4, Lcn/sharesdk/onekeyshare/themes/classic/ClassicTheme;->lastTime:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x3e8

    cmp-long v4, v4, v6

    if-ltz v4, :cond_24

    .line 40
    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->show(Landroid/content/Context;Landroid/content/Intent;)V

    .line 42
    :cond_24
    sput-wide v0, Lcn/sharesdk/onekeyshare/themes/classic/ClassicTheme;->lastTime:J

    .line 44
    return-void

    .line 36
    .end local v0    # "currentTime":J
    .end local v3    # "page":Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;
    :cond_27
    new-instance v3, Lcn/sharesdk/onekeyshare/themes/classic/land/PlatformPageLand;

    invoke-direct {v3, p0}, Lcn/sharesdk/onekeyshare/themes/classic/land/PlatformPageLand;-><init>(Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;)V

    .restart local v3    # "page":Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;
    goto :goto_12
.end method
