.class public Lcn/sharesdk/google/e;
.super Lcom/mob/tools/FakeActivity;
.source "ShareActivity.java"


# instance fields
.field private a:Lcn/sharesdk/framework/Platform;

.field private b:Lcn/sharesdk/framework/PlatformActionListener;

.field private c:Lcn/sharesdk/google/b;

.field private d:I

.field private e:Lcn/sharesdk/framework/PlatformDb;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/mob/tools/FakeActivity;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/sharesdk/google/e;->c:Lcn/sharesdk/google/b;

    return-void
.end method


# virtual methods
.method public a(Lcn/sharesdk/framework/Platform;Lcn/sharesdk/framework/PlatformActionListener;Lcn/sharesdk/framework/PlatformDb;)V
    .registers 4

    .prologue
    .line 35
    iput-object p1, p0, Lcn/sharesdk/google/e;->a:Lcn/sharesdk/framework/Platform;

    .line 36
    iput-object p2, p0, Lcn/sharesdk/google/e;->b:Lcn/sharesdk/framework/PlatformActionListener;

    .line 37
    iput-object p3, p0, Lcn/sharesdk/google/e;->e:Lcn/sharesdk/framework/PlatformDb;

    .line 38
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 10
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/16 v5, 0x9

    const/4 v4, -0x1

    .line 94
    invoke-virtual {p0}, Lcn/sharesdk/google/e;->finish()V

    .line 95
    const/4 v0, 0x3

    if-ne p1, v0, :cond_5a

    .line 96
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 97
    if-eqz p3, :cond_3a

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 98
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 99
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_22

    .line 103
    :cond_3a
    new-instance v0, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v0}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 104
    if-eq p2, v4, :cond_52

    .line 105
    iget-object v1, p0, Lcn/sharesdk/google/e;->b:Lcn/sharesdk/framework/PlatformActionListener;

    iget-object v2, p0, Lcn/sharesdk/google/e;->a:Lcn/sharesdk/framework/Platform;

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v5, v3}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 118
    :cond_51
    :goto_51
    return-void

    .line 107
    :cond_52
    iget-object v0, p0, Lcn/sharesdk/google/e;->b:Lcn/sharesdk/framework/PlatformActionListener;

    iget-object v2, p0, Lcn/sharesdk/google/e;->a:Lcn/sharesdk/framework/Platform;

    invoke-interface {v0, v2, v5, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    goto :goto_51

    .line 109
    :cond_5a
    if-nez p1, :cond_51

    .line 110
    if-ne p2, v4, :cond_68

    .line 111
    iget-object v0, p0, Lcn/sharesdk/google/e;->c:Lcn/sharesdk/google/b;

    if-eqz v0, :cond_51

    .line 112
    iget-object v0, p0, Lcn/sharesdk/google/e;->c:Lcn/sharesdk/google/b;

    invoke-virtual {v0}, Lcn/sharesdk/google/b;->b()V

    goto :goto_51

    .line 114
    :cond_68
    if-nez p2, :cond_51

    .line 115
    iget-object v0, p0, Lcn/sharesdk/google/e;->b:Lcn/sharesdk/framework/PlatformActionListener;

    iget-object v1, p0, Lcn/sharesdk/google/e;->a:Lcn/sharesdk/framework/Platform;

    const/16 v2, 0x8

    invoke-interface {v0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    goto :goto_51
.end method

.method public onCreate()V
    .registers 11

    .prologue
    const/16 v9, 0x18

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 41
    iget-object v0, p0, Lcn/sharesdk/google/e;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 42
    const-string v1, "text"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 43
    const-string v2, "imageUrl"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 44
    const-string v3, "imagePath"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 45
    const-string v4, "filePath"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 46
    const-string v5, "action"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/sharesdk/google/e;->d:I

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/sharesdk/google/e;->c:Lcn/sharesdk/google/b;

    .line 48
    new-array v0, v8, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "http://schemas.google.com/AddActivity"

    aput-object v6, v0, v5

    const-string v5, "http://schemas.google.com/BuyActivity"

    aput-object v5, v0, v7

    .line 49
    new-instance v5, Lcn/sharesdk/google/b$a;

    invoke-virtual {p0}, Lcn/sharesdk/google/e;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcn/sharesdk/google/b$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v0}, Lcn/sharesdk/google/b$a;->a([Ljava/lang/String;)Lcn/sharesdk/google/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/sharesdk/google/b$a;->a()Lcn/sharesdk/google/b;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/google/e;->c:Lcn/sharesdk/google/b;

    .line 50
    iget-object v0, p0, Lcn/sharesdk/google/e;->c:Lcn/sharesdk/google/b;

    invoke-virtual {v0, p0}, Lcn/sharesdk/google/b;->a(Lcn/sharesdk/google/e;)V

    .line 51
    iget v0, p0, Lcn/sharesdk/google/e;->d:I

    if-ne v0, v7, :cond_d5

    .line 53
    new-instance v0, Lcn/sharesdk/google/b$a;

    invoke-direct {v0}, Lcn/sharesdk/google/b$a;-><init>()V

    .line 54
    const-string v5, "text/plain"

    invoke-virtual {v0, v5}, Lcn/sharesdk/google/b$a;->a(Ljava/lang/String;)Lcn/sharesdk/google/b$a;

    .line 55
    invoke-virtual {v0, v1}, Lcn/sharesdk/google/b$a;->a(Ljava/lang/CharSequence;)Lcn/sharesdk/google/b$a;

    .line 56
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_96

    .line 57
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v9, :cond_89

    .line 58
    iget-object v2, p0, Lcn/sharesdk/google/e;->activity:Landroid/app/Activity;

    invoke-static {v2, v4}, Lcom/mob/tools/utils/ResHelper;->pathToContentUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/sharesdk/google/b$a;->a(Landroid/net/Uri;)Lcn/sharesdk/google/b$a;

    .line 62
    :goto_78
    const-string v2, "video/*"

    invoke-virtual {v0, v2}, Lcn/sharesdk/google/b$a;->a(Ljava/lang/String;)Lcn/sharesdk/google/b$a;

    .line 63
    invoke-virtual {v0, v1}, Lcn/sharesdk/google/b$a;->a(Ljava/lang/CharSequence;)Lcn/sharesdk/google/b$a;

    .line 75
    :cond_80
    :goto_80
    invoke-virtual {v0}, Lcn/sharesdk/google/b$a;->b()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/google/e;->startActivityForResult(Landroid/content/Intent;I)V

    .line 82
    :cond_88
    :goto_88
    return-void

    .line 60
    :cond_89
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/sharesdk/google/b$a;->a(Landroid/net/Uri;)Lcn/sharesdk/google/b$a;

    goto :goto_78

    .line 64
    :cond_96
    const-string v4, "http"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b4

    const-string v1, "http"

    .line 65
    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b4

    .line 66
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/sharesdk/google/b$a;->a(Landroid/net/Uri;)Lcn/sharesdk/google/b$a;

    goto :goto_80

    .line 67
    :cond_b4
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_80

    .line 68
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v9, :cond_c8

    .line 69
    iget-object v1, p0, Lcn/sharesdk/google/e;->activity:Landroid/app/Activity;

    invoke-static {v1, v3}, Lcom/mob/tools/utils/ResHelper;->pathToContentUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/sharesdk/google/b$a;->a(Landroid/net/Uri;)Lcn/sharesdk/google/b$a;

    goto :goto_80

    .line 71
    :cond_c8
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/sharesdk/google/b$a;->a(Landroid/net/Uri;)Lcn/sharesdk/google/b$a;

    goto :goto_80

    .line 76
    :cond_d5
    iget v0, p0, Lcn/sharesdk/google/e;->d:I

    if-nez v0, :cond_ea

    .line 77
    iget-object v0, p0, Lcn/sharesdk/google/e;->c:Lcn/sharesdk/google/b;

    iget-object v1, p0, Lcn/sharesdk/google/e;->a:Lcn/sharesdk/framework/Platform;

    iget-object v2, p0, Lcn/sharesdk/google/e;->b:Lcn/sharesdk/framework/PlatformActionListener;

    iget-object v3, p0, Lcn/sharesdk/google/e;->e:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v0, v1, v2, v3}, Lcn/sharesdk/google/b;->a(Lcn/sharesdk/framework/Platform;Lcn/sharesdk/framework/PlatformActionListener;Lcn/sharesdk/framework/PlatformDb;)V

    .line 78
    iget-object v0, p0, Lcn/sharesdk/google/e;->c:Lcn/sharesdk/google/b;

    invoke-virtual {v0}, Lcn/sharesdk/google/b;->b()V

    goto :goto_88

    .line 79
    :cond_ea
    iget v0, p0, Lcn/sharesdk/google/e;->d:I

    if-ne v0, v8, :cond_88

    .line 80
    iget-object v0, p0, Lcn/sharesdk/google/e;->c:Lcn/sharesdk/google/b;

    invoke-virtual {v0, p0}, Lcn/sharesdk/google/b;->b(Lcn/sharesdk/google/e;)V

    goto :goto_88
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcn/sharesdk/google/e;->c:Lcn/sharesdk/google/b;

    if-eqz v0, :cond_19

    .line 87
    iget-object v0, p0, Lcn/sharesdk/google/e;->c:Lcn/sharesdk/google/b;

    invoke-virtual {v0}, Lcn/sharesdk/google/b;->e()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcn/sharesdk/google/e;->c:Lcn/sharesdk/google/b;

    invoke-virtual {v0}, Lcn/sharesdk/google/b;->c()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 88
    :cond_14
    iget-object v0, p0, Lcn/sharesdk/google/e;->c:Lcn/sharesdk/google/b;

    invoke-virtual {v0}, Lcn/sharesdk/google/b;->f()V

    .line 91
    :cond_19
    return-void
.end method
