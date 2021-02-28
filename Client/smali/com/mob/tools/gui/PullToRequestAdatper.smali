.class public abstract Lcom/mob/tools/gui/PullToRequestAdatper;
.super Ljava/lang/Object;
.source "PullToRequestAdatper.java"


# instance fields
.field private context:Landroid/content/Context;

.field private parent:Lcom/mob/tools/gui/PullToRequestView;


# direct methods
.method public constructor <init>(Lcom/mob/tools/gui/PullToRequestView;)V
    .registers 3
    .param p1, "view"    # Lcom/mob/tools/gui/PullToRequestView;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-virtual {p1}, Lcom/mob/tools/gui/PullToRequestView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/tools/gui/PullToRequestAdatper;->context:Landroid/content/Context;

    .line 12
    iput-object p1, p0, Lcom/mob/tools/gui/PullToRequestAdatper;->parent:Lcom/mob/tools/gui/PullToRequestView;

    .line 13
    return-void
.end method


# virtual methods
.method public abstract getBodyView()Lcom/mob/tools/gui/Scrollable;
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 16
    iget-object v0, p0, Lcom/mob/tools/gui/PullToRequestAdatper;->context:Landroid/content/Context;

    return-object v0
.end method

.method public abstract getFooterView()Landroid/view/View;
.end method

.method public abstract getHeaderView()Landroid/view/View;
.end method

.method protected getParent()Lcom/mob/tools/gui/PullToRequestView;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/mob/tools/gui/PullToRequestAdatper;->parent:Lcom/mob/tools/gui/PullToRequestView;

    return-object v0
.end method

.method public abstract isPullDownReady()Z
.end method

.method public abstract isPullUpReady()Z
.end method

.method public notifyDataSetChanged()V
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/mob/tools/gui/PullToRequestAdatper;->parent:Lcom/mob/tools/gui/PullToRequestView;

    invoke-virtual {v0}, Lcom/mob/tools/gui/PullToRequestView;->stopPulling()V

    .line 25
    return-void
.end method

.method public onPullDown(I)V
    .registers 2
    .param p1, "percent"    # I

    .prologue
    .line 51
    return-void
.end method

.method public onPullUp(I)V
    .registers 2
    .param p1, "percent"    # I

    .prologue
    .line 55
    return-void
.end method

.method public onRefresh()V
    .registers 1

    .prologue
    .line 35
    return-void
.end method

.method public onRequestNext()V
    .registers 1

    .prologue
    .line 39
    return-void
.end method

.method public onReversed()V
    .registers 1

    .prologue
    .line 43
    return-void
.end method
