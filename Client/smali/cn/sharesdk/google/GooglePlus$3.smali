.class Lcn/sharesdk/google/GooglePlus$3;
.super Ljava/lang/Object;
.source "GooglePlus.java"

# interfaces
.implements Lcn/sharesdk/framework/PlatformActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/google/GooglePlus;->doShare(Lcn/sharesdk/framework/Platform$ShareParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/framework/Platform$ShareParams;

.field final synthetic b:Lcn/sharesdk/google/GooglePlus;


# direct methods
.method constructor <init>(Lcn/sharesdk/google/GooglePlus;Lcn/sharesdk/framework/Platform$ShareParams;)V
    .registers 3

    .prologue
    .line 237
    iput-object p1, p0, Lcn/sharesdk/google/GooglePlus$3;->b:Lcn/sharesdk/google/GooglePlus;

    iput-object p2, p0, Lcn/sharesdk/google/GooglePlus$3;->a:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcn/sharesdk/framework/Platform;I)V
    .registers 6
    .param p1, "platform"    # Lcn/sharesdk/framework/Platform;
    .param p2, "action"    # I

    .prologue
    .line 259
    iget-object v0, p0, Lcn/sharesdk/google/GooglePlus$3;->b:Lcn/sharesdk/google/GooglePlus;

    invoke-static {v0}, Lcn/sharesdk/google/GooglePlus;->z(Lcn/sharesdk/google/GooglePlus;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 260
    iget-object v0, p0, Lcn/sharesdk/google/GooglePlus$3;->b:Lcn/sharesdk/google/GooglePlus;

    invoke-static {v0}, Lcn/sharesdk/google/GooglePlus;->A(Lcn/sharesdk/google/GooglePlus;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/google/GooglePlus$3;->b:Lcn/sharesdk/google/GooglePlus;

    const/16 v2, 0x9

    invoke-interface {v0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 262
    :cond_15
    return-void
.end method

.method public onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    .registers 8
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
    .line 247
    .local p3, "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 248
    if-eqz p3, :cond_a

    .line 249
    invoke-virtual {v0, p3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 251
    :cond_a
    const-string v1, "ShareParams"

    iget-object v2, p0, Lcn/sharesdk/google/GooglePlus$3;->a:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    iget-object v1, p0, Lcn/sharesdk/google/GooglePlus$3;->b:Lcn/sharesdk/google/GooglePlus;

    invoke-static {v1}, Lcn/sharesdk/google/GooglePlus;->x(Lcn/sharesdk/google/GooglePlus;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v1

    if-eqz v1, :cond_26

    .line 254
    iget-object v1, p0, Lcn/sharesdk/google/GooglePlus$3;->b:Lcn/sharesdk/google/GooglePlus;

    invoke-static {v1}, Lcn/sharesdk/google/GooglePlus;->y(Lcn/sharesdk/google/GooglePlus;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v1

    iget-object v2, p0, Lcn/sharesdk/google/GooglePlus$3;->b:Lcn/sharesdk/google/GooglePlus;

    const/16 v3, 0x9

    invoke-interface {v1, v2, v3, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    .line 256
    :cond_26
    return-void
.end method

.method public onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    .registers 7
    .param p1, "platform"    # Lcn/sharesdk/framework/Platform;
    .param p2, "action"    # I
    .param p3, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 240
    iget-object v0, p0, Lcn/sharesdk/google/GooglePlus$3;->b:Lcn/sharesdk/google/GooglePlus;

    invoke-static {v0}, Lcn/sharesdk/google/GooglePlus;->v(Lcn/sharesdk/google/GooglePlus;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 241
    iget-object v0, p0, Lcn/sharesdk/google/GooglePlus$3;->b:Lcn/sharesdk/google/GooglePlus;

    invoke-static {v0}, Lcn/sharesdk/google/GooglePlus;->w(Lcn/sharesdk/google/GooglePlus;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/google/GooglePlus$3;->b:Lcn/sharesdk/google/GooglePlus;

    const/16 v2, 0x9

    invoke-interface {v0, v1, v2, p3}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 243
    :cond_15
    return-void
.end method
