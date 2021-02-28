.class Lcn/sharesdk/google/GooglePlus$1;
.super Ljava/lang/Object;
.source "GooglePlus.java"

# interfaces
.implements Lcn/sharesdk/framework/PlatformActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/google/GooglePlus;->doAuthorize([Ljava/lang/String;)V
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
    .line 98
    iput-object p1, p0, Lcn/sharesdk/google/GooglePlus$1;->a:Lcn/sharesdk/google/GooglePlus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcn/sharesdk/framework/Platform;I)V
    .registers 4
    .param p1, "platform"    # Lcn/sharesdk/framework/Platform;
    .param p2, "action"    # I

    .prologue
    .line 130
    iget-object v0, p0, Lcn/sharesdk/google/GooglePlus$1;->a:Lcn/sharesdk/google/GooglePlus;

    invoke-static {v0}, Lcn/sharesdk/google/GooglePlus;->m(Lcn/sharesdk/google/GooglePlus;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 131
    iget-object v0, p0, Lcn/sharesdk/google/GooglePlus$1;->a:Lcn/sharesdk/google/GooglePlus;

    invoke-static {v0}, Lcn/sharesdk/google/GooglePlus;->n(Lcn/sharesdk/google/GooglePlus;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 133
    :cond_11
    iget-object v0, p0, Lcn/sharesdk/google/GooglePlus$1;->a:Lcn/sharesdk/google/GooglePlus;

    invoke-static {v0}, Lcn/sharesdk/google/GooglePlus;->c(Lcn/sharesdk/google/GooglePlus;)Lcn/sharesdk/google/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/sharesdk/google/a;->b()V

    .line 134
    return-void
.end method

.method public onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    .registers 11
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
    .line 109
    .local p3, "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "DisplayName"

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c7

    const-string v0, "DisplayName"

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 110
    :goto_11
    const-string v0, "image"

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cc

    const-string v0, "image"

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 111
    :goto_22
    const-string v0, "gender"

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d1

    const-string v0, "gender"

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 112
    :goto_35
    const-string v0, "url"

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d6

    const-string v0, "url"

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    .line 113
    :goto_46
    const-string v0, "birthday"

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_db

    const-string v0, "birthday"

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    .line 115
    :goto_57
    iget-object v0, p0, Lcn/sharesdk/google/GooglePlus$1;->a:Lcn/sharesdk/google/GooglePlus;

    invoke-static {v0}, Lcn/sharesdk/google/GooglePlus;->d(Lcn/sharesdk/google/GooglePlus;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v6

    const-string v0, "id"

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcn/sharesdk/framework/PlatformDb;->putUserId(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcn/sharesdk/google/GooglePlus$1;->a:Lcn/sharesdk/google/GooglePlus;

    invoke-static {v0}, Lcn/sharesdk/google/GooglePlus;->e(Lcn/sharesdk/google/GooglePlus;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    const-string v6, "nickname"

    invoke-virtual {v0, v6, v1}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcn/sharesdk/google/GooglePlus$1;->a:Lcn/sharesdk/google/GooglePlus;

    invoke-static {v0}, Lcn/sharesdk/google/GooglePlus;->f(Lcn/sharesdk/google/GooglePlus;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    const-string v1, "icon"

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcn/sharesdk/google/GooglePlus$1;->a:Lcn/sharesdk/google/GooglePlus;

    invoke-static {v0}, Lcn/sharesdk/google/GooglePlus;->g(Lcn/sharesdk/google/GooglePlus;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    const-string v1, "gender"

    invoke-virtual {v0, v1, v3}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcn/sharesdk/google/GooglePlus$1;->a:Lcn/sharesdk/google/GooglePlus;

    invoke-static {v0}, Lcn/sharesdk/google/GooglePlus;->h(Lcn/sharesdk/google/GooglePlus;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    const-string v1, "snsUserUrl"

    invoke-virtual {v0, v1, v4}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcn/sharesdk/google/GooglePlus$1;->a:Lcn/sharesdk/google/GooglePlus;

    invoke-static {v0}, Lcn/sharesdk/google/GooglePlus;->i(Lcn/sharesdk/google/GooglePlus;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    const-string v1, "birthday"

    invoke-virtual {v0, v1, v5}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcn/sharesdk/google/GooglePlus$1;->a:Lcn/sharesdk/google/GooglePlus;

    invoke-static {v0}, Lcn/sharesdk/google/GooglePlus;->j(Lcn/sharesdk/google/GooglePlus;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    const-string v1, "isSigin"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcn/sharesdk/google/GooglePlus$1;->a:Lcn/sharesdk/google/GooglePlus;

    invoke-static {v0}, Lcn/sharesdk/google/GooglePlus;->k(Lcn/sharesdk/google/GooglePlus;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_bd

    .line 124
    iget-object v0, p0, Lcn/sharesdk/google/GooglePlus$1;->a:Lcn/sharesdk/google/GooglePlus;

    invoke-static {v0}, Lcn/sharesdk/google/GooglePlus;->l(Lcn/sharesdk/google/GooglePlus;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    .line 126
    :cond_bd
    iget-object v0, p0, Lcn/sharesdk/google/GooglePlus$1;->a:Lcn/sharesdk/google/GooglePlus;

    invoke-static {v0}, Lcn/sharesdk/google/GooglePlus;->c(Lcn/sharesdk/google/GooglePlus;)Lcn/sharesdk/google/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/sharesdk/google/a;->b()V

    .line 127
    return-void

    .line 109
    :cond_c7
    const-string v0, ""

    move-object v1, v0

    goto/16 :goto_11

    .line 110
    :cond_cc
    const-string v0, ""

    move-object v2, v0

    goto/16 :goto_22

    .line 111
    :cond_d1
    const-string v0, ""

    move-object v3, v0

    goto/16 :goto_35

    .line 112
    :cond_d6
    const-string v0, ""

    move-object v4, v0

    goto/16 :goto_46

    .line 113
    :cond_db
    const-string v0, ""

    move-object v5, v0

    goto/16 :goto_57
.end method

.method public onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    .registers 5
    .param p1, "platform"    # Lcn/sharesdk/framework/Platform;
    .param p2, "action"    # I
    .param p3, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 101
    iget-object v0, p0, Lcn/sharesdk/google/GooglePlus$1;->a:Lcn/sharesdk/google/GooglePlus;

    invoke-static {v0}, Lcn/sharesdk/google/GooglePlus;->a(Lcn/sharesdk/google/GooglePlus;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 102
    iget-object v0, p0, Lcn/sharesdk/google/GooglePlus$1;->a:Lcn/sharesdk/google/GooglePlus;

    invoke-static {v0}, Lcn/sharesdk/google/GooglePlus;->b(Lcn/sharesdk/google/GooglePlus;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 104
    :cond_11
    iget-object v0, p0, Lcn/sharesdk/google/GooglePlus$1;->a:Lcn/sharesdk/google/GooglePlus;

    invoke-static {v0}, Lcn/sharesdk/google/GooglePlus;->c(Lcn/sharesdk/google/GooglePlus;)Lcn/sharesdk/google/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/sharesdk/google/a;->b()V

    .line 105
    return-void
.end method
