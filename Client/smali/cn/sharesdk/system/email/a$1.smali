.class Lcn/sharesdk/system/email/a$1;
.super Ljava/lang/Object;
.source "EmailActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/system/email/a;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/system/email/a;


# direct methods
.method constructor <init>(Lcn/sharesdk/system/email/a;)V
    .registers 2

    .prologue
    .line 37
    iput-object p1, p0, Lcn/sharesdk/system/email/a$1;->a:Lcn/sharesdk/system/email/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 40
    :try_start_0
    iget-object v0, p0, Lcn/sharesdk/system/email/a$1;->a:Lcn/sharesdk/system/email/a;

    invoke-static {v0}, Lcn/sharesdk/system/email/a;->a(Lcn/sharesdk/system/email/a;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_7

    .line 46
    :cond_5
    :goto_5
    const/4 v0, 0x1

    return v0

    .line 41
    :catch_7
    move-exception v0

    .line 42
    iget-object v1, p0, Lcn/sharesdk/system/email/a$1;->a:Lcn/sharesdk/system/email/a;

    invoke-static {v1}, Lcn/sharesdk/system/email/a;->b(Lcn/sharesdk/system/email/a;)Lcn/sharesdk/system/email/ActionListener;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 43
    iget-object v1, p0, Lcn/sharesdk/system/email/a$1;->a:Lcn/sharesdk/system/email/a;

    invoke-static {v1}, Lcn/sharesdk/system/email/a;->b(Lcn/sharesdk/system/email/a;)Lcn/sharesdk/system/email/ActionListener;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lcn/sharesdk/system/email/ActionListener;->onError(Ljava/lang/Throwable;)V

    goto :goto_5
.end method
