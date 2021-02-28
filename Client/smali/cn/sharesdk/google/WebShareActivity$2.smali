.class Lcn/sharesdk/google/WebShareActivity$2;
.super Lcn/sharesdk/framework/d;
.source "WebShareActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/google/WebShareActivity;->getBodyView()Lcn/sharesdk/framework/authorize/RegisterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/google/WebShareActivity;


# direct methods
.method constructor <init>(Lcn/sharesdk/google/WebShareActivity;)V
    .registers 2

    .prologue
    .line 141
    iput-object p1, p0, Lcn/sharesdk/google/WebShareActivity$2;->a:Lcn/sharesdk/google/WebShareActivity;

    invoke-direct {p0}, Lcn/sharesdk/framework/d;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 143
    invoke-super {p0, p1, p2}, Lcn/sharesdk/framework/d;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
