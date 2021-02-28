.class Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$5;
.super Ljava/lang/Object;
.source "SunbornGameChannelApi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;->doSwitchAccount()Z
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
    .line 205
    iput-object p1, p0, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$5;->this$0:Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 208
    iget-object v0, p0, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$5;->this$0:Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;

    invoke-static {v0}, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;->access$600(Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;)Lcom/bsgamesdk/android/BSGameSdk;

    move-result-object v0

    new-instance v1, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$5$1;

    invoke-direct {v1, p0}, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$5$1;-><init>(Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$5;)V

    invoke-virtual {v0, v1}, Lcom/bsgamesdk/android/BSGameSdk;->logout(Lcom/bsgamesdk/android/callbacklistener/CallbackListener;)V

    .line 237
    return-void
.end method
