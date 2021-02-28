.class Lcn/sharesdk/framework/d$2;
.super Ljava/lang/Object;
.source "SSDKWebViewClient.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/framework/d;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/webkit/SslErrorHandler;

.field final synthetic b:Lcn/sharesdk/framework/d;


# direct methods
.method constructor <init>(Lcn/sharesdk/framework/d;Landroid/webkit/SslErrorHandler;)V
    .registers 3

    .prologue
    .line 278
    iput-object p1, p0, Lcn/sharesdk/framework/d$2;->b:Lcn/sharesdk/framework/d;

    iput-object p2, p0, Lcn/sharesdk/framework/d$2;->a:Landroid/webkit/SslErrorHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 280
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 281
    iget-object v0, p0, Lcn/sharesdk/framework/d$2;->a:Landroid/webkit/SslErrorHandler;

    invoke-virtual {v0}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 282
    return-void
.end method
