.class public Lcn/sharesdk/dingding/utils/f;
.super Lcn/sharesdk/dingding/utils/DingdingResp;
.source "SendMessageResp.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcn/sharesdk/dingding/utils/DingdingResp;-><init>()V

    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 2

    .prologue
    .line 10
    invoke-direct {p0}, Lcn/sharesdk/dingding/utils/DingdingResp;-><init>()V

    .line 11
    invoke-virtual {p0, p1}, Lcn/sharesdk/dingding/utils/f;->a(Landroid/os/Bundle;)V

    .line 12
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .registers 2

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcn/sharesdk/dingding/utils/DingdingResp;->a(Landroid/os/Bundle;)V

    .line 20
    return-void
.end method
