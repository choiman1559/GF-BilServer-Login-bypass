.class Lcn/sharesdk/tencent/weibo/e$a;
.super Landroid/content/BroadcastReceiver;
.source "TencentWeiboSSOProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sharesdk/tencent/weibo/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Lcn/sharesdk/tencent/weibo/e;


# direct methods
.method public constructor <init>(Lcn/sharesdk/tencent/weibo/e;)V
    .registers 2

    .prologue
    .line 245
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 246
    iput-object p1, p0, Lcn/sharesdk/tencent/weibo/e$a;->a:Lcn/sharesdk/tencent/weibo/e;

    .line 247
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 250
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 251
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/e$a;->a:Lcn/sharesdk/tencent/weibo/e;

    invoke-static {v0}, Lcn/sharesdk/tencent/weibo/e;->a(Lcn/sharesdk/tencent/weibo/e;)Lcn/sharesdk/framework/authorize/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/c;->finish()V

    .line 253
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 254
    const-string v1, "com.tencent.sso.AUTH_RESULT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 255
    if-eqz v1, :cond_1f

    .line 256
    iget-object v1, p0, Lcn/sharesdk/tencent/weibo/e$a;->a:Lcn/sharesdk/tencent/weibo/e;

    invoke-static {v1, v0}, Lcn/sharesdk/tencent/weibo/e;->a(Lcn/sharesdk/tencent/weibo/e;Landroid/os/Bundle;)V

    .line 260
    :goto_1e
    return-void

    .line 259
    :cond_1f
    iget-object v1, p0, Lcn/sharesdk/tencent/weibo/e$a;->a:Lcn/sharesdk/tencent/weibo/e;

    invoke-static {v1, v0}, Lcn/sharesdk/tencent/weibo/e;->b(Lcn/sharesdk/tencent/weibo/e;Landroid/os/Bundle;)V

    goto :goto_1e
.end method
