.class Lcn/sharesdk/system/text/login/c$4;
.super Ljava/lang/Object;
.source "RequestCore.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/system/text/login/c;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/HashMap;

.field final synthetic b:Lcn/sharesdk/system/text/login/c;


# direct methods
.method constructor <init>(Lcn/sharesdk/system/text/login/c;Ljava/util/HashMap;)V
    .registers 3

    .prologue
    .line 174
    iput-object p1, p0, Lcn/sharesdk/system/text/login/c$4;->b:Lcn/sharesdk/system/text/login/c;

    iput-object p2, p0, Lcn/sharesdk/system/text/login/c$4;->a:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 176
    iget-object v0, p0, Lcn/sharesdk/system/text/login/c$4;->b:Lcn/sharesdk/system/text/login/c;

    invoke-static {v0}, Lcn/sharesdk/system/text/login/c;->l(Lcn/sharesdk/system/text/login/c;)Lcn/sharesdk/system/text/login/LoginActionListener;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/system/text/login/c$4;->a:Ljava/util/HashMap;

    invoke-interface {v0, v1}, Lcn/sharesdk/system/text/login/LoginActionListener;->onSuccess(Ljava/util/HashMap;)V

    .line 177
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 178
    const-string v1, "page"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-object v1, p0, Lcn/sharesdk/system/text/login/c$4;->b:Lcn/sharesdk/system/text/login/c;

    invoke-static {v1}, Lcn/sharesdk/system/text/login/c;->m(Lcn/sharesdk/system/text/login/c;)Lcom/mob/tools/FakeActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/FakeActivity;->setResult(Ljava/util/HashMap;)V

    .line 180
    iget-object v0, p0, Lcn/sharesdk/system/text/login/c$4;->b:Lcn/sharesdk/system/text/login/c;

    invoke-static {v0}, Lcn/sharesdk/system/text/login/c;->m(Lcn/sharesdk/system/text/login/c;)Lcom/mob/tools/FakeActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/FakeActivity;->finish()V

    .line 181
    return-void
.end method
