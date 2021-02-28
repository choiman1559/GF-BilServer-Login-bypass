.class Lcn/sharesdk/system/text/login/gui/c$3;
.super Ljava/lang/Thread;
.source "IdentifyNumPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/system/text/login/gui/c;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/system/text/login/gui/c;


# direct methods
.method constructor <init>(Lcn/sharesdk/system/text/login/gui/c;)V
    .registers 2

    .prologue
    .line 146
    iput-object p1, p0, Lcn/sharesdk/system/text/login/gui/c$3;->a:Lcn/sharesdk/system/text/login/gui/c;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 149
    :try_start_0
    new-instance v0, Landroid/app/Instrumentation;

    invoke-direct {v0}, Landroid/app/Instrumentation;-><init>()V

    .line 150
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_a

    .line 156
    :goto_9
    return-void

    .line 151
    :catch_a
    move-exception v0

    .line 152
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 154
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/c$3;->a:Lcn/sharesdk/system/text/login/gui/c;

    invoke-virtual {v0}, Lcn/sharesdk/system/text/login/gui/c;->finish()V

    goto :goto_9
.end method
