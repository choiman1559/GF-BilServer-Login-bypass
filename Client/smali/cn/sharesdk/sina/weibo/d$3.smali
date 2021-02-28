.class Lcn/sharesdk/sina/weibo/d$3;
.super Lcom/mob/tools/RxMob$Subscriber;
.source "WebAuthPage.java"


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
        "Lcom/mob/tools/RxMob$Subscriber",
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
    .line 183
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/d$3;->a:Lcn/sharesdk/sina/weibo/d;

    invoke-direct {p0}, Lcom/mob/tools/RxMob$Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 1

    .prologue
    .line 186
    invoke-super {p0}, Lcom/mob/tools/RxMob$Subscriber;->onCompleted()V

    .line 187
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 190
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 191
    return-void
.end method
