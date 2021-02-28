.class Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi$1;
.super Ljava/lang/Object;
.source "SunbornGamePlatformApi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->onCreate(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;


# direct methods
.method constructor <init>(Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi$1;->this$0:Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 101
    iget-object v1, p0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi$1;->this$0:Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;

    invoke-static {}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->access$100()Landroid/app/Activity;

    move-result-object v0

    sget-object v2, Lcom/sunborn/gameplatform/core/common/DialogFactory$DialogType;->LOADING:Lcom/sunborn/gameplatform/core/common/DialogFactory$DialogType;

    invoke-static {v0, v2}, Lcom/sunborn/gameplatform/core/common/DialogFactory;->create(Landroid/content/Context;Lcom/sunborn/gameplatform/core/common/DialogFactory$DialogType;)Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Lcom/sunborn/gameplatform/core/view/LoadingDialog;

    invoke-static {v1, v0}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->access$002(Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;Lcom/sunborn/gameplatform/core/view/LoadingDialog;)Lcom/sunborn/gameplatform/core/view/LoadingDialog;

    .line 102
    iget-object v1, p0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi$1;->this$0:Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;

    invoke-static {}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->access$100()Landroid/app/Activity;

    move-result-object v0

    sget-object v2, Lcom/sunborn/gameplatform/core/common/DialogFactory$DialogType;->MSG:Lcom/sunborn/gameplatform/core/common/DialogFactory$DialogType;

    invoke-static {v0, v2}, Lcom/sunborn/gameplatform/core/common/DialogFactory;->create(Landroid/content/Context;Lcom/sunborn/gameplatform/core/common/DialogFactory$DialogType;)Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Lcom/sunborn/gameplatform/core/view/MsgDialog;

    invoke-static {v1, v0}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->access$202(Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;Lcom/sunborn/gameplatform/core/view/MsgDialog;)Lcom/sunborn/gameplatform/core/view/MsgDialog;

    .line 103
    iget-object v0, p0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi$1;->this$0:Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;

    new-instance v1, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi$MyHttpCallBack;

    iget-object v2, p0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi$1;->this$0:Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi$MyHttpCallBack;-><init>(Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi$1;)V

    invoke-static {v0, v1}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->access$302(Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi$MyHttpCallBack;)Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi$MyHttpCallBack;

    .line 104
    return-void
.end method
