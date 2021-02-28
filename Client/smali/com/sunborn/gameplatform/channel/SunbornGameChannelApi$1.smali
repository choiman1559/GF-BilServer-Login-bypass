.class Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$1;
.super Ljava/lang/Object;
.source "SunbornGameChannelApi.java"

# interfaces
.implements Lcom/bsgamesdk/android/callbacklistener/InitCallbackListener;


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
    .line 70
    iput-object p1, p0, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$1;->this$0:Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .registers 2

    .prologue
    .line 81
    const-string v0, "init onFailed"

    invoke-static {v0}, Lcom/sunborn/gameplatform/core/common/SLog;->d(Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public onSuccess()V
    .registers 2

    .prologue
    .line 75
    const-string v0, "init onSuccess"

    invoke-static {v0}, Lcom/sunborn/gameplatform/core/common/SLog;->d(Ljava/lang/String;)V

    .line 76
    return-void
.end method
