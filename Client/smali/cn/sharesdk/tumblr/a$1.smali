.class Lcn/sharesdk/tumblr/a$1;
.super Ljava/lang/Thread;
.source "TumblrAuthorizeWebviewClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/tumblr/a;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcn/sharesdk/tumblr/a;


# direct methods
.method constructor <init>(Lcn/sharesdk/tumblr/a;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 26
    iput-object p1, p0, Lcn/sharesdk/tumblr/a$1;->b:Lcn/sharesdk/tumblr/a;

    iput-object p2, p0, Lcn/sharesdk/tumblr/a$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 29
    :try_start_0
    iget-object v0, p0, Lcn/sharesdk/tumblr/a$1;->b:Lcn/sharesdk/tumblr/a;

    iget-object v1, p0, Lcn/sharesdk/tumblr/a$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/tumblr/a;->onComplete(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_8

    .line 33
    :goto_7
    return-void

    .line 30
    :catch_8
    move-exception v0

    .line 31
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_7
.end method
