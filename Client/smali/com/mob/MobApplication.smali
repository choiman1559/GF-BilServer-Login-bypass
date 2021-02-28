.class public Lcom/mob/MobApplication;
.super Lcom/tencent/tpshell/TPShellApplication;
.source "MobApplication.java"

# interfaces
.implements Lcom/mob/tools/proguard/ProtectedMemberKeeper;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/tencent/tpshell/TPShellApplication;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAppSecret()Ljava/lang/String;
    .registers 2

    .prologue
    .line 14
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getAppkey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 10
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 3

    .prologue
    .line 18
    invoke-super {p0}, Lcom/tencent/tpshell/TPShellApplication;->onCreate()V

    .line 19
    invoke-virtual {p0}, Lcom/mob/MobApplication;->getAppkey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mob/MobApplication;->getAppSecret()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/mob/MobSDK;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    return-void
.end method
