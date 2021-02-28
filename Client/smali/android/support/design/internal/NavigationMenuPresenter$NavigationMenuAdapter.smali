.class Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "NavigationMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/internal/NavigationMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NavigationMenuAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final STATE_ACTION_VIEWS:Ljava/lang/String; = "android:menu:action_views"

.field private static final STATE_CHECKED_ITEM:Ljava/lang/String; = "android:menu:checked"

.field private static final VIEW_TYPE_HEADER:I = 0x3

.field private static final VIEW_TYPE_NORMAL:I = 0x0

.field private static final VIEW_TYPE_SEPARATOR:I = 0x2

.field private static final VIEW_TYPE_SUBHEADER:I = 0x1


# instance fields
.field private checkedItem:Landroid/support/v7/view/menu/MenuItemImpl;

.field private final items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/support/design/internal/NavigationMenuPresenter;

.field private updateSuspended:Z


# direct methods
.method constructor <init>(Landroid/support/design/internal/NavigationMenuPresenter;)V
    .registers 3

    .prologue
    .line 375
    iput-object p1, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 371
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    .line 376
    invoke-direct {p0}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->prepareMenuItems()V

    .line 377
    return-void
.end method

.method private appendTransparentIconIfMissing(II)V
    .registers 6
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I

    .prologue
    .line 551
    move v0, p1

    .local v0, "i":I
    :goto_1
    if-ge v0, p2, :cond_11

    .line 552
    iget-object v2, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    .line 553
    .local v1, "textItem":Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;->needsEmptyIcon:Z

    .line 551
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 555
    .end local v1    # "textItem":Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;
    :cond_11
    return-void
.end method

.method private prepareMenuItems()V
    .registers 20

    .prologue
    .line 482
    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->updateSuspended:Z

    if-eqz v15, :cond_7

    .line 548
    :goto_6
    return-void

    .line 485
    :cond_7
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->updateSuspended:Z

    .line 486
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 487
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    new-instance v16, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuHeaderItem;

    invoke-direct/range {v16 .. v16}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuHeaderItem;-><init>()V

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 489
    const/4 v2, -0x1

    .line 490
    .local v2, "currentGroupId":I
    const/4 v3, 0x0

    .line 491
    .local v3, "currentGroupStart":I
    const/4 v1, 0x0

    .line 492
    .local v1, "currentGroupHasIcon":Z
    const/4 v5, 0x0

    .local v5, "i":I
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    iget-object v15, v15, Landroid/support/design/internal/NavigationMenuPresenter;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v15}, Landroid/support/v7/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v14

    .local v14, "totalSize":I
    :goto_31
    if-ge v5, v14, :cond_156

    .line 493
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    iget-object v15, v15, Landroid/support/design/internal/NavigationMenuPresenter;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v15}, Landroid/support/v7/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v7/view/menu/MenuItemImpl;

    .line 494
    .local v6, "item":Landroid/support/v7/view/menu/MenuItemImpl;
    invoke-virtual {v6}, Landroid/support/v7/view/menu/MenuItemImpl;->isChecked()Z

    move-result v15

    if-eqz v15, :cond_4e

    .line 495
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->setCheckedItem(Landroid/support/v7/view/menu/MenuItemImpl;)V

    .line 497
    :cond_4e
    invoke-virtual {v6}, Landroid/support/v7/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v15

    if-eqz v15, :cond_58

    .line 498
    const/4 v15, 0x0

    invoke-virtual {v6, v15}, Landroid/support/v7/view/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    .line 500
    :cond_58
    invoke-virtual {v6}, Landroid/support/v7/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v15

    if-eqz v15, :cond_f0

    .line 501
    invoke-virtual {v6}, Landroid/support/v7/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v9

    .line 502
    .local v9, "subMenu":Landroid/view/SubMenu;
    invoke-interface {v9}, Landroid/view/SubMenu;->hasVisibleItems()Z

    move-result v15

    if-eqz v15, :cond_ec

    .line 503
    if-eqz v5, :cond_84

    .line 504
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    new-instance v16, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/design/internal/NavigationMenuPresenter;->paddingSeparator:I

    move/from16 v17, v0

    const/16 v18, 0x0

    invoke-direct/range {v16 .. v18}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;-><init>(II)V

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    :cond_84
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    new-instance v16, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    move-object/from16 v0, v16

    invoke-direct {v0, v6}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;-><init>(Landroid/support/v7/view/menu/MenuItemImpl;)V

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 507
    const/4 v10, 0x0

    .line 508
    .local v10, "subMenuHasIcon":Z
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 509
    .local v12, "subMenuStart":I
    const/4 v7, 0x0

    .local v7, "j":I
    invoke-interface {v9}, Landroid/view/SubMenu;->size()I

    move-result v8

    .local v8, "size":I
    :goto_a0
    if-ge v7, v8, :cond_dd

    .line 510
    invoke-interface {v9, v7}, Landroid/view/SubMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v11

    check-cast v11, Landroid/support/v7/view/menu/MenuItemImpl;

    .line 511
    .local v11, "subMenuItem":Landroid/support/v7/view/menu/MenuItemImpl;
    invoke-virtual {v11}, Landroid/support/v7/view/menu/MenuItemImpl;->isVisible()Z

    move-result v15

    if-eqz v15, :cond_da

    .line 512
    if-nez v10, :cond_b7

    invoke-virtual {v11}, Landroid/support/v7/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    if-eqz v15, :cond_b7

    .line 513
    const/4 v10, 0x1

    .line 515
    :cond_b7
    invoke-virtual {v11}, Landroid/support/v7/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v15

    if-eqz v15, :cond_c1

    .line 516
    const/4 v15, 0x0

    invoke-virtual {v11, v15}, Landroid/support/v7/view/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    .line 518
    :cond_c1
    invoke-virtual {v6}, Landroid/support/v7/view/menu/MenuItemImpl;->isChecked()Z

    move-result v15

    if-eqz v15, :cond_cc

    .line 519
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->setCheckedItem(Landroid/support/v7/view/menu/MenuItemImpl;)V

    .line 521
    :cond_cc
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    new-instance v16, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    move-object/from16 v0, v16

    invoke-direct {v0, v11}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;-><init>(Landroid/support/v7/view/menu/MenuItemImpl;)V

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 509
    :cond_da
    add-int/lit8 v7, v7, 0x1

    goto :goto_a0

    .line 524
    .end local v11    # "subMenuItem":Landroid/support/v7/view/menu/MenuItemImpl;
    :cond_dd
    if-eqz v10, :cond_ec

    .line 525
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v15}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->appendTransparentIconIfMissing(II)V

    .line 492
    .end local v7    # "j":I
    .end local v8    # "size":I
    .end local v9    # "subMenu":Landroid/view/SubMenu;
    .end local v10    # "subMenuHasIcon":Z
    .end local v12    # "subMenuStart":I
    :cond_ec
    :goto_ec
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_31

    .line 529
    :cond_f0
    invoke-virtual {v6}, Landroid/support/v7/view/menu/MenuItemImpl;->getGroupId()I

    move-result v4

    .line 530
    .local v4, "groupId":I
    if-eq v4, v2, :cond_13f

    .line 531
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 532
    invoke-virtual {v6}, Landroid/support/v7/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    if-eqz v15, :cond_13d

    const/4 v1, 0x1

    .line 533
    :goto_105
    if-eqz v5, :cond_12d

    .line 534
    add-int/lit8 v3, v3, 0x1

    .line 535
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    new-instance v16, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/design/internal/NavigationMenuPresenter;->paddingSeparator:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/support/design/internal/NavigationMenuPresenter;->paddingSeparator:I

    move/from16 v18, v0

    invoke-direct/range {v16 .. v18}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;-><init>(II)V

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 541
    :cond_12d
    :goto_12d
    new-instance v13, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    invoke-direct {v13, v6}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;-><init>(Landroid/support/v7/view/menu/MenuItemImpl;)V

    .line 542
    .local v13, "textItem":Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;
    iput-boolean v1, v13, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;->needsEmptyIcon:Z

    .line 543
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 544
    move v2, v4

    goto :goto_ec

    .line 532
    .end local v13    # "textItem":Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;
    :cond_13d
    const/4 v1, 0x0

    goto :goto_105

    .line 537
    :cond_13f
    if-nez v1, :cond_12d

    invoke-virtual {v6}, Landroid/support/v7/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    if-eqz v15, :cond_12d

    .line 538
    const/4 v1, 0x1

    .line 539
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v15}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->appendTransparentIconIfMissing(II)V

    goto :goto_12d

    .line 547
    .end local v4    # "groupId":I
    .end local v6    # "item":Landroid/support/v7/view/menu/MenuItemImpl;
    :cond_156
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->updateSuspended:Z

    goto/16 :goto_6
.end method


# virtual methods
.method public createInstanceState()Landroid/os/Bundle;
    .registers 11

    .prologue
    .line 573
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 574
    .local v7, "state":Landroid/os/Bundle;
    iget-object v8, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->checkedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    if-eqz v8, :cond_14

    .line 575
    const-string v8, "android:menu:checked"

    iget-object v9, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->checkedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v9}, Landroid/support/v7/view/menu/MenuItemImpl;->getItemId()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 578
    :cond_14
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 579
    .local v1, "actionViewStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/design/internal/ParcelableSparseArray;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    iget-object v8, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    .local v6, "size":I
    :goto_20
    if-ge v3, v6, :cond_50

    .line 580
    iget-object v8, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuItem;

    .line 581
    .local v5, "navigationMenuItem":Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuItem;
    instance-of v8, v5, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    if-eqz v8, :cond_4b

    .line 582
    check-cast v5, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    .end local v5    # "navigationMenuItem":Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuItem;
    invoke-virtual {v5}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;->getMenuItem()Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v4

    .line 583
    .local v4, "item":Landroid/support/v7/view/menu/MenuItemImpl;
    if-eqz v4, :cond_4e

    invoke-virtual {v4}, Landroid/support/v7/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 584
    .local v0, "actionView":Landroid/view/View;
    :goto_3a
    if-eqz v0, :cond_4b

    .line 585
    new-instance v2, Landroid/support/design/internal/ParcelableSparseArray;

    invoke-direct {v2}, Landroid/support/design/internal/ParcelableSparseArray;-><init>()V

    .line 586
    .local v2, "container":Landroid/support/design/internal/ParcelableSparseArray;
    invoke-virtual {v0, v2}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 587
    invoke-virtual {v4}, Landroid/support/v7/view/menu/MenuItemImpl;->getItemId()I

    move-result v8

    invoke-virtual {v1, v8, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 579
    .end local v0    # "actionView":Landroid/view/View;
    .end local v2    # "container":Landroid/support/design/internal/ParcelableSparseArray;
    .end local v4    # "item":Landroid/support/v7/view/menu/MenuItemImpl;
    :cond_4b
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 583
    .restart local v4    # "item":Landroid/support/v7/view/menu/MenuItemImpl;
    :cond_4e
    const/4 v0, 0x0

    goto :goto_3a

    .line 591
    .end local v4    # "item":Landroid/support/v7/view/menu/MenuItemImpl;
    :cond_50
    const-string v8, "android:menu:action_views"

    invoke-virtual {v7, v8, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 592
    return-object v7
.end method

.method public getCheckedItem()Landroid/support/v7/view/menu/MenuItemImpl;
    .registers 2

    .prologue
    .line 569
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->checkedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public getItemCount()I
    .registers 2

    .prologue
    .line 386
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 381
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 6
    .param p1, "position"    # I

    .prologue
    .line 391
    iget-object v2, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuItem;

    .line 392
    .local v0, "item":Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuItem;
    instance-of v2, v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;

    if-eqz v2, :cond_e

    .line 393
    const/4 v2, 0x2

    .line 401
    :goto_d
    return v2

    .line 394
    :cond_e
    instance-of v2, v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuHeaderItem;

    if-eqz v2, :cond_14

    .line 395
    const/4 v2, 0x3

    goto :goto_d

    .line 396
    :cond_14
    instance-of v2, v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    if-eqz v2, :cond_29

    move-object v1, v0

    .line 397
    check-cast v1, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    .line 398
    .local v1, "textItem":Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;
    invoke-virtual {v1}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;->getMenuItem()Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 399
    const/4 v2, 0x1

    goto :goto_d

    .line 401
    :cond_27
    const/4 v2, 0x0

    goto :goto_d

    .line 404
    .end local v1    # "textItem":Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;
    :cond_29
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unknown item type."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onBindViewHolder(Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;I)V
    .registers 10
    .param p1, "holder"    # Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const/4 v6, 0x0

    .line 424
    invoke-virtual {p0, p2}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->getItemViewType(I)I

    move-result v3

    packed-switch v3, :pswitch_data_98

    .line 463
    :goto_8
    return-void

    .line 427
    :pswitch_9
    iget-object v1, p1, Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Landroid/support/design/internal/NavigationMenuItemView;

    .line 428
    .local v1, "itemView":Landroid/support/design/internal/NavigationMenuItemView;
    iget-object v3, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    iget-object v3, v3, Landroid/support/design/internal/NavigationMenuPresenter;->iconTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v3}, Landroid/support/design/internal/NavigationMenuItemView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 429
    iget-object v3, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    iget-boolean v3, v3, Landroid/support/design/internal/NavigationMenuPresenter;->textAppearanceSet:Z

    if-eqz v3, :cond_21

    .line 430
    iget-object v3, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    iget v3, v3, Landroid/support/design/internal/NavigationMenuPresenter;->textAppearance:I

    invoke-virtual {v1, v3}, Landroid/support/design/internal/NavigationMenuItemView;->setTextAppearance(I)V

    .line 432
    :cond_21
    iget-object v3, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    iget-object v3, v3, Landroid/support/design/internal/NavigationMenuPresenter;->textColor:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_2e

    .line 433
    iget-object v3, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    iget-object v3, v3, Landroid/support/design/internal/NavigationMenuPresenter;->textColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v3}, Landroid/support/design/internal/NavigationMenuItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 435
    :cond_2e
    iget-object v3, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    iget-object v3, v3, Landroid/support/design/internal/NavigationMenuPresenter;->itemBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_66

    iget-object v3, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    iget-object v3, v3, Landroid/support/design/internal/NavigationMenuPresenter;->itemBackground:Landroid/graphics/drawable/Drawable;

    .line 437
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 435
    :goto_40
    invoke-static {v1, v3}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 438
    iget-object v3, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    .line 439
    .local v0, "item":Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;
    iget-boolean v3, v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;->needsEmptyIcon:Z

    invoke-virtual {v1, v3}, Landroid/support/design/internal/NavigationMenuItemView;->setNeedsEmptyIcon(Z)V

    .line 440
    iget-object v3, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    iget v3, v3, Landroid/support/design/internal/NavigationMenuPresenter;->itemHorizontalPadding:I

    invoke-virtual {v1, v3}, Landroid/support/design/internal/NavigationMenuItemView;->setHorizontalPadding(I)V

    .line 441
    iget-object v3, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    iget v3, v3, Landroid/support/design/internal/NavigationMenuPresenter;->itemIconPadding:I

    invoke-virtual {v1, v3}, Landroid/support/design/internal/NavigationMenuItemView;->setIconPadding(I)V

    .line 442
    invoke-virtual {v0}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;->getMenuItem()Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v3

    invoke-virtual {v1, v3, v6}, Landroid/support/design/internal/NavigationMenuItemView;->initialize(Landroid/support/v7/view/menu/MenuItemImpl;I)V

    goto :goto_8

    .line 437
    .end local v0    # "item":Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;
    :cond_66
    const/4 v3, 0x0

    goto :goto_40

    .line 447
    .end local v1    # "itemView":Landroid/support/design/internal/NavigationMenuItemView;
    :pswitch_68
    iget-object v2, p1, Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;->itemView:Landroid/view/View;

    check-cast v2, Landroid/widget/TextView;

    .line 448
    .local v2, "subHeader":Landroid/widget/TextView;
    iget-object v3, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    .line 449
    .restart local v0    # "item":Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;
    invoke-virtual {v0}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;->getMenuItem()Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 454
    .end local v0    # "item":Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;
    .end local v2    # "subHeader":Landroid/widget/TextView;
    :pswitch_80
    iget-object v3, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;

    .line 455
    .local v0, "item":Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;
    iget-object v3, p1, Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;->getPaddingTop()I

    move-result v4

    invoke-virtual {v0}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v3, v6, v4, v6, v5}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_8

    .line 424
    nop

    :pswitch_data_98
    .packed-switch 0x0
        :pswitch_9
        :pswitch_68
        :pswitch_80
    .end packed-switch
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .prologue
    .line 361
    check-cast p1, Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->onBindViewHolder(Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;
    .registers 6
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 409
    packed-switch p2, :pswitch_data_32

    .line 419
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 411
    :pswitch_5
    new-instance v0, Landroid/support/design/internal/NavigationMenuPresenter$NormalViewHolder;

    iget-object v1, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    iget-object v1, v1, Landroid/support/design/internal/NavigationMenuPresenter;->layoutInflater:Landroid/view/LayoutInflater;

    iget-object v2, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    iget-object v2, v2, Landroid/support/design/internal/NavigationMenuPresenter;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {v0, v1, p1, v2}, Landroid/support/design/internal/NavigationMenuPresenter$NormalViewHolder;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;)V

    goto :goto_4

    .line 413
    :pswitch_13
    new-instance v0, Landroid/support/design/internal/NavigationMenuPresenter$SubheaderViewHolder;

    iget-object v1, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    iget-object v1, v1, Landroid/support/design/internal/NavigationMenuPresenter;->layoutInflater:Landroid/view/LayoutInflater;

    invoke-direct {v0, v1, p1}, Landroid/support/design/internal/NavigationMenuPresenter$SubheaderViewHolder;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    goto :goto_4

    .line 415
    :pswitch_1d
    new-instance v0, Landroid/support/design/internal/NavigationMenuPresenter$SeparatorViewHolder;

    iget-object v1, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    iget-object v1, v1, Landroid/support/design/internal/NavigationMenuPresenter;->layoutInflater:Landroid/view/LayoutInflater;

    invoke-direct {v0, v1, p1}, Landroid/support/design/internal/NavigationMenuPresenter$SeparatorViewHolder;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    goto :goto_4

    .line 417
    :pswitch_27
    new-instance v0, Landroid/support/design/internal/NavigationMenuPresenter$HeaderViewHolder;

    iget-object v1, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    iget-object v1, v1, Landroid/support/design/internal/NavigationMenuPresenter;->headerLayout:Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/support/design/internal/NavigationMenuPresenter$HeaderViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_4

    .line 409
    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_5
        :pswitch_13
        :pswitch_1d
        :pswitch_27
    .end packed-switch
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 4

    .prologue
    .line 361
    invoke-virtual {p0, p1, p2}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onViewRecycled(Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;)V
    .registers 3
    .param p1, "holder"    # Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;

    .prologue
    .line 467
    instance-of v0, p1, Landroid/support/design/internal/NavigationMenuPresenter$NormalViewHolder;

    if-eqz v0, :cond_b

    .line 468
    iget-object v0, p1, Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/support/design/internal/NavigationMenuItemView;

    invoke-virtual {v0}, Landroid/support/design/internal/NavigationMenuItemView;->recycle()V

    .line 470
    :cond_b
    return-void
.end method

.method public bridge synthetic onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .registers 2

    .prologue
    .line 361
    check-cast p1, Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;

    invoke-virtual {p0, p1}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->onViewRecycled(Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;)V

    return-void
.end method

.method public restoreInstanceState(Landroid/os/Bundle;)V
    .registers 13
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    .line 596
    const-string v9, "android:menu:checked"

    invoke-virtual {p1, v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 597
    .local v2, "checkedItem":I
    if-eqz v2, :cond_37

    .line 598
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->updateSuspended:Z

    .line 599
    const/4 v4, 0x0

    .local v4, "i":I
    iget-object v9, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    .local v8, "size":I
    :goto_13
    if-ge v4, v8, :cond_32

    .line 600
    iget-object v9, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuItem;

    .line 601
    .local v5, "item":Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuItem;
    instance-of v9, v5, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    if-eqz v9, :cond_57

    .line 602
    check-cast v5, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    .end local v5    # "item":Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuItem;
    invoke-virtual {v5}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;->getMenuItem()Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v6

    .line 603
    .local v6, "menuItem":Landroid/support/v7/view/menu/MenuItemImpl;
    if-eqz v6, :cond_57

    invoke-virtual {v6}, Landroid/support/v7/view/menu/MenuItemImpl;->getItemId()I

    move-result v9

    if-ne v9, v2, :cond_57

    .line 604
    invoke-virtual {p0, v6}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->setCheckedItem(Landroid/support/v7/view/menu/MenuItemImpl;)V

    .line 609
    .end local v6    # "menuItem":Landroid/support/v7/view/menu/MenuItemImpl;
    :cond_32
    iput-boolean v10, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->updateSuspended:Z

    .line 610
    invoke-direct {p0}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->prepareMenuItems()V

    .line 613
    .end local v4    # "i":I
    .end local v8    # "size":I
    :cond_37
    const-string v9, "android:menu:action_views"

    .line 614
    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v1

    .line 615
    .local v1, "actionViewStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/design/internal/ParcelableSparseArray;>;"
    if-eqz v1, :cond_78

    .line 616
    const/4 v4, 0x0

    .restart local v4    # "i":I
    iget-object v9, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    .restart local v8    # "size":I
    :goto_46
    if-ge v4, v8, :cond_78

    .line 617
    iget-object v9, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuItem;

    .line 618
    .local v7, "navigationMenuItem":Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuItem;
    instance-of v9, v7, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    if-nez v9, :cond_5a

    .line 616
    .end local v7    # "navigationMenuItem":Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuItem;
    :cond_54
    :goto_54
    add-int/lit8 v4, v4, 0x1

    goto :goto_46

    .line 599
    .end local v1    # "actionViewStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/design/internal/ParcelableSparseArray;>;"
    :cond_57
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 621
    .restart local v1    # "actionViewStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/design/internal/ParcelableSparseArray;>;"
    .restart local v7    # "navigationMenuItem":Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuItem;
    :cond_5a
    check-cast v7, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    .end local v7    # "navigationMenuItem":Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuItem;
    invoke-virtual {v7}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;->getMenuItem()Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v5

    .line 622
    .local v5, "item":Landroid/support/v7/view/menu/MenuItemImpl;
    if-eqz v5, :cond_54

    .line 625
    invoke-virtual {v5}, Landroid/support/v7/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 626
    .local v0, "actionView":Landroid/view/View;
    if-eqz v0, :cond_54

    .line 629
    invoke-virtual {v5}, Landroid/support/v7/view/menu/MenuItemImpl;->getItemId()I

    move-result v9

    invoke-virtual {v1, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/design/internal/ParcelableSparseArray;

    .line 630
    .local v3, "container":Landroid/support/design/internal/ParcelableSparseArray;
    if-eqz v3, :cond_54

    .line 633
    invoke-virtual {v0, v3}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    goto :goto_54

    .line 636
    .end local v0    # "actionView":Landroid/view/View;
    .end local v3    # "container":Landroid/support/design/internal/ParcelableSparseArray;
    .end local v4    # "i":I
    .end local v5    # "item":Landroid/support/v7/view/menu/MenuItemImpl;
    .end local v8    # "size":I
    :cond_78
    return-void
.end method

.method public setCheckedItem(Landroid/support/v7/view/menu/MenuItemImpl;)V
    .registers 4
    .param p1, "checkedItem"    # Landroid/support/v7/view/menu/MenuItemImpl;

    .prologue
    .line 558
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->checkedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    if-eq v0, p1, :cond_a

    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v0

    if-nez v0, :cond_b

    .line 566
    :cond_a
    :goto_a
    return-void

    .line 561
    :cond_b
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->checkedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    if-eqz v0, :cond_15

    .line 562
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->checkedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuItemImpl;->setChecked(Z)Landroid/view/MenuItem;

    .line 564
    :cond_15
    iput-object p1, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->checkedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    .line 565
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/view/menu/MenuItemImpl;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_a
.end method

.method public setUpdateSuspended(Z)V
    .registers 2
    .param p1, "updateSuspended"    # Z

    .prologue
    .line 639
    iput-boolean p1, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->updateSuspended:Z

    .line 640
    return-void
.end method

.method public update()V
    .registers 1

    .prologue
    .line 473
    invoke-direct {p0}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->prepareMenuItems()V

    .line 474
    invoke-virtual {p0}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->notifyDataSetChanged()V

    .line 475
    return-void
.end method
