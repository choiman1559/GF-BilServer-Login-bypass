.class Lcn/sharesdk/evernote/d$3;
.super Ljava/lang/Object;
.source "EvernoteHelper.java"

# interfaces
.implements Lcom/mob/tools/network/RawNetworkCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/evernote/d;->d(Ljava/lang/String;)Ljava/util/HashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/util/HashMap;

.field final synthetic d:Lcn/sharesdk/evernote/d;


# direct methods
.method constructor <init>(Lcn/sharesdk/evernote/d;ILjava/lang/String;Ljava/util/HashMap;)V
    .registers 5

    .prologue
    .line 383
    iput-object p1, p0, Lcn/sharesdk/evernote/d$3;->d:Lcn/sharesdk/evernote/d;

    iput p2, p0, Lcn/sharesdk/evernote/d$3;->a:I

    iput-object p3, p0, Lcn/sharesdk/evernote/d$3;->b:Ljava/lang/String;

    iput-object p4, p0, Lcn/sharesdk/evernote/d$3;->c:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/io/InputStream;)V
    .registers 6
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 385
    new-instance v0, Lcn/sharesdk/evernote/b;

    invoke-direct {v0}, Lcn/sharesdk/evernote/b;-><init>()V

    .line 386
    iget v1, p0, Lcn/sharesdk/evernote/d$3;->a:I

    invoke-virtual {v0, p1, v1}, Lcn/sharesdk/evernote/b;->a(Ljava/io/InputStream;I)V

    .line 388
    invoke-virtual {v0}, Lcn/sharesdk/evernote/b;->a()I

    move-result v1

    .line 389
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1b

    .line 390
    new-instance v1, Ljava/lang/Throwable;

    invoke-virtual {v0}, Lcn/sharesdk/evernote/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v1

    .line 393
    :cond_1b
    new-instance v1, Lcn/sharesdk/evernote/h;

    invoke-direct {v1, v0}, Lcn/sharesdk/evernote/h;-><init>(Lcn/sharesdk/evernote/b;)V

    .line 394
    invoke-virtual {v1}, Lcn/sharesdk/evernote/h;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 395
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 396
    const-string v2, "name"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 397
    iget-object v3, p0, Lcn/sharesdk/evernote/d$3;->b:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 398
    iget-object v1, p0, Lcn/sharesdk/evernote/d$3;->c:Ljava/util/HashMap;

    const-string v2, "notebook"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    :cond_4d
    return-void
.end method
