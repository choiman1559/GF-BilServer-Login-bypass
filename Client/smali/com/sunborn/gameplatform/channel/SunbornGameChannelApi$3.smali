.class Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$3;
.super Ljava/lang/Object;
.source "SunbornGameChannelApi.java"

# interfaces
.implements Lcom/bsgamesdk/android/callbacklistener/AccountCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;->onCreate(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;


# direct methods
.method constructor <init>(Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$3;->this$0:Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccountInvalid()V
    .registers 2

    .prologue
    .line 99
    invoke-static {}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->getInstance()Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->LogoutResponse()V

    .line 100
    return-void
.end method
