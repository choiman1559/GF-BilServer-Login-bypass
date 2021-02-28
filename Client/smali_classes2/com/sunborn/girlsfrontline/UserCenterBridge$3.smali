.class final Lcom/sunborn/girlsfrontline/UserCenterBridge$3;
.super Ljava/lang/Object;
.source "UserCenterBridge.java"

# interfaces
.implements Lcom/sunborn/gameplatform/core/common/DataCenterService$IGetUUIDListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunborn/girlsfrontline/UserCenterBridge;->trackUserLogin4DBCenter(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$openid:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 170
    iput-object p1, p0, Lcom/sunborn/girlsfrontline/UserCenterBridge$3;->val$openid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnSuccess(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 174
    new-instance v0, Lcom/sunborn/gameplatform/core/action/SunBornTrackingDataAction;

    invoke-direct {v0}, Lcom/sunborn/gameplatform/core/action/SunBornTrackingDataAction;-><init>()V

    iget-object v1, p0, Lcom/sunborn/girlsfrontline/UserCenterBridge$3;->val$openid:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/sunborn/gameplatform/core/action/SunBornTrackingDataAction;->userLogin(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    return-void
.end method
