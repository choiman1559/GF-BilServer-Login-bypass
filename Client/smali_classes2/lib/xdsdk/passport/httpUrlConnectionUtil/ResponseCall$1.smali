.class Llib/xdsdk/passport/httpUrlConnectionUtil/ResponseCall$1;
.super Landroid/os/Handler;
.source "ResponseCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llib/xdsdk/passport/httpUrlConnectionUtil/ResponseCall;-><init>(Landroid/app/Activity;Llib/xdsdk/passport/httpUrlConnectionUtil/callback/HttpCallbackStringListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llib/xdsdk/passport/httpUrlConnectionUtil/ResponseCall;

.field final synthetic val$httpCallbackStringListener:Llib/xdsdk/passport/httpUrlConnectionUtil/callback/HttpCallbackStringListener;


# direct methods
.method constructor <init>(Llib/xdsdk/passport/httpUrlConnectionUtil/ResponseCall;Landroid/os/Looper;Llib/xdsdk/passport/httpUrlConnectionUtil/callback/HttpCallbackStringListener;)V
    .registers 4
    .param p1, "this$0"    # Llib/xdsdk/passport/httpUrlConnectionUtil/ResponseCall;
    .param p2, "x0"    # Landroid/os/Looper;

    .line 17
    .local p0, "this":Llib/xdsdk/passport/httpUrlConnectionUtil/ResponseCall$1;, "Llib/xdsdk/passport/httpUrlConnectionUtil/ResponseCall$1;"
    iput-object p1, p0, Llib/xdsdk/passport/httpUrlConnectionUtil/ResponseCall$1;->this$0:Llib/xdsdk/passport/httpUrlConnectionUtil/ResponseCall;

    iput-object p3, p0, Llib/xdsdk/passport/httpUrlConnectionUtil/ResponseCall$1;->val$httpCallbackStringListener:Llib/xdsdk/passport/httpUrlConnectionUtil/callback/HttpCallbackStringListener;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "message"    # Landroid/os/Message;

    .line 21
    .local p0, "this":Llib/xdsdk/passport/httpUrlConnectionUtil/ResponseCall$1;, "Llib/xdsdk/passport/httpUrlConnectionUtil/ResponseCall$1;"
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 22
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_13

    .line 23
    iget-object v0, p0, Llib/xdsdk/passport/httpUrlConnectionUtil/ResponseCall$1;->val$httpCallbackStringListener:Llib/xdsdk/passport/httpUrlConnectionUtil/callback/HttpCallbackStringListener;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Llib/xdsdk/passport/httpUrlConnectionUtil/callback/HttpCallbackStringListener;->onFinish(Ljava/lang/String;)V

    goto :goto_21

    .line 24
    :cond_13
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_21

    .line 25
    iget-object v0, p0, Llib/xdsdk/passport/httpUrlConnectionUtil/ResponseCall$1;->val$httpCallbackStringListener:Llib/xdsdk/passport/httpUrlConnectionUtil/callback/HttpCallbackStringListener;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Exception;

    invoke-interface {v0, v1}, Llib/xdsdk/passport/httpUrlConnectionUtil/callback/HttpCallbackStringListener;->onError(Ljava/lang/Exception;)V

    .line 27
    :cond_21
    :goto_21
    return-void
.end method
