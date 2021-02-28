.class Lcom/onevcat/uniwebview/UniWebViewManager;
.super Ljava/lang/Object;
.source "UniWebViewManager.java"


# static fields
.field private static instance:Lcom/onevcat/uniwebview/UniWebViewManager;


# instance fields
.field private showingDialogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/onevcat/uniwebview/UniWebViewDialog;",
            ">;"
        }
    .end annotation
.end field

.field private webViewDialog:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/onevcat/uniwebview/UniWebViewDialog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/onevcat/uniwebview/UniWebViewManager;->instance:Lcom/onevcat/uniwebview/UniWebViewManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewManager;->webViewDialog:Ljava/util/HashMap;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewManager;->showingDialogs:Ljava/util/ArrayList;

    .line 27
    return-void
.end method

.method static getInstance()Lcom/onevcat/uniwebview/UniWebViewManager;
    .registers 1

    .prologue
    .line 30
    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewManager;->instance:Lcom/onevcat/uniwebview/UniWebViewManager;

    if-nez v0, :cond_b

    .line 31
    new-instance v0, Lcom/onevcat/uniwebview/UniWebViewManager;

    invoke-direct {v0}, Lcom/onevcat/uniwebview/UniWebViewManager;-><init>()V

    sput-object v0, Lcom/onevcat/uniwebview/UniWebViewManager;->instance:Lcom/onevcat/uniwebview/UniWebViewManager;

    .line 33
    :cond_b
    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewManager;->instance:Lcom/onevcat/uniwebview/UniWebViewManager;

    return-object v0
.end method


# virtual methods
.method addShowingDialog(Lcom/onevcat/uniwebview/UniWebViewDialog;)V
    .registers 3
    .param p1, "webViewDialog"    # Lcom/onevcat/uniwebview/UniWebViewDialog;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewManager;->showingDialogs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 62
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewManager;->showingDialogs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    :cond_d
    return-void
.end method

.method allDialogs()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/onevcat/uniwebview/UniWebViewDialog;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewManager;->webViewDialog:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method getShowingDialogs()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/onevcat/uniwebview/UniWebViewDialog;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewManager;->showingDialogs:Ljava/util/ArrayList;

    return-object v0
.end method

.method getUniWebViewDialog(Ljava/lang/String;)Lcom/onevcat/uniwebview/UniWebViewDialog;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 37
    if-eqz p1, :cond_19

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewManager;->webViewDialog:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 38
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewManager;->webViewDialog:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onevcat/uniwebview/UniWebViewDialog;

    .line 40
    :goto_18
    return-object v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method handleTouchEvent(Lcom/onevcat/uniwebview/UniWebViewDialog;Landroid/app/Activity;Landroid/view/MotionEvent;)Z
    .registers 10
    .param p1, "dialog"    # Lcom/onevcat/uniwebview/UniWebViewDialog;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 71
    const/4 v1, 0x0

    .line 72
    .local v1, "touchHandledByAnotherDialog":Z
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebViewManager;->allDialogs()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_b
    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_30

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onevcat/uniwebview/UniWebViewDialog;

    .line 73
    .local v0, "d":Lcom/onevcat/uniwebview/UniWebViewDialog;
    if-eq v0, p1, :cond_b

    .line 75
    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->getWebView()Lcom/onevcat/uniwebview/UniWebView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/onevcat/uniwebview/UniWebView;->requestFocus()Z

    .line 76
    iput-boolean v3, v0, Lcom/onevcat/uniwebview/UniWebViewDialog;->touchFromAnotherDialog:Z

    .line 77
    invoke-virtual {v0, p3}, Lcom/onevcat/uniwebview/UniWebViewDialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    if-nez v5, :cond_2a

    if-eqz v1, :cond_2e

    :cond_2a
    move v1, v3

    .line 78
    :goto_2b
    iput-boolean v2, v0, Lcom/onevcat/uniwebview/UniWebViewDialog;->touchFromAnotherDialog:Z

    goto :goto_b

    :cond_2e
    move v1, v2

    .line 77
    goto :goto_2b

    .line 83
    .end local v0    # "d":Lcom/onevcat/uniwebview/UniWebViewDialog;
    :cond_30
    if-nez v1, :cond_35

    .line 84
    invoke-virtual {p2, p3}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 86
    :cond_35
    return v2
.end method

.method removeShowingDialog(Lcom/onevcat/uniwebview/UniWebViewDialog;)V
    .registers 3
    .param p1, "webViewDialog"    # Lcom/onevcat/uniwebview/UniWebViewDialog;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewManager;->showingDialogs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 68
    return-void
.end method

.method removeUniWebView(Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewManager;->webViewDialog:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 45
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing web view dialog from manager: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->debug(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewManager;->webViewDialog:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    :cond_27
    return-void
.end method

.method setUniWebView(Ljava/lang/String;Lcom/onevcat/uniwebview/UniWebViewDialog;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "webViewDialog"    # Lcom/onevcat/uniwebview/UniWebViewDialog;

    .prologue
    .line 51
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding web view dialog to manager: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->debug(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2, p1}, Lcom/onevcat/uniwebview/UniWebViewDialog;->setWebViewName(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewManager;->webViewDialog:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    return-void
.end method
