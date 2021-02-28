.class Lcom/onevcat/uniwebview/UniWebViewChromeClient$1;
.super Ljava/lang/Object;
.source "UniWebViewChromeClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onevcat/uniwebview/UniWebViewChromeClient;->onPermissionRequest(Landroid/webkit/PermissionRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onevcat/uniwebview/UniWebViewChromeClient;

.field final synthetic val$request:Landroid/webkit/PermissionRequest;


# direct methods
.method constructor <init>(Lcom/onevcat/uniwebview/UniWebViewChromeClient;Landroid/webkit/PermissionRequest;)V
    .registers 3
    .param p1, "this$0"    # Lcom/onevcat/uniwebview/UniWebViewChromeClient;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient$1;->this$0:Lcom/onevcat/uniwebview/UniWebViewChromeClient;

    iput-object p2, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient$1;->val$request:Landroid/webkit/PermissionRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 97
    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient$1;->val$request:Landroid/webkit/PermissionRequest;

    invoke-virtual {v2}, Landroid/webkit/PermissionRequest;->getOrigin()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 98
    .local v1, "url":Ljava/net/URL;
    iget-object v2, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient$1;->this$0:Lcom/onevcat/uniwebview/UniWebViewChromeClient;

    invoke-static {v2}, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->access$000(Lcom/onevcat/uniwebview/UniWebViewChromeClient;)Lcom/onevcat/uniwebview/UniWebViewDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onevcat/uniwebview/UniWebViewDialog;->getPermissionTrustDomains()Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 99
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission domain \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' contains in permission trusted domains. Granting..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/onevcat/uniwebview/Logger;->info(Ljava/lang/String;)V

    .line 100
    iget-object v2, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient$1;->val$request:Landroid/webkit/PermissionRequest;

    iget-object v3, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient$1;->val$request:Landroid/webkit/PermissionRequest;

    invoke-virtual {v3}, Landroid/webkit/PermissionRequest;->getResources()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/PermissionRequest;->grant([Ljava/lang/String;)V

    .line 110
    .end local v1    # "url":Ljava/net/URL;
    :goto_52
    return-void

    .line 102
    .restart local v1    # "url":Ljava/net/URL;
    :cond_53
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission domain \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' is not allowed. Deny request."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/onevcat/uniwebview/Logger;->critical(Ljava/lang/String;)V

    .line 103
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v2

    const-string v3, "If you want to allow permission access from this domain, add it through `UniWebView.AddPermissionTrustDomain` first"

    invoke-virtual {v2, v3}, Lcom/onevcat/uniwebview/Logger;->critical(Ljava/lang/String;)V

    .line 104
    iget-object v2, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient$1;->val$request:Landroid/webkit/PermissionRequest;

    invoke-virtual {v2}, Landroid/webkit/PermissionRequest;->deny()V
    :try_end_85
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_85} :catch_86

    goto :goto_52

    .line 106
    .end local v1    # "url":Ljava/net/URL;
    :catch_86
    move-exception v0

    .line 107
    .local v0, "e":Ljava/net/MalformedURLException;
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPermissionRequest failed due to malformed url exception. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/onevcat/uniwebview/Logger;->critical(Ljava/lang/String;)V

    .line 108
    iget-object v2, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient$1;->val$request:Landroid/webkit/PermissionRequest;

    invoke-virtual {v2}, Landroid/webkit/PermissionRequest;->deny()V

    goto :goto_52
.end method
