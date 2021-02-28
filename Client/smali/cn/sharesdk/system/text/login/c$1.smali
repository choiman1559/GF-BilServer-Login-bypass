.class Lcn/sharesdk/system/text/login/c$1;
.super Ljava/lang/Object;
.source "RequestCore.java"

# interfaces
.implements Lcom/mob/tools/RxMob$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/system/text/login/c;->a(Ljava/util/HashMap;)Ljava/util/HashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/HashMap;

.field final synthetic b:Lcn/sharesdk/system/text/login/c;


# direct methods
.method constructor <init>(Lcn/sharesdk/system/text/login/c;Ljava/util/HashMap;)V
    .registers 3

    .prologue
    .line 56
    iput-object p1, p0, Lcn/sharesdk/system/text/login/c$1;->b:Lcn/sharesdk/system/text/login/c;

    iput-object p2, p0, Lcn/sharesdk/system/text/login/c$1;->a:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/mob/tools/RxMob$Subscriber;)V
    .registers 8
    .param p1, "subscriber"    # Lcom/mob/tools/RxMob$Subscriber;

    .prologue
    .line 58
    invoke-virtual {p1}, Lcom/mob/tools/RxMob$Subscriber;->onStart()V

    .line 59
    new-instance v1, Lcn/sharesdk/system/text/login/b;

    invoke-direct {v1}, Lcn/sharesdk/system/text/login/b;-><init>()V

    .line 60
    iget-object v2, p0, Lcn/sharesdk/system/text/login/c$1;->b:Lcn/sharesdk/system/text/login/c;

    iget-object v0, p0, Lcn/sharesdk/system/text/login/c$1;->a:Ljava/util/HashMap;

    const-string v3, "zone"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v0}, Lcn/sharesdk/system/text/login/c;->a(Lcn/sharesdk/system/text/login/c;Ljava/lang/String;)Ljava/lang/String;

    .line 61
    iget-object v2, p0, Lcn/sharesdk/system/text/login/c$1;->b:Lcn/sharesdk/system/text/login/c;

    iget-object v0, p0, Lcn/sharesdk/system/text/login/c$1;->a:Ljava/util/HashMap;

    const-string v3, "phone"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v0}, Lcn/sharesdk/system/text/login/c;->b(Lcn/sharesdk/system/text/login/c;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    iget-object v2, p0, Lcn/sharesdk/system/text/login/c$1;->b:Lcn/sharesdk/system/text/login/c;

    iget-object v0, p0, Lcn/sharesdk/system/text/login/c$1;->a:Ljava/util/HashMap;

    const-string v3, "type"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v2, v0}, Lcn/sharesdk/system/text/login/c;->a(Lcn/sharesdk/system/text/login/c;I)I

    .line 63
    iget-object v0, p0, Lcn/sharesdk/system/text/login/c$1;->a:Ljava/util/HashMap;

    const-string v2, "country"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 64
    iget-object v2, p0, Lcn/sharesdk/system/text/login/c$1;->b:Lcn/sharesdk/system/text/login/c;

    iget-object v0, p0, Lcn/sharesdk/system/text/login/c$1;->a:Ljava/util/HashMap;

    const-string v3, "country"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v0}, Lcn/sharesdk/system/text/login/c;->c(Lcn/sharesdk/system/text/login/c;Ljava/lang/String;)Ljava/lang/String;

    .line 67
    :cond_52
    iget-object v0, p0, Lcn/sharesdk/system/text/login/c$1;->a:Ljava/util/HashMap;

    const-string v2, "code"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_90

    .line 68
    iget-object v2, p0, Lcn/sharesdk/system/text/login/c$1;->b:Lcn/sharesdk/system/text/login/c;

    iget-object v0, p0, Lcn/sharesdk/system/text/login/c$1;->a:Ljava/util/HashMap;

    const-string v3, "code"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v0}, Lcn/sharesdk/system/text/login/c;->d(Lcn/sharesdk/system/text/login/c;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    iget-object v0, p0, Lcn/sharesdk/system/text/login/c$1;->b:Lcn/sharesdk/system/text/login/c;

    iget-object v2, p0, Lcn/sharesdk/system/text/login/c$1;->b:Lcn/sharesdk/system/text/login/c;

    invoke-static {v2}, Lcn/sharesdk/system/text/login/c;->a(Lcn/sharesdk/system/text/login/c;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/sharesdk/system/text/login/c$1;->b:Lcn/sharesdk/system/text/login/c;

    invoke-static {v3}, Lcn/sharesdk/system/text/login/c;->b(Lcn/sharesdk/system/text/login/c;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcn/sharesdk/system/text/login/c$1;->b:Lcn/sharesdk/system/text/login/c;

    invoke-static {v4}, Lcn/sharesdk/system/text/login/c;->c(Lcn/sharesdk/system/text/login/c;)I

    move-result v4

    iget-object v5, p0, Lcn/sharesdk/system/text/login/c$1;->b:Lcn/sharesdk/system/text/login/c;

    invoke-static {v5}, Lcn/sharesdk/system/text/login/c;->d(Lcn/sharesdk/system/text/login/c;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcn/sharesdk/system/text/login/b;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/sharesdk/system/text/login/c;->a(Lcn/sharesdk/system/text/login/c;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 73
    :goto_8c
    invoke-virtual {p1}, Lcom/mob/tools/RxMob$Subscriber;->onCompleted()V

    .line 74
    return-void

    .line 71
    :cond_90
    iget-object v0, p0, Lcn/sharesdk/system/text/login/c$1;->b:Lcn/sharesdk/system/text/login/c;

    iget-object v2, p0, Lcn/sharesdk/system/text/login/c$1;->b:Lcn/sharesdk/system/text/login/c;

    invoke-static {v2}, Lcn/sharesdk/system/text/login/c;->a(Lcn/sharesdk/system/text/login/c;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/sharesdk/system/text/login/c$1;->b:Lcn/sharesdk/system/text/login/c;

    invoke-static {v3}, Lcn/sharesdk/system/text/login/c;->b(Lcn/sharesdk/system/text/login/c;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcn/sharesdk/system/text/login/c$1;->b:Lcn/sharesdk/system/text/login/c;

    invoke-static {v4}, Lcn/sharesdk/system/text/login/c;->c(Lcn/sharesdk/system/text/login/c;)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcn/sharesdk/system/text/login/b;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/sharesdk/system/text/login/c;->a(Lcn/sharesdk/system/text/login/c;Ljava/util/HashMap;)Ljava/util/HashMap;

    goto :goto_8c
.end method
