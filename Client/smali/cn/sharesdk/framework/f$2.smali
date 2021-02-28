.class Lcn/sharesdk/framework/f$2;
.super Ljava/lang/Thread;
.source "ShareSDKCoreThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/framework/f;->a(Ljava/util/HashMap;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/framework/b/a;

.field final synthetic b:Lcn/sharesdk/framework/f;


# direct methods
.method constructor <init>(Lcn/sharesdk/framework/f;Lcn/sharesdk/framework/b/a;)V
    .registers 3

    .prologue
    .line 498
    iput-object p1, p0, Lcn/sharesdk/framework/f$2;->b:Lcn/sharesdk/framework/f;

    iput-object p2, p0, Lcn/sharesdk/framework/f$2;->a:Lcn/sharesdk/framework/b/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 502
    :try_start_0
    iget-object v0, p0, Lcn/sharesdk/framework/f$2;->a:Lcn/sharesdk/framework/b/a;

    invoke-virtual {v0}, Lcn/sharesdk/framework/b/a;->f()Ljava/util/HashMap;

    move-result-object v0

    .line 503
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 504
    iget-object v2, p0, Lcn/sharesdk/framework/f$2;->b:Lcn/sharesdk/framework/f;

    iget-object v3, p0, Lcn/sharesdk/framework/f$2;->a:Lcn/sharesdk/framework/b/a;

    invoke-static {v2, v3, v0, v1}, Lcn/sharesdk/framework/f;->a(Lcn/sharesdk/framework/f;Lcn/sharesdk/framework/b/a;Ljava/util/HashMap;Ljava/util/HashMap;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 505
    iget-object v2, p0, Lcn/sharesdk/framework/f$2;->b:Lcn/sharesdk/framework/f;

    invoke-virtual {v2, v1}, Lcn/sharesdk/framework/f;->b(Ljava/util/HashMap;)Z

    .line 508
    :cond_1a
    iget-object v1, p0, Lcn/sharesdk/framework/f$2;->a:Lcn/sharesdk/framework/b/a;

    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/b/a;->a(Ljava/util/HashMap;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1f} :catch_20

    .line 512
    :goto_1f
    return-void

    .line 509
    :catch_20
    move-exception v0

    .line 510
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_1f
.end method
