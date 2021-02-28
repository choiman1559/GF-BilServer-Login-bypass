.class Lcn/sharesdk/system/text/login/c$3;
.super Ljava/lang/Object;
.source "RequestCore.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/system/text/login/c;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/system/text/login/c;


# direct methods
.method constructor <init>(Lcn/sharesdk/system/text/login/c;)V
    .registers 2

    .prologue
    .line 131
    iput-object p1, p0, Lcn/sharesdk/system/text/login/c$3;->a:Lcn/sharesdk/system/text/login/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 133
    iget-object v0, p0, Lcn/sharesdk/system/text/login/c$3;->a:Lcn/sharesdk/system/text/login/c;

    invoke-static {v0}, Lcn/sharesdk/system/text/login/c;->h(Lcn/sharesdk/system/text/login/c;)Lcn/sharesdk/system/text/login/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/sharesdk/system/text/login/a;->a()V

    .line 134
    iget-object v0, p0, Lcn/sharesdk/system/text/login/c$3;->a:Lcn/sharesdk/system/text/login/c;

    invoke-static {v0}, Lcn/sharesdk/system/text/login/c;->g(Lcn/sharesdk/system/text/login/c;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "ssdk_sms_dialog_login_success"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 135
    if-lez v0, :cond_6e

    .line 136
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 137
    const-string v2, "phoneNumber"

    iget-object v3, p0, Lcn/sharesdk/system/text/login/c$3;->a:Lcn/sharesdk/system/text/login/c;

    invoke-static {v3}, Lcn/sharesdk/system/text/login/c;->b(Lcn/sharesdk/system/text/login/c;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const-string v2, "country"

    iget-object v3, p0, Lcn/sharesdk/system/text/login/c$3;->a:Lcn/sharesdk/system/text/login/c;

    invoke-static {v3}, Lcn/sharesdk/system/text/login/c;->k(Lcn/sharesdk/system/text/login/c;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const-string v2, "zone"

    iget-object v3, p0, Lcn/sharesdk/system/text/login/c$3;->a:Lcn/sharesdk/system/text/login/c;

    invoke-static {v3}, Lcn/sharesdk/system/text/login/c;->a(Lcn/sharesdk/system/text/login/c;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-string v2, "smart"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string v2, "type"

    iget-object v3, p0, Lcn/sharesdk/system/text/login/c$3;->a:Lcn/sharesdk/system/text/login/c;

    invoke-static {v3}, Lcn/sharesdk/system/text/login/c;->c(Lcn/sharesdk/system/text/login/c;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    new-instance v2, Lcn/sharesdk/system/text/login/a;

    iget-object v3, p0, Lcn/sharesdk/system/text/login/c$3;->a:Lcn/sharesdk/system/text/login/c;

    invoke-static {v3}, Lcn/sharesdk/system/text/login/c;->g(Lcn/sharesdk/system/text/login/c;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcn/sharesdk/system/text/login/a;-><init>(Landroid/content/Context;)V

    .line 143
    const/4 v3, 0x2

    invoke-virtual {v2, v0, v3}, Lcn/sharesdk/system/text/login/a;->a(II)Lcn/sharesdk/system/text/login/utils/a;

    move-result-object v0

    new-instance v2, Lcn/sharesdk/system/text/login/c$3$1;

    invoke-direct {v2, p0, v1}, Lcn/sharesdk/system/text/login/c$3$1;-><init>(Lcn/sharesdk/system/text/login/c$3;Ljava/util/HashMap;)V

    invoke-virtual {v0, v2}, Lcn/sharesdk/system/text/login/utils/a;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 150
    :cond_6e
    return-void
.end method
