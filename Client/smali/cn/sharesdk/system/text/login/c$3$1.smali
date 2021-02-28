.class Lcn/sharesdk/system/text/login/c$3$1;
.super Ljava/lang/Object;
.source "RequestCore.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/system/text/login/c$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/HashMap;

.field final synthetic b:Lcn/sharesdk/system/text/login/c$3;


# direct methods
.method constructor <init>(Lcn/sharesdk/system/text/login/c$3;Ljava/util/HashMap;)V
    .registers 3

    .prologue
    .line 143
    iput-object p1, p0, Lcn/sharesdk/system/text/login/c$3$1;->b:Lcn/sharesdk/system/text/login/c$3;

    iput-object p2, p0, Lcn/sharesdk/system/text/login/c$3$1;->a:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 145
    iget-object v0, p0, Lcn/sharesdk/system/text/login/c$3$1;->b:Lcn/sharesdk/system/text/login/c$3;

    iget-object v0, v0, Lcn/sharesdk/system/text/login/c$3;->a:Lcn/sharesdk/system/text/login/c;

    invoke-static {v0}, Lcn/sharesdk/system/text/login/c;->l(Lcn/sharesdk/system/text/login/c;)Lcn/sharesdk/system/text/login/LoginActionListener;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/system/text/login/c$3$1;->a:Ljava/util/HashMap;

    invoke-interface {v0, v1}, Lcn/sharesdk/system/text/login/LoginActionListener;->onSuccess(Ljava/util/HashMap;)V

    .line 146
    iget-object v0, p0, Lcn/sharesdk/system/text/login/c$3$1;->b:Lcn/sharesdk/system/text/login/c$3;

    iget-object v0, v0, Lcn/sharesdk/system/text/login/c$3;->a:Lcn/sharesdk/system/text/login/c;

    invoke-static {v0}, Lcn/sharesdk/system/text/login/c;->m(Lcn/sharesdk/system/text/login/c;)Lcom/mob/tools/FakeActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/FakeActivity;->finish()V

    .line 147
    return-void
.end method
