.class public Lcn/sharesdk/alipay/utils/a;
.super Ljava/lang/Object;
.source "AlipayHandler.java"


# instance fields
.field private a:Lcn/sharesdk/framework/Platform;

.field private b:Lcn/sharesdk/framework/Platform$ShareParams;

.field private c:Lcn/sharesdk/framework/PlatformActionListener;


# direct methods
.method public constructor <init>(Lcn/sharesdk/framework/Platform;)V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcn/sharesdk/alipay/utils/a;->a:Lcn/sharesdk/framework/Platform;

    .line 18
    return-void
.end method


# virtual methods
.method public a()Lcn/sharesdk/framework/Platform$ShareParams;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcn/sharesdk/alipay/utils/a;->b:Lcn/sharesdk/framework/Platform$ShareParams;

    return-object v0
.end method

.method public a(Lcn/sharesdk/alipay/utils/b;)V
    .registers 6

    .prologue
    const/16 v3, 0x9

    .line 43
    iget v0, p1, Lcn/sharesdk/alipay/utils/b;->a:I

    packed-switch v0, :pswitch_data_a0

    .line 70
    :pswitch_7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 71
    const-string v1, "req"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string v1, "errCode"

    iget v2, p1, Lcn/sharesdk/alipay/utils/b;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string v1, "errStr"

    iget-object v2, p1, Lcn/sharesdk/alipay/utils/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string v1, "transaction"

    iget-object v2, p1, Lcn/sharesdk/alipay/utils/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    new-instance v1, Ljava/lang/Throwable;

    new-instance v2, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v2}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v2, v0}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 80
    :cond_43
    :goto_43
    return-void

    .line 45
    :pswitch_44
    iget-object v0, p0, Lcn/sharesdk/alipay/utils/a;->c:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_43

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 47
    const-string v1, "ShareParams"

    iget-object v2, p0, Lcn/sharesdk/alipay/utils/a;->b:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v1, p0, Lcn/sharesdk/alipay/utils/a;->c:Lcn/sharesdk/framework/PlatformActionListener;

    iget-object v2, p0, Lcn/sharesdk/alipay/utils/a;->a:Lcn/sharesdk/framework/Platform;

    invoke-interface {v1, v2, v3, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    goto :goto_43

    .line 52
    :pswitch_5c
    iget-object v0, p0, Lcn/sharesdk/alipay/utils/a;->c:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_43

    .line 53
    iget-object v0, p0, Lcn/sharesdk/alipay/utils/a;->c:Lcn/sharesdk/framework/PlatformActionListener;

    iget-object v1, p0, Lcn/sharesdk/alipay/utils/a;->a:Lcn/sharesdk/framework/Platform;

    invoke-interface {v0, v1, v3}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    goto :goto_43

    .line 57
    :pswitch_68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 58
    const-string v1, "errCode"

    iget v2, p1, Lcn/sharesdk/alipay/utils/b;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v1, "errStr"

    iget-object v2, p1, Lcn/sharesdk/alipay/utils/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string v1, "transaction"

    iget-object v2, p1, Lcn/sharesdk/alipay/utils/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    new-instance v1, Ljava/lang/Throwable;

    new-instance v2, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v2}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v2, v0}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcn/sharesdk/alipay/utils/a;->c:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_43

    .line 63
    iget-object v0, p0, Lcn/sharesdk/alipay/utils/a;->c:Lcn/sharesdk/framework/PlatformActionListener;

    iget-object v2, p0, Lcn/sharesdk/alipay/utils/a;->a:Lcn/sharesdk/framework/Platform;

    invoke-interface {v0, v2, v3, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_43

    .line 43
    :pswitch_data_a0
    .packed-switch -0x3
        :pswitch_68
        :pswitch_5c
        :pswitch_7
        :pswitch_44
    .end packed-switch
.end method

.method public a(Lcn/sharesdk/framework/Platform$ShareParams;Lcn/sharesdk/framework/PlatformActionListener;)V
    .registers 3

    .prologue
    .line 21
    iput-object p1, p0, Lcn/sharesdk/alipay/utils/a;->b:Lcn/sharesdk/framework/Platform$ShareParams;

    .line 22
    iput-object p2, p0, Lcn/sharesdk/alipay/utils/a;->c:Lcn/sharesdk/framework/PlatformActionListener;

    .line 23
    return-void
.end method

.method public b()Lcn/sharesdk/framework/Platform;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcn/sharesdk/alipay/utils/a;->a:Lcn/sharesdk/framework/Platform;

    return-object v0
.end method
