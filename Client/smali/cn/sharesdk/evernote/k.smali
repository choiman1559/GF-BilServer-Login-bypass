.class public Lcn/sharesdk/evernote/k;
.super Lcom/mob/tools/FakeActivity;
.source "ShareActivity.java"


# instance fields
.field private a:Lcn/sharesdk/framework/Platform;

.field private b:Lcn/sharesdk/framework/PlatformActionListener;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/sharesdk/evernote/e",
            "<*>;>;"
        }
    .end annotation
.end field

.field private f:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/mob/tools/FakeActivity;-><init>()V

    return-void
.end method

.method private a()Landroid/content/Intent;
    .registers 7

    .prologue
    .line 48
    new-instance v1, Landroid/content/Intent;

    const-string v0, "com.evernote.action.CREATE_NEW_NOTE"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcn/sharesdk/evernote/k;->c:Ljava/lang/String;

    if-eqz v0, :cond_12

    .line 50
    const-string v0, "NOTEBOOK_GUID"

    iget-object v2, p0, Lcn/sharesdk/evernote/k;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    :cond_12
    const-string v0, "android.intent.extra.TITLE"

    iget-object v2, p0, Lcn/sharesdk/evernote/k;->d:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    iget-object v0, p0, Lcn/sharesdk/evernote/k;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_69

    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 56
    iget-object v0, p0, Lcn/sharesdk/evernote/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2d
    :goto_2d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/sharesdk/evernote/e;

    .line 57
    iget-object v5, v0, Lcn/sharesdk/evernote/e;->a:Ljava/lang/Object;

    instance-of v5, v5, Ljava/lang/String;

    if-eqz v5, :cond_49

    .line 58
    iget-object v0, v0, Lcn/sharesdk/evernote/e;->a:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2d

    .line 59
    :cond_49
    iget-object v5, v0, Lcn/sharesdk/evernote/e;->a:Ljava/lang/Object;

    instance-of v5, v5, Ljava/io/File;

    if-eqz v5, :cond_2d

    .line 60
    iget-object v0, v0, Lcn/sharesdk/evernote/e;->a:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    .line 63
    :cond_5b
    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 66
    :cond_69
    iget-object v0, p0, Lcn/sharesdk/evernote/k;->f:[Ljava/lang/String;

    if-eqz v0, :cond_8a

    iget-object v0, p0, Lcn/sharesdk/evernote/k;->f:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_8a

    .line 67
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 68
    iget-object v3, p0, Lcn/sharesdk/evernote/k;->f:[Ljava/lang/String;

    array-length v4, v3

    const/4 v0, 0x0

    :goto_7b
    if-ge v0, v4, :cond_85

    aget-object v5, v3, v0

    .line 69
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_7b

    .line 71
    :cond_85
    const-string v0, "TAG_NAME_LIST"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 73
    :cond_8a
    return-object v1
.end method


# virtual methods
.method public a(Lcn/sharesdk/framework/Platform;Lcn/sharesdk/framework/PlatformActionListener;)V
    .registers 3

    .prologue
    .line 24
    iput-object p1, p0, Lcn/sharesdk/evernote/k;->a:Lcn/sharesdk/framework/Platform;

    .line 25
    iput-object p2, p0, Lcn/sharesdk/evernote/k;->b:Lcn/sharesdk/framework/PlatformActionListener;

    .line 26
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;[Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/sharesdk/evernote/e",
            "<*>;>;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 30
    iput-object p1, p0, Lcn/sharesdk/evernote/k;->c:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcn/sharesdk/evernote/k;->d:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcn/sharesdk/evernote/k;->e:Ljava/util/ArrayList;

    .line 33
    iput-object p4, p0, Lcn/sharesdk/evernote/k;->f:[Ljava/lang/String;

    .line 34
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 77
    invoke-virtual {p0}, Lcn/sharesdk/evernote/k;->finish()V

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 81
    if-eqz p3, :cond_1b

    .line 82
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 83
    if-eqz v1, :cond_1b

    .line 84
    const-string v2, "guid"

    const-string v3, "note_guid"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    :cond_1b
    iget-object v1, p0, Lcn/sharesdk/evernote/k;->b:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_28

    .line 89
    iget-object v1, p0, Lcn/sharesdk/evernote/k;->b:Lcn/sharesdk/framework/PlatformActionListener;

    iget-object v2, p0, Lcn/sharesdk/evernote/k;->a:Lcn/sharesdk/framework/Platform;

    const/16 v3, 0x9

    invoke-interface {v1, v2, v3, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    .line 96
    :cond_28
    return-void
.end method

.method public onCreate()V
    .registers 5

    .prologue
    .line 38
    :try_start_0
    iget-object v0, p0, Lcn/sharesdk/evernote/k;->activity:Landroid/app/Activity;

    invoke-direct {p0}, Lcn/sharesdk/evernote/k;->a()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_a} :catch_b

    .line 45
    :cond_a
    :goto_a
    return-void

    .line 39
    :catch_b
    move-exception v0

    .line 40
    invoke-virtual {p0}, Lcn/sharesdk/evernote/k;->finish()V

    .line 41
    iget-object v1, p0, Lcn/sharesdk/evernote/k;->b:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_a

    .line 42
    iget-object v1, p0, Lcn/sharesdk/evernote/k;->b:Lcn/sharesdk/framework/PlatformActionListener;

    iget-object v2, p0, Lcn/sharesdk/evernote/k;->a:Lcn/sharesdk/framework/Platform;

    const/16 v3, 0x9

    invoke-interface {v1, v2, v3, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_a
.end method
