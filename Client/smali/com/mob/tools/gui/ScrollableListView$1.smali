.class Lcom/mob/tools/gui/ScrollableListView$1;
.super Ljava/lang/Object;
.source "ScrollableListView.java"

# interfaces
.implements Lcom/mob/tools/gui/Scrollable$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/gui/ScrollableListView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mob/tools/gui/ScrollableListView;


# direct methods
.method constructor <init>(Lcom/mob/tools/gui/ScrollableListView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mob/tools/gui/ScrollableListView;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/mob/tools/gui/ScrollableListView$1;->this$0:Lcom/mob/tools/gui/ScrollableListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged(Lcom/mob/tools/gui/Scrollable;IIII)V
    .registers 8
    .param p1, "scrollable"    # Lcom/mob/tools/gui/Scrollable;
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "oldl"    # I
    .param p5, "oldt"    # I

    .prologue
    .line 35
    iget-object v1, p0, Lcom/mob/tools/gui/ScrollableListView$1;->this$0:Lcom/mob/tools/gui/ScrollableListView;

    if-gtz p3, :cond_b

    if-gtz p5, :cond_b

    const/4 v0, 0x1

    :goto_7
    invoke-static {v1, v0}, Lcom/mob/tools/gui/ScrollableListView;->access$002(Lcom/mob/tools/gui/ScrollableListView;Z)Z

    .line 36
    return-void

    .line 35
    :cond_b
    const/4 v0, 0x0

    goto :goto_7
.end method
