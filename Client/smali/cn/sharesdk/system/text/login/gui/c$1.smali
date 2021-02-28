.class Lcn/sharesdk/system/text/login/gui/c$1;
.super Ljava/lang/Object;
.source "IdentifyNumPage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/system/text/login/gui/c;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/system/text/login/gui/c;


# direct methods
.method constructor <init>(Lcn/sharesdk/system/text/login/gui/c;)V
    .registers 2

    .prologue
    .line 71
    iput-object p1, p0, Lcn/sharesdk/system/text/login/gui/c$1;->a:Lcn/sharesdk/system/text/login/gui/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 74
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/c$1;->a:Lcn/sharesdk/system/text/login/gui/c;

    new-instance v1, Lcn/sharesdk/system/text/login/c;

    iget-object v2, p0, Lcn/sharesdk/system/text/login/gui/c$1;->a:Lcn/sharesdk/system/text/login/gui/c;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcn/sharesdk/system/text/login/c;-><init>(Lcom/mob/tools/FakeActivity;Lcn/sharesdk/system/text/login/a;)V

    invoke-static {v0, v1}, Lcn/sharesdk/system/text/login/gui/c;->a(Lcn/sharesdk/system/text/login/gui/c;Lcn/sharesdk/system/text/login/c;)Lcn/sharesdk/system/text/login/c;

    .line 75
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/c$1;->a:Lcn/sharesdk/system/text/login/gui/c;

    invoke-static {v0}, Lcn/sharesdk/system/text/login/gui/c;->b(Lcn/sharesdk/system/text/login/gui/c;)Lcn/sharesdk/system/text/login/c;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/system/text/login/gui/c$1;->a:Lcn/sharesdk/system/text/login/gui/c;

    invoke-static {v1}, Lcn/sharesdk/system/text/login/gui/c;->a(Lcn/sharesdk/system/text/login/gui/c;)Lcn/sharesdk/system/text/login/LoginActionListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/sharesdk/system/text/login/c;->a(Lcn/sharesdk/system/text/login/LoginActionListener;)V

    .line 76
    return-void
.end method
