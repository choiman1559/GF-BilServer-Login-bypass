.class Lcn/sharesdk/sina/weibo/e$2;
.super Ljava/lang/Object;
.source "WebSharePage.java"

# interfaces
.implements Lcom/mob/tools/RxMob$OnSubscribe;


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
        "Ljava/lang/Object;",
        "Lcom/mob/tools/RxMob$OnSubscribe",
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
    .line 158
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/e$2;->a:Lcn/sharesdk/sina/weibo/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/mob/tools/RxMob$Subscriber;)V
    .registers 3
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
    .line 160
    .local p1, "subscriber":Lcom/mob/tools/RxMob$Subscriber;, "Lcom/mob/tools/RxMob$Subscriber<Ljava/lang/String;>;"
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/e$2;->a:Lcn/sharesdk/sina/weibo/e;

    invoke-static {v0}, Lcn/sharesdk/sina/weibo/e;->e(Lcn/sharesdk/sina/weibo/e;)Ljava/lang/String;

    move-result-object v0

    .line 161
    invoke-virtual {p1, v0}, Lcom/mob/tools/RxMob$Subscriber;->onNext(Ljava/lang/Object;)V

    .line 162
    return-void
.end method
