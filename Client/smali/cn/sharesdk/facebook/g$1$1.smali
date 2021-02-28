.class Lcn/sharesdk/facebook/g$1$1;
.super Ljava/lang/Thread;
.source "WebShareActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/facebook/g$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/facebook/g$1;


# direct methods
.method constructor <init>(Lcn/sharesdk/facebook/g$1;)V
    .registers 2

    .prologue
    .line 113
    iput-object p1, p0, Lcn/sharesdk/facebook/g$1$1;->a:Lcn/sharesdk/facebook/g$1;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 116
    :try_start_0
    new-instance v0, Landroid/app/Instrumentation;

    invoke-direct {v0}, Landroid/app/Instrumentation;-><init>()V

    .line 117
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_a

    .line 123
    :goto_9
    return-void

    .line 118
    :catch_a
    move-exception v0

    .line 119
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 120
    iget-object v0, p0, Lcn/sharesdk/facebook/g$1$1;->a:Lcn/sharesdk/facebook/g$1;

    iget-object v0, v0, Lcn/sharesdk/facebook/g$1;->a:Lcn/sharesdk/facebook/g;

    invoke-virtual {v0}, Lcn/sharesdk/facebook/g;->finish()V

    .line 121
    iget-object v0, p0, Lcn/sharesdk/facebook/g$1$1;->a:Lcn/sharesdk/facebook/g$1;

    iget-object v0, v0, Lcn/sharesdk/facebook/g$1;->a:Lcn/sharesdk/facebook/g;

    invoke-static {v0}, Lcn/sharesdk/facebook/g;->a(Lcn/sharesdk/facebook/g;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    goto :goto_9
.end method
