.class public Llib/xdsdk/passport/httpUrlConnectionUtil/ResponseCall;
.super Ljava/lang/Object;
.source "ResponseCall.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final WHAT_FAIL:I

.field private final WHAT_SUCCESS:I

.field mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Llib/xdsdk/passport/httpUrlConnectionUtil/callback/HttpCallbackBytesListener;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "httpCallbackBytesListener"    # Llib/xdsdk/passport/httpUrlConnectionUtil/callback/HttpCallbackBytesListener;

    .line 45
    .local p0, "this":Llib/xdsdk/passport/httpUrlConnectionUtil/ResponseCall;, "Llib/xdsdk/passport/httpUrlConnectionUtil/ResponseCall<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x1

    iput v0, p0, Llib/xdsdk/passport/httpUrlConnectionUtil/ResponseCall;->WHAT_FAIL:I

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Llib/xdsdk/passport/httpUrlConnectionUtil/ResponseCall;->WHAT_SUCCESS:I

    .line 46
    new-instance v0, Llib/xdsdk/passport/httpUrlConnectionUtil/ResponseCall$3;

    invoke-virtual {p1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2}, Llib/xdsdk/passport/httpUrlConnectionUtil/ResponseCall$3;-><init>(Llib/xdsdk/passport/httpUrlConnectionUtil/ResponseCall;Landroid/os/Looper;Llib/xdsdk/passport/httpUrlConnectionUtil/callback/HttpCallbackBytesListener;)V

    iput-object v0, p0, Llib/xdsdk/passport/httpUrlConnectionUtil/ResponseCall;->mHandler:Landroid/os/Handler;

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Llib/xdsdk/passport/httpUrlConnectionUtil/callback/HttpCallbackModelListener;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Llib/xdsdk/passport/httpUrlConnectionUtil/callback/HttpCallbackModelListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 31
    .local p0, "this":Llib/xdsdk/passport/httpUrlConnectionUtil/ResponseCall;, "Llib/xdsdk/passport/httpUrlConnectionUtil/ResponseCall<TT;>;"
    .local p2, "httpCallbackModelListener":Llib/xdsdk/passport/httpUrlConnectionUtil/callback/HttpCallbackModelListener;, "Llib/xdsdk/passport/httpUrlConnectionUtil/callback/HttpCallbackModelListener<Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x1

    iput v0, p0, Llib/xdsdk/passport/httpUrlConnectionUtil/ResponseCall;->WHAT_FAIL:I

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Llib/xdsdk/passport/httpUrlConnectionUtil/ResponseCall;->WHAT_SUCCESS:I

    .line 32
    new-instance v0, Llib/xdsdk/passport/httpUrlConnectionUtil/ResponseCall$2;

    invoke-virtual {p1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2}, Llib/xdsdk/passport/httpUrlConnectionUtil/ResponseCall$2;-><init>(Llib/xdsdk/passport/httpUrlConnectionUtil/ResponseCall;Landroid/os/Looper;Llib/xdsdk/passport/httpUrlConnectionUtil/callback/HttpCallbackModelListener;)V

    iput-object v0, p0, Llib/xdsdk/passport/httpUrlConnectionUtil/ResponseCall;->mHandler:Landroid/os/Handler;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Llib/xdsdk/passport/httpUrlConnectionUtil/callback/HttpCallbackStringListener;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "httpCallbackStringListener"    # Llib/xdsdk/passport/httpUrlConnectionUtil/callback/HttpCallbackStringListener;

    .line 16
    .local p0, "this":Llib/xdsdk/passport/httpUrlConnectionUtil/ResponseCall;, "Llib/xdsdk/passport/httpUrlConnectionUtil/ResponseCall<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x1

    iput v0, p0, Llib/xdsdk/passport/httpUrlConnectionUtil/ResponseCall;->WHAT_FAIL:I

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Llib/xdsdk/passport/httpUrlConnectionUtil/ResponseCall;->WHAT_SUCCESS:I

    .line 17
    new-instance v0, Llib/xdsdk/passport/httpUrlConnectionUtil/ResponseCall$1;

    invoke-virtual {p1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2}, Llib/xdsdk/passport/httpUrlConnectionUtil/ResponseCall$1;-><init>(Llib/xdsdk/passport/httpUrlConnectionUtil/ResponseCall;Landroid/os/Looper;Llib/xdsdk/passport/httpUrlConnectionUtil/callback/HttpCallbackStringListener;)V

    iput-object v0, p0, Llib/xdsdk/passport/httpUrlConnectionUtil/ResponseCall;->mHandler:Landroid/os/Handler;

    .line 29
    return-void
.end method


# virtual methods
.method public doFail(Ljava/lang/Exception;)V
    .registers 4
    .param p1, "exc"    # Ljava/lang/Exception;

    .line 67
    .local p0, "this":Llib/xdsdk/passport/httpUrlConnectionUtil/ResponseCall;, "Llib/xdsdk/passport/httpUrlConnectionUtil/ResponseCall<TT;>;"
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 68
    .local v0, "r0":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 69
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 70
    iget-object v1, p0, Llib/xdsdk/passport/httpUrlConnectionUtil/ResponseCall;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 71
    return-void
.end method

.method public doScuccess(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 60
    .local p0, "this":Llib/xdsdk/passport/httpUrlConnectionUtil/ResponseCall;, "Llib/xdsdk/passport/httpUrlConnectionUtil/ResponseCall<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 61
    .local v0, "r0":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 62
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 63
    iget-object v1, p0, Llib/xdsdk/passport/httpUrlConnectionUtil/ResponseCall;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 64
    return-void
.end method
