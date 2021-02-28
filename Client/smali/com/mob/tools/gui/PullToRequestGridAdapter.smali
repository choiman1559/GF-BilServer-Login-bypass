.class public abstract Lcom/mob/tools/gui/PullToRequestGridAdapter;
.super Lcom/mob/tools/gui/PullToRequestBaseListAdapter;
.source "PullToRequestGridAdapter.java"


# instance fields
.field private adapter:Lcom/mob/tools/gui/PullToRequestBaseAdapter;

.field private fling:Z

.field private gridView:Lcom/mob/tools/gui/ScrollableGridView;

.field private osListener:Lcom/mob/tools/gui/OnListStopScrollListener;

.field private pullUpReady:Z


# direct methods
.method public constructor <init>(Lcom/mob/tools/gui/PullToRequestView;)V
    .registers 4
    .param p1, "view"    # Lcom/mob/tools/gui/PullToRequestView;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/PullToRequestBaseListAdapter;-><init>(Lcom/mob/tools/gui/PullToRequestView;)V

    .line 18
    invoke-virtual {p0}, Lcom/mob/tools/gui/PullToRequestGridAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mob/tools/gui/PullToRequestGridAdapter;->onNewGridView(Landroid/content/Context;)Lcom/mob/tools/gui/ScrollableGridView;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/tools/gui/PullToRequestGridAdapter;->gridView:Lcom/mob/tools/gui/ScrollableGridView;

    .line 19
    iget-object v0, p0, Lcom/mob/tools/gui/PullToRequestGridAdapter;->gridView:Lcom/mob/tools/gui/ScrollableGridView;

    new-instance v1, Lcom/mob/tools/gui/PullToRequestGridAdapter$1;

    invoke-direct {v1, p0}, Lcom/mob/tools/gui/PullToRequestGridAdapter$1;-><init>(Lcom/mob/tools/gui/PullToRequestGridAdapter;)V

    invoke-virtual {v0, v1}, Lcom/mob/tools/gui/ScrollableGridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 45
    new-instance v0, Lcom/mob/tools/gui/PullToRequestBaseAdapter;

    invoke-direct {v0, p0}, Lcom/mob/tools/gui/PullToRequestBaseAdapter;-><init>(Lcom/mob/tools/gui/PullToRequestBaseListAdapter;)V

    iput-object v0, p0, Lcom/mob/tools/gui/PullToRequestGridAdapter;->adapter:Lcom/mob/tools/gui/PullToRequestBaseAdapter;

    .line 46
    iget-object v0, p0, Lcom/mob/tools/gui/PullToRequestGridAdapter;->gridView:Lcom/mob/tools/gui/ScrollableGridView;

    iget-object v1, p0, Lcom/mob/tools/gui/PullToRequestGridAdapter;->adapter:Lcom/mob/tools/gui/PullToRequestBaseAdapter;

    invoke-virtual {v0, v1}, Lcom/mob/tools/gui/ScrollableGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 47
    return-void
.end method

.method static synthetic access$002(Lcom/mob/tools/gui/PullToRequestGridAdapter;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/mob/tools/gui/PullToRequestGridAdapter;
    .param p1, "x1"    # Z

    .prologue
    .line 9
    iput-boolean p1, p0, Lcom/mob/tools/gui/PullToRequestGridAdapter;->fling:Z

    return p1
.end method

.method static synthetic access$100(Lcom/mob/tools/gui/PullToRequestGridAdapter;)Lcom/mob/tools/gui/OnListStopScrollListener;
    .registers 2
    .param p0, "x0"    # Lcom/mob/tools/gui/PullToRequestGridAdapter;

    .prologue
    .line 9
    iget-object v0, p0, Lcom/mob/tools/gui/PullToRequestGridAdapter;->osListener:Lcom/mob/tools/gui/OnListStopScrollListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mob/tools/gui/PullToRequestGridAdapter;)Lcom/mob/tools/gui/PullToRequestBaseAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/mob/tools/gui/PullToRequestGridAdapter;

    .prologue
    .line 9
    iget-object v0, p0, Lcom/mob/tools/gui/PullToRequestGridAdapter;->adapter:Lcom/mob/tools/gui/PullToRequestBaseAdapter;

    return-object v0
.end method

.method static synthetic access$302(Lcom/mob/tools/gui/PullToRequestGridAdapter;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/mob/tools/gui/PullToRequestGridAdapter;
    .param p1, "x1"    # Z

    .prologue
    .line 9
    iput-boolean p1, p0, Lcom/mob/tools/gui/PullToRequestGridAdapter;->pullUpReady:Z

    return p1
.end method

.method static synthetic access$400(Lcom/mob/tools/gui/PullToRequestGridAdapter;)Lcom/mob/tools/gui/ScrollableGridView;
    .registers 2
    .param p0, "x0"    # Lcom/mob/tools/gui/PullToRequestGridAdapter;

    .prologue
    .line 9
    iget-object v0, p0, Lcom/mob/tools/gui/PullToRequestGridAdapter;->gridView:Lcom/mob/tools/gui/ScrollableGridView;

    return-object v0
.end method


# virtual methods
.method public getBodyView()Lcom/mob/tools/gui/Scrollable;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/mob/tools/gui/PullToRequestGridAdapter;->gridView:Lcom/mob/tools/gui/ScrollableGridView;

    return-object v0
.end method

.method public getGridView()Landroid/widget/GridView;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mob/tools/gui/PullToRequestGridAdapter;->gridView:Lcom/mob/tools/gui/ScrollableGridView;

    return-object v0
.end method

.method public isFling()Z
    .registers 2

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/mob/tools/gui/PullToRequestGridAdapter;->fling:Z

    return v0
.end method

.method public isPullDownReady()Z
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/mob/tools/gui/PullToRequestGridAdapter;->gridView:Lcom/mob/tools/gui/ScrollableGridView;

    invoke-virtual {v0}, Lcom/mob/tools/gui/ScrollableGridView;->isReadyToPull()Z

    move-result v0

    return v0
.end method

.method public isPullUpReady()Z
    .registers 2

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/mob/tools/gui/PullToRequestGridAdapter;->pullUpReady:Z

    return v0
.end method

.method public notifyDataSetChanged()V
    .registers 2

    .prologue
    .line 79
    invoke-super {p0}, Lcom/mob/tools/gui/PullToRequestBaseListAdapter;->notifyDataSetChanged()V

    .line 80
    iget-object v0, p0, Lcom/mob/tools/gui/PullToRequestGridAdapter;->adapter:Lcom/mob/tools/gui/PullToRequestBaseAdapter;

    invoke-virtual {v0}, Lcom/mob/tools/gui/PullToRequestBaseAdapter;->notifyDataSetChanged()V

    .line 81
    return-void
.end method

.method protected onNewGridView(Landroid/content/Context;)Lcom/mob/tools/gui/ScrollableGridView;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    new-instance v0, Lcom/mob/tools/gui/ScrollableGridView;

    invoke-direct {v0, p1}, Lcom/mob/tools/gui/ScrollableGridView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onScroll(Lcom/mob/tools/gui/Scrollable;III)V
    .registers 5
    .param p1, "scrollable"    # Lcom/mob/tools/gui/Scrollable;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 76
    return-void
.end method

.method public setColumnWidth(I)V
    .registers 3
    .param p1, "columnWidth"    # I

    .prologue
    .line 96
    iget-object v0, p0, Lcom/mob/tools/gui/PullToRequestGridAdapter;->gridView:Lcom/mob/tools/gui/ScrollableGridView;

    invoke-virtual {v0, p1}, Lcom/mob/tools/gui/ScrollableGridView;->setColumnWidth(I)V

    .line 97
    return-void
.end method

.method public setHorizontalSpacing(I)V
    .registers 3
    .param p1, "horizontalSpacing"    # I

    .prologue
    .line 84
    iget-object v0, p0, Lcom/mob/tools/gui/PullToRequestGridAdapter;->gridView:Lcom/mob/tools/gui/ScrollableGridView;

    invoke-virtual {v0, p1}, Lcom/mob/tools/gui/ScrollableGridView;->setHorizontalSpacing(I)V

    .line 85
    return-void
.end method

.method public setNumColumns(I)V
    .registers 3
    .param p1, "numColumns"    # I

    .prologue
    .line 92
    iget-object v0, p0, Lcom/mob/tools/gui/PullToRequestGridAdapter;->gridView:Lcom/mob/tools/gui/ScrollableGridView;

    invoke-virtual {v0, p1}, Lcom/mob/tools/gui/ScrollableGridView;->setNumColumns(I)V

    .line 93
    return-void
.end method

.method public setStretchMode(I)V
    .registers 3
    .param p1, "stretchMode"    # I

    .prologue
    .line 100
    iget-object v0, p0, Lcom/mob/tools/gui/PullToRequestGridAdapter;->gridView:Lcom/mob/tools/gui/ScrollableGridView;

    invoke-virtual {v0, p1}, Lcom/mob/tools/gui/ScrollableGridView;->setStretchMode(I)V

    .line 101
    return-void
.end method

.method public setVerticalSpacing(I)V
    .registers 3
    .param p1, "verticalSpacing"    # I

    .prologue
    .line 88
    iget-object v0, p0, Lcom/mob/tools/gui/PullToRequestGridAdapter;->gridView:Lcom/mob/tools/gui/ScrollableGridView;

    invoke-virtual {v0, p1}, Lcom/mob/tools/gui/ScrollableGridView;->setVerticalSpacing(I)V

    .line 89
    return-void
.end method
