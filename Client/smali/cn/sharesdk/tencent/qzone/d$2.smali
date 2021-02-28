.class Lcn/sharesdk/tencent/qzone/d$2;
.super Lcn/sharesdk/framework/d;
.source "ShareActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/tencent/qzone/d;->a()Lcn/sharesdk/framework/authorize/RegisterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/tencent/qzone/d;


# direct methods
.method constructor <init>(Lcn/sharesdk/tencent/qzone/d;)V
    .registers 2

    .prologue
    .line 205
    iput-object p1, p0, Lcn/sharesdk/tencent/qzone/d$2;->a:Lcn/sharesdk/tencent/qzone/d;

    invoke-direct {p0}, Lcn/sharesdk/framework/d;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 207
    if-eqz p2, :cond_18

    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/d$2;->a:Lcn/sharesdk/tencent/qzone/d;

    invoke-static {v0}, Lcn/sharesdk/tencent/qzone/d;->b(Lcn/sharesdk/tencent/qzone/d;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 208
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/d$2;->a:Lcn/sharesdk/tencent/qzone/d;

    invoke-static {v0, p2}, Lcn/sharesdk/tencent/qzone/d;->a(Lcn/sharesdk/tencent/qzone/d;Ljava/lang/String;)V

    .line 212
    :cond_13
    :goto_13
    invoke-super {p0, p1, p2}, Lcn/sharesdk/framework/d;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 209
    :cond_18
    if-eqz p2, :cond_13

    const-string v0, "mqzone://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 210
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/d$2;->a:Lcn/sharesdk/tencent/qzone/d;

    invoke-static {v0, p2}, Lcn/sharesdk/tencent/qzone/d;->b(Lcn/sharesdk/tencent/qzone/d;Ljava/lang/String;)V

    goto :goto_13
.end method
