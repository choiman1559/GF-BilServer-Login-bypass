.class public Lcn/sharesdk/dingding/utils/DDWebpageMessage;
.super Ljava/lang/Object;
.source "DDWebpageMessage.java"

# interfaces
.implements Lcn/sharesdk/dingding/utils/DDMediaMessage$IMediaObject;


# static fields
.field private static final MAX_WEBPAGE_URL_LENGTH:I = 0x2800


# instance fields
.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkArgs()Z
    .registers 3

    .prologue
    .line 22
    iget-object v0, p0, Lcn/sharesdk/dingding/utils/DDWebpageMessage;->url:Ljava/lang/String;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcn/sharesdk/dingding/utils/DDWebpageMessage;->url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcn/sharesdk/dingding/utils/DDWebpageMessage;->url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x2800

    if-gt v0, v1, :cond_18

    .line 23
    const/4 v0, 0x1

    .line 25
    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public serialize(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 10
    const-string v0, "android.intent.ding.EXTRA_WEB_PAGE_OBJECT_URL"

    iget-object v1, p0, Lcn/sharesdk/dingding/utils/DDWebpageMessage;->url:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    return-void
.end method

.method public type()I
    .registers 2

    .prologue
    .line 18
    const/4 v0, 0x1

    return v0
.end method

.method public unserialize(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 14
    const-string v0, "android.intent.ding.EXTRA_WEB_PAGE_OBJECT_URL"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/dingding/utils/DDWebpageMessage;->url:Ljava/lang/String;

    .line 15
    return-void
.end method
