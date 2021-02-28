.class Lcn/sharesdk/sina/weibo/e$3;
.super Lcom/mob/tools/RxMob$Subscriber;
.source "WebSharePage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/sina/weibo/e;->b()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mob/tools/RxMob$Subscriber",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/sina/weibo/e;


# direct methods
.method constructor <init>(Lcn/sharesdk/sina/weibo/e;)V
    .registers 2

    .prologue
    .line 166
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/e$3;->a:Lcn/sharesdk/sina/weibo/e;

    invoke-direct {p0}, Lcom/mob/tools/RxMob$Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 172
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/e$3;->a:Lcn/sharesdk/sina/weibo/e;

    invoke-static {v0}, Lcn/sharesdk/sina/weibo/e;->c(Lcn/sharesdk/sina/weibo/e;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/sina/weibo/e$3;->a:Lcn/sharesdk/sina/weibo/e;

    invoke-static {v1, p1}, Lcn/sharesdk/sina/weibo/e;->b(Lcn/sharesdk/sina/weibo/e;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method public onCompleted()V
    .registers 1

    .prologue
    .line 176
    invoke-super {p0}, Lcom/mob/tools/RxMob$Subscriber;->onCompleted()V

    .line 177
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 180
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 181
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/e$3;->a:Lcn/sharesdk/sina/weibo/e;

    invoke-static {v0}, Lcn/sharesdk/sina/weibo/e;->c(Lcn/sharesdk/sina/weibo/e;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/sina/weibo/e$3;->a:Lcn/sharesdk/sina/weibo/e;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcn/sharesdk/sina/weibo/e;->b(Lcn/sharesdk/sina/weibo/e;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 182
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 166
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcn/sharesdk/sina/weibo/e$3;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 168
    invoke-super {p0}, Lcom/mob/tools/RxMob$Subscriber;->onStart()V

    .line 169
    return-void
.end method
