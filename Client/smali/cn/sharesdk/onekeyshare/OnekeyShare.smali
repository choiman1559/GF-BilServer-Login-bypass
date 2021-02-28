.class public Lcn/sharesdk/onekeyshare/OnekeyShare;
.super Ljava/lang/Object;
.source "OnekeyShare.java"


# instance fields
.field private params:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->params:Ljava/util/HashMap;

    .line 39
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->params:Ljava/util/HashMap;

    const-string v1, "customers"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->params:Ljava/util/HashMap;

    const-string v1, "hiddenPlatforms"

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    return-void
.end method


# virtual methods
.method public addHiddenPlatform(Ljava/lang/String;)V
    .registers 5
    .param p1, "platform"    # Ljava/lang/String;

    .prologue
    .line 209
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->params:Ljava/util/HashMap;

    const-string v2, "hiddenPlatforms"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 210
    .local v0, "hiddenPlatforms":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v0, p1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    return-void
.end method

.method public disableSSOWhenAuthorize()V
    .registers 4

    .prologue
    .line 198
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->params:Ljava/util/HashMap;

    const-string v1, "disableSSO"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    return-void
.end method

.method public getCallback()Lcn/sharesdk/framework/PlatformActionListener;
    .registers 3

    .prologue
    .line 173
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->params:Ljava/util/HashMap;

    const-string v1, "callback"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method public getShareContentCustomizeCallback()Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;
    .registers 3

    .prologue
    .line 183
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->params:Ljava/util/HashMap;

    const-string v1, "customizeCallback"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 3

    .prologue
    .line 68
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->params:Ljava/util/HashMap;

    const-string v1, "text"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->params:Ljava/util/HashMap;

    const-string v1, "text"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_16
    return-object v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public setAddress(Ljava/lang/String;)V
    .registers 4
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 45
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->params:Ljava/util/HashMap;

    const-string v1, "address"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    return-void
.end method

.method public setCallback(Lcn/sharesdk/framework/PlatformActionListener;)V
    .registers 4
    .param p1, "callback"    # Lcn/sharesdk/framework/PlatformActionListener;

    .prologue
    .line 168
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->params:Ljava/util/HashMap;

    const-string v1, "callback"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .registers 4
    .param p1, "comment"    # Ljava/lang/String;

    .prologue
    .line 104
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->params:Ljava/util/HashMap;

    const-string v1, "comment"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    return-void
.end method

.method public setCustomerLogo(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .registers 8
    .param p1, "logo"    # Landroid/graphics/Bitmap;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "ocl"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 188
    new-instance v0, Lcn/sharesdk/onekeyshare/CustomerLogo;

    invoke-direct {v0}, Lcn/sharesdk/onekeyshare/CustomerLogo;-><init>()V

    .line 189
    .local v0, "cl":Lcn/sharesdk/onekeyshare/CustomerLogo;
    iput-object p1, v0, Lcn/sharesdk/onekeyshare/CustomerLogo;->logo:Landroid/graphics/Bitmap;

    .line 190
    iput-object p2, v0, Lcn/sharesdk/onekeyshare/CustomerLogo;->label:Ljava/lang/String;

    .line 191
    iput-object p3, v0, Lcn/sharesdk/onekeyshare/CustomerLogo;->listener:Landroid/view/View$OnClickListener;

    .line 192
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->params:Ljava/util/HashMap;

    const-string v3, "customers"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 193
    .local v1, "customers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/sharesdk/onekeyshare/CustomerLogo;>;"
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    return-void
.end method

.method public setDialogMode(Z)V
    .registers 5
    .param p1, "isDialog"    # Z

    .prologue
    .line 143
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->params:Ljava/util/HashMap;

    const-string v1, "dialogMode"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    return-void
.end method

.method public setExecuteUrl(Ljava/lang/String;)V
    .registers 4
    .param p1, "executeurl"    # Ljava/lang/String;

    .prologue
    .line 158
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->params:Ljava/util/HashMap;

    const-string v1, "executeurl"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .registers 4
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 99
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->params:Ljava/util/HashMap;

    const-string v1, "filePath"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    return-void
.end method

.method public setImageArray([Ljava/lang/String;)V
    .registers 4
    .param p1, "imageArray"    # [Ljava/lang/String;

    .prologue
    .line 225
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->params:Ljava/util/HashMap;

    const-string v1, "imageArray"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    return-void
.end method

.method public setImageData(Ljava/lang/String;)V
    .registers 4
    .param p1, "iamgeData"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 88
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->params:Ljava/util/HashMap;

    const-string v1, "imageData"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    :cond_d
    return-void
.end method

.method public setImagePath(Ljava/lang/String;)V
    .registers 4
    .param p1, "imagePath"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 74
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->params:Ljava/util/HashMap;

    const-string v1, "imagePath"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :cond_d
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .registers 4
    .param p1, "imageUrl"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 81
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->params:Ljava/util/HashMap;

    const-string v1, "imageUrl"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    :cond_d
    return-void
.end method

.method public setInstallUrl(Ljava/lang/String;)V
    .registers 4
    .param p1, "installurl"    # Ljava/lang/String;

    .prologue
    .line 153
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->params:Ljava/util/HashMap;

    const-string v1, "installurl"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    return-void
.end method

.method public setLatitude(F)V
    .registers 5
    .param p1, "latitude"    # F

    .prologue
    .line 129
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->params:Ljava/util/HashMap;

    const-string v1, "latitude"

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    return-void
.end method

.method public setLongitude(F)V
    .registers 5
    .param p1, "longitude"    # F

    .prologue
    .line 134
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->params:Ljava/util/HashMap;

    const-string v1, "longitude"

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    return-void
.end method

.method public setMusicUrl(Ljava/lang/String;)V
    .registers 4
    .param p1, "musicUrl"    # Ljava/lang/String;

    .prologue
    .line 163
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->params:Ljava/util/HashMap;

    const-string v1, "musicUrl"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    return-void
.end method

.method public setPlatform(Ljava/lang/String;)V
    .registers 4
    .param p1, "platform"    # Ljava/lang/String;

    .prologue
    .line 148
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->params:Ljava/util/HashMap;

    const-string v1, "platform"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    return-void
.end method

.method public setShareContentCustomizeCallback(Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;)V
    .registers 4
    .param p1, "callback"    # Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;

    .prologue
    .line 178
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->params:Ljava/util/HashMap;

    const-string v1, "customizeCallback"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    return-void
.end method

.method public setShareToTencentWeiboWhenPerformingQQOrQZoneSharing()V
    .registers 4

    .prologue
    .line 230
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->params:Ljava/util/HashMap;

    const-string v1, "isShareTencentWeibo"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    return-void
.end method

.method public setSilent(Z)V
    .registers 5
    .param p1, "silent"    # Z

    .prologue
    .line 139
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->params:Ljava/util/HashMap;

    const-string v1, "silent"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    return-void
.end method

.method public setSite(Ljava/lang/String;)V
    .registers 4
    .param p1, "site"    # Ljava/lang/String;

    .prologue
    .line 109
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->params:Ljava/util/HashMap;

    const-string v1, "site"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    return-void
.end method

.method public setSiteUrl(Ljava/lang/String;)V
    .registers 4
    .param p1, "siteUrl"    # Ljava/lang/String;

    .prologue
    .line 114
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->params:Ljava/util/HashMap;

    const-string v1, "siteUrl"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 4
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 63
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->params:Ljava/util/HashMap;

    const-string v1, "text"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    return-void
.end method

.method public setTheme(Lcn/sharesdk/onekeyshare/OnekeyShareTheme;)V
    .registers 5
    .param p1, "theme"    # Lcn/sharesdk/onekeyshare/OnekeyShareTheme;

    .prologue
    .line 235
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->params:Ljava/util/HashMap;

    const-string v1, "theme"

    invoke-virtual {p1}, Lcn/sharesdk/onekeyshare/OnekeyShareTheme;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 4
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 53
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->params:Ljava/util/HashMap;

    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    return-void
.end method

.method public setTitleUrl(Ljava/lang/String;)V
    .registers 4
    .param p1, "titleUrl"    # Ljava/lang/String;

    .prologue
    .line 58
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->params:Ljava/util/HashMap;

    const-string v1, "titleUrl"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .registers 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 94
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->params:Ljava/util/HashMap;

    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    return-void
.end method

.method public setVenueDescription(Ljava/lang/String;)V
    .registers 4
    .param p1, "venueDescription"    # Ljava/lang/String;

    .prologue
    .line 124
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->params:Ljava/util/HashMap;

    const-string v1, "venueDescription"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    return-void
.end method

.method public setVenueName(Ljava/lang/String;)V
    .registers 4
    .param p1, "venueName"    # Ljava/lang/String;

    .prologue
    .line 119
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->params:Ljava/util/HashMap;

    const-string v1, "venueName"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    return-void
.end method

.method public setVideoUrl(Ljava/lang/String;)V
    .registers 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 203
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->params:Ljava/util/HashMap;

    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->params:Ljava/util/HashMap;

    const-string v1, "shareType"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    return-void
.end method

.method public setViewToShare(Landroid/view/View;)V
    .registers 6
    .param p1, "viewToShare"    # Landroid/view/View;

    .prologue
    .line 216
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-static {p1, v2, v3}, Lcom/mob/tools/utils/BitmapHelper;->captureView(Landroid/view/View;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 217
    .local v0, "bm":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->params:Ljava/util/HashMap;

    const-string v3, "viewToShare"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_13} :catch_14

    .line 221
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    :goto_13
    return-void

    .line 218
    :catch_14
    move-exception v1

    .line 219
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_13
.end method

.method public show(Landroid/content/Context;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 240
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 241
    .local v1, "shareParamsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->params:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 243
    instance-of v4, p1, Lcom/mob/MobApplication;

    if-nez v4, :cond_16

    .line 244
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/mob/MobSDK;->init(Landroid/content/Context;)V

    .line 248
    :cond_16
    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-static {v4, v6}, Lcn/sharesdk/framework/ShareSDK;->logDemoEvent(ILcn/sharesdk/framework/Platform;)V

    .line 250
    const/4 v0, 0x0

    .line 252
    .local v0, "iTheme":I
    :try_start_1c
    const-string v4, "theme"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mob/tools/utils/ResHelper;->parseInt(Ljava/lang/String;)I
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_29} :catch_b2

    move-result v0

    .line 254
    :goto_2a
    invoke-static {v0}, Lcn/sharesdk/onekeyshare/OnekeyShareTheme;->fromValue(I)Lcn/sharesdk/onekeyshare/OnekeyShareTheme;

    move-result-object v2

    .line 255
    .local v2, "theme":Lcn/sharesdk/onekeyshare/OnekeyShareTheme;
    invoke-virtual {v2}, Lcn/sharesdk/onekeyshare/OnekeyShareTheme;->getImpl()Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;

    move-result-object v3

    .line 257
    .local v3, "themeImpl":Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;
    invoke-virtual {v3, v1}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->setShareParamsMap(Ljava/util/HashMap;)V

    .line 258
    const-string v4, "dialogMode"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b0

    const-string v4, "dialogMode"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    :goto_49
    invoke-virtual {v3, v4}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->setDialogMode(Z)V

    .line 259
    const-string v4, "silent"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_60

    const-string v4, "silent"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    :cond_60
    invoke-virtual {v3, v5}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->setSilent(Z)V

    .line 260
    const-string v4, "customers"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->setCustomerLogos(Ljava/util/ArrayList;)V

    .line 261
    const-string v4, "hiddenPlatforms"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->setHiddenPlatforms(Ljava/util/HashMap;)V

    .line 262
    const-string v4, "callback"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/sharesdk/framework/PlatformActionListener;

    invoke-virtual {v3, v4}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->setPlatformActionListener(Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 263
    const-string v4, "customizeCallback"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;

    invoke-virtual {v3, v4}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->setShareContentCustomizeCallback(Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;)V

    .line 264
    const-string v4, "disableSSO"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a8

    const-string v4, "disableSSO"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_a8

    .line 265
    invoke-virtual {v3}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->disableSSO()V

    .line 268
    :cond_a8
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->show(Landroid/content/Context;)V

    .line 269
    return-void

    :cond_b0
    move v4, v5

    .line 258
    goto :goto_49

    .line 253
    .end local v2    # "theme":Lcn/sharesdk/onekeyshare/OnekeyShareTheme;
    .end local v3    # "themeImpl":Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;
    :catch_b2
    move-exception v4

    goto/16 :goto_2a
.end method
