.class public Lcom/sunborn/girlsfrontline/UnityPlayerNativeActivity;
.super Lcom/sunborn/girlsfrontline/UnityPlayerActivity;
.source "UnityPlayerNativeActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/sunborn/girlsfrontline/UnityPlayerActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 13
    const-string v0, "Unity"

    const-string v1, "UnityPlayerNativeActivity has been deprecated, please update your AndroidManifest to use UnityPlayerActivity instead"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    invoke-super {p0, p1}, Lcom/sunborn/girlsfrontline/UnityPlayerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    return-void
.end method
