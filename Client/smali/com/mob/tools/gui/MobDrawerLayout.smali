.class public Lcom/mob/tools/gui/MobDrawerLayout;
.super Landroid/view/ViewGroup;
.source "MobDrawerLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/tools/gui/MobDrawerLayout$OnDrawerStateChangeListener;,
        Lcom/mob/tools/gui/MobDrawerLayout$DrawerType;
    }
.end annotation


# static fields
.field private static final SNAP_VELOCITY:I = 0x1f4

.field private static final TOUCH_STATE_REST:I = 0x0

.field private static final TOUCH_STATE_SCROLLING:I = 0x1


# instance fields
.field private bodyContainer:Landroid/widget/FrameLayout;

.field private drawerContainer:Landroid/widget/FrameLayout;

.field private drawerWidth:D

.field private lastMotionX:F

.field private lastMotionY:F

.field private listener:Lcom/mob/tools/gui/MobDrawerLayout$OnDrawerStateChangeListener;

.field private lockScroll:Z

.field private maximumVelocity:I

.field private opened:Z

.field private paint:Landroid/graphics/Paint;

.field private scroller:Lcom/mob/tools/gui/SmoothScroller;

.field private touchSlop:I

.field private touchState:I

.field private type:Lcom/mob/tools/gui/MobDrawerLayout$DrawerType;

.field private velocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 57
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/MobDrawerLayout;->init(Landroid/content/Context;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/MobDrawerLayout;->init(Landroid/content/Context;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/MobDrawerLayout;->init(Landroid/content/Context;)V

    .line 68
    return-void
.end method

.method private computeDrag(I)V
    .registers 8
    .param p1, "velocityX"    # I

    .prologue
    .line 620
    const/16 v1, 0x1f4

    if-lt p1, v1, :cond_1a

    .line 621
    sget-object v1, Lcom/mob/tools/gui/MobDrawerLayout$2;->$SwitchMap$com$mob$tools$gui$MobDrawerLayout$DrawerType:[I

    iget-object v2, p0, Lcom/mob/tools/gui/MobDrawerLayout;->type:Lcom/mob/tools/gui/MobDrawerLayout$DrawerType;

    invoke-virtual {v2}, Lcom/mob/tools/gui/MobDrawerLayout$DrawerType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_7a

    .line 670
    :goto_11
    return-void

    .line 625
    :pswitch_12
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->open()V

    goto :goto_11

    .line 630
    :pswitch_16
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->close()V

    goto :goto_11

    .line 633
    :cond_1a
    const/16 v1, -0x1f4

    if-gt p1, v1, :cond_34

    .line 634
    sget-object v1, Lcom/mob/tools/gui/MobDrawerLayout$2;->$SwitchMap$com$mob$tools$gui$MobDrawerLayout$DrawerType:[I

    iget-object v2, p0, Lcom/mob/tools/gui/MobDrawerLayout;->type:Lcom/mob/tools/gui/MobDrawerLayout$DrawerType;

    invoke-virtual {v2}, Lcom/mob/tools/gui/MobDrawerLayout$DrawerType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_8a

    goto :goto_11

    .line 638
    :pswitch_2c
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->close()V

    goto :goto_11

    .line 643
    :pswitch_30
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->open()V

    goto :goto_11

    .line 647
    :cond_34
    const/4 v0, 0x0

    .line 648
    .local v0, "edge":I
    sget-object v1, Lcom/mob/tools/gui/MobDrawerLayout$2;->$SwitchMap$com$mob$tools$gui$MobDrawerLayout$DrawerType:[I

    iget-object v2, p0, Lcom/mob/tools/gui/MobDrawerLayout;->type:Lcom/mob/tools/gui/MobDrawerLayout$DrawerType;

    invoke-virtual {v2}, Lcom/mob/tools/gui/MobDrawerLayout$DrawerType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_9a

    .line 664
    :goto_42
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getWidth()I

    move-result v1

    int-to-double v2, v1

    iget-wide v4, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerWidth:D

    mul-double/2addr v2, v4

    double-to-int v1, v2

    div-int/lit8 v1, v1, 0x2

    if-lt v0, v1, :cond_76

    .line 665
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->open()V

    goto :goto_11

    .line 651
    :pswitch_53
    iget-object v1, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getRight()I

    move-result v0

    .line 652
    goto :goto_42

    .line 654
    :pswitch_5a
    iget-object v1, p0, Lcom/mob/tools/gui/MobDrawerLayout;->bodyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v0

    .line 655
    goto :goto_42

    .line 658
    :pswitch_61
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v2

    sub-int v0, v1, v2

    .line 659
    goto :goto_42

    .line 661
    :pswitch_6e
    iget-object v1, p0, Lcom/mob/tools/gui/MobDrawerLayout;->bodyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v1

    neg-int v0, v1

    goto :goto_42

    .line 667
    :cond_76
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->close()V

    goto :goto_11

    .line 621
    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_12
        :pswitch_16
        :pswitch_12
        :pswitch_12
        :pswitch_16
        :pswitch_16
    .end packed-switch

    .line 634
    :pswitch_data_8a
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_30
        :pswitch_2c
        :pswitch_2c
        :pswitch_30
        :pswitch_30
    .end packed-switch

    .line 648
    :pswitch_data_9a
    .packed-switch 0x1
        :pswitch_53
        :pswitch_61
        :pswitch_5a
        :pswitch_53
        :pswitch_6e
        :pswitch_61
    .end packed-switch
.end method

.method private dragToLeft(I)V
    .registers 15
    .param p1, "deltaX"    # I

    .prologue
    const/4 v12, 0x0

    .line 542
    sget-object v8, Lcom/mob/tools/gui/MobDrawerLayout$2;->$SwitchMap$com$mob$tools$gui$MobDrawerLayout$DrawerType:[I

    iget-object v9, p0, Lcom/mob/tools/gui/MobDrawerLayout;->type:Lcom/mob/tools/gui/MobDrawerLayout$DrawerType;

    invoke-virtual {v9}, Lcom/mob/tools/gui/MobDrawerLayout$DrawerType;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_fe

    .line 617
    :cond_e
    :goto_e
    return-void

    .line 544
    :pswitch_f
    iget-object v8, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getRight()I

    move-result v6

    .line 545
    .local v6, "right":I
    if-lez v6, :cond_e

    .line 546
    sub-int/2addr v6, p1

    .line 547
    if-gez v6, :cond_1b

    .line 548
    const/4 v6, 0x0

    .line 550
    :cond_1b
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getWidth()I

    move-result v8

    int-to-double v8, v8

    iget-wide v10, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerWidth:D

    mul-double/2addr v8, v10

    double-to-int v8, v8

    sub-int v5, v6, v8

    .line 551
    .local v5, "left":I
    iget-object v8, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getHeight()I

    move-result v9

    invoke-virtual {v8, v5, v12, v6, v9}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto :goto_e

    .line 555
    .end local v5    # "left":I
    .end local v6    # "right":I
    :pswitch_30
    iget-object v8, p0, Lcom/mob/tools/gui/MobDrawerLayout;->bodyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v5

    .line 556
    .restart local v5    # "left":I
    if-lez v5, :cond_e

    .line 557
    sub-int/2addr v5, p1

    .line 558
    if-gez v5, :cond_3c

    .line 559
    const/4 v5, 0x0

    .line 561
    :cond_3c
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getWidth()I

    move-result v8

    add-int v6, v5, v8

    .line 562
    .restart local v6    # "right":I
    iget-object v8, p0, Lcom/mob/tools/gui/MobDrawerLayout;->bodyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getHeight()I

    move-result v9

    invoke-virtual {v8, v5, v12, v6, v9}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto :goto_e

    .line 566
    .end local v5    # "left":I
    .end local v6    # "right":I
    :pswitch_4c
    iget-object v8, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getRight()I

    move-result v3

    .line 567
    .local v3, "dRight":I
    if-lez v3, :cond_e

    .line 568
    sub-int/2addr v3, p1

    .line 569
    if-gez v3, :cond_58

    .line 570
    const/4 v3, 0x0

    .line 572
    :cond_58
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getWidth()I

    move-result v8

    int-to-double v8, v8

    iget-wide v10, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerWidth:D

    mul-double/2addr v8, v10

    double-to-int v8, v8

    sub-int v5, v3, v8

    .line 573
    .restart local v5    # "left":I
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getWidth()I

    move-result v8

    add-int v1, v3, v8

    .line 574
    .local v1, "bRight":I
    iget-object v8, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getHeight()I

    move-result v9

    invoke-virtual {v8, v5, v12, v3, v9}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 575
    iget-object v8, p0, Lcom/mob/tools/gui/MobDrawerLayout;->bodyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getHeight()I

    move-result v9

    invoke-virtual {v8, v3, v12, v1, v9}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto :goto_e

    .line 579
    .end local v1    # "bRight":I
    .end local v3    # "dRight":I
    .end local v5    # "left":I
    :pswitch_7c
    iget-object v8, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getRight()I

    move-result v6

    .line 580
    .restart local v6    # "right":I
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getWidth()I

    move-result v7

    .line 581
    .local v7, "width":I
    if-le v6, v7, :cond_e

    .line 582
    sub-int/2addr v6, p1

    .line 583
    if-ge v6, v7, :cond_8c

    .line 584
    move v6, v7

    .line 586
    :cond_8c
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getWidth()I

    move-result v8

    int-to-double v8, v8

    iget-wide v10, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerWidth:D

    mul-double/2addr v8, v10

    double-to-int v8, v8

    sub-int v5, v6, v8

    .line 587
    .restart local v5    # "left":I
    iget-object v8, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getHeight()I

    move-result v9

    invoke-virtual {v8, v5, v12, v6, v9}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto/16 :goto_e

    .line 591
    .end local v5    # "left":I
    .end local v6    # "right":I
    .end local v7    # "width":I
    :pswitch_a2
    iget-object v8, p0, Lcom/mob/tools/gui/MobDrawerLayout;->bodyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v5

    .line 592
    .restart local v5    # "left":I
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getWidth()I

    move-result v8

    neg-int v8, v8

    int-to-double v8, v8

    iget-wide v10, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerWidth:D

    mul-double/2addr v8, v10

    double-to-int v4, v8

    .line 593
    .local v4, "dw":I
    if-le v5, v4, :cond_e

    .line 594
    sub-int/2addr v5, p1

    .line 595
    if-ge v5, v4, :cond_b8

    .line 596
    move v5, v4

    .line 598
    :cond_b8
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getWidth()I

    move-result v8

    add-int v6, v5, v8

    .line 599
    .restart local v6    # "right":I
    iget-object v8, p0, Lcom/mob/tools/gui/MobDrawerLayout;->bodyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getHeight()I

    move-result v9

    invoke-virtual {v8, v5, v12, v6, v9}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto/16 :goto_e

    .line 603
    .end local v4    # "dw":I
    .end local v5    # "left":I
    .end local v6    # "right":I
    :pswitch_c9
    iget-object v8, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getRight()I

    move-result v6

    .line 604
    .restart local v6    # "right":I
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getWidth()I

    move-result v7

    .line 605
    .restart local v7    # "width":I
    if-le v6, v7, :cond_e

    .line 606
    sub-int/2addr v6, p1

    .line 607
    if-ge v6, v7, :cond_d9

    .line 608
    move v6, v7

    .line 610
    :cond_d9
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getWidth()I

    move-result v8

    int-to-double v8, v8

    iget-wide v10, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerWidth:D

    mul-double/2addr v8, v10

    double-to-int v8, v8

    sub-int v2, v6, v8

    .line 611
    .local v2, "dLeft":I
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getWidth()I

    move-result v8

    sub-int v0, v2, v8

    .line 612
    .local v0, "bLeft":I
    iget-object v8, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getHeight()I

    move-result v9

    invoke-virtual {v8, v2, v12, v6, v9}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 613
    iget-object v8, p0, Lcom/mob/tools/gui/MobDrawerLayout;->bodyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getHeight()I

    move-result v9

    invoke-virtual {v8, v0, v12, v2, v9}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto/16 :goto_e

    .line 542
    :pswitch_data_fe
    .packed-switch 0x1
        :pswitch_f
        :pswitch_7c
        :pswitch_30
        :pswitch_4c
        :pswitch_a2
        :pswitch_c9
    .end packed-switch
.end method

.method private dragToRight(I)V
    .registers 13
    .param p1, "deltaX"    # I

    .prologue
    const/4 v10, 0x0

    .line 465
    sget-object v6, Lcom/mob/tools/gui/MobDrawerLayout$2;->$SwitchMap$com$mob$tools$gui$MobDrawerLayout$DrawerType:[I

    iget-object v7, p0, Lcom/mob/tools/gui/MobDrawerLayout;->type:Lcom/mob/tools/gui/MobDrawerLayout$DrawerType;

    invoke-virtual {v7}, Lcom/mob/tools/gui/MobDrawerLayout$DrawerType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_fa

    .line 539
    :cond_e
    :goto_e
    return-void

    .line 467
    :pswitch_f
    iget-object v6, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v3

    .line 468
    .local v3, "left":I
    if-gez v3, :cond_e

    .line 469
    add-int/2addr v3, p1

    .line 470
    if-lez v3, :cond_1b

    .line 471
    const/4 v3, 0x0

    .line 473
    :cond_1b
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getWidth()I

    move-result v6

    int-to-double v6, v6

    iget-wide v8, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerWidth:D

    mul-double/2addr v6, v8

    double-to-int v6, v6

    add-int v4, v3, v6

    .line 474
    .local v4, "right":I
    iget-object v6, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getHeight()I

    move-result v7

    invoke-virtual {v6, v3, v10, v4, v7}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto :goto_e

    .line 478
    .end local v3    # "left":I
    .end local v4    # "right":I
    :pswitch_30
    iget-object v6, p0, Lcom/mob/tools/gui/MobDrawerLayout;->bodyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v3

    .line 479
    .restart local v3    # "left":I
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getWidth()I

    move-result v6

    int-to-double v6, v6

    iget-wide v8, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerWidth:D

    mul-double/2addr v6, v8

    double-to-int v2, v6

    .line 480
    .local v2, "dw":I
    if-ge v3, v2, :cond_e

    .line 481
    add-int/2addr v3, p1

    .line 482
    if-le v3, v2, :cond_45

    .line 483
    move v3, v2

    .line 485
    :cond_45
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getWidth()I

    move-result v6

    add-int v4, v3, v6

    .line 486
    .restart local v4    # "right":I
    iget-object v6, p0, Lcom/mob/tools/gui/MobDrawerLayout;->bodyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getHeight()I

    move-result v7

    invoke-virtual {v6, v3, v10, v4, v7}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto :goto_e

    .line 490
    .end local v2    # "dw":I
    .end local v3    # "left":I
    .end local v4    # "right":I
    :pswitch_55
    iget-object v6, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v3

    .line 491
    .restart local v3    # "left":I
    if-gez v3, :cond_e

    .line 492
    add-int/2addr v3, p1

    .line 493
    if-lez v3, :cond_61

    .line 494
    const/4 v3, 0x0

    .line 496
    :cond_61
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getWidth()I

    move-result v6

    int-to-double v6, v6

    iget-wide v8, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerWidth:D

    mul-double/2addr v6, v8

    double-to-int v6, v6

    add-int v1, v3, v6

    .line 497
    .local v1, "dRight":I
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getWidth()I

    move-result v6

    add-int v0, v1, v6

    .line 498
    .local v0, "bRight":I
    iget-object v6, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getHeight()I

    move-result v7

    invoke-virtual {v6, v3, v10, v1, v7}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 499
    iget-object v6, p0, Lcom/mob/tools/gui/MobDrawerLayout;->bodyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getHeight()I

    move-result v7

    invoke-virtual {v6, v1, v10, v0, v7}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto :goto_e

    .line 503
    .end local v0    # "bRight":I
    .end local v1    # "dRight":I
    .end local v3    # "left":I
    :pswitch_85
    iget-object v6, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v3

    .line 504
    .restart local v3    # "left":I
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getWidth()I

    move-result v5

    .line 505
    .local v5, "width":I
    if-ge v3, v5, :cond_e

    .line 506
    add-int/2addr v3, p1

    .line 507
    if-le v3, v5, :cond_95

    .line 508
    move v3, v5

    .line 510
    :cond_95
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getWidth()I

    move-result v6

    int-to-double v6, v6

    iget-wide v8, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerWidth:D

    mul-double/2addr v6, v8

    double-to-int v6, v6

    add-int v4, v3, v6

    .line 511
    .restart local v4    # "right":I
    iget-object v6, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getHeight()I

    move-result v7

    invoke-virtual {v6, v3, v10, v4, v7}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto/16 :goto_e

    .line 515
    .end local v3    # "left":I
    .end local v4    # "right":I
    .end local v5    # "width":I
    :pswitch_ab
    iget-object v6, p0, Lcom/mob/tools/gui/MobDrawerLayout;->bodyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v3

    .line 516
    .restart local v3    # "left":I
    if-gez v3, :cond_e

    .line 517
    add-int/2addr v3, p1

    .line 518
    if-lez v3, :cond_b7

    .line 519
    const/4 v3, 0x0

    .line 521
    :cond_b7
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getWidth()I

    move-result v6

    add-int v4, v3, v6

    .line 522
    .restart local v4    # "right":I
    iget-object v6, p0, Lcom/mob/tools/gui/MobDrawerLayout;->bodyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getHeight()I

    move-result v7

    invoke-virtual {v6, v3, v10, v4, v7}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto/16 :goto_e

    .line 526
    .end local v3    # "left":I
    .end local v4    # "right":I
    :pswitch_c8
    iget-object v6, p0, Lcom/mob/tools/gui/MobDrawerLayout;->bodyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v3

    .line 527
    .restart local v3    # "left":I
    if-gez v3, :cond_e

    .line 528
    add-int/2addr v3, p1

    .line 529
    if-lez v3, :cond_d4

    .line 530
    const/4 v3, 0x0

    .line 532
    :cond_d4
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getWidth()I

    move-result v6

    add-int v0, v3, v6

    .line 533
    .restart local v0    # "bRight":I
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getWidth()I

    move-result v6

    int-to-double v6, v6

    iget-wide v8, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerWidth:D

    mul-double/2addr v6, v8

    double-to-int v6, v6

    add-int v1, v0, v6

    .line 534
    .restart local v1    # "dRight":I
    iget-object v6, p0, Lcom/mob/tools/gui/MobDrawerLayout;->bodyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getHeight()I

    move-result v7

    invoke-virtual {v6, v3, v10, v0, v7}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 535
    iget-object v6, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getHeight()I

    move-result v7

    invoke-virtual {v6, v0, v10, v1, v7}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto/16 :goto_e

    .line 465
    nop

    :pswitch_data_fa
    .packed-switch 0x1
        :pswitch_f
        :pswitch_85
        :pswitch_30
        :pswitch_55
        :pswitch_ab
        :pswitch_c8
    .end packed-switch
.end method

.method private drawShadow(Landroid/graphics/Canvas;)V
    .registers 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 238
    sget-object v0, Lcom/mob/tools/gui/MobDrawerLayout$2;->$SwitchMap$com$mob$tools$gui$MobDrawerLayout$DrawerType:[I

    iget-object v1, p0, Lcom/mob/tools/gui/MobDrawerLayout;->type:Lcom/mob/tools/gui/MobDrawerLayout$DrawerType;

    invoke-virtual {v1}, Lcom/mob/tools/gui/MobDrawerLayout$DrawerType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_ce

    .line 262
    :pswitch_d
    iget-object v0, p0, Lcom/mob/tools/gui/MobDrawerLayout;->bodyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v8

    .line 263
    .local v8, "edge":I
    if-lez v8, :cond_3a

    .line 264
    iget-object v9, p0, Lcom/mob/tools/gui/MobDrawerLayout;->paint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    add-int/lit8 v1, v8, -0x19

    int-to-float v1, v1

    const/4 v2, 0x0

    int-to-float v3, v8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, -0x80000000

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 265
    add-int/lit8 v0, v8, -0x19

    int-to-float v1, v0

    const/4 v2, 0x0

    int-to-float v3, v8

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/mob/tools/gui/MobDrawerLayout;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 269
    :cond_3a
    :goto_3a
    return-void

    .line 240
    .end local v8    # "edge":I
    :pswitch_3b
    iget-object v0, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getRight()I

    move-result v8

    .line 241
    .restart local v8    # "edge":I
    if-lez v8, :cond_3a

    .line 242
    iget-object v9, p0, Lcom/mob/tools/gui/MobDrawerLayout;->paint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    int-to-float v1, v8

    const/4 v2, 0x0

    add-int/lit8 v3, v8, 0x19

    int-to-float v3, v3

    const/4 v4, 0x0

    const/high16 v5, -0x80000000

    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 243
    int-to-float v1, v8

    const/4 v2, 0x0

    add-int/lit8 v0, v8, 0x19

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/mob/tools/gui/MobDrawerLayout;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_3a

    .line 248
    .end local v8    # "edge":I
    :pswitch_69
    iget-object v0, p0, Lcom/mob/tools/gui/MobDrawerLayout;->bodyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getRight()I

    move-result v8

    .line 249
    .restart local v8    # "edge":I
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getWidth()I

    move-result v0

    if-ge v8, v0, :cond_3a

    .line 250
    iget-object v9, p0, Lcom/mob/tools/gui/MobDrawerLayout;->paint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    int-to-float v1, v8

    const/4 v2, 0x0

    add-int/lit8 v3, v8, 0x19

    int-to-float v3, v3

    const/4 v4, 0x0

    const/high16 v5, -0x80000000

    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 251
    int-to-float v1, v8

    const/4 v2, 0x0

    add-int/lit8 v0, v8, 0x19

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/mob/tools/gui/MobDrawerLayout;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_3a

    .line 255
    .end local v8    # "edge":I
    :pswitch_9b
    iget-object v0, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v8

    .line 256
    .restart local v8    # "edge":I
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getWidth()I

    move-result v0

    if-ge v8, v0, :cond_3a

    .line 257
    iget-object v9, p0, Lcom/mob/tools/gui/MobDrawerLayout;->paint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    add-int/lit8 v1, v8, -0x19

    int-to-float v1, v1

    const/4 v2, 0x0

    int-to-float v3, v8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, -0x80000000

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 258
    add-int/lit8 v0, v8, -0x19

    int-to-float v1, v0

    const/4 v2, 0x0

    int-to-float v3, v8

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/mob/tools/gui/MobDrawerLayout;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_3a

    .line 238
    :pswitch_data_ce
    .packed-switch 0x1
        :pswitch_3b
        :pswitch_9b
        :pswitch_d
        :pswitch_d
        :pswitch_69
        :pswitch_69
    .end packed-switch
.end method

.method private init(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    new-instance v2, Lcom/mob/tools/gui/SmoothScroller;

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/mob/tools/gui/SmoothScroller;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/mob/tools/gui/MobDrawerLayout;->scroller:Lcom/mob/tools/gui/SmoothScroller;

    .line 73
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 74
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/mob/tools/gui/MobDrawerLayout;->touchSlop:I

    .line 75
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/mob/tools/gui/MobDrawerLayout;->maximumVelocity:I

    .line 77
    sget-object v2, Lcom/mob/tools/gui/MobDrawerLayout$DrawerType;->LEFT_COVER:Lcom/mob/tools/gui/MobDrawerLayout$DrawerType;

    iput-object v2, p0, Lcom/mob/tools/gui/MobDrawerLayout;->type:Lcom/mob/tools/gui/MobDrawerLayout$DrawerType;

    .line 78
    const-wide v2, 0x3fe999999999999aL    # 0.8

    iput-wide v2, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerWidth:D

    .line 79
    const/4 v2, 0x0

    iput v2, p0, Lcom/mob/tools/gui/MobDrawerLayout;->touchState:I

    .line 80
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/mob/tools/gui/MobDrawerLayout;->paint:Landroid/graphics/Paint;

    .line 82
    new-instance v1, Lcom/mob/tools/gui/MobDrawerLayout$1;

    invoke-direct {v1, p0}, Lcom/mob/tools/gui/MobDrawerLayout$1;-><init>(Lcom/mob/tools/gui/MobDrawerLayout;)V

    .line 87
    .local v1, "l":Landroid/view/View$OnClickListener;
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/mob/tools/gui/MobDrawerLayout;->bodyContainer:Landroid/widget/FrameLayout;

    .line 88
    iget-object v2, p0, Lcom/mob/tools/gui/MobDrawerLayout;->bodyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerContainer:Landroid/widget/FrameLayout;

    .line 90
    iget-object v2, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v2, p0, Lcom/mob/tools/gui/MobDrawerLayout;->bodyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v2}, Lcom/mob/tools/gui/MobDrawerLayout;->addView(Landroid/view/View;)V

    .line 92
    iget-object v2, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v2}, Lcom/mob/tools/gui/MobDrawerLayout;->addView(Landroid/view/View;)V

    .line 93
    return-void
.end method

.method private isClose()Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 357
    const/4 v0, 0x0

    .line 358
    .local v0, "close":Z
    sget-object v3, Lcom/mob/tools/gui/MobDrawerLayout$2;->$SwitchMap$com$mob$tools$gui$MobDrawerLayout$DrawerType:[I

    iget-object v4, p0, Lcom/mob/tools/gui/MobDrawerLayout;->type:Lcom/mob/tools/gui/MobDrawerLayout$DrawerType;

    invoke-virtual {v4}, Lcom/mob/tools/gui/MobDrawerLayout$DrawerType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_4a

    .line 374
    :goto_10
    return v0

    .line 360
    :pswitch_11
    iget-object v3, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getRight()I

    move-result v3

    if-nez v3, :cond_1b

    move v0, v1

    .line 361
    :goto_1a
    goto :goto_10

    :cond_1b
    move v0, v2

    .line 360
    goto :goto_1a

    .line 364
    :pswitch_1d
    iget-object v3, p0, Lcom/mob/tools/gui/MobDrawerLayout;->bodyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v3

    if-nez v3, :cond_27

    move v0, v1

    .line 365
    :goto_26
    goto :goto_10

    :cond_27
    move v0, v2

    .line 364
    goto :goto_26

    .line 367
    :pswitch_29
    iget-object v3, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getWidth()I

    move-result v4

    if-ne v3, v4, :cond_37

    move v0, v1

    .line 368
    :goto_36
    goto :goto_10

    :cond_37
    move v0, v2

    .line 367
    goto :goto_36

    .line 371
    :pswitch_39
    iget-object v3, p0, Lcom/mob/tools/gui/MobDrawerLayout;->bodyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getWidth()I

    move-result v4

    if-ne v3, v4, :cond_47

    move v0, v1

    :goto_46
    goto :goto_10

    :cond_47
    move v0, v2

    goto :goto_46

    .line 358
    nop

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_11
        :pswitch_29
        :pswitch_1d
        :pswitch_1d
        :pswitch_39
        :pswitch_39
    .end packed-switch
.end method

.method private switchDrawer(ZZ)V
    .registers 13
    .param p1, "open"    # Z
    .param p2, "immediate"    # Z

    .prologue
    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    .line 272
    iget-object v0, p0, Lcom/mob/tools/gui/MobDrawerLayout;->bodyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->clearFocus()V

    .line 273
    iget-object v0, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->clearFocus()V

    .line 274
    const/4 v1, 0x0

    .line 275
    .local v1, "from":I
    const/4 v6, 0x0

    .line 276
    .local v6, "to":I
    sget-object v0, Lcom/mob/tools/gui/MobDrawerLayout$2;->$SwitchMap$com$mob$tools$gui$MobDrawerLayout$DrawerType:[I

    iget-object v3, p0, Lcom/mob/tools/gui/MobDrawerLayout;->type:Lcom/mob/tools/gui/MobDrawerLayout$DrawerType;

    invoke-virtual {v3}, Lcom/mob/tools/gui/MobDrawerLayout$DrawerType;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_82

    .line 297
    :goto_1c
    iget-object v0, p0, Lcom/mob/tools/gui/MobDrawerLayout;->scroller:Lcom/mob/tools/gui/SmoothScroller;

    invoke-virtual {v0}, Lcom/mob/tools/gui/SmoothScroller;->abortAnimation()V

    .line 298
    if-eq v1, v6, :cond_2e

    .line 299
    iget-object v0, p0, Lcom/mob/tools/gui/MobDrawerLayout;->scroller:Lcom/mob/tools/gui/SmoothScroller;

    sub-int v3, v6, v1

    if-eqz p2, :cond_7f

    move v5, v2

    :goto_2a
    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/mob/tools/gui/SmoothScroller;->startScroll(IIIII)V

    .line 301
    :cond_2e
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->invalidate()V

    .line 302
    return-void

    .line 279
    :pswitch_32
    iget-object v0, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v1

    .line 280
    if-eqz p1, :cond_3c

    :goto_3a
    double-to-int v6, v4

    .line 281
    goto :goto_1c

    .line 280
    :cond_3c
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getWidth()I

    move-result v0

    neg-int v0, v0

    int-to-double v4, v0

    iget-wide v8, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerWidth:D

    mul-double/2addr v4, v8

    goto :goto_3a

    .line 283
    :pswitch_46
    iget-object v0, p0, Lcom/mob/tools/gui/MobDrawerLayout;->bodyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v1

    .line 284
    if-eqz p1, :cond_56

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getWidth()I

    move-result v0

    int-to-double v4, v0

    iget-wide v8, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerWidth:D

    mul-double/2addr v4, v8

    :cond_56
    double-to-int v6, v4

    .line 285
    goto :goto_1c

    .line 288
    :pswitch_58
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getWidth()I

    move-result v7

    .line 289
    .local v7, "width":I
    iget-object v0, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v1

    .line 290
    if-eqz p1, :cond_68

    int-to-double v4, v7

    iget-wide v8, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerWidth:D

    mul-double/2addr v4, v8

    :cond_68
    double-to-int v0, v4

    sub-int v6, v7, v0

    .line 291
    goto :goto_1c

    .line 293
    .end local v7    # "width":I
    :pswitch_6c
    iget-object v0, p0, Lcom/mob/tools/gui/MobDrawerLayout;->bodyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v1

    .line 294
    if-eqz p1, :cond_7d

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getWidth()I

    move-result v0

    neg-int v0, v0

    int-to-double v4, v0

    iget-wide v8, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerWidth:D

    mul-double/2addr v4, v8

    :cond_7d
    double-to-int v6, v4

    goto :goto_1c

    .line 299
    :cond_7f
    const/16 v5, 0x96

    goto :goto_2a

    .line 276
    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_32
        :pswitch_58
        :pswitch_46
        :pswitch_32
        :pswitch_6c
        :pswitch_58
    .end packed-switch
.end method


# virtual methods
.method public close()V
    .registers 2

    .prologue
    .line 146
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mob/tools/gui/MobDrawerLayout;->close(Z)V

    .line 147
    return-void
.end method

.method public close(Z)V
    .registers 3
    .param p1, "immediate"    # Z

    .prologue
    .line 141
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/mob/tools/gui/MobDrawerLayout;->switchDrawer(ZZ)V

    .line 142
    return-void
.end method

.method public computeScroll()V
    .registers 14

    .prologue
    const/4 v12, 0x0

    .line 305
    iget-object v8, p0, Lcom/mob/tools/gui/MobDrawerLayout;->scroller:Lcom/mob/tools/gui/SmoothScroller;

    invoke-virtual {v8}, Lcom/mob/tools/gui/SmoothScroller;->computeScrollOffset()Z

    move-result v8

    if-eqz v8, :cond_d2

    .line 306
    sget-object v8, Lcom/mob/tools/gui/MobDrawerLayout$2;->$SwitchMap$com$mob$tools$gui$MobDrawerLayout$DrawerType:[I

    iget-object v9, p0, Lcom/mob/tools/gui/MobDrawerLayout;->type:Lcom/mob/tools/gui/MobDrawerLayout$DrawerType;

    invoke-virtual {v9}, Lcom/mob/tools/gui/MobDrawerLayout$DrawerType;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_e8

    .line 336
    :goto_16
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->postInvalidate()V

    .line 345
    iget-object v8, p0, Lcom/mob/tools/gui/MobDrawerLayout;->listener:Lcom/mob/tools/gui/MobDrawerLayout$OnDrawerStateChangeListener;

    if-eqz v8, :cond_52

    iget-object v8, p0, Lcom/mob/tools/gui/MobDrawerLayout;->scroller:Lcom/mob/tools/gui/SmoothScroller;

    invoke-virtual {v8}, Lcom/mob/tools/gui/SmoothScroller;->getFinalX()I

    move-result v8

    iget-object v9, p0, Lcom/mob/tools/gui/MobDrawerLayout;->scroller:Lcom/mob/tools/gui/SmoothScroller;

    invoke-virtual {v9}, Lcom/mob/tools/gui/SmoothScroller;->getStartX()I

    move-result v9

    if-eq v8, v9, :cond_52

    .line 346
    iget-object v8, p0, Lcom/mob/tools/gui/MobDrawerLayout;->scroller:Lcom/mob/tools/gui/SmoothScroller;

    invoke-virtual {v8}, Lcom/mob/tools/gui/SmoothScroller;->getCurrX()I

    move-result v8

    iget-object v9, p0, Lcom/mob/tools/gui/MobDrawerLayout;->scroller:Lcom/mob/tools/gui/SmoothScroller;

    invoke-virtual {v9}, Lcom/mob/tools/gui/SmoothScroller;->getStartX()I

    move-result v9

    sub-int/2addr v8, v9

    mul-int/lit8 v8, v8, 0x64

    iget-object v9, p0, Lcom/mob/tools/gui/MobDrawerLayout;->scroller:Lcom/mob/tools/gui/SmoothScroller;

    .line 347
    invoke-virtual {v9}, Lcom/mob/tools/gui/SmoothScroller;->getFinalX()I

    move-result v9

    iget-object v10, p0, Lcom/mob/tools/gui/MobDrawerLayout;->scroller:Lcom/mob/tools/gui/SmoothScroller;

    invoke-virtual {v10}, Lcom/mob/tools/gui/SmoothScroller;->getStartX()I

    move-result v10

    sub-int/2addr v9, v10

    div-int v5, v8, v9

    .line 348
    .local v5, "progress":I
    iget-boolean v8, p0, Lcom/mob/tools/gui/MobDrawerLayout;->opened:Z

    if-eqz v8, :cond_e1

    .line 349
    iget-object v8, p0, Lcom/mob/tools/gui/MobDrawerLayout;->listener:Lcom/mob/tools/gui/MobDrawerLayout$OnDrawerStateChangeListener;

    invoke-interface {v8, p0, v5}, Lcom/mob/tools/gui/MobDrawerLayout$OnDrawerStateChangeListener;->onClosing(Lcom/mob/tools/gui/MobDrawerLayout;I)V

    .line 354
    .end local v5    # "progress":I
    :cond_52
    :goto_52
    return-void

    .line 309
    :pswitch_53
    iget-object v8, p0, Lcom/mob/tools/gui/MobDrawerLayout;->scroller:Lcom/mob/tools/gui/SmoothScroller;

    invoke-virtual {v8}, Lcom/mob/tools/gui/SmoothScroller;->getCurrX()I

    move-result v4

    .line 310
    .local v4, "left":I
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getWidth()I

    move-result v8

    int-to-double v8, v8

    iget-wide v10, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerWidth:D

    mul-double/2addr v8, v10

    double-to-int v8, v8

    add-int v6, v4, v8

    .line 311
    .local v6, "right":I
    iget-object v8, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getHeight()I

    move-result v9

    invoke-virtual {v8, v4, v12, v6, v9}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto :goto_16

    .line 315
    .end local v4    # "left":I
    .end local v6    # "right":I
    :pswitch_6e
    iget-object v8, p0, Lcom/mob/tools/gui/MobDrawerLayout;->scroller:Lcom/mob/tools/gui/SmoothScroller;

    invoke-virtual {v8}, Lcom/mob/tools/gui/SmoothScroller;->getCurrX()I

    move-result v4

    .line 316
    .restart local v4    # "left":I
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getWidth()I

    move-result v8

    add-int v6, v4, v8

    .line 317
    .restart local v6    # "right":I
    iget-object v8, p0, Lcom/mob/tools/gui/MobDrawerLayout;->bodyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getHeight()I

    move-result v9

    invoke-virtual {v8, v4, v12, v6, v9}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto :goto_16

    .line 320
    .end local v4    # "left":I
    .end local v6    # "right":I
    :pswitch_84
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getWidth()I

    move-result v7

    .line 321
    .local v7, "width":I
    iget-object v8, p0, Lcom/mob/tools/gui/MobDrawerLayout;->scroller:Lcom/mob/tools/gui/SmoothScroller;

    invoke-virtual {v8}, Lcom/mob/tools/gui/SmoothScroller;->getCurrX()I

    move-result v2

    .line 322
    .local v2, "dLeft":I
    int-to-double v8, v7

    iget-wide v10, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerWidth:D

    mul-double/2addr v8, v10

    double-to-int v8, v8

    add-int v0, v2, v8

    .line 323
    .local v0, "bLeft":I
    add-int v1, v0, v7

    .line 324
    .local v1, "bRight":I
    iget-object v8, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getHeight()I

    move-result v9

    invoke-virtual {v8, v2, v12, v0, v9}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 325
    iget-object v8, p0, Lcom/mob/tools/gui/MobDrawerLayout;->bodyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getHeight()I

    move-result v9

    invoke-virtual {v8, v0, v12, v1, v9}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto/16 :goto_16

    .line 328
    .end local v0    # "bLeft":I
    .end local v1    # "bRight":I
    .end local v2    # "dLeft":I
    .end local v7    # "width":I
    :pswitch_ab
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getWidth()I

    move-result v7

    .line 329
    .restart local v7    # "width":I
    iget-object v8, p0, Lcom/mob/tools/gui/MobDrawerLayout;->scroller:Lcom/mob/tools/gui/SmoothScroller;

    invoke-virtual {v8}, Lcom/mob/tools/gui/SmoothScroller;->getCurrX()I

    move-result v2

    .line 330
    .restart local v2    # "dLeft":I
    sub-int v0, v2, v7

    .line 331
    .restart local v0    # "bLeft":I
    int-to-double v8, v7

    iget-wide v10, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerWidth:D

    mul-double/2addr v8, v10

    double-to-int v8, v8

    add-int v3, v2, v8

    .line 332
    .local v3, "dRight":I
    iget-object v8, p0, Lcom/mob/tools/gui/MobDrawerLayout;->bodyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getHeight()I

    move-result v9

    invoke-virtual {v8, v0, v12, v2, v9}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 333
    iget-object v8, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getHeight()I

    move-result v9

    invoke-virtual {v8, v2, v12, v3, v9}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto/16 :goto_16

    .line 337
    .end local v0    # "bLeft":I
    .end local v2    # "dLeft":I
    .end local v3    # "dRight":I
    .end local v7    # "width":I
    :cond_d2
    invoke-direct {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->isClose()Z

    move-result v8

    if-eqz v8, :cond_dc

    .line 338
    iput-boolean v12, p0, Lcom/mob/tools/gui/MobDrawerLayout;->opened:Z

    goto/16 :goto_52

    .line 341
    :cond_dc
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/mob/tools/gui/MobDrawerLayout;->opened:Z

    goto/16 :goto_52

    .line 351
    .restart local v5    # "progress":I
    :cond_e1
    iget-object v8, p0, Lcom/mob/tools/gui/MobDrawerLayout;->listener:Lcom/mob/tools/gui/MobDrawerLayout$OnDrawerStateChangeListener;

    invoke-interface {v8, p0, v5}, Lcom/mob/tools/gui/MobDrawerLayout$OnDrawerStateChangeListener;->onOpening(Lcom/mob/tools/gui/MobDrawerLayout;I)V

    goto/16 :goto_52

    .line 306
    :pswitch_data_e8
    .packed-switch 0x1
        :pswitch_53
        :pswitch_53
        :pswitch_6e
        :pswitch_84
        :pswitch_6e
        :pswitch_ab
    .end packed-switch
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getDrawingTime()J

    move-result-wide v0

    .line 220
    .local v0, "drawingTime":J
    sget-object v4, Lcom/mob/tools/gui/MobDrawerLayout$2;->$SwitchMap$com$mob$tools$gui$MobDrawerLayout$DrawerType:[I

    iget-object v5, p0, Lcom/mob/tools/gui/MobDrawerLayout;->type:Lcom/mob/tools/gui/MobDrawerLayout$DrawerType;

    invoke-virtual {v5}, Lcom/mob/tools/gui/MobDrawerLayout$DrawerType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_24

    .line 228
    :pswitch_11
    iget-object v2, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerContainer:Landroid/widget/FrameLayout;

    .line 229
    .local v2, "first":Landroid/view/View;
    iget-object v3, p0, Lcom/mob/tools/gui/MobDrawerLayout;->bodyContainer:Landroid/widget/FrameLayout;

    .line 232
    .local v3, "second":Landroid/view/View;
    :goto_15
    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/mob/tools/gui/MobDrawerLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 233
    invoke-virtual {p0, p1, v3, v0, v1}, Lcom/mob/tools/gui/MobDrawerLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 234
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/MobDrawerLayout;->drawShadow(Landroid/graphics/Canvas;)V

    .line 235
    return-void

    .line 224
    .end local v2    # "first":Landroid/view/View;
    .end local v3    # "second":Landroid/view/View;
    :pswitch_1f
    iget-object v2, p0, Lcom/mob/tools/gui/MobDrawerLayout;->bodyContainer:Landroid/widget/FrameLayout;

    .line 225
    .restart local v2    # "first":Landroid/view/View;
    iget-object v3, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerContainer:Landroid/widget/FrameLayout;

    .line 226
    .restart local v3    # "second":Landroid/view/View;
    goto :goto_15

    .line 220
    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_1f
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_1f
    .end packed-switch
.end method

.method public isOpened()Z
    .registers 2

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/mob/tools/gui/MobDrawerLayout;->opened:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 421
    iget-boolean v5, p0, Lcom/mob/tools/gui/MobDrawerLayout;->lockScroll:Z

    if-eqz v5, :cond_8

    move v7, v6

    .line 461
    :cond_7
    :goto_7
    return v7

    .line 425
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 426
    .local v0, "action":I
    const/4 v5, 0x2

    if-ne v0, v5, :cond_13

    iget v5, p0, Lcom/mob/tools/gui/MobDrawerLayout;->touchState:I

    if-nez v5, :cond_7

    .line 430
    :cond_13
    iget-object v5, p0, Lcom/mob/tools/gui/MobDrawerLayout;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v5, :cond_1d

    .line 431
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v5

    iput-object v5, p0, Lcom/mob/tools/gui/MobDrawerLayout;->velocityTracker:Landroid/view/VelocityTracker;

    .line 433
    :cond_1d
    iget-object v5, p0, Lcom/mob/tools/gui/MobDrawerLayout;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 435
    packed-switch v0, :pswitch_data_7a

    .line 461
    :cond_25
    :goto_25
    iget v5, p0, Lcom/mob/tools/gui/MobDrawerLayout;->touchState:I

    if-nez v5, :cond_7

    move v7, v6

    goto :goto_7

    .line 437
    :pswitch_2b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, p0, Lcom/mob/tools/gui/MobDrawerLayout;->lastMotionX:F

    .line 438
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Lcom/mob/tools/gui/MobDrawerLayout;->lastMotionY:F

    .line 439
    iget-object v5, p0, Lcom/mob/tools/gui/MobDrawerLayout;->scroller:Lcom/mob/tools/gui/SmoothScroller;

    invoke-virtual {v5}, Lcom/mob/tools/gui/SmoothScroller;->isFinished()Z

    move-result v5

    if-eqz v5, :cond_43

    move v5, v6

    :goto_40
    iput v5, p0, Lcom/mob/tools/gui/MobDrawerLayout;->touchState:I

    goto :goto_25

    :cond_43
    move v5, v7

    goto :goto_40

    .line 442
    :pswitch_45
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 443
    .local v1, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 444
    .local v3, "y":F
    iget v5, p0, Lcom/mob/tools/gui/MobDrawerLayout;->lastMotionX:F

    sub-float v5, v1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-int v2, v5

    .line 445
    .local v2, "xDiff":I
    iget v5, p0, Lcom/mob/tools/gui/MobDrawerLayout;->lastMotionY:F

    sub-float v5, v3, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-int v4, v5

    .line 446
    .local v4, "yDiff":I
    if-ge v4, v2, :cond_25

    iget v5, p0, Lcom/mob/tools/gui/MobDrawerLayout;->touchSlop:I

    if-le v2, v5, :cond_25

    .line 447
    iput v7, p0, Lcom/mob/tools/gui/MobDrawerLayout;->touchState:I

    .line 448
    iput v1, p0, Lcom/mob/tools/gui/MobDrawerLayout;->lastMotionX:F

    goto :goto_25

    .line 453
    .end local v1    # "x":F
    .end local v2    # "xDiff":I
    .end local v3    # "y":F
    .end local v4    # "yDiff":I
    :pswitch_6a
    iget-object v5, p0, Lcom/mob/tools/gui/MobDrawerLayout;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v5, :cond_76

    .line 454
    iget-object v5, p0, Lcom/mob/tools/gui/MobDrawerLayout;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->recycle()V

    .line 455
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/mob/tools/gui/MobDrawerLayout;->velocityTracker:Landroid/view/VelocityTracker;

    .line 457
    :cond_76
    iput v6, p0, Lcom/mob/tools/gui/MobDrawerLayout;->touchState:I

    goto :goto_25

    .line 435
    nop

    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_6a
        :pswitch_45
        :pswitch_6a
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 15
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v8, 0x0

    .line 194
    sub-int v2, p4, p2

    .line 195
    .local v2, "width":I
    sub-int v1, p5, p3

    .line 196
    .local v1, "height":I
    int-to-double v4, v2

    iget-wide v6, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerWidth:D

    mul-double/2addr v4, v6

    double-to-int v0, v4

    .line 197
    .local v0, "drawerWidth":I
    iget-object v3, p0, Lcom/mob/tools/gui/MobDrawerLayout;->bodyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v8, v8, v2, v1}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 198
    sget-object v3, Lcom/mob/tools/gui/MobDrawerLayout$2;->$SwitchMap$com$mob$tools$gui$MobDrawerLayout$DrawerType:[I

    iget-object v4, p0, Lcom/mob/tools/gui/MobDrawerLayout;->type:Lcom/mob/tools/gui/MobDrawerLayout$DrawerType;

    invoke-virtual {v4}, Lcom/mob/tools/gui/MobDrawerLayout$DrawerType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_3a

    .line 214
    :goto_1c
    return-void

    .line 200
    :pswitch_1d
    iget-object v3, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v8, v8, v0, v1}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto :goto_1c

    .line 204
    :pswitch_23
    iget-object v3, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerContainer:Landroid/widget/FrameLayout;

    neg-int v4, v0

    invoke-virtual {v3, v4, v8, v8, v1}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto :goto_1c

    .line 207
    :pswitch_2a
    iget-object v3, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerContainer:Landroid/widget/FrameLayout;

    sub-int v4, v2, v0

    invoke-virtual {v3, v4, v8, v2, v1}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto :goto_1c

    .line 211
    :pswitch_32
    iget-object v3, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerContainer:Landroid/widget/FrameLayout;

    add-int v4, v2, v0

    invoke-virtual {v3, v2, v8, v4, v1}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto :goto_1c

    .line 198
    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_23
        :pswitch_32
        :pswitch_1d
        :pswitch_23
        :pswitch_2a
        :pswitch_32
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .registers 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    .line 183
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 184
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getMeasuredWidth()I

    move-result v3

    .line 185
    .local v3, "width":I
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getMeasuredHeight()I

    move-result v2

    .line 186
    .local v2, "height":I
    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 187
    .local v1, "adjustedWidthMeasureSpec":I
    invoke-static {v2, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 188
    .local v0, "adjustedHeightMeasureSpec":I
    iget-object v4, p0, Lcom/mob/tools/gui/MobDrawerLayout;->bodyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v1, v0}, Landroid/widget/FrameLayout;->measure(II)V

    .line 189
    int-to-double v4, v3

    iget-wide v6, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerWidth:D

    mul-double/2addr v4, v6

    double-to-int v4, v4

    invoke-static {v4, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 190
    iget-object v4, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v1, v0}, Landroid/widget/FrameLayout;->measure(II)V

    .line 191
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    .line 378
    iget-object v2, p0, Lcom/mob/tools/gui/MobDrawerLayout;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v2, :cond_b

    .line 379
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/mob/tools/gui/MobDrawerLayout;->velocityTracker:Landroid/view/VelocityTracker;

    .line 381
    :cond_b
    iget-object v2, p0, Lcom/mob/tools/gui/MobDrawerLayout;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 383
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_7e

    .line 417
    :cond_17
    :goto_17
    return v5

    .line 385
    :pswitch_18
    iget v2, p0, Lcom/mob/tools/gui/MobDrawerLayout;->touchState:I

    if-eqz v2, :cond_17

    .line 386
    iget-object v2, p0, Lcom/mob/tools/gui/MobDrawerLayout;->scroller:Lcom/mob/tools/gui/SmoothScroller;

    invoke-virtual {v2}, Lcom/mob/tools/gui/SmoothScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_29

    .line 387
    iget-object v2, p0, Lcom/mob/tools/gui/MobDrawerLayout;->scroller:Lcom/mob/tools/gui/SmoothScroller;

    invoke-virtual {v2}, Lcom/mob/tools/gui/SmoothScroller;->abortAnimation()V

    .line 389
    :cond_29
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/mob/tools/gui/MobDrawerLayout;->lastMotionX:F

    goto :goto_17

    .line 393
    :pswitch_30
    iget v2, p0, Lcom/mob/tools/gui/MobDrawerLayout;->touchState:I

    if-eq v2, v5, :cond_3e

    .line 394
    invoke-virtual {p0, p1}, Lcom/mob/tools/gui/MobDrawerLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_17

    iget v2, p0, Lcom/mob/tools/gui/MobDrawerLayout;->touchState:I

    if-ne v2, v5, :cond_17

    .line 395
    :cond_3e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 396
    .local v1, "x":F
    iget v2, p0, Lcom/mob/tools/gui/MobDrawerLayout;->lastMotionX:F

    sub-float/2addr v2, v1

    float-to-int v0, v2

    .line 397
    .local v0, "deltaX":I
    if-gez v0, :cond_4f

    .line 398
    neg-int v2, v0

    invoke-direct {p0, v2}, Lcom/mob/tools/gui/MobDrawerLayout;->dragToRight(I)V

    .line 402
    :cond_4c
    :goto_4c
    iput v1, p0, Lcom/mob/tools/gui/MobDrawerLayout;->lastMotionX:F

    goto :goto_17

    .line 399
    :cond_4f
    if-lez v0, :cond_4c

    .line 400
    invoke-direct {p0, v0}, Lcom/mob/tools/gui/MobDrawerLayout;->dragToLeft(I)V

    goto :goto_4c

    .line 407
    .end local v0    # "deltaX":I
    .end local v1    # "x":F
    :pswitch_55
    iget v2, p0, Lcom/mob/tools/gui/MobDrawerLayout;->touchState:I

    if-ne v2, v5, :cond_79

    iget-object v2, p0, Lcom/mob/tools/gui/MobDrawerLayout;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_79

    .line 408
    iget-object v2, p0, Lcom/mob/tools/gui/MobDrawerLayout;->velocityTracker:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    iget v4, p0, Lcom/mob/tools/gui/MobDrawerLayout;->maximumVelocity:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 409
    iget-object v2, p0, Lcom/mob/tools/gui/MobDrawerLayout;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v2}, Lcom/mob/tools/gui/MobDrawerLayout;->computeDrag(I)V

    .line 410
    iget-object v2, p0, Lcom/mob/tools/gui/MobDrawerLayout;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->recycle()V

    .line 411
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mob/tools/gui/MobDrawerLayout;->velocityTracker:Landroid/view/VelocityTracker;

    .line 413
    :cond_79
    const/4 v2, 0x0

    iput v2, p0, Lcom/mob/tools/gui/MobDrawerLayout;->touchState:I

    goto :goto_17

    .line 383
    nop

    :pswitch_data_7e
    .packed-switch 0x0
        :pswitch_18
        :pswitch_55
        :pswitch_30
        :pswitch_55
    .end packed-switch
.end method

.method public open()V
    .registers 2

    .prologue
    .line 136
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mob/tools/gui/MobDrawerLayout;->open(Z)V

    .line 137
    return-void
.end method

.method public open(Z)V
    .registers 3
    .param p1, "immediate"    # Z

    .prologue
    .line 131
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/mob/tools/gui/MobDrawerLayout;->switchDrawer(ZZ)V

    .line 132
    return-void
.end method

.method public setBody(Landroid/view/View;)V
    .registers 5
    .param p1, "body"    # Landroid/view/View;

    .prologue
    .line 161
    iget-object v1, p0, Lcom/mob/tools/gui/MobDrawerLayout;->bodyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1a

    const/4 v0, 0x0

    .line 162
    .local v0, "myBody":Landroid/view/View;
    :goto_9
    invoke-static {v0, p1}, Lcom/mob/tools/utils/ResHelper;->isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 163
    iget-object v1, p0, Lcom/mob/tools/gui/MobDrawerLayout;->bodyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 164
    iget-object v1, p0, Lcom/mob/tools/gui/MobDrawerLayout;->bodyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 166
    :cond_19
    return-void

    .line 161
    .end local v0    # "myBody":Landroid/view/View;
    :cond_1a
    iget-object v1, p0, Lcom/mob/tools/gui/MobDrawerLayout;->bodyContainer:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_9
.end method

.method public setDrawer(Landroid/view/View;)V
    .registers 5
    .param p1, "drawer"    # Landroid/view/View;

    .prologue
    .line 170
    iget-object v1, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1a

    const/4 v0, 0x0

    .line 171
    .local v0, "myDrawer":Landroid/view/View;
    :goto_9
    invoke-static {v0, p1}, Lcom/mob/tools/utils/ResHelper;->isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 172
    iget-object v1, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 173
    iget-object v1, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 175
    :cond_19
    return-void

    .line 170
    .end local v0    # "myDrawer":Landroid/view/View;
    :cond_1a
    iget-object v1, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerContainer:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_9
.end method

.method public setDrawerType(Lcom/mob/tools/gui/MobDrawerLayout$DrawerType;)V
    .registers 4
    .param p1, "type"    # Lcom/mob/tools/gui/MobDrawerLayout$DrawerType;

    .prologue
    .line 97
    if-nez p1, :cond_4

    .line 98
    sget-object p1, Lcom/mob/tools/gui/MobDrawerLayout$DrawerType;->LEFT_COVER:Lcom/mob/tools/gui/MobDrawerLayout$DrawerType;

    .line 100
    :cond_4
    iget-object v0, p0, Lcom/mob/tools/gui/MobDrawerLayout;->type:Lcom/mob/tools/gui/MobDrawerLayout$DrawerType;

    if-eq v0, p1, :cond_1d

    .line 101
    iput-object p1, p0, Lcom/mob/tools/gui/MobDrawerLayout;->type:Lcom/mob/tools/gui/MobDrawerLayout$DrawerType;

    .line 102
    sget-object v0, Lcom/mob/tools/gui/MobDrawerLayout$2;->$SwitchMap$com$mob$tools$gui$MobDrawerLayout$DrawerType:[I

    invoke-virtual {p1}, Lcom/mob/tools/gui/MobDrawerLayout$DrawerType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_24

    .line 108
    iget-object v0, p0, Lcom/mob/tools/gui/MobDrawerLayout;->bodyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->bringToFront()V

    .line 111
    :goto_1a
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->postInvalidate()V

    .line 113
    :cond_1d
    return-void

    .line 105
    :pswitch_1e
    iget-object v0, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->bringToFront()V

    goto :goto_1a

    .line 102
    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_1e
    .end packed-switch
.end method

.method public setDrawerWidth(D)V
    .registers 6
    .param p1, "drawerWidth"    # D

    .prologue
    .line 117
    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_b

    .line 118
    const-wide p1, 0x3fe99999a0000000L    # 0.800000011920929

    .line 120
    :cond_b
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, p1, v0

    if-lez v0, :cond_13

    .line 121
    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    .line 123
    :cond_13
    iget-wide v0, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerWidth:D

    cmpl-double v0, v0, p1

    if-eqz v0, :cond_1e

    .line 124
    iput-wide p1, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerWidth:D

    .line 125
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->postInvalidate()V

    .line 127
    :cond_1e
    return-void
.end method

.method public setLockScroll(Z)V
    .registers 2
    .param p1, "lock"    # Z

    .prologue
    .line 179
    iput-boolean p1, p0, Lcom/mob/tools/gui/MobDrawerLayout;->lockScroll:Z

    .line 180
    return-void
.end method

.method public setOnDrawerStateChangeListener(Lcom/mob/tools/gui/MobDrawerLayout$OnDrawerStateChangeListener;)V
    .registers 2
    .param p1, "l"    # Lcom/mob/tools/gui/MobDrawerLayout$OnDrawerStateChangeListener;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/mob/tools/gui/MobDrawerLayout;->listener:Lcom/mob/tools/gui/MobDrawerLayout$OnDrawerStateChangeListener;

    .line 157
    return-void
.end method
