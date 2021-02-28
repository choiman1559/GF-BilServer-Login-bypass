.class Lcn/sharesdk/google/WebShareActivity$1$1;
.super Ljava/lang/Thread;
.source "WebShareActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/google/WebShareActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/google/WebShareActivity$1;


# direct methods
.method constructor <init>(Lcn/sharesdk/google/WebShareActivity$1;)V
    .registers 2

    .prologue
    .line 108
    iput-object p1, p0, Lcn/sharesdk/google/WebShareActivity$1$1;->a:Lcn/sharesdk/google/WebShareActivity$1;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 111
    :try_start_0
    new-instance v0, Landroid/app/Instrumentation;

    invoke-direct {v0}, Landroid/app/Instrumentation;-><init>()V

    .line 112
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_a

    .line 118
    :goto_9
    return-void

    .line 113
    :catch_a
    move-exception v0

    .line 114
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 115
    iget-object v0, p0, Lcn/sharesdk/google/WebShareActivity$1$1;->a:Lcn/sharesdk/google/WebShareActivity$1;

    iget-object v0, v0, Lcn/sharesdk/google/WebShareActivity$1;->a:Lcn/sharesdk/google/WebShareActivity;

    invoke-virtual {v0}, Lcn/sharesdk/google/WebShareActivity;->finish()V

    .line 116
    iget-object v0, p0, Lcn/sharesdk/google/WebShareActivity$1$1;->a:Lcn/sharesdk/google/WebShareActivity$1;

    iget-object v0, v0, Lcn/sharesdk/google/WebShareActivity$1;->a:Lcn/sharesdk/google/WebShareActivity;

    invoke-static {v0}, Lcn/sharesdk/google/WebShareActivity;->access$000(Lcn/sharesdk/google/WebShareActivity;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    goto :goto_9
.end method
