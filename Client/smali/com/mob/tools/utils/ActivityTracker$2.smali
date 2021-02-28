.class Lcom/mob/tools/utils/ActivityTracker$2;
.super Landroid/app/Instrumentation;
.source "ActivityTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/utils/ActivityTracker;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mob/tools/utils/ActivityTracker;


# direct methods
.method constructor <init>(Lcom/mob/tools/utils/ActivityTracker;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mob/tools/utils/ActivityTracker;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/mob/tools/utils/ActivityTracker$2;->this$0:Lcom/mob/tools/utils/ActivityTracker;

    invoke-direct {p0}, Landroid/app/Instrumentation;-><init>()V

    return-void
.end method


# virtual methods
.method public callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 74
    invoke-super {p0, p1, p2}, Landroid/app/Instrumentation;->callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 75
    iget-object v0, p0, Lcom/mob/tools/utils/ActivityTracker$2;->this$0:Lcom/mob/tools/utils/ActivityTracker;

    invoke-static {v0, p1, p2}, Lcom/mob/tools/utils/ActivityTracker;->access$000(Lcom/mob/tools/utils/ActivityTracker;Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 76
    return-void
.end method

.method public callActivityOnDestroy(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 99
    invoke-super {p0, p1}, Landroid/app/Instrumentation;->callActivityOnDestroy(Landroid/app/Activity;)V

    .line 100
    iget-object v0, p0, Lcom/mob/tools/utils/ActivityTracker$2;->this$0:Lcom/mob/tools/utils/ActivityTracker;

    invoke-static {v0, p1}, Lcom/mob/tools/utils/ActivityTracker;->access$500(Lcom/mob/tools/utils/ActivityTracker;Landroid/app/Activity;)V

    .line 101
    return-void
.end method

.method public callActivityOnPause(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 89
    invoke-super {p0, p1}, Landroid/app/Instrumentation;->callActivityOnPause(Landroid/app/Activity;)V

    .line 90
    iget-object v0, p0, Lcom/mob/tools/utils/ActivityTracker$2;->this$0:Lcom/mob/tools/utils/ActivityTracker;

    invoke-static {v0, p1}, Lcom/mob/tools/utils/ActivityTracker;->access$300(Lcom/mob/tools/utils/ActivityTracker;Landroid/app/Activity;)V

    .line 91
    return-void
.end method

.method public callActivityOnResume(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/app/Instrumentation;->callActivityOnResume(Landroid/app/Activity;)V

    .line 85
    iget-object v0, p0, Lcom/mob/tools/utils/ActivityTracker$2;->this$0:Lcom/mob/tools/utils/ActivityTracker;

    invoke-static {v0, p1}, Lcom/mob/tools/utils/ActivityTracker;->access$200(Lcom/mob/tools/utils/ActivityTracker;Landroid/app/Activity;)V

    .line 86
    return-void
.end method

.method public callActivityOnSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 104
    invoke-super {p0, p1, p2}, Landroid/app/Instrumentation;->callActivityOnSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 105
    iget-object v0, p0, Lcom/mob/tools/utils/ActivityTracker$2;->this$0:Lcom/mob/tools/utils/ActivityTracker;

    invoke-static {v0, p1, p2}, Lcom/mob/tools/utils/ActivityTracker;->access$600(Lcom/mob/tools/utils/ActivityTracker;Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 106
    return-void
.end method

.method public callActivityOnStart(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/app/Instrumentation;->callActivityOnStart(Landroid/app/Activity;)V

    .line 80
    iget-object v0, p0, Lcom/mob/tools/utils/ActivityTracker$2;->this$0:Lcom/mob/tools/utils/ActivityTracker;

    invoke-static {v0, p1}, Lcom/mob/tools/utils/ActivityTracker;->access$100(Lcom/mob/tools/utils/ActivityTracker;Landroid/app/Activity;)V

    .line 81
    return-void
.end method

.method public callActivityOnStop(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 94
    invoke-super {p0, p1}, Landroid/app/Instrumentation;->callActivityOnStop(Landroid/app/Activity;)V

    .line 95
    iget-object v0, p0, Lcom/mob/tools/utils/ActivityTracker$2;->this$0:Lcom/mob/tools/utils/ActivityTracker;

    invoke-static {v0, p1}, Lcom/mob/tools/utils/ActivityTracker;->access$400(Lcom/mob/tools/utils/ActivityTracker;Landroid/app/Activity;)V

    .line 96
    return-void
.end method
