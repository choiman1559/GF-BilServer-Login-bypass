.class Lcn/sharesdk/line/c$1;
.super Ljava/lang/Thread;
.source "LineSSOProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/line/c;->a(Lcn/sharesdk/framework/Platform;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/framework/Platform;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcn/sharesdk/line/c;


# direct methods
.method constructor <init>(Lcn/sharesdk/line/c;Lcn/sharesdk/framework/Platform;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 106
    iput-object p1, p0, Lcn/sharesdk/line/c$1;->c:Lcn/sharesdk/line/c;

    iput-object p2, p0, Lcn/sharesdk/line/c$1;->a:Lcn/sharesdk/framework/Platform;

    iput-object p3, p0, Lcn/sharesdk/line/c$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 109
    :try_start_0
    iget-object v0, p0, Lcn/sharesdk/line/c$1;->a:Lcn/sharesdk/framework/Platform;

    invoke-static {v0}, Lcn/sharesdk/line/b;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/line/b;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_8e

    move-result-object v0

    .line 112
    :try_start_6
    iget-object v1, p0, Lcn/sharesdk/line/c$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/line/b;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_b} :catch_1f

    move-result-object v0

    .line 118
    :goto_c
    if-nez v0, :cond_2b

    .line 119
    :try_start_e
    iget-object v0, p0, Lcn/sharesdk/line/c$1;->c:Lcn/sharesdk/line/c;

    invoke-static {v0}, Lcn/sharesdk/line/c;->b(Lcn/sharesdk/line/c;)Lcn/sharesdk/framework/authorize/SSOListener;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "Authorize token is empty"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcn/sharesdk/framework/authorize/SSOListener;->onFailed(Ljava/lang/Throwable;)V

    .line 135
    :goto_1e
    return-void

    .line 113
    :catch_1f
    move-exception v0

    .line 114
    iget-object v1, p0, Lcn/sharesdk/line/c$1;->c:Lcn/sharesdk/line/c;

    invoke-static {v1}, Lcn/sharesdk/line/c;->a(Lcn/sharesdk/line/c;)Lcn/sharesdk/framework/authorize/SSOListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcn/sharesdk/framework/authorize/SSOListener;->onFailed(Ljava/lang/Throwable;)V

    .line 115
    const/4 v0, 0x0

    goto :goto_c

    .line 123
    :cond_2b
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 124
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 125
    const-string v2, "mid"

    const-string v3, "mid"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v2, "access_token"

    const-string v3, "access_token"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string v2, "refresh_token"

    const-string v3, "refresh_token"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v2, "expires_in"

    const-string v3, "expires_in"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v2, "token_type"

    const-string v3, "token_type"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcn/sharesdk/line/c$1;->c:Lcn/sharesdk/line/c;

    invoke-static {v0}, Lcn/sharesdk/line/c;->c(Lcn/sharesdk/line/c;)Lcn/sharesdk/framework/authorize/SSOListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcn/sharesdk/framework/authorize/SSOListener;->onComplete(Landroid/os/Bundle;)V
    :try_end_8d
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_8d} :catch_8e

    goto :goto_1e

    .line 131
    :catch_8e
    move-exception v0

    .line 132
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 133
    iget-object v1, p0, Lcn/sharesdk/line/c$1;->c:Lcn/sharesdk/line/c;

    invoke-static {v1}, Lcn/sharesdk/line/c;->d(Lcn/sharesdk/line/c;)Lcn/sharesdk/framework/authorize/SSOListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcn/sharesdk/framework/authorize/SSOListener;->onFailed(Ljava/lang/Throwable;)V

    goto/16 :goto_1e
.end method
