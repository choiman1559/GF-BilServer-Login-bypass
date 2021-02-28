.class public Lcn/sharesdk/kakao/talk/b;
.super Lcom/mob/tools/FakeActivity;
.source "ShareActivity.java"


# instance fields
.field private a:Lcn/sharesdk/framework/Platform;

.field private b:Lcn/sharesdk/framework/PlatformActionListener;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/mob/tools/FakeActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/sharesdk/framework/Platform;Lcn/sharesdk/framework/PlatformActionListener;)V
    .registers 3

    .prologue
    .line 33
    iput-object p1, p0, Lcn/sharesdk/kakao/talk/b;->a:Lcn/sharesdk/framework/Platform;

    .line 34
    iput-object p2, p0, Lcn/sharesdk/kakao/talk/b;->b:Lcn/sharesdk/framework/PlatformActionListener;

    .line 35
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 102
    iput-object p1, p0, Lcn/sharesdk/kakao/talk/b;->c:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 11
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    .line 66
    invoke-virtual {p0}, Lcn/sharesdk/kakao/talk/b;->finish()V

    .line 67
    const/4 v0, 0x3

    if-ne p1, v0, :cond_42

    .line 68
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 69
    if-eqz p3, :cond_38

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 70
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 71
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_20

    .line 74
    :cond_38
    iget-object v0, p0, Lcn/sharesdk/kakao/talk/b;->b:Lcn/sharesdk/framework/PlatformActionListener;

    iget-object v2, p0, Lcn/sharesdk/kakao/talk/b;->a:Lcn/sharesdk/framework/Platform;

    const/16 v3, 0x9

    invoke-interface {v0, v2, v3, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    .line 99
    :cond_41
    :goto_41
    return-void

    .line 75
    :cond_42
    if-ne p1, v6, :cond_41

    .line 76
    const/4 v0, -0x1

    if-ne p2, v0, :cond_b5

    .line 77
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 79
    const-string v1, "com.kakao.sdk.talk.error.type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 80
    const-string v2, "com.kakao.sdk.talk.redirectUrl"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 81
    if-nez v1, :cond_6d

    if-eqz v2, :cond_6d

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 83
    const-string v1, "com.kakao.sdk.talk.redirectUrl"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v1, p0, Lcn/sharesdk/kakao/talk/b;->b:Lcn/sharesdk/framework/PlatformActionListener;

    iget-object v2, p0, Lcn/sharesdk/kakao/talk/b;->a:Lcn/sharesdk/framework/Platform;

    invoke-interface {v1, v2, v6, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    goto :goto_41

    .line 86
    :cond_6d
    if-eqz v1, :cond_8b

    const-string v2, "NotSupportError"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8b

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 88
    const-string v1, "com.kakao.sdk.talk.redirectUrl"

    const-string v2, "LoggedOut"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v1, p0, Lcn/sharesdk/kakao/talk/b;->b:Lcn/sharesdk/framework/PlatformActionListener;

    iget-object v2, p0, Lcn/sharesdk/kakao/talk/b;->a:Lcn/sharesdk/framework/Platform;

    invoke-interface {v1, v2, v6, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    goto :goto_41

    .line 92
    :cond_8b
    const-string v2, "com.kakao.sdk.talk.error.description"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    iget-object v2, p0, Lcn/sharesdk/kakao/talk/b;->b:Lcn/sharesdk/framework/PlatformActionListener;

    iget-object v3, p0, Lcn/sharesdk/kakao/talk/b;->a:Lcn/sharesdk/framework/Platform;

    new-instance v4, Ljava/lang/Throwable;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ";msg="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3, v6, v4}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_41

    .line 96
    :cond_b5
    iget-object v0, p0, Lcn/sharesdk/kakao/talk/b;->b:Lcn/sharesdk/framework/PlatformActionListener;

    iget-object v1, p0, Lcn/sharesdk/kakao/talk/b;->a:Lcn/sharesdk/framework/Platform;

    invoke-interface {v0, v1, v6}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    goto :goto_41
.end method

.method public onCreate()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 38
    iget-object v0, p0, Lcn/sharesdk/kakao/talk/b;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 39
    iget-object v1, p0, Lcn/sharesdk/kakao/talk/b;->c:Ljava/lang/String;

    const-string v2, "auth"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 40
    const-string v1, "intent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 41
    iget-object v1, p0, Lcn/sharesdk/kakao/talk/b;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 42
    if-eqz v1, :cond_2e

    .line 43
    invoke-virtual {p0, v0, v4}, Lcn/sharesdk/kakao/talk/b;->startActivityForResult(Landroid/content/Intent;I)V

    .line 62
    :cond_2d
    :goto_2d
    return-void

    .line 45
    :cond_2e
    iget-object v0, p0, Lcn/sharesdk/kakao/talk/b;->b:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_40

    .line 46
    iget-object v0, p0, Lcn/sharesdk/kakao/talk/b;->b:Lcn/sharesdk/framework/PlatformActionListener;

    iget-object v1, p0, Lcn/sharesdk/kakao/talk/b;->a:Lcn/sharesdk/framework/Platform;

    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "Invalid intent"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v4, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 48
    :cond_40
    invoke-virtual {p0}, Lcn/sharesdk/kakao/talk/b;->finish()V

    goto :goto_2d

    .line 50
    :cond_44
    iget-object v1, p0, Lcn/sharesdk/kakao/talk/b;->c:Ljava/lang/String;

    const-string v2, "share"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 51
    const-string v1, "uri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6a

    .line 53
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 54
    const/4 v0, 0x3

    invoke-virtual {p0, v1, v0}, Lcn/sharesdk/kakao/talk/b;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2d

    .line 56
    :cond_6a
    iget-object v0, p0, Lcn/sharesdk/kakao/talk/b;->b:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_2d

    .line 57
    iget-object v0, p0, Lcn/sharesdk/kakao/talk/b;->b:Lcn/sharesdk/framework/PlatformActionListener;

    iget-object v1, p0, Lcn/sharesdk/kakao/talk/b;->a:Lcn/sharesdk/framework/Platform;

    const/16 v2, 0x9

    new-instance v3, Ljava/lang/Throwable;

    const-string v4, "Missing parameters"

    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2, v3}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_2d
.end method
