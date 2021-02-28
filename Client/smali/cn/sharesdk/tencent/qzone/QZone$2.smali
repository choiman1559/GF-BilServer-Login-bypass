.class Lcn/sharesdk/tencent/qzone/QZone$2;
.super Ljava/lang/Object;
.source "QZone.java"

# interfaces
.implements Lcn/sharesdk/framework/PlatformActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/tencent/qzone/QZone;->b(Lcn/sharesdk/framework/Platform$ShareParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/framework/PlatformActionListener;

.field final synthetic b:Lcn/sharesdk/framework/Platform$ShareParams;

.field final synthetic c:Lcn/sharesdk/tencent/qzone/QZone;


# direct methods
.method constructor <init>(Lcn/sharesdk/tencent/qzone/QZone;Lcn/sharesdk/framework/PlatformActionListener;Lcn/sharesdk/framework/Platform$ShareParams;)V
    .registers 4

    .prologue
    .line 194
    iput-object p1, p0, Lcn/sharesdk/tencent/qzone/QZone$2;->c:Lcn/sharesdk/tencent/qzone/QZone;

    iput-object p2, p0, Lcn/sharesdk/tencent/qzone/QZone$2;->a:Lcn/sharesdk/framework/PlatformActionListener;

    iput-object p3, p0, Lcn/sharesdk/tencent/qzone/QZone$2;->b:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcn/sharesdk/framework/Platform;I)V
    .registers 5
    .param p1, "platform"    # Lcn/sharesdk/framework/Platform;
    .param p2, "action"    # I

    .prologue
    .line 207
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/QZone$2;->a:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_b

    .line 208
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/QZone$2;->a:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v1, 0x9

    invoke-interface {v0, p1, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 210
    :cond_b
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
    .line 202
    .local p3, "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/QZone$2;->c:Lcn/sharesdk/tencent/qzone/QZone;

    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/QZone$2;->a:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-virtual {v0, v1}, Lcn/sharesdk/tencent/qzone/QZone;->setPlatformActionListener(Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 203
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/QZone$2;->c:Lcn/sharesdk/tencent/qzone/QZone;

    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/QZone$2;->b:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v0, v1}, Lcn/sharesdk/tencent/qzone/QZone;->doShare(Lcn/sharesdk/framework/Platform$ShareParams;)V

    .line 204
    return-void
.end method

.method public onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    .registers 6
    .param p1, "platform"    # Lcn/sharesdk/framework/Platform;
    .param p2, "action"    # I
    .param p3, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 196
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/QZone$2;->a:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_b

    .line 197
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/QZone$2;->a:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v1, 0x9

    invoke-interface {v0, p1, v1, p3}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 199
    :cond_b
    return-void
.end method
