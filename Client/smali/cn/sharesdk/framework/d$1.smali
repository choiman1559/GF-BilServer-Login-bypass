.class Lcn/sharesdk/framework/d$1;
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
    .line 268
    iput-object p1, p0, Lcn/sharesdk/framework/d$1;->b:Lcn/sharesdk/framework/d;

    iput-object p2, p0, Lcn/sharesdk/framework/d$1;->a:Landroid/webkit/SslErrorHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 270
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 272
    :try_start_3
    iget-object v0, p0, Lcn/sharesdk/framework/d$1;->a:Landroid/webkit/SslErrorHandler;

    invoke-virtual {v0}, Landroid/webkit/SslErrorHandler;->proceed()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_8} :catch_9

    .line 276
    :goto_8
    return-void

    .line 273
    :catch_9
    move-exception v0

    .line 274
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_8
.end method
