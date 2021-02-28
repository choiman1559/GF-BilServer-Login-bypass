.class Lcn/sharesdk/system/text/login/a/c$3;
.super Ljava/lang/Object;
.source "IdentifyNumPageLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/system/text/login/a/c;->j()Lcn/sharesdk/framework/TitleLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/system/text/login/a/c;


# direct methods
.method constructor <init>(Lcn/sharesdk/system/text/login/a/c;)V
    .registers 2

    .prologue
    .line 255
    iput-object p1, p0, Lcn/sharesdk/system/text/login/a/c$3;->a:Lcn/sharesdk/system/text/login/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 258
    :try_start_0
    iget-object v0, p0, Lcn/sharesdk/system/text/login/a/c$3;->a:Lcn/sharesdk/system/text/login/a/c;

    invoke-static {v0}, Lcn/sharesdk/system/text/login/a/c;->a(Lcn/sharesdk/system/text/login/a/c;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "ssdk_website"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 259
    const/4 v0, 0x0

    .line 260
    if-lez v1, :cond_17

    .line 261
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 263
    :cond_17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_31

    .line 264
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 265
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 266
    iget-object v0, p0, Lcn/sharesdk/system/text/login/a/c$3;->a:Lcn/sharesdk/system/text/login/a/c;

    invoke-static {v0}, Lcn/sharesdk/system/text/login/a/c;->a(Lcn/sharesdk/system/text/login/a/c;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_31} :catch_32

    .line 271
    :cond_31
    :goto_31
    return-void

    .line 268
    :catch_32
    move-exception v0

    .line 269
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_31
.end method
