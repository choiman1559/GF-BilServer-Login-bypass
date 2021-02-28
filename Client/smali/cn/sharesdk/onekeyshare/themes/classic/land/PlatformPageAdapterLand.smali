.class public Lcn/sharesdk/onekeyshare/themes/classic/land/PlatformPageAdapterLand;
.super Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;
.source "PlatformPageAdapterLand.java"


# static fields
.field private static final DESIGN_CELL_WIDTH_L:I = 0xa0

.field private static final DESIGN_LOGO_HEIGHT:I = 0x4c

.field private static final DESIGN_PADDING_TOP:I = 0x14

.field private static final DESIGN_SCREEN_WIDTH_L:I = 0x500

.field private static final DESIGN_SEP_LINE_WIDTH:I = 0x1


# direct methods
.method public constructor <init>(Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;Ljava/util/ArrayList;)V
    .registers 3
    .param p1, "page"    # Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p2, "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-direct {p0, p1, p2}, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;-><init>(Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;Ljava/util/ArrayList;)V

    .line 29
    return-void
.end method


# virtual methods
.method protected calculateSize(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "plats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v3, 0x1

    .line 32
    invoke-static {p1}, Lcom/mob/tools/utils/ResHelper;->getScreenWidth(Landroid/content/Context;)I

    move-result v2

    .line 33
    .local v2, "screenWidth":I
    int-to-float v4, v2

    const/high16 v5, 0x44a00000    # 1280.0f

    div-float v1, v4, v5

    .line 34
    .local v1, "ratio":F
    const/high16 v4, 0x43200000    # 160.0f

    mul-float/2addr v4, v1

    float-to-int v0, v4

    .line 35
    .local v0, "cellWidth":I
    div-int v4, v2, v0

    iput v4, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/PlatformPageAdapterLand;->lineSize:I

    .line 37
    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v4, v1

    float-to-int v4, v4

    iput v4, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/PlatformPageAdapterLand;->sepLineWidth:I

    .line 38
    iget v4, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/PlatformPageAdapterLand;->sepLineWidth:I

    if-ge v4, v3, :cond_45

    :goto_1c
    iput v3, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/PlatformPageAdapterLand;->sepLineWidth:I

    .line 39
    const/high16 v3, 0x42980000    # 76.0f

    mul-float/2addr v3, v1

    float-to-int v3, v3

    iput v3, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/PlatformPageAdapterLand;->logoHeight:I

    .line 40
    const/high16 v3, 0x41a00000    # 20.0f

    mul-float/2addr v3, v1

    float-to-int v3, v3

    iput v3, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/PlatformPageAdapterLand;->paddingTop:I

    .line 41
    const/high16 v3, 0x42500000    # 52.0f

    mul-float/2addr v3, v1

    float-to-int v3, v3

    iput v3, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/PlatformPageAdapterLand;->bottomHeight:I

    .line 42
    iget v3, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/PlatformPageAdapterLand;->sepLineWidth:I

    mul-int/lit8 v3, v3, 0x3

    sub-int v3, v2, v3

    iget v4, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/PlatformPageAdapterLand;->lineSize:I

    add-int/lit8 v4, v4, -0x1

    div-int/2addr v3, v4

    iput v3, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/PlatformPageAdapterLand;->cellHeight:I

    .line 43
    iget v3, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/PlatformPageAdapterLand;->cellHeight:I

    iget v4, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/PlatformPageAdapterLand;->sepLineWidth:I

    add-int/2addr v3, v4

    iput v3, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/PlatformPageAdapterLand;->panelHeight:I

    .line 44
    return-void

    .line 38
    :cond_45
    iget v3, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/PlatformPageAdapterLand;->sepLineWidth:I

    goto :goto_1c
.end method

.method protected collectCells(Ljava/util/ArrayList;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, "plats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 48
    .local v0, "count":I
    iget v5, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/PlatformPageAdapterLand;->lineSize:I

    if-ge v0, v5, :cond_2a

    .line 49
    iget v5, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/PlatformPageAdapterLand;->lineSize:I

    div-int v2, v0, v5

    .line 50
    .local v2, "lineCount":I
    iget v5, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/PlatformPageAdapterLand;->lineSize:I

    rem-int v5, v0, v5

    if-eqz v5, :cond_14

    .line 51
    add-int/lit8 v2, v2, 0x1

    .line 53
    :cond_14
    const/4 v5, 0x1

    iget v6, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/PlatformPageAdapterLand;->lineSize:I

    mul-int/2addr v6, v2

    filled-new-array {v5, v6}, [I

    move-result-object v5

    const-class v6, Ljava/lang/Object;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[Ljava/lang/Object;

    iput-object v5, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/PlatformPageAdapterLand;->cells:[[Ljava/lang/Object;

    .line 62
    .end local v2    # "lineCount":I
    :goto_26
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_27
    if-lt v1, v0, :cond_47

    .line 66
    return-void

    .line 55
    .end local v1    # "i":I
    :cond_2a
    iget v5, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/PlatformPageAdapterLand;->lineSize:I

    div-int v4, v0, v5

    .line 56
    .local v4, "pageCount":I
    iget v5, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/PlatformPageAdapterLand;->lineSize:I

    rem-int v5, v0, v5

    if-eqz v5, :cond_36

    .line 57
    add-int/lit8 v4, v4, 0x1

    .line 59
    :cond_36
    iget v5, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/PlatformPageAdapterLand;->lineSize:I

    filled-new-array {v4, v5}, [I

    move-result-object v5

    const-class v6, Ljava/lang/Object;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[Ljava/lang/Object;

    iput-object v5, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/PlatformPageAdapterLand;->cells:[[Ljava/lang/Object;

    goto :goto_26

    .line 63
    .end local v4    # "pageCount":I
    .restart local v1    # "i":I
    :cond_47
    iget v5, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/PlatformPageAdapterLand;->lineSize:I

    div-int v3, v1, v5

    .line 64
    .local v3, "p":I
    iget-object v5, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/PlatformPageAdapterLand;->cells:[[Ljava/lang/Object;

    aget-object v5, v5, v3

    iget v6, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/PlatformPageAdapterLand;->lineSize:I

    mul-int/2addr v6, v3

    sub-int v6, v1, v6

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    .line 62
    add-int/lit8 v1, v1, 0x1

    goto :goto_27
.end method
