.class Lcn/sharesdk/youtube/Youtube$2;
.super Ljava/lang/Object;
.source "Youtube.java"

# interfaces
.implements Lcn/sharesdk/framework/authorize/AuthorizeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/youtube/Youtube;->doAuthorize([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/youtube/Youtube;


# direct methods
.method constructor <init>(Lcn/sharesdk/youtube/Youtube;)V
    .registers 2

    .prologue
    .line 172
    iput-object p1, p0, Lcn/sharesdk/youtube/Youtube$2;->a:Lcn/sharesdk/youtube/Youtube;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 4

    .prologue
    .line 216
    iget-object v0, p0, Lcn/sharesdk/youtube/Youtube$2;->a:Lcn/sharesdk/youtube/Youtube;

    invoke-static {v0}, Lcn/sharesdk/youtube/Youtube;->t(Lcn/sharesdk/youtube/Youtube;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 217
    iget-object v0, p0, Lcn/sharesdk/youtube/Youtube$2;->a:Lcn/sharesdk/youtube/Youtube;

    invoke-static {v0}, Lcn/sharesdk/youtube/Youtube;->u(Lcn/sharesdk/youtube/Youtube;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/youtube/Youtube$2;->a:Lcn/sharesdk/youtube/Youtube;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 219
    :cond_14
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .registers 11
    .param p1, "values"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v0, 0x0

    .line 175
    const-string v2, "access_token"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 176
    const-string v3, "expires_in"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 177
    const-string v4, "token_type"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 178
    const-string v5, "refresh_token"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 179
    const-string v6, "id_token"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 180
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3a

    .line 181
    iget-object v7, p0, Lcn/sharesdk/youtube/Youtube$2;->a:Lcn/sharesdk/youtube/Youtube;

    invoke-static {v7}, Lcn/sharesdk/youtube/Youtube;->l(Lcn/sharesdk/youtube/Youtube;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v7

    const-string v8, "id_token"

    invoke-virtual {v7, v8, v6}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object v7, p0, Lcn/sharesdk/youtube/Youtube$2;->a:Lcn/sharesdk/youtube/Youtube;

    invoke-static {v7}, Lcn/sharesdk/youtube/Youtube;->b(Lcn/sharesdk/youtube/Youtube;)Lcn/sharesdk/youtube/b;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcn/sharesdk/youtube/b;->a(Ljava/lang/String;)V

    .line 184
    :cond_3a
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_52

    .line 185
    iget-object v6, p0, Lcn/sharesdk/youtube/Youtube$2;->a:Lcn/sharesdk/youtube/Youtube;

    invoke-static {v6}, Lcn/sharesdk/youtube/Youtube;->b(Lcn/sharesdk/youtube/Youtube;)Lcn/sharesdk/youtube/b;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcn/sharesdk/youtube/b;->c(Ljava/lang/String;)V

    .line 186
    iget-object v6, p0, Lcn/sharesdk/youtube/Youtube$2;->a:Lcn/sharesdk/youtube/Youtube;

    invoke-static {v6}, Lcn/sharesdk/youtube/Youtube;->m(Lcn/sharesdk/youtube/Youtube;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcn/sharesdk/framework/PlatformDb;->putToken(Ljava/lang/String;)V

    .line 188
    :cond_52
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_66

    .line 191
    :try_start_58
    invoke-static {v3}, Lcom/mob/tools/utils/ResHelper;->parseInt(Ljava/lang/String;)I
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_5b} :catch_90

    move-result v0

    int-to-long v0, v0

    .line 196
    :goto_5d
    iget-object v2, p0, Lcn/sharesdk/youtube/Youtube$2;->a:Lcn/sharesdk/youtube/Youtube;

    invoke-static {v2}, Lcn/sharesdk/youtube/Youtube;->o(Lcn/sharesdk/youtube/Youtube;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcn/sharesdk/framework/PlatformDb;->putExpiresIn(J)V

    .line 198
    :cond_66
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_77

    .line 199
    iget-object v0, p0, Lcn/sharesdk/youtube/Youtube$2;->a:Lcn/sharesdk/youtube/Youtube;

    invoke-static {v0}, Lcn/sharesdk/youtube/Youtube;->p(Lcn/sharesdk/youtube/Youtube;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    const-string v1, "token_type"

    invoke-virtual {v0, v1, v4}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :cond_77
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_88

    .line 202
    iget-object v0, p0, Lcn/sharesdk/youtube/Youtube$2;->a:Lcn/sharesdk/youtube/Youtube;

    invoke-static {v0}, Lcn/sharesdk/youtube/Youtube;->q(Lcn/sharesdk/youtube/Youtube;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    const-string v1, "refresh_token"

    invoke-virtual {v0, v1, v5}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :cond_88
    iget-object v0, p0, Lcn/sharesdk/youtube/Youtube$2;->a:Lcn/sharesdk/youtube/Youtube;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/sharesdk/youtube/Youtube;->b(Lcn/sharesdk/youtube/Youtube;ILjava/lang/Object;)V

    .line 205
    return-void

    .line 192
    :catch_90
    move-exception v2

    .line 194
    iget-object v2, p0, Lcn/sharesdk/youtube/Youtube$2;->a:Lcn/sharesdk/youtube/Youtube;

    invoke-static {v2}, Lcn/sharesdk/youtube/Youtube;->n(Lcn/sharesdk/youtube/Youtube;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcn/sharesdk/framework/PlatformDb;->putExpiresIn(J)V

    goto :goto_5d
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 209
    iget-object v0, p0, Lcn/sharesdk/youtube/Youtube$2;->a:Lcn/sharesdk/youtube/Youtube;

    invoke-static {v0}, Lcn/sharesdk/youtube/Youtube;->r(Lcn/sharesdk/youtube/Youtube;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 210
    iget-object v0, p0, Lcn/sharesdk/youtube/Youtube$2;->a:Lcn/sharesdk/youtube/Youtube;

    invoke-static {v0}, Lcn/sharesdk/youtube/Youtube;->s(Lcn/sharesdk/youtube/Youtube;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/youtube/Youtube$2;->a:Lcn/sharesdk/youtube/Youtube;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 212
    :cond_14
    return-void
.end method
