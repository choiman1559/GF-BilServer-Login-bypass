.class Lcn/sharesdk/sina/weibo/d$2;
.super Ljava/lang/Object;
.source "WebAuthPage.java"

# interfaces
.implements Lcom/mob/tools/RxMob$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/sina/weibo/d;->c()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mob/tools/RxMob$OnSubscribe",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/sina/weibo/d;


# direct methods
.method constructor <init>(Lcn/sharesdk/sina/weibo/d;)V
    .registers 2

    .prologue
    .line 175
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/d$2;->a:Lcn/sharesdk/sina/weibo/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/mob/tools/RxMob$Subscriber;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mob/tools/RxMob$Subscriber",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 177
    .local p1, "subscriber":Lcom/mob/tools/RxMob$Subscriber;, "Lcom/mob/tools/RxMob$Subscriber<Ljava/lang/String;>;"
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/d$2;->a:Lcn/sharesdk/sina/weibo/d;

    invoke-static {v0}, Lcn/sharesdk/sina/weibo/d;->c(Lcn/sharesdk/sina/weibo/d;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/sina/weibo/d$2;->a:Lcn/sharesdk/sina/weibo/d;

    invoke-static {v1}, Lcn/sharesdk/sina/weibo/d;->f(Lcn/sharesdk/sina/weibo/d;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p1}, Lcom/mob/tools/RxMob$Subscriber;->onCompleted()V

    .line 179
    return-void
.end method
