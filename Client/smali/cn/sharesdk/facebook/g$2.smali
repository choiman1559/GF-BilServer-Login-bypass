.class Lcn/sharesdk/facebook/g$2;
.super Lcn/sharesdk/framework/d;
.source "WebShareActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/facebook/g;->a()Lcn/sharesdk/framework/authorize/RegisterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/facebook/g;


# direct methods
.method constructor <init>(Lcn/sharesdk/facebook/g;)V
    .registers 2

    .prologue
    .line 139
    iput-object p1, p0, Lcn/sharesdk/facebook/g$2;->a:Lcn/sharesdk/facebook/g;

    invoke-direct {p0}, Lcn/sharesdk/framework/d;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 141
    if-eqz p2, :cond_f

    const-string v0, "fbconnect://success"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 142
    iget-object v0, p0, Lcn/sharesdk/facebook/g$2;->a:Lcn/sharesdk/facebook/g;

    invoke-static {v0, p2}, Lcn/sharesdk/facebook/g;->a(Lcn/sharesdk/facebook/g;Ljava/lang/String;)V

    .line 144
    :cond_f
    invoke-super {p0, p1, p2}, Lcn/sharesdk/framework/d;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
