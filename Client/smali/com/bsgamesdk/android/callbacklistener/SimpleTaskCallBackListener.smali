.class public abstract Lcom/bsgamesdk/android/callbacklistener/SimpleTaskCallBackListener;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bsgamesdk/android/callbacklistener/TaskCallBackListener;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bsgamesdk/android/callbacklistener/SimpleTaskCallBackListener;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onFailed(Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "message"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/callbacklistener/SimpleTaskCallBackListener;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/bsgamesdk/android/utils/y;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onFinish()V
    .registers 1

    invoke-static {}, Lcom/bsgamesdk/android/utils/k;->a()V

    return-void
.end method

.method public onStart()V
    .registers 6

    iget-object v0, p0, Lcom/bsgamesdk/android/callbacklistener/SimpleTaskCallBackListener;->a:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "\u6570\u636e\u53d1\u9001\u4e2d\uff0c\u8bf7\u7a0d\u5019..."

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/bsgamesdk/android/utils/k;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V

    return-void
.end method
