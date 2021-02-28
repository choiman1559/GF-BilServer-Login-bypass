.class Llib/xdsdk/passport/httpUrlConnectionUtil/ResponseCall$2;
.super Landroid/os/Handler;
.source "ResponseCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llib/xdsdk/passport/httpUrlConnectionUtil/ResponseCall;-><init>(Landroid/app/Activity;Llib/xdsdk/passport/httpUrlConnectionUtil/callback/HttpCallbackModelListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llib/xdsdk/passport/httpUrlConnectionUtil/ResponseCall;

.field final synthetic val$httpCallbackModelListener:Llib/xdsdk/passport/httpUrlConnectionUtil/callback/HttpCallbackModelListener;


# direct methods
.method constructor <init>(Llib/xdsdk/passport/httpUrlConnectionUtil/ResponseCall;Landroid/os/Looper;Llib/xdsdk/passport/httpUrlConnectionUtil/callback/HttpCallbackModelListener;)V
    .registers 4
    .param p1, "this$0"    # Llib/xdsdk/passport/httpUrlConnectionUtil/ResponseCall;
    .param p2, "x0"    # Landroid/os/Looper;

    .line 32
    .local p0, "this":Llib/xdsdk/passport/httpUrlConnectionUtil/ResponseCall$2;, "Llib/xdsdk/passport/httpUrlConnectionUtil/ResponseCall$2;"
    iput-object p1, p0, Llib/xdsdk/passport/httpUrlConnectionUtil/ResponseCall$2;->this$0:Llib/xdsdk/passport/httpUrlConnectionUtil/ResponseCall;

    iput-object p3, p0, Llib/xdsdk/passport/httpUrlConnectionUtil/ResponseCall$2;->val$httpCallbackModelListener:Llib/xdsdk/passport/httpUrlConnectionUtil/callback/HttpCallbackModelListener;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "message"    # Landroid/os/Message;

    .line 35
    .local p0, "this":Llib/xdsdk/passport/httpUrlConnectionUtil/ResponseCall$2;, "Llib/xdsdk/passport/httpUrlConnectionUtil/ResponseCall$2;"
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 36
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_f

    .line 37
    iget-object v0, p0, Llib/xdsdk/passport/httpUrlConnectionUtil/ResponseCall$2;->val$httpCallbackModelListener:Llib/xdsdk/passport/httpUrlConnectionUtil/callback/HttpCallbackModelListener;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Llib/xdsdk/passport/httpUrlConnectionUtil/callback/HttpCallbackModelListener;->onFinish(Ljava/lang/Object;)V

    goto :goto_1d

    .line 38
    :cond_f
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1d

    .line 39
    iget-object v0, p0, Llib/xdsdk/passport/httpUrlConnectionUtil/ResponseCall$2;->val$httpCallbackModelListener:Llib/xdsdk/passport/httpUrlConnectionUtil/callback/HttpCallbackModelListener;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Exception;

    invoke-interface {v0, v1}, Llib/xdsdk/passport/httpUrlConnectionUtil/callback/HttpCallbackModelListener;->onError(Ljava/lang/Exception;)V

    .line 41
    :cond_1d
    :goto_1d
    return-void
.end method
