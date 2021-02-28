.class Lcn/sharesdk/system/text/login/gui/d$1;
.super Ljava/lang/Object;
.source "InputPhoneNumPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/system/text/login/gui/d;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/system/text/login/a;

.field final synthetic b:Lcn/sharesdk/system/text/login/gui/d;


# direct methods
.method constructor <init>(Lcn/sharesdk/system/text/login/gui/d;Lcn/sharesdk/system/text/login/a;)V
    .registers 3

    .prologue
    .line 80
    iput-object p1, p0, Lcn/sharesdk/system/text/login/gui/d$1;->b:Lcn/sharesdk/system/text/login/gui/d;

    iput-object p2, p0, Lcn/sharesdk/system/text/login/gui/d$1;->a:Lcn/sharesdk/system/text/login/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 82
    new-instance v0, Lcn/sharesdk/system/text/login/c;

    iget-object v1, p0, Lcn/sharesdk/system/text/login/gui/d$1;->b:Lcn/sharesdk/system/text/login/gui/d;

    iget-object v2, p0, Lcn/sharesdk/system/text/login/gui/d$1;->a:Lcn/sharesdk/system/text/login/a;

    invoke-direct {v0, v1, v2}, Lcn/sharesdk/system/text/login/c;-><init>(Lcom/mob/tools/FakeActivity;Lcn/sharesdk/system/text/login/a;)V

    .line 83
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 84
    iget-object v2, p0, Lcn/sharesdk/system/text/login/gui/d$1;->b:Lcn/sharesdk/system/text/login/gui/d;

    invoke-static {v2}, Lcn/sharesdk/system/text/login/gui/d;->a(Lcn/sharesdk/system/text/login/gui/d;)Lcn/sharesdk/system/text/login/LoginActionListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/sharesdk/system/text/login/c;->a(Lcn/sharesdk/system/text/login/LoginActionListener;)V

    .line 85
    invoke-virtual {v0, v4}, Lcn/sharesdk/system/text/login/c;->a(I)V

    .line 86
    const-string v2, "zone"

    iget-object v3, p0, Lcn/sharesdk/system/text/login/gui/d$1;->b:Lcn/sharesdk/system/text/login/gui/d;

    invoke-static {v3}, Lcn/sharesdk/system/text/login/gui/d;->b(Lcn/sharesdk/system/text/login/gui/d;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string v2, "phone"

    iget-object v3, p0, Lcn/sharesdk/system/text/login/gui/d$1;->b:Lcn/sharesdk/system/text/login/gui/d;

    invoke-static {v3}, Lcn/sharesdk/system/text/login/gui/d;->c(Lcn/sharesdk/system/text/login/gui/d;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string v2, "country"

    iget-object v3, p0, Lcn/sharesdk/system/text/login/gui/d$1;->b:Lcn/sharesdk/system/text/login/gui/d;

    invoke-static {v3}, Lcn/sharesdk/system/text/login/gui/d;->d(Lcn/sharesdk/system/text/login/gui/d;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string v2, "type"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    invoke-virtual {v0, v1}, Lcn/sharesdk/system/text/login/c;->a(Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 91
    return-void
.end method
