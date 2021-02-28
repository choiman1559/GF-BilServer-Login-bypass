.class public Lcn/sharesdk/onekeyshare/themes/classic/EditPage;
.super Lcn/sharesdk/onekeyshare/OnekeySharePage;
.source "EditPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;
.implements Ljava/lang/Runnable;


# instance fields
.field protected aivThumb:Lcom/mob/tools/gui/AsyncImageView;

.field protected etContent:Landroid/widget/EditText;

.field private impl:Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;

.field protected llBottom:Landroid/widget/LinearLayout;

.field protected llPage:Landroid/widget/LinearLayout;

.field protected maxBodyHeight:I

.field protected platform:Lcn/sharesdk/framework/Platform;

.field protected rlThumb:Landroid/widget/RelativeLayout;

.field protected rlTitle:Landroid/widget/RelativeLayout;

.field protected sp:Lcn/sharesdk/framework/Platform$ShareParams;

.field protected svContent:Landroid/widget/ScrollView;

.field protected thumb:Landroid/graphics/Bitmap;

.field protected tvAt:Landroid/widget/TextView;

.field protected tvCancel:Landroid/widget/TextView;

.field protected tvShare:Landroid/widget/TextView;

.field protected tvTextCouter:Landroid/widget/TextView;

.field protected xvRemove:Lcn/sharesdk/onekeyshare/themes/classic/XView;


# direct methods
.method public constructor <init>(Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;)V
    .registers 2
    .param p1, "impl"    # Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcn/sharesdk/onekeyshare/OnekeySharePage;-><init>(Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;)V

    .line 72
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->impl:Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;

    .line 73
    return-void
.end method

.method private cancelAndFinish()V
    .registers 3

    .prologue
    .line 107
    const/4 v0, 0x5

    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->platform:Lcn/sharesdk/framework/Platform;

    invoke-static {v0, v1}, Lcn/sharesdk/framework/ShareSDK;->logDemoEvent(ILcn/sharesdk/framework/Platform;)V

    .line 108
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->finish()V

    .line 109
    return-void
.end method

.method private getJoinSelectedUser(Ljava/util/HashMap;)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v5, 0x0

    .line 162
    if-eqz p1, :cond_53

    const-string v4, "selected"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_53

    .line 164
    const-string v4, "selected"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 165
    .local v3, "selected":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, "platform"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/sharesdk/framework/Platform;

    invoke-virtual {v4}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "platform":Ljava/lang/String;
    const-string v4, "FacebookMessenger"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    move-object v4, v5

    .line 175
    .end local v0    # "platform":Ljava/lang/String;
    .end local v3    # "selected":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_28
    return-object v4

    .line 169
    .restart local v0    # "platform":Ljava/lang/String;
    .restart local v3    # "selected":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_32
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3d

    .line 173
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_28

    .line 170
    :cond_3d
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 171
    .local v2, "sel":Ljava/lang/String;
    const/16 v5, 0x40

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_32

    .end local v0    # "platform":Ljava/lang/String;
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .end local v2    # "sel":Ljava/lang/String;
    .end local v3    # "selected":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_53
    move-object v4, v5

    .line 175
    goto :goto_28
.end method

.method private removeThumb()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 135
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->sp:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/Platform$ShareParams;->setImageArray([Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->sp:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/Platform$ShareParams;->setImageData(Landroid/graphics/Bitmap;)V

    .line 137
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->sp:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/Platform$ShareParams;->setImagePath(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->sp:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/Platform$ShareParams;->setImageUrl(Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method private shareAndFinish()V
    .registers 4

    .prologue
    .line 113
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->activity:Landroid/app/Activity;

    const-string v2, "ssdk_oks_sharing"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 114
    .local v0, "resId":I
    if-lez v0, :cond_14

    .line 115
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->activity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 118
    :cond_14
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->isDisableSSO()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 119
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->platform:Lcn/sharesdk/framework/Platform;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcn/sharesdk/framework/Platform;->SSOSetting(Z)V

    .line 121
    :cond_20
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->platform:Lcn/sharesdk/framework/Platform;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->getCallback()Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/sharesdk/framework/Platform;->setPlatformActionListener(Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 122
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->platform:Lcn/sharesdk/framework/Platform;

    iget-object v2, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->sp:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v1, v2}, Lcn/sharesdk/framework/Platform;->share(Lcn/sharesdk/framework/Platform$ShareParams;)V

    .line 124
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->finish()V

    .line 125
    return-void
.end method

.method private showFriendList()V
    .registers 5

    .prologue
    .line 144
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v0, v2, Landroid/content/res/Configuration;->orientation:I

    .line 145
    .local v0, "orientation":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_24

    .line 146
    new-instance v1, Lcn/sharesdk/onekeyshare/themes/classic/port/FriendListPagePort;

    iget-object v2, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->impl:Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;

    invoke-direct {v1, v2}, Lcn/sharesdk/onekeyshare/themes/classic/port/FriendListPagePort;-><init>(Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;)V

    .line 150
    .local v1, "page":Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;
    :goto_16
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->platform:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v1, v2}, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->setPlatform(Lcn/sharesdk/framework/Platform;)V

    .line 151
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p0}, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->showForResult(Landroid/content/Context;Landroid/content/Intent;Lcom/mob/tools/FakeActivity;)V

    .line 152
    return-void

    .line 148
    .end local v1    # "page":Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;
    :cond_24
    new-instance v1, Lcn/sharesdk/onekeyshare/themes/classic/land/FriendListPageLand;

    iget-object v2, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->impl:Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;

    invoke-direct {v1, v2}, Lcn/sharesdk/onekeyshare/themes/classic/land/FriendListPageLand;-><init>(Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;)V

    .restart local v1    # "page":Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;
    goto :goto_16
.end method

.method private showThumb(Landroid/graphics/Bitmap;)V
    .registers 5
    .param p1, "pic"    # Landroid/graphics/Bitmap;

    .prologue
    .line 129
    new-instance v0, Lcn/sharesdk/onekeyshare/themes/classic/PicViewerPage;

    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->impl:Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;

    invoke-direct {v0, v1}, Lcn/sharesdk/onekeyshare/themes/classic/PicViewerPage;-><init>(Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;)V

    .line 130
    .local v0, "page":Lcn/sharesdk/onekeyshare/themes/classic/PicViewerPage;
    invoke-virtual {v0, p1}, Lcn/sharesdk/onekeyshare/themes/classic/PicViewerPage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 131
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->activity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/onekeyshare/themes/classic/PicViewerPage;->show(Landroid/content/Context;Landroid/content/Intent;)V

    .line 132
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 231
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 235
    return-void
.end method

.method protected isShowAtUserLayout(Ljava/lang/String;)Z
    .registers 3
    .param p1, "platformName"    # Ljava/lang/String;

    .prologue
    .line 179
    const-string v0, "SinaWeibo"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 180
    const-string v0, "TencentWeibo"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 181
    const-string v0, "Facebook"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 182
    const-string v0, "Twitter"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 179
    const/4 v0, 0x0

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x1

    goto :goto_21
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 186
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->tvCancel:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 187
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->cancelAndFinish()V

    .line 202
    :cond_c
    :goto_c
    return-void

    .line 188
    :cond_d
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->tvShare:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 189
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->sp:Lcn/sharesdk/framework/Platform$ShareParams;

    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->etContent:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/Platform$ShareParams;->setText(Ljava/lang/String;)V

    .line 190
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->shareAndFinish()V

    goto :goto_c

    .line 191
    :cond_2c
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->aivThumb:Lcom/mob/tools/gui/AsyncImageView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 192
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->thumb:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->showThumb(Landroid/graphics/Bitmap;)V

    goto :goto_c

    .line 193
    :cond_3a
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->xvRemove:Lcn/sharesdk/onekeyshare/themes/classic/XView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 194
    iput v2, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->maxBodyHeight:I

    .line 195
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->rlThumb:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 196
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->llPage:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v2}, Landroid/widget/LinearLayout;->measure(II)V

    .line 197
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->etContent:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0, v0, v2, v2, v2}, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 198
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->removeThumb()V

    goto :goto_c

    .line 199
    :cond_5d
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->tvAt:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 200
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->showFriendList()V

    goto :goto_c
.end method

.method public onCreate()V
    .registers 4

    .prologue
    .line 101
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const v2, -0xc0c0d

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 102
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 238
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/DeviceHelper;->hideSoftInput(Landroid/view/View;)V

    .line 239
    invoke-super {p0}, Lcn/sharesdk/onekeyshare/OnekeySharePage;->onPause()V

    .line 240
    return-void
.end method

.method public onResult(Ljava/util/HashMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 155
    .local p1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1}, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->getJoinSelectedUser(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "atText":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 157
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->etContent:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 159
    :cond_f
    return-void
.end method

.method protected onSetTheme(IZ)I
    .registers 8
    .param p1, "resid"    # I
    .param p2, "atLaunch"    # Z

    .prologue
    const/4 v1, 0x1

    .line 85
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->isDialogMode()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 86
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 87
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_24

    .line 89
    :try_start_12
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->activity:Landroid/app/Activity;

    const-string v1, "setFinishOnTouchOutside"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_24} :catch_38

    .line 92
    :cond_24
    :goto_24
    const v0, 0x103000b

    .line 97
    :goto_27
    return v0

    .line 94
    :cond_28
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 97
    invoke-super {p0, p1, p2}, Lcn/sharesdk/onekeyshare/OnekeySharePage;->onSetTheme(IZ)I

    move-result v0

    goto :goto_27

    .line 90
    :catch_38
    move-exception v0

    goto :goto_24
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 7
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 205
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->tvTextCouter:Landroid/widget/TextView;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->maxBodyHeight:I

    if-nez v0, :cond_27

    .line 208
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->llPage:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->rlTitle:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->llBottom:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->maxBodyHeight:I

    .line 211
    :cond_27
    iget v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->maxBodyHeight:I

    if-lez v0, :cond_30

    .line 212
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->svContent:Landroid/widget/ScrollView;

    invoke-virtual {v0, p0}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 214
    :cond_30
    return-void
.end method

.method public run()V
    .registers 5

    .prologue
    .line 218
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->svContent:Landroid/widget/ScrollView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 219
    .local v0, "height":I
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->svContent:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-static {v2}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 220
    .local v1, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iget v2, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->maxBodyHeight:I

    if-le v0, v2, :cond_2b

    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget v3, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->maxBodyHeight:I

    if-eq v2, v3, :cond_2b

    .line 221
    iget v2, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->maxBodyHeight:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 222
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->svContent:Landroid/widget/ScrollView;

    invoke-virtual {v2, v1}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 227
    :cond_2a
    :goto_2a
    return-void

    .line 223
    :cond_2b
    iget v2, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->maxBodyHeight:I

    if-ge v0, v2, :cond_2a

    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget v3, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->maxBodyHeight:I

    if-ne v2, v3, :cond_2a

    .line 224
    const/4 v2, -0x2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 225
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->svContent:Landroid/widget/ScrollView;

    invoke-virtual {v2, v1}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2a
.end method

.method public setPlatform(Lcn/sharesdk/framework/Platform;)V
    .registers 2
    .param p1, "platform"    # Lcn/sharesdk/framework/Platform;

    .prologue
    .line 76
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->platform:Lcn/sharesdk/framework/Platform;

    .line 77
    return-void
.end method

.method public setShareParams(Lcn/sharesdk/framework/Platform$ShareParams;)V
    .registers 2
    .param p1, "sp"    # Lcn/sharesdk/framework/Platform$ShareParams;

    .prologue
    .line 80
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->sp:Lcn/sharesdk/framework/Platform$ShareParams;

    .line 81
    return-void
.end method
