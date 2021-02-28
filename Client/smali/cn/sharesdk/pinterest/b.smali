.class public Lcn/sharesdk/pinterest/b;
.super Lcom/mob/tools/FakeActivity;
.source "ShareActivity.java"


# instance fields
.field private a:Landroid/content/Intent;

.field private b:Lcn/sharesdk/framework/Platform;

.field private c:Lcn/sharesdk/framework/PlatformActionListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/mob/tools/FakeActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)V
    .registers 2

    .prologue
    .line 20
    iput-object p1, p0, Lcn/sharesdk/pinterest/b;->a:Landroid/content/Intent;

    .line 21
    return-void
.end method

.method public a(Lcn/sharesdk/framework/Platform;Lcn/sharesdk/framework/PlatformActionListener;)V
    .registers 3

    .prologue
    .line 15
    iput-object p1, p0, Lcn/sharesdk/pinterest/b;->b:Lcn/sharesdk/framework/Platform;

    .line 16
    iput-object p2, p0, Lcn/sharesdk/pinterest/b;->c:Lcn/sharesdk/framework/PlatformActionListener;

    .line 17
    return-void
.end method

.method public onCreate()V
    .registers 6

    .prologue
    const/16 v4, 0x9

    .line 24
    iget-object v0, p0, Lcn/sharesdk/pinterest/b;->a:Landroid/content/Intent;

    if-nez v0, :cond_1c

    .line 25
    iget-object v0, p0, Lcn/sharesdk/pinterest/b;->c:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_18

    .line 26
    iget-object v0, p0, Lcn/sharesdk/pinterest/b;->c:Lcn/sharesdk/framework/PlatformActionListener;

    iget-object v1, p0, Lcn/sharesdk/pinterest/b;->b:Lcn/sharesdk/framework/Platform;

    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "Share Intent is Empty"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v4, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 28
    :cond_18
    invoke-virtual {p0}, Lcn/sharesdk/pinterest/b;->finish()V

    .line 40
    :goto_1b
    return-void

    .line 33
    :cond_1c
    :try_start_1c
    iget-object v0, p0, Lcn/sharesdk/pinterest/b;->a:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcn/sharesdk/pinterest/b;->startActivity(Landroid/content/Intent;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_21} :catch_25

    .line 39
    :cond_21
    :goto_21
    invoke-virtual {p0}, Lcn/sharesdk/pinterest/b;->finish()V

    goto :goto_1b

    .line 34
    :catch_25
    move-exception v0

    .line 35
    iget-object v1, p0, Lcn/sharesdk/pinterest/b;->c:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_21

    .line 36
    iget-object v1, p0, Lcn/sharesdk/pinterest/b;->c:Lcn/sharesdk/framework/PlatformActionListener;

    iget-object v2, p0, Lcn/sharesdk/pinterest/b;->b:Lcn/sharesdk/framework/Platform;

    invoke-interface {v1, v2, v4, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_21
.end method
