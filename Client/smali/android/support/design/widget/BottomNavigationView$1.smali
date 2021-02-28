.class Landroid/support/design/widget/BottomNavigationView$1;
.super Ljava/lang/Object;
.source "BottomNavigationView.java"

# interfaces
.implements Landroid/support/v7/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/BottomNavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/BottomNavigationView;


# direct methods
.method constructor <init>(Landroid/support/design/widget/BottomNavigationView;)V
    .registers 2
    .param p1, "this$0"    # Landroid/support/design/widget/BottomNavigationView;

    .prologue
    .line 197
    iput-object p1, p0, Landroid/support/design/widget/BottomNavigationView$1;->this$0:Landroid/support/design/widget/BottomNavigationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemSelected(Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .registers 6
    .param p1, "menu"    # Landroid/support/v7/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 200
    iget-object v1, p0, Landroid/support/design/widget/BottomNavigationView$1;->this$0:Landroid/support/design/widget/BottomNavigationView;

    invoke-static {v1}, Landroid/support/design/widget/BottomNavigationView;->access$000(Landroid/support/design/widget/BottomNavigationView;)Landroid/support/design/widget/BottomNavigationView$OnNavigationItemReselectedListener;

    move-result-object v1

    if-eqz v1, :cond_1f

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    iget-object v2, p0, Landroid/support/design/widget/BottomNavigationView$1;->this$0:Landroid/support/design/widget/BottomNavigationView;

    invoke-virtual {v2}, Landroid/support/design/widget/BottomNavigationView;->getSelectedItemId()I

    move-result v2

    if-ne v1, v2, :cond_1f

    .line 201
    iget-object v1, p0, Landroid/support/design/widget/BottomNavigationView$1;->this$0:Landroid/support/design/widget/BottomNavigationView;

    invoke-static {v1}, Landroid/support/design/widget/BottomNavigationView;->access$000(Landroid/support/design/widget/BottomNavigationView;)Landroid/support/design/widget/BottomNavigationView$OnNavigationItemReselectedListener;

    move-result-object v1

    invoke-interface {v1, p2}, Landroid/support/design/widget/BottomNavigationView$OnNavigationItemReselectedListener;->onNavigationItemReselected(Landroid/view/MenuItem;)V

    .line 204
    :cond_1e
    :goto_1e
    return v0

    :cond_1f
    iget-object v1, p0, Landroid/support/design/widget/BottomNavigationView$1;->this$0:Landroid/support/design/widget/BottomNavigationView;

    invoke-static {v1}, Landroid/support/design/widget/BottomNavigationView;->access$100(Landroid/support/design/widget/BottomNavigationView;)Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;

    move-result-object v1

    if-eqz v1, :cond_33

    iget-object v1, p0, Landroid/support/design/widget/BottomNavigationView$1;->this$0:Landroid/support/design/widget/BottomNavigationView;

    invoke-static {v1}, Landroid/support/design/widget/BottomNavigationView;->access$100(Landroid/support/design/widget/BottomNavigationView;)Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;

    move-result-object v1

    invoke-interface {v1, p2}, Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;->onNavigationItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_1e

    :cond_33
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public onMenuModeChange(Landroid/support/v7/view/menu/MenuBuilder;)V
    .registers 2
    .param p1, "menu"    # Landroid/support/v7/view/menu/MenuBuilder;

    .prologue
    .line 208
    return-void
.end method
