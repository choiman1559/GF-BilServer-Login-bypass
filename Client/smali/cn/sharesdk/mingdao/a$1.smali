.class Lcn/sharesdk/mingdao/a$1;
.super Ljava/lang/Thread;
.source "MingdaoAuthorizeWebviewClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/mingdao/a;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcn/sharesdk/mingdao/a;


# direct methods
.method constructor <init>(Lcn/sharesdk/mingdao/a;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 36
    iput-object p1, p0, Lcn/sharesdk/mingdao/a$1;->b:Lcn/sharesdk/mingdao/a;

    iput-object p2, p0, Lcn/sharesdk/mingdao/a$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 39
    :try_start_0
    iget-object v0, p0, Lcn/sharesdk/mingdao/a$1;->b:Lcn/sharesdk/mingdao/a;

    iget-object v1, p0, Lcn/sharesdk/mingdao/a$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/mingdao/a;->onComplete(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    .line 43
    :goto_7
    return-void

    .line 40
    :catch_8
    move-exception v0

    .line 41
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_7
.end method
