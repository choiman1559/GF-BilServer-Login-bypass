.class public Lcn/sharesdk/onekeyshare/OnekeySharePage;
.super Lcom/mob/tools/FakeActivity;
.source "OnekeySharePage.java"


# instance fields
.field private impl:Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;


# direct methods
.method public constructor <init>(Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;)V
    .registers 2
    .param p1, "impl"    # Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/mob/tools/FakeActivity;-><init>()V

    .line 25
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/OnekeySharePage;->impl:Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;

    .line 26
    return-void
.end method


# virtual methods
.method protected final formateShareData(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/framework/Platform$ShareParams;
    .registers 3
    .param p1, "platform"    # Lcn/sharesdk/framework/Platform;

    .prologue
    .line 68
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeySharePage;->impl:Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;

    invoke-virtual {v0, p1}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->formateShareData(Lcn/sharesdk/framework/Platform;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 69
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeySharePage;->impl:Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;

    invoke-virtual {v0, p1}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareDataToShareParams(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/framework/Platform$ShareParams;

    move-result-object v0

    .line 71
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method protected final getCallback()Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeySharePage;->impl:Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->callback:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method protected final getCustomerLogos()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/sharesdk/onekeyshare/CustomerLogo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeySharePage;->impl:Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->customerLogos:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected final getCustomizeCallback()Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeySharePage;->impl:Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->customizeCallback:Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;

    return-object v0
.end method

.method protected final getHiddenPlatforms()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeySharePage;->impl:Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->hiddenPlatforms:Ljava/util/HashMap;

    return-object v0
.end method

.method protected final getShareParamsMap()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeySharePage;->impl:Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareParamsMap:Ljava/util/HashMap;

    return-object v0
.end method

.method protected final isDialogMode()Z
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeySharePage;->impl:Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;

    iget-boolean v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->dialogMode:Z

    return v0
.end method

.method protected final isDisableSSO()Z
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeySharePage;->impl:Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;

    iget-boolean v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->disableSSO:Z

    return v0
.end method

.method protected final isSilent()Z
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeySharePage;->impl:Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;

    iget-boolean v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->silent:Z

    return v0
.end method

.method protected final isUseClientToShare(Lcn/sharesdk/framework/Platform;)Z
    .registers 3
    .param p1, "platform"    # Lcn/sharesdk/framework/Platform;

    .prologue
    .line 75
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeySharePage;->impl:Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;

    invoke-virtual {v0, p1}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->isUseClientToShare(Lcn/sharesdk/framework/Platform;)Z

    move-result v0

    return v0
.end method

.method protected final shareSilently(Lcn/sharesdk/framework/Platform;)V
    .registers 3
    .param p1, "platform"    # Lcn/sharesdk/framework/Platform;

    .prologue
    .line 64
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeySharePage;->impl:Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;

    invoke-virtual {v0, p1}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareSilently(Lcn/sharesdk/framework/Platform;)V

    .line 65
    return-void
.end method
