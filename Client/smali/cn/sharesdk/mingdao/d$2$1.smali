.class Lcn/sharesdk/mingdao/d$2$1;
.super Ljava/lang/Thread;
.source "ShareActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/mingdao/d$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/mingdao/d$2;


# direct methods
.method constructor <init>(Lcn/sharesdk/mingdao/d$2;)V
    .registers 2

    .prologue
    .line 112
    iput-object p1, p0, Lcn/sharesdk/mingdao/d$2$1;->a:Lcn/sharesdk/mingdao/d$2;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 115
    :try_start_0
    new-instance v0, Landroid/app/Instrumentation;

    invoke-direct {v0}, Landroid/app/Instrumentation;-><init>()V

    .line 116
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_a

    .line 122
    :goto_9
    return-void

    .line 117
    :catch_a
    move-exception v0

    .line 118
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 119
    iget-object v0, p0, Lcn/sharesdk/mingdao/d$2$1;->a:Lcn/sharesdk/mingdao/d$2;

    iget-object v0, v0, Lcn/sharesdk/mingdao/d$2;->a:Lcn/sharesdk/mingdao/d;

    invoke-virtual {v0}, Lcn/sharesdk/mingdao/d;->finish()V

    .line 120
    iget-object v0, p0, Lcn/sharesdk/mingdao/d$2$1;->a:Lcn/sharesdk/mingdao/d$2;

    iget-object v0, v0, Lcn/sharesdk/mingdao/d$2;->a:Lcn/sharesdk/mingdao/d;

    invoke-static {v0}, Lcn/sharesdk/mingdao/d;->a(Lcn/sharesdk/mingdao/d;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    goto :goto_9
.end method
