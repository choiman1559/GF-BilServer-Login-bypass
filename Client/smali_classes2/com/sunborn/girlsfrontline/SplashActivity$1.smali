.class Lcom/sunborn/girlsfrontline/SplashActivity$1;
.super Landroid/os/Handler;
.source "SplashActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunborn/girlsfrontline/SplashActivity;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sunborn/girlsfrontline/SplashActivity;


# direct methods
.method constructor <init>(Lcom/sunborn/girlsfrontline/SplashActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sunborn/girlsfrontline/SplashActivity;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/sunborn/girlsfrontline/SplashActivity$1;->this$0:Lcom/sunborn/girlsfrontline/SplashActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 29
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_1a

    .line 39
    :goto_5
    return-void

    .line 31
    :pswitch_6
    iget-object v1, p0, Lcom/sunborn/girlsfrontline/SplashActivity$1;->this$0:Lcom/sunborn/girlsfrontline/SplashActivity;

    invoke-virtual {v1}, Lcom/sunborn/girlsfrontline/SplashActivity;->finish()V

    .line 32
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sunborn/girlsfrontline/SplashActivity$1;->this$0:Lcom/sunborn/girlsfrontline/SplashActivity;

    const-class v2, Lcom/sunborn/girlsfrontline/GameActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 33
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sunborn/girlsfrontline/SplashActivity$1;->this$0:Lcom/sunborn/girlsfrontline/SplashActivity;

    invoke-virtual {v1, v0}, Lcom/sunborn/girlsfrontline/SplashActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_5

    .line 29
    :pswitch_data_1a
    .packed-switch 0xc0a83
        :pswitch_6
    .end packed-switch
.end method
