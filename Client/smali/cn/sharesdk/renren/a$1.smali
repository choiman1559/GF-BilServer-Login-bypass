.class Lcn/sharesdk/renren/a$1;
.super Ljava/lang/Thread;
.source "RenrenAuthorizeWebviewClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/renren/a;->a(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Lcn/sharesdk/renren/a;


# direct methods
.method constructor <init>(Lcn/sharesdk/renren/a;Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 76
    iput-object p1, p0, Lcn/sharesdk/renren/a$1;->b:Lcn/sharesdk/renren/a;

    iput-object p2, p0, Lcn/sharesdk/renren/a$1;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 79
    :try_start_0
    iget-object v0, p0, Lcn/sharesdk/renren/a$1;->b:Lcn/sharesdk/renren/a;

    iget-object v1, p0, Lcn/sharesdk/renren/a$1;->a:Landroid/os/Bundle;

    invoke-static {v0, v1}, Lcn/sharesdk/renren/a;->a(Lcn/sharesdk/renren/a;Landroid/os/Bundle;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_8

    .line 83
    :goto_7
    return-void

    .line 80
    :catch_8
    move-exception v0

    .line 81
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_7
.end method
