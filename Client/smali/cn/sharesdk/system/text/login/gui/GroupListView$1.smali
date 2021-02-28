.class Lcn/sharesdk/system/text/login/gui/GroupListView$1;
.super Ljava/lang/Object;
.source "GroupListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/system/text/login/gui/GroupListView;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/system/text/login/gui/GroupListView;


# direct methods
.method constructor <init>(Lcn/sharesdk/system/text/login/gui/GroupListView;)V
    .registers 2

    .prologue
    .line 48
    iput-object p1, p0, Lcn/sharesdk/system/text/login/gui/GroupListView$1;->a:Lcn/sharesdk/system/text/login/gui/GroupListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 6
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 58
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/GroupListView$1;->a:Lcn/sharesdk/system/text/login/gui/GroupListView;

    invoke-static {v0, p2}, Lcn/sharesdk/system/text/login/gui/GroupListView;->a(Lcn/sharesdk/system/text/login/gui/GroupListView;I)I

    .line 59
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/GroupListView$1;->a:Lcn/sharesdk/system/text/login/gui/GroupListView;

    invoke-static {v0}, Lcn/sharesdk/system/text/login/gui/GroupListView;->b(Lcn/sharesdk/system/text/login/gui/GroupListView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 60
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/GroupListView$1;->a:Lcn/sharesdk/system/text/login/gui/GroupListView;

    invoke-static {v0}, Lcn/sharesdk/system/text/login/gui/GroupListView;->c(Lcn/sharesdk/system/text/login/gui/GroupListView;)V

    .line 63
    :cond_12
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/GroupListView$1;->a:Lcn/sharesdk/system/text/login/gui/GroupListView;

    invoke-static {v0}, Lcn/sharesdk/system/text/login/gui/GroupListView;->a(Lcn/sharesdk/system/text/login/gui/GroupListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 64
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/GroupListView$1;->a:Lcn/sharesdk/system/text/login/gui/GroupListView;

    invoke-static {v0}, Lcn/sharesdk/system/text/login/gui/GroupListView;->a(Lcn/sharesdk/system/text/login/gui/GroupListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 66
    :cond_23
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 4
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 51
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/GroupListView$1;->a:Lcn/sharesdk/system/text/login/gui/GroupListView;

    invoke-static {v0}, Lcn/sharesdk/system/text/login/gui/GroupListView;->a(Lcn/sharesdk/system/text/login/gui/GroupListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 52
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/GroupListView$1;->a:Lcn/sharesdk/system/text/login/gui/GroupListView;

    invoke-static {v0}, Lcn/sharesdk/system/text/login/gui/GroupListView;->a(Lcn/sharesdk/system/text/login/gui/GroupListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 54
    :cond_11
    return-void
.end method
