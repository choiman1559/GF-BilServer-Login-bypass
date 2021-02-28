.class Llib/xdsdk/passport/httpUrlConnectionUtil/ResponseCall$3;
.super Landroid/os/Handler;
.source "ResponseCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llib/xdsdk/passport/httpUrlConnectionUtil/ResponseCall;-><init>(Landroid/app/Activity;Llib/xdsdk/passport/httpUrlConnectionUtil/callback/HttpCallbackBytesListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llib/xdsdk/passport/httpUrlConnectionUtil/ResponseCall;

.field final synthetic val$httpCallbackBytesListener:Llib/xdsdk/passport/httpUrlConnectionUtil/callback/HttpCallbackBytesListener;


# direct methods
.method constructor <init>(Llib/xdsdk/passport/httpUrlConnectionUtil/ResponseCall;Landroid/os/Looper;Llib/xdsdk/passport/httpUrlConnectionUtil/callback/HttpCallbackBytesListener;)V
    .registers 4
    .param p1, "this$0"    # Llib/xdsdk/passport/httpUrlConnectionUtil/ResponseCall;
    .param p2, "x0"    # Landroid/os/Looper;

    .line 46
    .local p0, "this":Llib/xdsdk/passport/httpUrlConnectionUtil/ResponseCall$3;, "Llib/xdsdk/passport/httpUrlConnectionUtil/ResponseCall$3;"
    iput-object p1, p0, Llib/xdsdk/passport/httpUrlConnectionUtil/ResponseCall$3;->this$0:Llib/xdsdk/passport/httpUrlConnectionUtil/ResponseCall;

    iput-object p3, p0, Llib/xdsdk/passport/httpUrlConnectionUtil/ResponseCall$3;->val$httpCallbackBytesListener:Llib/xdsdk/passport/httpUrlConnectionUtil/callback/HttpCallbackBytesListener;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "message"    # Landroid/os/Message;

    .line 49
    .local p0, "this":Llib/xdsdk/passport/httpUrlConnectionUtil/ResponseCall$3;, "Llib/xdsdk/passport/httpUrlConnectionUtil/ResponseCall$3;"
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 50
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_13

    .line 51
    iget-object v0, p0, Llib/xdsdk/passport/httpUrlConnectionUtil/ResponseCall$3;->val$httpCallbackBytesListener:Llib/xdsdk/passport/httpUrlConnectionUtil/callback/HttpCallbackBytesListener;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    invoke-interface {v0, v1}, Llib/xdsdk/passport/httpUrlConnectionUtil/callback/HttpCallbackBytesListener;->onFinish([B)V

    goto :goto_21

    .line 52
    :cond_13
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_21

    .line 53
    iget-object v0, p0, Llib/xdsdk/passport/httpUrlConnectionUtil/ResponseCall$3;->val$httpCallbackBytesListener:Llib/xdsdk/passport/httpUrlConnectionUtil/callback/HttpCallbackBytesListener;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Exception;

    invoke-interface {v0, v1}, Llib/xdsdk/passport/httpUrlConnectionUtil/callback/HttpCallbackBytesListener;->onError(Ljava/lang/Exception;)V

    .line 55
    :cond_21
    :goto_21
    return-void
.end method
