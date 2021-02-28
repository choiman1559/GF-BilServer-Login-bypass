.class Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$4$1$1;
.super Ljava/lang/Object;
.source "SunbornGameChannelApi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$4$1;->onSuccess(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$4$1;

.field final synthetic val$paramsMap:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$4$1;Ljava/util/HashMap;)V
    .registers 3
    .param p1, "this$2"    # Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$4$1;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$4$1$1;->this$2:Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$4$1;

    iput-object p2, p0, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$4$1$1;->val$paramsMap:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 172
    invoke-static {}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->getInstance()Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;

    move-result-object v0

    iget-object v1, p0, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$4$1$1;->val$paramsMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->doLoginVerify(Ljava/util/HashMap;)V

    .line 173
    return-void
.end method
