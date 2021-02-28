.class Lcn/sharesdk/system/text/login/gui/GroupListView$2;
.super Ljava/lang/Object;
.source "GroupListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 69
    iput-object p1, p0, Lcn/sharesdk/system/text/login/gui/GroupListView$2;->a:Lcn/sharesdk/system/text/login/gui/GroupListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/GroupListView$2;->a:Lcn/sharesdk/system/text/login/gui/GroupListView;

    invoke-static {v0}, Lcn/sharesdk/system/text/login/gui/GroupListView;->d(Lcn/sharesdk/system/text/login/gui/GroupListView;)Lcn/sharesdk/system/text/login/gui/GroupListView$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 72
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/GroupListView$2;->a:Lcn/sharesdk/system/text/login/gui/GroupListView;

    invoke-static {v0}, Lcn/sharesdk/system/text/login/gui/GroupListView;->e(Lcn/sharesdk/system/text/login/gui/GroupListView;)Lcn/sharesdk/system/text/login/gui/GroupListView$b;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcn/sharesdk/system/text/login/gui/GroupListView$b;->a(I)I

    move-result v1

    .line 73
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/GroupListView$2;->a:Lcn/sharesdk/system/text/login/gui/GroupListView;

    invoke-static {v0}, Lcn/sharesdk/system/text/login/gui/GroupListView;->e(Lcn/sharesdk/system/text/login/gui/GroupListView;)Lcn/sharesdk/system/text/login/gui/GroupListView$b;

    move-result-object v0

    invoke-static {v0}, Lcn/sharesdk/system/text/login/gui/GroupListView$b;->a(Lcn/sharesdk/system/text/login/gui/GroupListView$b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, p3, v0

    add-int/lit8 v0, v0, -0x1

    .line 74
    iget-object v2, p0, Lcn/sharesdk/system/text/login/gui/GroupListView$2;->a:Lcn/sharesdk/system/text/login/gui/GroupListView;

    invoke-static {v2}, Lcn/sharesdk/system/text/login/gui/GroupListView;->d(Lcn/sharesdk/system/text/login/gui/GroupListView;)Lcn/sharesdk/system/text/login/gui/GroupListView$OnItemClickListener;

    move-result-object v2

    iget-object v3, p0, Lcn/sharesdk/system/text/login/gui/GroupListView$2;->a:Lcn/sharesdk/system/text/login/gui/GroupListView;

    invoke-interface {v2, v3, p2, v1, v0}, Lcn/sharesdk/system/text/login/gui/GroupListView$OnItemClickListener;->onItemClick(Lcn/sharesdk/system/text/login/gui/GroupListView;Landroid/view/View;II)V

    .line 76
    :cond_35
    return-void
.end method
