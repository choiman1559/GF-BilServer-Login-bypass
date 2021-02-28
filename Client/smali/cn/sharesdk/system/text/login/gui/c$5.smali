.class Lcn/sharesdk/system/text/login/gui/c$5;
.super Ljava/lang/Object;
.source "IdentifyNumPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/system/text/login/gui/c;->onKeyEvent(ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/system/text/login/a;

.field final synthetic b:Lcn/sharesdk/system/text/login/gui/c;


# direct methods
.method constructor <init>(Lcn/sharesdk/system/text/login/gui/c;Lcn/sharesdk/system/text/login/a;)V
    .registers 3

    .prologue
    .line 204
    iput-object p1, p0, Lcn/sharesdk/system/text/login/gui/c$5;->b:Lcn/sharesdk/system/text/login/gui/c;

    iput-object p2, p0, Lcn/sharesdk/system/text/login/gui/c$5;->a:Lcn/sharesdk/system/text/login/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 207
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 208
    const-string v1, "page"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    const-string v1, "listener"

    iget-object v2, p0, Lcn/sharesdk/system/text/login/gui/c$5;->b:Lcn/sharesdk/system/text/login/gui/c;

    invoke-static {v2}, Lcn/sharesdk/system/text/login/gui/c;->a(Lcn/sharesdk/system/text/login/gui/c;)Lcn/sharesdk/system/text/login/LoginActionListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    iget-object v1, p0, Lcn/sharesdk/system/text/login/gui/c$5;->b:Lcn/sharesdk/system/text/login/gui/c;

    invoke-virtual {v1, v0}, Lcn/sharesdk/system/text/login/gui/c;->setResult(Ljava/util/HashMap;)V

    .line 211
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/c$5;->a:Lcn/sharesdk/system/text/login/a;

    invoke-virtual {v0}, Lcn/sharesdk/system/text/login/a;->a()V

    .line 212
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/c$5;->b:Lcn/sharesdk/system/text/login/gui/c;

    invoke-virtual {v0}, Lcn/sharesdk/system/text/login/gui/c;->finish()V

    .line 213
    return-void
.end method
