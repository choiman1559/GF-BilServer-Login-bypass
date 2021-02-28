.class public Lcn/sharesdk/dingding/utils/DDAudioMessage;
.super Ljava/lang/Object;
.source "DDAudioMessage.java"

# interfaces
.implements Lcn/sharesdk/dingding/utils/DDMediaMessage$IMediaObject;


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
    .registers 2

    .prologue
    .line 20
    const/4 v0, 0x0

    return v0
.end method

.method public serialize(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "var1"    # Landroid/os/Bundle;

    .prologue
    .line 9
    return-void
.end method

.method public type()I
    .registers 2

    .prologue
    .line 16
    const/4 v0, 0x0

    return v0
.end method

.method public unserialize(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "var1"    # Landroid/os/Bundle;

    .prologue
    .line 13
    return-void
.end method
