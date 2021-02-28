.class Lcom/mob/tools/utils/LocationHelper$1;
.super Lcom/mob/tools/MobHandlerThread;
.source "LocationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/utils/LocationHelper;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mob/tools/utils/LocationHelper;


# direct methods
.method constructor <init>(Lcom/mob/tools/utils/LocationHelper;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mob/tools/utils/LocationHelper;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/mob/tools/utils/LocationHelper$1;->this$0:Lcom/mob/tools/utils/LocationHelper;

    invoke-direct {p0}, Lcom/mob/tools/MobHandlerThread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 28
    :try_start_0
    invoke-super {p0}, Lcom/mob/tools/MobHandlerThread;->run()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    .line 32
    :goto_3
    return-void

    .line 29
    :catch_4
    move-exception v0

    .line 30
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_3
.end method
