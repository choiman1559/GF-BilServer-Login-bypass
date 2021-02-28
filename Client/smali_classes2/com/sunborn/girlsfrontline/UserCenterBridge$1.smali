.class final Lcom/sunborn/girlsfrontline/UserCenterBridge$1;
.super Ljava/lang/Object;
.source "UserCenterBridge.java"

# interfaces
.implements Lcom/sunborn/gameplatform/core/common/DataCenterService$IGetUUIDListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunborn/girlsfrontline/UserCenterBridge;->trackUserPay4DBCenter(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$openid:Ljava/lang/String;

.field final synthetic val$strings:[Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 145
    iput-object p1, p0, Lcom/sunborn/girlsfrontline/UserCenterBridge$1;->val$openid:Ljava/lang/String;

    iput-object p2, p0, Lcom/sunborn/girlsfrontline/UserCenterBridge$1;->val$strings:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnSuccess(Ljava/lang/String;)V
    .registers 7
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 148
    new-instance v0, Lcom/sunborn/gameplatform/core/action/SunBornTrackingDataAction;

    invoke-direct {v0}, Lcom/sunborn/gameplatform/core/action/SunBornTrackingDataAction;-><init>()V

    iget-object v1, p0, Lcom/sunborn/girlsfrontline/UserCenterBridge$1;->val$openid:Ljava/lang/String;

    iget-object v2, p0, Lcom/sunborn/girlsfrontline/UserCenterBridge$1;->val$strings:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/sunborn/girlsfrontline/UserCenterBridge$1;->val$strings:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/sunborn/gameplatform/core/action/SunBornTrackingDataAction;->purchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    return-void
.end method
