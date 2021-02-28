.class Llib/xdsdk/passport/CometPassport$1;
.super Ljava/lang/Object;
.source "CometPassport.java"

# interfaces
.implements Llib/xdsdk/passport/httpUrlConnectionUtil/callback/HttpCallbackModelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llib/xdsdk/passport/CometPassport;->lambda$signInWithXdg$0(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Llib/xdsdk/passport/httpUrlConnectionUtil/callback/HttpCallbackModelListener<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Llib/xdsdk/passport/CometPassport;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Llib/xdsdk/passport/CometPassport;Landroid/app/Activity;)V
    .registers 3
    .param p1, "this$0"    # Llib/xdsdk/passport/CometPassport;

    .line 58
    iput-object p1, p0, Llib/xdsdk/passport/CometPassport$1;->this$0:Llib/xdsdk/passport/CometPassport;

    iput-object p2, p0, Llib/xdsdk/passport/CometPassport$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .registers 5
    .param p1, "exc"    # Ljava/lang/Exception;

    .line 68
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 69
    iget-object v0, p0, Llib/xdsdk/passport/CometPassport$1;->val$activity:Landroid/app/Activity;

    const-string v1, "Login post Error"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 70
    return-void
.end method

.method public onFinish(Ljava/lang/Object;)V
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 61
    instance-of v0, p1, Lorg/json/JSONObject;

    if-eqz v0, :cond_e

    .line 62
    invoke-static {}, Llib/xdsdk/passport/CometPassport;->access$000()Llib/xdsdk/passport/CometPassport$OnXdgLoginCompleteListener;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lorg/json/JSONObject;

    invoke-interface {v0, v1}, Llib/xdsdk/passport/CometPassport$OnXdgLoginCompleteListener;->onFinish(Lorg/json/JSONObject;)V

    .line 64
    :cond_e
    return-void
.end method
