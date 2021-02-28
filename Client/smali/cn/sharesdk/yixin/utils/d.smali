.class public Lcn/sharesdk/yixin/utils/d;
.super Ljava/lang/Object;
.source "YixinHandler.java"


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
    iput-object p1, p0, Lcn/sharesdk/yixin/utils/d;->a:Lcn/sharesdk/framework/Platform;

    .line 18
    return-void
.end method


# virtual methods
.method public a()Lcn/sharesdk/framework/Platform;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcn/sharesdk/yixin/utils/d;->a:Lcn/sharesdk/framework/Platform;

    return-object v0
.end method

.method public a(Lcn/sharesdk/framework/Platform$ShareParams;Lcn/sharesdk/framework/PlatformActionListener;)V
    .registers 3

    .prologue
    .line 21
    iput-object p1, p0, Lcn/sharesdk/yixin/utils/d;->b:Lcn/sharesdk/framework/Platform$ShareParams;

    .line 22
    iput-object p2, p0, Lcn/sharesdk/yixin/utils/d;->c:Lcn/sharesdk/framework/PlatformActionListener;

    .line 23
    return-void
.end method

.method public a(Lcn/sharesdk/yixin/utils/YixinResp;)V
    .registers 6

    .prologue
    const/16 v3, 0x9

    .line 39
    iget v0, p1, Lcn/sharesdk/yixin/utils/YixinResp;->a:I

    packed-switch v0, :pswitch_data_c0

    .line 76
    :pswitch_7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 77
    const-string v1, "req"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string v1, "errCode"

    iget v2, p1, Lcn/sharesdk/yixin/utils/YixinResp;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v1, "errStr"

    iget-object v2, p1, Lcn/sharesdk/yixin/utils/YixinResp;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v1, "transaction"

    iget-object v2, p1, Lcn/sharesdk/yixin/utils/YixinResp;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    new-instance v1, Ljava/lang/Throwable;

    new-instance v2, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v2}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v2, v0}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcn/sharesdk/yixin/utils/d;->c:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_4b

    .line 83
    iget-object v0, p0, Lcn/sharesdk/yixin/utils/d;->c:Lcn/sharesdk/framework/PlatformActionListener;

    iget-object v2, p0, Lcn/sharesdk/yixin/utils/d;->a:Lcn/sharesdk/framework/Platform;

    invoke-interface {v0, v2, v3, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 87
    :cond_4b
    :goto_4b
    return-void

    .line 41
    :pswitch_4c
    invoke-virtual {p1}, Lcn/sharesdk/yixin/utils/YixinResp;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_cc

    goto :goto_4b

    .line 43
    :pswitch_54
    iget-object v0, p0, Lcn/sharesdk/yixin/utils/d;->c:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_4b

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 45
    const-string v1, "ShareParams"

    iget-object v2, p0, Lcn/sharesdk/yixin/utils/d;->b:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v1, p0, Lcn/sharesdk/yixin/utils/d;->c:Lcn/sharesdk/framework/PlatformActionListener;

    iget-object v2, p0, Lcn/sharesdk/yixin/utils/d;->a:Lcn/sharesdk/framework/Platform;

    invoke-interface {v1, v2, v3, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    goto :goto_4b

    .line 52
    :pswitch_6c
    invoke-virtual {p1}, Lcn/sharesdk/yixin/utils/YixinResp;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_d2

    goto :goto_4b

    .line 54
    :pswitch_74
    iget-object v0, p0, Lcn/sharesdk/yixin/utils/d;->c:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_4b

    .line 55
    iget-object v0, p0, Lcn/sharesdk/yixin/utils/d;->c:Lcn/sharesdk/framework/PlatformActionListener;

    iget-object v1, p0, Lcn/sharesdk/yixin/utils/d;->a:Lcn/sharesdk/framework/Platform;

    invoke-interface {v0, v1, v3}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    goto :goto_4b

    .line 61
    :pswitch_80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 62
    const-string v1, "errCode"

    iget v2, p1, Lcn/sharesdk/yixin/utils/YixinResp;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string v1, "errStr"

    iget-object v2, p1, Lcn/sharesdk/yixin/utils/YixinResp;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string v1, "transaction"

    iget-object v2, p1, Lcn/sharesdk/yixin/utils/YixinResp;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    new-instance v1, Ljava/lang/Throwable;

    new-instance v2, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v2}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v2, v0}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p1}, Lcn/sharesdk/yixin/utils/YixinResp;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_d8

    goto :goto_4b

    .line 69
    :pswitch_b4
    iget-object v0, p0, Lcn/sharesdk/yixin/utils/d;->c:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_4b

    .line 70
    iget-object v0, p0, Lcn/sharesdk/yixin/utils/d;->c:Lcn/sharesdk/framework/PlatformActionListener;

    iget-object v2, p0, Lcn/sharesdk/yixin/utils/d;->a:Lcn/sharesdk/framework/Platform;

    invoke-interface {v0, v2, v3, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_4b

    .line 39
    :pswitch_data_c0
    .packed-switch -0x3
        :pswitch_80
        :pswitch_6c
        :pswitch_7
        :pswitch_4c
    .end packed-switch

    .line 41
    :pswitch_data_cc
    .packed-switch 0x1
        :pswitch_54
    .end packed-switch

    .line 52
    :pswitch_data_d2
    .packed-switch 0x1
        :pswitch_74
    .end packed-switch

    .line 67
    :pswitch_data_d8
    .packed-switch 0x1
        :pswitch_b4
    .end packed-switch
.end method

.method public b()Lcn/sharesdk/framework/Platform$ShareParams;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcn/sharesdk/yixin/utils/d;->b:Lcn/sharesdk/framework/Platform$ShareParams;

    return-object v0
.end method

.method public c()Lcn/sharesdk/framework/PlatformActionListener;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcn/sharesdk/yixin/utils/d;->c:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method
