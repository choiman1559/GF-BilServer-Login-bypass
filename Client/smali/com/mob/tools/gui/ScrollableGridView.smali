.class public Lcom/mob/tools/gui/ScrollableGridView;
.super Landroid/widget/GridView;
.source "ScrollableGridView.java"

# interfaces
.implements Lcom/mob/tools/gui/Scrollable;


# instance fields
.field private osListener:Lcom/mob/tools/gui/Scrollable$OnScrollListener;

.field private pullEnable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 14
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/ScrollableGridView;->init(Landroid/content/Context;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/ScrollableGridView;->init(Landroid/content/Context;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/ScrollableGridView;->init(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method static synthetic access$002(Lcom/mob/tools/gui/ScrollableGridView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/mob/tools/gui/ScrollableGridView;
    .param p1, "x1"    # Z

    .prologue
    .line 8
    iput-boolean p1, p0, Lcom/mob/tools/gui/ScrollableGridView;->pullEnable:Z

    return p1
.end method

.method private init(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mob/tools/gui/ScrollableGridView;->setCacheColorHint(I)V

    .line 29
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual {p0, v0}, Lcom/mob/tools/gui/ScrollableGridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mob/tools/gui/ScrollableGridView;->pullEnable:Z

    .line 31
    new-instance v0, Lcom/mob/tools/gui/ScrollableGridView$1;

    invoke-direct {v0, p0}, Lcom/mob/tools/gui/ScrollableGridView$1;-><init>(Lcom/mob/tools/gui/ScrollableGridView;)V

    iput-object v0, p0, Lcom/mob/tools/gui/ScrollableGridView;->osListener:Lcom/mob/tools/gui/Scrollable$OnScrollListener;

    .line 37
    return-void
.end method


# virtual methods
.method protected computeVerticalScrollOffset()I
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 44
    invoke-super {p0}, Landroid/widget/GridView;->computeVerticalScrollOffset()I

    move-result v3

    .line 45
    .local v3, "offset":I
    iget-object v0, p0, Lcom/mob/tools/gui/ScrollableGridView;->osListener:Lcom/mob/tools/gui/Scrollable$OnScrollListener;

    if-eqz v0, :cond_11

    .line 46
    iget-object v0, p0, Lcom/mob/tools/gui/ScrollableGridView;->osListener:Lcom/mob/tools/gui/Scrollable$OnScrollListener;

    move-object v1, p0

    move v4, v2

    move v5, v2

    invoke-interface/range {v0 .. v5}, Lcom/mob/tools/gui/Scrollable$OnScrollListener;->onScrollChanged(Lcom/mob/tools/gui/Scrollable;IIII)V

    .line 48
    :cond_11
    return v3
.end method

.method public isReadyToPull()Z
    .registers 2

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/mob/tools/gui/ScrollableGridView;->pullEnable:Z

    return v0
.end method
