.class Lcn/sharesdk/whatsapp/WhatsApp$1;
.super Ljava/lang/Object;
.source "WhatsApp.java"

# interfaces
.implements Lcn/sharesdk/framework/PlatformActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/whatsapp/WhatsApp;->doShare(Lcn/sharesdk/framework/Platform$ShareParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/framework/Platform$ShareParams;

.field final synthetic b:Lcn/sharesdk/whatsapp/WhatsApp;


# direct methods
.method constructor <init>(Lcn/sharesdk/whatsapp/WhatsApp;Lcn/sharesdk/framework/Platform$ShareParams;)V
    .registers 3

    .prologue
    .line 87
    iput-object p1, p0, Lcn/sharesdk/whatsapp/WhatsApp$1;->b:Lcn/sharesdk/whatsapp/WhatsApp;

    iput-object p2, p0, Lcn/sharesdk/whatsapp/WhatsApp$1;->a:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcn/sharesdk/framework/Platform;I)V
    .registers 4
    .param p1, "platform"    # Lcn/sharesdk/framework/Platform;
    .param p2, "action"    # I

    .prologue
    .line 108
    iget-object v0, p0, Lcn/sharesdk/whatsapp/WhatsApp$1;->b:Lcn/sharesdk/whatsapp/WhatsApp;

    invoke-static {v0}, Lcn/sharesdk/whatsapp/WhatsApp;->e(Lcn/sharesdk/whatsapp/WhatsApp;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 109
    iget-object v0, p0, Lcn/sharesdk/whatsapp/WhatsApp$1;->b:Lcn/sharesdk/whatsapp/WhatsApp;

    invoke-static {v0}, Lcn/sharesdk/whatsapp/WhatsApp;->f(Lcn/sharesdk/whatsapp/WhatsApp;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 111
    :cond_11
    return-void
.end method

.method public onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    .registers 7
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
    .line 96
    .local p3, "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 97
    if-eqz p3, :cond_a

    .line 98
    invoke-virtual {v0, p3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 100
    :cond_a
    const-string v1, "ShareParams"

    iget-object v2, p0, Lcn/sharesdk/whatsapp/WhatsApp$1;->a:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v1, p0, Lcn/sharesdk/whatsapp/WhatsApp$1;->b:Lcn/sharesdk/whatsapp/WhatsApp;

    invoke-static {v1}, Lcn/sharesdk/whatsapp/WhatsApp;->c(Lcn/sharesdk/whatsapp/WhatsApp;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v1

    if-eqz v1, :cond_22

    .line 102
    iget-object v1, p0, Lcn/sharesdk/whatsapp/WhatsApp$1;->b:Lcn/sharesdk/whatsapp/WhatsApp;

    invoke-static {v1}, Lcn/sharesdk/whatsapp/WhatsApp;->d(Lcn/sharesdk/whatsapp/WhatsApp;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v1

    invoke-interface {v1, p1, p2, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    .line 105
    :cond_22
    return-void
.end method

.method public onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    .registers 5
    .param p1, "platform"    # Lcn/sharesdk/framework/Platform;
    .param p2, "action"    # I
    .param p3, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 90
    iget-object v0, p0, Lcn/sharesdk/whatsapp/WhatsApp$1;->b:Lcn/sharesdk/whatsapp/WhatsApp;

    invoke-static {v0}, Lcn/sharesdk/whatsapp/WhatsApp;->a(Lcn/sharesdk/whatsapp/WhatsApp;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 91
    iget-object v0, p0, Lcn/sharesdk/whatsapp/WhatsApp$1;->b:Lcn/sharesdk/whatsapp/WhatsApp;

    invoke-static {v0}, Lcn/sharesdk/whatsapp/WhatsApp;->b(Lcn/sharesdk/whatsapp/WhatsApp;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 93
    :cond_11
    return-void
.end method
