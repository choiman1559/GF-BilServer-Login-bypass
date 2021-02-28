.class Lcn/sharesdk/evernote/d$2;
.super Ljava/lang/Object;
.source "EvernoteHelper.java"

# interfaces
.implements Lcom/mob/tools/network/RawNetworkCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/evernote/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;[Ljava/lang/String;Z)Ljava/util/HashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/util/HashMap;

.field final synthetic c:Lcn/sharesdk/evernote/d;


# direct methods
.method constructor <init>(Lcn/sharesdk/evernote/d;ILjava/util/HashMap;)V
    .registers 4

    .prologue
    .line 307
    iput-object p1, p0, Lcn/sharesdk/evernote/d$2;->c:Lcn/sharesdk/evernote/d;

    iput p2, p0, Lcn/sharesdk/evernote/d$2;->a:I

    iput-object p3, p0, Lcn/sharesdk/evernote/d$2;->b:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/io/InputStream;)V
    .registers 5
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 309
    new-instance v0, Lcn/sharesdk/evernote/b;

    invoke-direct {v0}, Lcn/sharesdk/evernote/b;-><init>()V

    .line 310
    iget v1, p0, Lcn/sharesdk/evernote/d$2;->a:I

    invoke-virtual {v0, p1, v1}, Lcn/sharesdk/evernote/b;->a(Ljava/io/InputStream;I)V

    .line 312
    invoke-virtual {v0}, Lcn/sharesdk/evernote/b;->a()I

    move-result v1

    .line 313
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1b

    .line 314
    new-instance v1, Ljava/lang/Throwable;

    invoke-virtual {v0}, Lcn/sharesdk/evernote/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v1

    .line 317
    :cond_1b
    new-instance v1, Lcn/sharesdk/evernote/g;

    invoke-direct {v1, v0}, Lcn/sharesdk/evernote/g;-><init>(Lcn/sharesdk/evernote/b;)V

    .line 318
    iget-object v0, p0, Lcn/sharesdk/evernote/d$2;->b:Ljava/util/HashMap;

    const-string v2, "note"

    invoke-virtual {v1}, Lcn/sharesdk/evernote/g;->a()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    return-void
.end method
