.class Lcn/sharesdk/evernote/Evernote$2;
.super Ljava/lang/Object;
.source "Evernote.java"

# interfaces
.implements Lcn/sharesdk/framework/PlatformActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/evernote/Evernote;->doShare(Lcn/sharesdk/framework/Platform$ShareParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/evernote/d;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/util/ArrayList;

.field final synthetic f:[Ljava/lang/String;

.field final synthetic g:Z

.field final synthetic h:Lcn/sharesdk/framework/Platform$ShareParams;

.field final synthetic i:Lcn/sharesdk/evernote/Evernote;


# direct methods
.method constructor <init>(Lcn/sharesdk/evernote/Evernote;Lcn/sharesdk/evernote/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;[Ljava/lang/String;ZLcn/sharesdk/framework/Platform$ShareParams;)V
    .registers 10

    .prologue
    .line 194
    iput-object p1, p0, Lcn/sharesdk/evernote/Evernote$2;->i:Lcn/sharesdk/evernote/Evernote;

    iput-object p2, p0, Lcn/sharesdk/evernote/Evernote$2;->a:Lcn/sharesdk/evernote/d;

    iput-object p3, p0, Lcn/sharesdk/evernote/Evernote$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcn/sharesdk/evernote/Evernote$2;->c:Ljava/lang/String;

    iput-object p5, p0, Lcn/sharesdk/evernote/Evernote$2;->d:Ljava/lang/String;

    iput-object p6, p0, Lcn/sharesdk/evernote/Evernote$2;->e:Ljava/util/ArrayList;

    iput-object p7, p0, Lcn/sharesdk/evernote/Evernote$2;->f:[Ljava/lang/String;

    iput-boolean p8, p0, Lcn/sharesdk/evernote/Evernote$2;->g:Z

    iput-object p9, p0, Lcn/sharesdk/evernote/Evernote$2;->h:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcn/sharesdk/framework/Platform;I)V
    .registers 4
    .param p1, "platform"    # Lcn/sharesdk/framework/Platform;
    .param p2, "action"    # I

    .prologue
    .line 219
    iget-object v0, p0, Lcn/sharesdk/evernote/Evernote$2;->i:Lcn/sharesdk/evernote/Evernote;

    invoke-static {v0}, Lcn/sharesdk/evernote/Evernote;->q(Lcn/sharesdk/evernote/Evernote;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 220
    return-void
.end method

.method public onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    .registers 6
    .param p1, "platform"    # Lcn/sharesdk/framework/Platform;
    .param p2, "action"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/sharesdk/framework/Platform;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 212
    .local p3, "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "ShareParams"

    iget-object v1, p0, Lcn/sharesdk/evernote/Evernote$2;->h:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    iget-object v0, p0, Lcn/sharesdk/evernote/Evernote$2;->i:Lcn/sharesdk/evernote/Evernote;

    invoke-static {v0}, Lcn/sharesdk/evernote/Evernote;->o(Lcn/sharesdk/evernote/Evernote;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 214
    iget-object v0, p0, Lcn/sharesdk/evernote/Evernote$2;->i:Lcn/sharesdk/evernote/Evernote;

    invoke-static {v0}, Lcn/sharesdk/evernote/Evernote;->p(Lcn/sharesdk/evernote/Evernote;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    .line 216
    :cond_18
    return-void
.end method

.method public onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    .registers 12
    .param p1, "platform"    # Lcn/sharesdk/framework/Platform;
    .param p2, "action"    # I
    .param p3, "t"    # Ljava/lang/Throwable;

    .prologue
    const/16 v7, 0x9

    .line 197
    :try_start_2
    iget-object v0, p0, Lcn/sharesdk/evernote/Evernote$2;->a:Lcn/sharesdk/evernote/d;

    iget-object v1, p0, Lcn/sharesdk/evernote/Evernote$2;->b:Ljava/lang/String;

    iget-object v2, p0, Lcn/sharesdk/evernote/Evernote$2;->c:Ljava/lang/String;

    iget-object v3, p0, Lcn/sharesdk/evernote/Evernote$2;->d:Ljava/lang/String;

    iget-object v4, p0, Lcn/sharesdk/evernote/Evernote$2;->e:Ljava/util/ArrayList;

    iget-object v5, p0, Lcn/sharesdk/evernote/Evernote$2;->f:[Ljava/lang/String;

    iget-boolean v6, p0, Lcn/sharesdk/evernote/Evernote$2;->g:Z

    invoke-virtual/range {v0 .. v6}, Lcn/sharesdk/evernote/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;[Ljava/lang/String;Z)Ljava/util/HashMap;

    move-result-object v0

    .line 199
    const-string v1, "ShareParams"

    iget-object v2, p0, Lcn/sharesdk/evernote/Evernote$2;->h:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    iget-object v1, p0, Lcn/sharesdk/evernote/Evernote$2;->i:Lcn/sharesdk/evernote/Evernote;

    invoke-static {v1}, Lcn/sharesdk/evernote/Evernote;->k(Lcn/sharesdk/evernote/Evernote;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v1

    if-eqz v1, :cond_2e

    .line 201
    iget-object v1, p0, Lcn/sharesdk/evernote/Evernote$2;->i:Lcn/sharesdk/evernote/Evernote;

    invoke-static {v1}, Lcn/sharesdk/evernote/Evernote;->l(Lcn/sharesdk/evernote/Evernote;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v1

    const/16 v2, 0x9

    invoke-interface {v1, p1, v2, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2e} :catch_2f

    .line 208
    :cond_2e
    :goto_2e
    return-void

    .line 203
    :catch_2f
    move-exception v0

    .line 204
    iget-object v1, p0, Lcn/sharesdk/evernote/Evernote$2;->i:Lcn/sharesdk/evernote/Evernote;

    invoke-static {v1}, Lcn/sharesdk/evernote/Evernote;->m(Lcn/sharesdk/evernote/Evernote;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v1

    if-eqz v1, :cond_2e

    .line 205
    iget-object v1, p0, Lcn/sharesdk/evernote/Evernote$2;->i:Lcn/sharesdk/evernote/Evernote;

    invoke-static {v1}, Lcn/sharesdk/evernote/Evernote;->n(Lcn/sharesdk/evernote/Evernote;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v1

    invoke-interface {v1, p1, v7, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_2e
.end method
