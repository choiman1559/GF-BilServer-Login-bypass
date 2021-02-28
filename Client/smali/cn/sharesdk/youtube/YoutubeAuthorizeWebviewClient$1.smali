.class Lcn/sharesdk/youtube/YoutubeAuthorizeWebviewClient$1;
.super Ljava/lang/Object;
.source "YoutubeAuthorizeWebviewClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/youtube/YoutubeAuthorizeWebviewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/youtube/YoutubeAuthorizeWebviewClient;


# direct methods
.method constructor <init>(Lcn/sharesdk/youtube/YoutubeAuthorizeWebviewClient;)V
    .registers 2

    .prologue
    .line 31
    iput-object p1, p0, Lcn/sharesdk/youtube/YoutubeAuthorizeWebviewClient$1;->a:Lcn/sharesdk/youtube/YoutubeAuthorizeWebviewClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcn/sharesdk/youtube/YoutubeAuthorizeWebviewClient$1;->a:Lcn/sharesdk/youtube/YoutubeAuthorizeWebviewClient;

    invoke-static {v0}, Lcn/sharesdk/youtube/YoutubeAuthorizeWebviewClient;->access$000(Lcn/sharesdk/youtube/YoutubeAuthorizeWebviewClient;)Lcn/sharesdk/framework/authorize/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/e;->finish()V

    .line 34
    return-void
.end method
