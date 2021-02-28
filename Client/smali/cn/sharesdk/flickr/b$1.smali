.class Lcn/sharesdk/flickr/b$1;
.super Ljava/lang/Thread;
.source "FrlickrAuthorizeWebviewClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/flickr/b;->onComplete(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcn/sharesdk/flickr/b;


# direct methods
.method constructor <init>(Lcn/sharesdk/flickr/b;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 60
    iput-object p1, p0, Lcn/sharesdk/flickr/b$1;->b:Lcn/sharesdk/flickr/b;

    iput-object p2, p0, Lcn/sharesdk/flickr/b$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 63
    :try_start_0
    iget-object v0, p0, Lcn/sharesdk/flickr/b$1;->b:Lcn/sharesdk/flickr/b;

    iget-object v1, p0, Lcn/sharesdk/flickr/b$1;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/sharesdk/flickr/b;->a(Lcn/sharesdk/flickr/b;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_8

    .line 67
    :goto_7
    return-void

    .line 64
    :catch_8
    move-exception v0

    .line 65
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_7
.end method
