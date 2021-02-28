.class Lcn/sharesdk/google/GooglePlus$2;
.super Ljava/lang/Object;
.source "GooglePlus.java"

# interfaces
.implements Lcn/sharesdk/framework/authorize/AuthorizeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/google/GooglePlus;->doWebAuthorize([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/google/GooglePlus;


# direct methods
.method constructor <init>(Lcn/sharesdk/google/GooglePlus;)V
    .registers 2

    .prologue
    .line 143
    iput-object p1, p0, Lcn/sharesdk/google/GooglePlus$2;->a:Lcn/sharesdk/google/GooglePlus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 4

    .prologue
    .line 170
    iget-object v0, p0, Lcn/sharesdk/google/GooglePlus$2;->a:Lcn/sharesdk/google/GooglePlus;

    invoke-static {v0}, Lcn/sharesdk/google/GooglePlus;->t(Lcn/sharesdk/google/GooglePlus;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 171
    iget-object v0, p0, Lcn/sharesdk/google/GooglePlus$2;->a:Lcn/sharesdk/google/GooglePlus;

    invoke-static {v0}, Lcn/sharesdk/google/GooglePlus;->u(Lcn/sharesdk/google/GooglePlus;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/google/GooglePlus$2;->a:Lcn/sharesdk/google/GooglePlus;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 173
    :cond_14
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "values"    # Landroid/os/Bundle;

    .prologue
    .line 146
    const-string v0, "access_token"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 147
    const-string v0, "expires_in"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 148
    const-string v1, "token_type"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 150
    iget-object v3, p0, Lcn/sharesdk/google/GooglePlus$2;->a:Lcn/sharesdk/google/GooglePlus;

    invoke-static {v3}, Lcn/sharesdk/google/GooglePlus;->o(Lcn/sharesdk/google/GooglePlus;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcn/sharesdk/framework/PlatformDb;->putToken(Ljava/lang/String;)V

    .line 151
    iget-object v3, p0, Lcn/sharesdk/google/GooglePlus$2;->a:Lcn/sharesdk/google/GooglePlus;

    invoke-static {v3}, Lcn/sharesdk/google/GooglePlus;->p(Lcn/sharesdk/google/GooglePlus;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v3

    const-string v4, "token_type"

    invoke-virtual {v3, v4, v1}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :try_start_26
    invoke-static {v0}, Lcom/mob/tools/utils/ResHelper;->parseLong(Ljava/lang/String;)J
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_29} :catch_44

    move-result-wide v0

    .line 158
    :goto_2a
    iget-object v3, p0, Lcn/sharesdk/google/GooglePlus$2;->a:Lcn/sharesdk/google/GooglePlus;

    invoke-static {v3}, Lcn/sharesdk/google/GooglePlus;->q(Lcn/sharesdk/google/GooglePlus;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcn/sharesdk/framework/PlatformDb;->putExpiresIn(J)V

    .line 159
    iget-object v0, p0, Lcn/sharesdk/google/GooglePlus$2;->a:Lcn/sharesdk/google/GooglePlus;

    invoke-static {v0}, Lcn/sharesdk/google/GooglePlus;->c(Lcn/sharesdk/google/GooglePlus;)Lcn/sharesdk/google/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcn/sharesdk/google/a;->d(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcn/sharesdk/google/GooglePlus$2;->a:Lcn/sharesdk/google/GooglePlus;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/sharesdk/google/GooglePlus;->a(Lcn/sharesdk/google/GooglePlus;ILjava/lang/Object;)V

    .line 161
    return-void

    .line 155
    :catch_44
    move-exception v0

    .line 156
    const-wide/16 v0, 0x0

    goto :goto_2a
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 164
    iget-object v0, p0, Lcn/sharesdk/google/GooglePlus$2;->a:Lcn/sharesdk/google/GooglePlus;

    invoke-static {v0}, Lcn/sharesdk/google/GooglePlus;->r(Lcn/sharesdk/google/GooglePlus;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 165
    iget-object v0, p0, Lcn/sharesdk/google/GooglePlus$2;->a:Lcn/sharesdk/google/GooglePlus;

    invoke-static {v0}, Lcn/sharesdk/google/GooglePlus;->s(Lcn/sharesdk/google/GooglePlus;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/google/GooglePlus$2;->a:Lcn/sharesdk/google/GooglePlus;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 167
    :cond_14
    return-void
.end method
