.class Lcn/sharesdk/google/GooglePlusAuthorizeWebviewClient$1;
.super Ljava/lang/Object;
.source "GooglePlusAuthorizeWebviewClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/google/GooglePlusAuthorizeWebviewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/google/GooglePlusAuthorizeWebviewClient;


# direct methods
.method constructor <init>(Lcn/sharesdk/google/GooglePlusAuthorizeWebviewClient;)V
    .registers 2

    .prologue
    .line 27
    iput-object p1, p0, Lcn/sharesdk/google/GooglePlusAuthorizeWebviewClient$1;->a:Lcn/sharesdk/google/GooglePlusAuthorizeWebviewClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcn/sharesdk/google/GooglePlusAuthorizeWebviewClient$1;->a:Lcn/sharesdk/google/GooglePlusAuthorizeWebviewClient;

    invoke-static {v0}, Lcn/sharesdk/google/GooglePlusAuthorizeWebviewClient;->access$000(Lcn/sharesdk/google/GooglePlusAuthorizeWebviewClient;)Lcn/sharesdk/framework/authorize/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/e;->finish()V

    .line 30
    return-void
.end method
