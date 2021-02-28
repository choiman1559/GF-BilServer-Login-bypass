.class Lcn/sharesdk/tencent/qq/e$2;
.super Lcn/sharesdk/framework/d;
.source "WebShareActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/tencent/qq/e;->a()Lcn/sharesdk/framework/authorize/RegisterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/tencent/qq/e;


# direct methods
.method constructor <init>(Lcn/sharesdk/tencent/qq/e;)V
    .registers 2

    .prologue
    .line 145
    iput-object p1, p0, Lcn/sharesdk/tencent/qq/e$2;->a:Lcn/sharesdk/tencent/qq/e;

    invoke-direct {p0}, Lcn/sharesdk/framework/d;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 7
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 162
    if-eqz p2, :cond_27

    const-string v0, "wtloginmqq://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 163
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/e$2;->a:Lcn/sharesdk/tencent/qq/e;

    invoke-static {v0}, Lcn/sharesdk/tencent/qq/e;->e(Lcn/sharesdk/tencent/qq/e;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "ssdk_use_login_button"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 164
    if-lez v0, :cond_26

    .line 165
    iget-object v1, p0, Lcn/sharesdk/tencent/qq/e$2;->a:Lcn/sharesdk/tencent/qq/e;

    invoke-static {v1}, Lcn/sharesdk/tencent/qq/e;->f(Lcn/sharesdk/tencent/qq/e;)Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 170
    :cond_26
    :goto_26
    return-void

    .line 169
    :cond_27
    invoke-super {p0, p1, p2, p3}, Lcn/sharesdk/framework/d;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_26
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 7
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 147
    if-eqz p2, :cond_19

    iget-object v1, p0, Lcn/sharesdk/tencent/qq/e$2;->a:Lcn/sharesdk/tencent/qq/e;

    invoke-static {v1}, Lcn/sharesdk/tencent/qq/e;->b(Lcn/sharesdk/tencent/qq/e;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 148
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/e$2;->a:Lcn/sharesdk/tencent/qq/e;

    invoke-static {v0, p2}, Lcn/sharesdk/tencent/qq/e;->a(Lcn/sharesdk/tencent/qq/e;Ljava/lang/String;)V

    .line 158
    :cond_14
    :goto_14
    invoke-super {p0, p1, p2}, Lcn/sharesdk/framework/d;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    :cond_18
    :goto_18
    return v0

    .line 149
    :cond_19
    if-eqz p2, :cond_29

    const-string v1, "http://www.myapp.com/down/"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 150
    iget-object v1, p0, Lcn/sharesdk/tencent/qq/e$2;->a:Lcn/sharesdk/tencent/qq/e;

    invoke-static {v1, v0}, Lcn/sharesdk/tencent/qq/e;->a(Lcn/sharesdk/tencent/qq/e;Z)Z

    goto :goto_14

    .line 151
    :cond_29
    if-eqz p2, :cond_14

    const-string v1, "wtloginmqq://"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 152
    iget-object v1, p0, Lcn/sharesdk/tencent/qq/e$2;->a:Lcn/sharesdk/tencent/qq/e;

    invoke-static {v1}, Lcn/sharesdk/tencent/qq/e;->c(Lcn/sharesdk/tencent/qq/e;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, "ssdk_use_login_button"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 153
    if-lez v1, :cond_18

    .line 154
    iget-object v2, p0, Lcn/sharesdk/tencent/qq/e$2;->a:Lcn/sharesdk/tencent/qq/e;

    invoke-static {v2}, Lcn/sharesdk/tencent/qq/e;->d(Lcn/sharesdk/tencent/qq/e;)Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_18
.end method
