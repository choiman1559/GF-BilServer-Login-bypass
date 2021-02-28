.class Lcn/sharesdk/meipai/ShareActivity$1;
.super Ljava/lang/Object;
.source "ShareActivity.java"

# interfaces
.implements Lcn/sharesdk/meipai/IMeipaiApiEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/meipai/ShareActivity;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/meipai/ShareActivity;


# direct methods
.method constructor <init>(Lcn/sharesdk/meipai/ShareActivity;)V
    .registers 2

    .prologue
    .line 31
    iput-object p1, p0, Lcn/sharesdk/meipai/ShareActivity$1;->a:Lcn/sharesdk/meipai/ShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcn/sharesdk/meipai/entity/b;)V
    .registers 10
    .param p1, "response"    # Lcn/sharesdk/meipai/entity/b;

    .prologue
    const/4 v1, 0x6

    const/4 v0, 0x2

    const/4 v7, 0x1

    .line 34
    iget v2, p1, Lcn/sharesdk/meipai/entity/b;->c:I

    packed-switch v2, :pswitch_data_ee

    .line 57
    :goto_8
    :pswitch_8
    iget-object v0, p0, Lcn/sharesdk/meipai/ShareActivity$1;->a:Lcn/sharesdk/meipai/ShareActivity;

    invoke-virtual {v0}, Lcn/sharesdk/meipai/ShareActivity;->finish()V

    .line 58
    return-void

    .line 36
    :pswitch_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResponse ERR_OK "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcn/sharesdk/meipai/entity/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 37
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 38
    iget-object v1, p0, Lcn/sharesdk/meipai/ShareActivity$1;->a:Lcn/sharesdk/meipai/ShareActivity;

    invoke-static {v1}, Lcn/sharesdk/meipai/ShareActivity;->b(Lcn/sharesdk/meipai/ShareActivity;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v1

    iget-object v2, p0, Lcn/sharesdk/meipai/ShareActivity$1;->a:Lcn/sharesdk/meipai/ShareActivity;

    invoke-static {v2}, Lcn/sharesdk/meipai/ShareActivity;->a(Lcn/sharesdk/meipai/ShareActivity;)Lcn/sharesdk/framework/Platform;

    move-result-object v2

    const/16 v3, 0x9

    invoke-interface {v1, v2, v3, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    goto :goto_8

    .line 41
    :pswitch_3e
    iget-object v2, p0, Lcn/sharesdk/meipai/ShareActivity$1;->a:Lcn/sharesdk/meipai/ShareActivity;

    invoke-static {v2}, Lcn/sharesdk/meipai/ShareActivity;->b(Lcn/sharesdk/meipai/ShareActivity;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v2

    iget-object v3, p0, Lcn/sharesdk/meipai/ShareActivity$1;->a:Lcn/sharesdk/meipai/ShareActivity;

    invoke-static {v3}, Lcn/sharesdk/meipai/ShareActivity;->a(Lcn/sharesdk/meipai/ShareActivity;)Lcn/sharesdk/framework/Platform;

    move-result-object v3

    invoke-virtual {p1}, Lcn/sharesdk/meipai/entity/b;->a()I

    move-result v4

    if-ne v4, v7, :cond_54

    :goto_50
    invoke-interface {v2, v3, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    goto :goto_8

    :cond_54
    move v0, v1

    goto :goto_50

    .line 44
    :pswitch_56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResponse ERR_AUTH_DENIED "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcn/sharesdk/meipai/entity/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 45
    iget-object v1, p0, Lcn/sharesdk/meipai/ShareActivity$1;->a:Lcn/sharesdk/meipai/ShareActivity;

    invoke-static {v1}, Lcn/sharesdk/meipai/ShareActivity;->b(Lcn/sharesdk/meipai/ShareActivity;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v1

    iget-object v2, p0, Lcn/sharesdk/meipai/ShareActivity$1;->a:Lcn/sharesdk/meipai/ShareActivity;

    invoke-static {v2}, Lcn/sharesdk/meipai/ShareActivity;->a(Lcn/sharesdk/meipai/ShareActivity;)Lcn/sharesdk/framework/Platform;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v7, v3}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_8

    .line 48
    :pswitch_80
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    const-string v3, "cpy"

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "onResponse ERR_SENT_FAILED"

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResponse ERR_SENT_FAILED "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcn/sharesdk/meipai/entity/b;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 50
    iget-object v3, p0, Lcn/sharesdk/meipai/ShareActivity$1;->a:Lcn/sharesdk/meipai/ShareActivity;

    invoke-static {v3}, Lcn/sharesdk/meipai/ShareActivity;->b(Lcn/sharesdk/meipai/ShareActivity;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v3

    iget-object v4, p0, Lcn/sharesdk/meipai/ShareActivity$1;->a:Lcn/sharesdk/meipai/ShareActivity;

    invoke-static {v4}, Lcn/sharesdk/meipai/ShareActivity;->a(Lcn/sharesdk/meipai/ShareActivity;)Lcn/sharesdk/framework/Platform;

    move-result-object v4

    invoke-virtual {p1}, Lcn/sharesdk/meipai/entity/b;->a()I

    move-result v5

    if-ne v5, v7, :cond_c1

    :goto_b7
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4, v0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto/16 :goto_8

    :cond_c1
    move v0, v1

    goto :goto_b7

    .line 53
    :pswitch_c3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResponse ERR_UNSUPPORT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcn/sharesdk/meipai/entity/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    iget-object v1, p0, Lcn/sharesdk/meipai/ShareActivity$1;->a:Lcn/sharesdk/meipai/ShareActivity;

    invoke-static {v1}, Lcn/sharesdk/meipai/ShareActivity;->b(Lcn/sharesdk/meipai/ShareActivity;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v1

    iget-object v2, p0, Lcn/sharesdk/meipai/ShareActivity$1;->a:Lcn/sharesdk/meipai/ShareActivity;

    invoke-static {v2}, Lcn/sharesdk/meipai/ShareActivity;->a(Lcn/sharesdk/meipai/ShareActivity;)Lcn/sharesdk/framework/Platform;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v7, v3}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto/16 :goto_8

    .line 34
    :pswitch_data_ee
    .packed-switch -0x5
        :pswitch_c3
        :pswitch_56
        :pswitch_80
        :pswitch_3e
        :pswitch_8
        :pswitch_e
    .end packed-switch
.end method
