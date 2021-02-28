.class final Lcom/sunborn/gameplatform/core/config/SunbornPlatformConfig$1;
.super Ljava/lang/Object;
.source "SunbornPlatformConfig.java"

# interfaces
.implements Lcom/lohanry/android/framework/service/ServiceManage$ServiceManageRegister;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunborn/gameplatform/core/config/SunbornPlatformConfig;->getInstance()Lcom/sunborn/gameplatform/core/config/SunbornPlatformConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public register()Lcom/lohanry/android/framework/service/FrameworkService;
    .registers 2

    .prologue
    .line 24
    new-instance v0, Lcom/lohanry/android/framework/cofig/ConfigFrameworkService;

    invoke-direct {v0}, Lcom/lohanry/android/framework/cofig/ConfigFrameworkService;-><init>()V

    return-object v0
.end method
