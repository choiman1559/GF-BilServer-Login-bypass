.class public Lcom/sunborn/girlsfrontline/GameActivity;
.super Lcom/sunborn/girlsfrontline/UnityPlayerActivity;
.source "GameActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    const-class v0, Lcom/sunborn/girlsfrontline/GameActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sunborn/girlsfrontline/GameActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/sunborn/girlsfrontline/UnityPlayerActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 106
    invoke-super {p0, p1, p2, p3}, Lcom/sunborn/girlsfrontline/UnityPlayerActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 107
    invoke-static {}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->getInstance()Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->onActivityResult(IILandroid/content/Intent;)V

    .line 108
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/sunborn/girlsfrontline/UnityPlayerActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/smali/tools/SmaliTools;->showTechnicalDemoOverlay(Landroid/content/Context;)V

    .line 22
    invoke-static {}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->getInstance()Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;

    move-result-object v0

    new-instance v1, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;

    invoke-direct {v1}, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;-><init>()V

    invoke-virtual {v0, v1}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->SetThirdSDKListener(Lcom/sunborn/gameplatform/core/listener/SunbronUserCenterListener;)V

    .line 23
    invoke-static {}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->getInstance()Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;

    move-result-object v0

    new-instance v1, Lcom/sunborn/girlsfrontline/GameActivity$1;

    invoke-direct {v1, p0}, Lcom/sunborn/girlsfrontline/GameActivity$1;-><init>(Lcom/sunborn/girlsfrontline/GameActivity;)V

    invoke-virtual {v0, v1}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->SetUserCenterCallback(Lcom/sunborn/gameplatform/core/listener/SunbornSDKCallback;)V

    .line 52
    invoke-static {}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->getInstance()Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->onCreate(Landroid/app/Activity;)V

    .line 53
    invoke-static {}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->getInstance()Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->setDebug(I)V

    .line 56
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 88
    invoke-super {p0}, Lcom/sunborn/girlsfrontline/UnityPlayerActivity;->onDestroy()V

    .line 89
    invoke-static {}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->getInstance()Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->onDestroy(Landroid/app/Activity;)V

    invoke-static {p0}, Lcom/smali/tools/SmaliTools;->closeTechnicalDemoOverlay(Landroid/content/Context;)V

    .line 90
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 100
    invoke-super {p0, p1}, Lcom/sunborn/girlsfrontline/UnityPlayerActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 101
    invoke-static {}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->getInstance()Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->onNewIntent(Landroid/content/Intent;)V

    .line 102
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 76
    invoke-super {p0}, Lcom/sunborn/girlsfrontline/UnityPlayerActivity;->onPause()V

    .line 77
    invoke-static {}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->getInstance()Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->onPause(Landroid/app/Activity;)V

    .line 78
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 5
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "grantResults"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 59
    invoke-super {p0, p1, p2, p3}, Lcom/sunborn/girlsfrontline/UnityPlayerActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 60
    invoke-static {}, Lcom/lohanry/framework/support/PermissionRequestManage;->getInstance()Lcom/lohanry/framework/support/PermissionRequestManage;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/lohanry/framework/support/PermissionRequestManage;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 61
    return-void
.end method

.method public onRestart()V
    .registers 2

    .prologue
    .line 94
    invoke-super {p0}, Lcom/sunborn/girlsfrontline/UnityPlayerActivity;->onRestart()V

    .line 95
    invoke-static {}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->getInstance()Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->onRestart(Landroid/app/Activity;)V

    .line 96
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 71
    invoke-super {p0}, Lcom/sunborn/girlsfrontline/UnityPlayerActivity;->onResume()V

    .line 72
    invoke-static {}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->getInstance()Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->onResume(Landroid/app/Activity;)V

    .line 73
    return-void
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 66
    invoke-super {p0}, Lcom/sunborn/girlsfrontline/UnityPlayerActivity;->onStart()V

    .line 67
    invoke-static {}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->getInstance()Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->onStart(Landroid/app/Activity;)V

    .line 68
    return-void
.end method

.method public onStop()V
    .registers 2

    .prologue
    .line 82
    invoke-super {p0}, Lcom/sunborn/girlsfrontline/UnityPlayerActivity;->onStop()V

    .line 83
    invoke-static {}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->getInstance()Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->onStop(Landroid/app/Activity;)V

    .line 84
    return-void
.end method
