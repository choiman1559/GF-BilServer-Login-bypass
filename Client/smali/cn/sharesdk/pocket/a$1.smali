.class Lcn/sharesdk/pocket/a$1;
.super Ljava/lang/Thread;
.source "PocketAuthorizeWebviewClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/pocket/a;->a(Landroid/webkit/WebView;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/pocket/a;


# direct methods
.method constructor <init>(Lcn/sharesdk/pocket/a;)V
    .registers 2

    .prologue
    .line 81
    iput-object p1, p0, Lcn/sharesdk/pocket/a$1;->a:Lcn/sharesdk/pocket/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 84
    :try_start_0
    iget-object v0, p0, Lcn/sharesdk/pocket/a$1;->a:Lcn/sharesdk/pocket/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/sharesdk/pocket/a;->onComplete(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_6} :catch_7

    .line 88
    :goto_6
    return-void

    .line 85
    :catch_7
    move-exception v0

    .line 86
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_6
.end method
