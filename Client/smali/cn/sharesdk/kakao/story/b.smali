.class public Lcn/sharesdk/kakao/story/b;
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
    .line 18
    invoke-direct {p0}, Lcom/mob/tools/FakeActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/sharesdk/framework/Platform;Lcn/sharesdk/framework/PlatformActionListener;)V
    .registers 3

    .prologue
    .line 32
    iput-object p1, p0, Lcn/sharesdk/kakao/story/b;->a:Lcn/sharesdk/framework/Platform;

    .line 33
    iput-object p2, p0, Lcn/sharesdk/kakao/story/b;->b:Lcn/sharesdk/framework/PlatformActionListener;

    .line 34
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 109
    iput-object p1, p0, Lcn/sharesdk/kakao/story/b;->c:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 11
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    .line 72
    invoke-virtual {p0}, Lcn/sharesdk/kakao/story/b;->finish()V

    .line 73
    if-ne p1, v6, :cond_41

    .line 74
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 75
    if-eqz p3, :cond_37

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 76
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 77
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1f

    .line 81
    :cond_37
    iget-object v0, p0, Lcn/sharesdk/kakao/story/b;->b:Lcn/sharesdk/framework/PlatformActionListener;

    iget-object v2, p0, Lcn/sharesdk/kakao/story/b;->a:Lcn/sharesdk/framework/Platform;

    const/16 v3, 0x9

    invoke-interface {v0, v2, v3, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    .line 106
    :cond_40
    :goto_40
    return-void

    .line 82
    :cond_41
    const/4 v0, 0x3

    if-ne p1, v0, :cond_40

    .line 83
    const/4 v0, -0x1

    if-ne p2, v0, :cond_b5

    .line 84
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 86
    const-string v1, "com.kakao.sdk.talk.error.type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 87
    const-string v2, "com.kakao.sdk.talk.redirectUrl"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 88
    if-nez v1, :cond_6d

    if-eqz v2, :cond_6d

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 90
    const-string v1, "com.kakao.sdk.talk.redirectUrl"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v1, p0, Lcn/sharesdk/kakao/story/b;->b:Lcn/sharesdk/framework/PlatformActionListener;

    iget-object v2, p0, Lcn/sharesdk/kakao/story/b;->a:Lcn/sharesdk/framework/Platform;

    invoke-interface {v1, v2, v6, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    goto :goto_40

    .line 93
    :cond_6d
    if-eqz v1, :cond_8b

    const-string v2, "NotSupportError"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8b

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 95
    const-string v1, "com.kakao.sdk.talk.redirectUrl"

    const-string v2, "LoggedOut"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v1, p0, Lcn/sharesdk/kakao/story/b;->b:Lcn/sharesdk/framework/PlatformActionListener;

    iget-object v2, p0, Lcn/sharesdk/kakao/story/b;->a:Lcn/sharesdk/framework/Platform;

    invoke-interface {v1, v2, v6, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    goto :goto_40

    .line 99
    :cond_8b
    const-string v2, "com.kakao.sdk.talk.error.description"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    iget-object v2, p0, Lcn/sharesdk/kakao/story/b;->b:Lcn/sharesdk/framework/PlatformActionListener;

    iget-object v3, p0, Lcn/sharesdk/kakao/story/b;->a:Lcn/sharesdk/framework/Platform;

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

    goto :goto_40

    .line 103
    :cond_b5
    iget-object v0, p0, Lcn/sharesdk/kakao/story/b;->b:Lcn/sharesdk/framework/PlatformActionListener;

    iget-object v1, p0, Lcn/sharesdk/kakao/story/b;->a:Lcn/sharesdk/framework/Platform;

    invoke-interface {v0, v1, v6}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    goto :goto_40
.end method

.method public onCreate()V
    .registers 9

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 37
    iget-object v0, p0, Lcn/sharesdk/kakao/story/b;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 38
    iget-object v1, p0, Lcn/sharesdk/kakao/story/b;->c:Ljava/lang/String;

    const-string v2, "auth"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 39
    const-string v1, "intent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 40
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/kakao/story/b;->startActivityForResult(Landroid/content/Intent;I)V

    .line 69
    :cond_22
    :goto_22
    return-void

    .line 41
    :cond_23
    iget-object v1, p0, Lcn/sharesdk/kakao/story/b;->c:Ljava/lang/String;

    const-string v2, "share"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 42
    const-string v1, "uri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 43
    const-string v2, "path"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 44
    const-string v3, "title"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 45
    const-string v4, "text"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 46
    const-string v5, "type"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 48
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_60

    .line 49
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 50
    invoke-virtual {p0, v0, v6}, Lcn/sharesdk/kakao/story/b;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_22

    .line 52
    :cond_60
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.SEND"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 53
    if-ne v6, v0, :cond_8d

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8d

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8d

    .line 54
    const-string v0, "text/plain"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    const-string v0, "android.intent.extra.SUBJECT"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    :cond_84
    :goto_84
    const-string v0, "com.kakao.story"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    invoke-virtual {p0, v1, v7}, Lcn/sharesdk/kakao/story/b;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_22

    .line 57
    :cond_8d
    if-ne v7, v0, :cond_a4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a4

    .line 58
    const-string v0, "image/*"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    const-string v0, "android.intent.extra.STREAM"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_84

    .line 60
    :cond_a4
    const/4 v3, 0x6

    if-ne v3, v0, :cond_84

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_84

    .line 61
    const-string v0, "video/*"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    const-string v0, "android.intent.extra.STREAM"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_84
.end method
