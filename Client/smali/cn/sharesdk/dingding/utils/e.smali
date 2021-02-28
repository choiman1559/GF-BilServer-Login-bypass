.class public Lcn/sharesdk/dingding/utils/e;
.super Lcn/sharesdk/dingding/utils/d;
.source "SendMessageReq.java"


# instance fields
.field public b:Lcn/sharesdk/dingding/utils/DDMediaMessage;

.field public c:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 12
    invoke-direct {p0}, Lcn/sharesdk/dingding/utils/d;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lcn/sharesdk/dingding/utils/e;->c:I

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 15
    invoke-direct {p0}, Lcn/sharesdk/dingding/utils/d;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lcn/sharesdk/dingding/utils/e;->c:I

    .line 16
    invoke-virtual {p0, p1}, Lcn/sharesdk/dingding/utils/e;->b(Landroid/os/Bundle;)V

    .line 17
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcn/sharesdk/dingding/utils/e;->b:Lcn/sharesdk/dingding/utils/DDMediaMessage;

    invoke-virtual {v0}, Lcn/sharesdk/dingding/utils/DDMediaMessage;->getType()I

    move-result v0

    return v0
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcn/sharesdk/dingding/utils/d;->a(Landroid/os/Bundle;)V

    .line 31
    iget-object v0, p0, Lcn/sharesdk/dingding/utils/e;->b:Lcn/sharesdk/dingding/utils/DDMediaMessage;

    invoke-static {v0}, Lcn/sharesdk/dingding/utils/DDMediaMessage$a;->a(Lcn/sharesdk/dingding/utils/DDMediaMessage;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 32
    const-string v0, "android.intent.ding.EXTRA_SEND_MESSAGE_SCENE"

    iget v1, p0, Lcn/sharesdk/dingding/utils/e;->c:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 33
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcn/sharesdk/dingding/utils/d;->b(Landroid/os/Bundle;)V

    .line 25
    invoke-static {p1}, Lcn/sharesdk/dingding/utils/DDMediaMessage$a;->a(Landroid/os/Bundle;)Lcn/sharesdk/dingding/utils/DDMediaMessage;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/dingding/utils/e;->b:Lcn/sharesdk/dingding/utils/DDMediaMessage;

    .line 26
    const-string v0, "android.intent.ding.EXTRA_SEND_MESSAGE_SCENE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/sharesdk/dingding/utils/e;->c:I

    .line 27
    return-void
.end method

.method public final b()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 36
    iget-object v1, p0, Lcn/sharesdk/dingding/utils/e;->b:Lcn/sharesdk/dingding/utils/DDMediaMessage;

    if-nez v1, :cond_11

    .line 37
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    const-string v2, "checkArgs fail ,message is null"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 40
    :goto_10
    return v0

    :cond_11
    iget-object v0, p0, Lcn/sharesdk/dingding/utils/e;->b:Lcn/sharesdk/dingding/utils/DDMediaMessage;

    invoke-virtual {v0}, Lcn/sharesdk/dingding/utils/DDMediaMessage;->checkArgs()Z

    move-result v0

    goto :goto_10
.end method
