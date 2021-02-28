.class public Lcn/sharesdk/onekeyshare/themes/classic/port/PlatformPageAdapterPort;
.super Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;
.source "PlatformPageAdapterPort.java"


# static fields
.field private static final DESIGN_LOGO_HEIGHT:I = 0x4c

.field private static final DESIGN_PADDING_TOP:I = 0x14

.field private static final DESIGN_SCREEN_WIDTH_P:I = 0x2d0

.field private static final DESIGN_SEP_LINE_WIDTH:I = 0x1

.field private static final LINE_SIZE_P:I = 0x4

.field private static final PAGE_SIZE_P:I = 0xc


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
    .line 29
    .local p2, "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-direct {p0, p1, p2}, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;-><init>(Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;Ljava/util/ArrayList;)V

    .line 30
    return-void
.end method


# virtual methods
.method protected calculateSize(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 8
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
    const/4 v2, 0x1

    .line 33
    invoke-static {p1}, Lcom/mob/tools/utils/ResHelper;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    .line 34
    .local v1, "screenWidth":I
    const/4 v3, 0x4

    iput v3, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/PlatformPageAdapterPort;->lineSize:I

    .line 36
    int-to-float v3, v1

    const/high16 v4, 0x44340000    # 720.0f

    div-float v0, v3, v4

    .line 37
    .local v0, "ratio":F
    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v3, v0

    float-to-int v3, v3

    iput v3, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/PlatformPageAdapterPort;->sepLineWidth:I

    .line 38
    iget v3, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/PlatformPageAdapterPort;->sepLineWidth:I

    if-ge v3, v2, :cond_45

    :goto_17
    iput v2, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/PlatformPageAdapterPort;->sepLineWidth:I

    .line 39
    const/high16 v2, 0x42980000    # 76.0f

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/PlatformPageAdapterPort;->logoHeight:I

    .line 40
    const/high16 v2, 0x41a00000    # 20.0f

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/PlatformPageAdapterPort;->paddingTop:I

    .line 41
    const/high16 v2, 0x42500000    # 52.0f

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/PlatformPageAdapterPort;->bottomHeight:I

    .line 42
    iget v2, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/PlatformPageAdapterPort;->sepLineWidth:I

    mul-int/lit8 v2, v2, 0x3

    sub-int v2, v1, v2

    div-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/PlatformPageAdapterPort;->cellHeight:I

    .line 43
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/PlatformPageAdapterPort;->lineSize:I

    if-gt v2, v3, :cond_48

    .line 44
    iget v2, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/PlatformPageAdapterPort;->cellHeight:I

    iget v3, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/PlatformPageAdapterPort;->sepLineWidth:I

    add-int/2addr v2, v3

    iput v2, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/PlatformPageAdapterPort;->panelHeight:I

    .line 50
    :goto_44
    return-void

    .line 38
    :cond_45
    iget v2, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/PlatformPageAdapterPort;->sepLineWidth:I

    goto :goto_17

    .line 45
    :cond_48
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/PlatformPageAdapterPort;->lineSize:I

    rsub-int/lit8 v3, v3, 0xc

    if-gt v2, v3, :cond_5c

    .line 46
    iget v2, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/PlatformPageAdapterPort;->cellHeight:I

    iget v3, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/PlatformPageAdapterPort;->sepLineWidth:I

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/PlatformPageAdapterPort;->panelHeight:I

    goto :goto_44

    .line 48
    :cond_5c
    iget v2, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/PlatformPageAdapterPort;->cellHeight:I

    iget v3, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/PlatformPageAdapterPort;->sepLineWidth:I

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x3

    iput v2, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/PlatformPageAdapterPort;->panelHeight:I

    goto :goto_44
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
    .local p1, "plats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/16 v6, 0xc

    .line 53
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 54
    .local v0, "count":I
    if-ge v0, v6, :cond_2a

    .line 55
    iget v5, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/PlatformPageAdapterPort;->lineSize:I

    div-int v2, v0, v5

    .line 56
    .local v2, "lineCount":I
    iget v5, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/PlatformPageAdapterPort;->lineSize:I

    rem-int v5, v0, v5

    if-eqz v5, :cond_14

    .line 57
    add-int/lit8 v2, v2, 0x1

    .line 59
    :cond_14
    const/4 v5, 0x1

    iget v6, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/PlatformPageAdapterPort;->lineSize:I

    mul-int/2addr v6, v2

    filled-new-array {v5, v6}, [I

    move-result-object v5

    const-class v6, Ljava/lang/Object;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[Ljava/lang/Object;

    iput-object v5, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/PlatformPageAdapterPort;->cells:[[Ljava/lang/Object;

    .line 68
    .end local v2    # "lineCount":I
    :goto_26
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_27
    if-lt v1, v0, :cond_41

    .line 72
    return-void

    .line 61
    .end local v1    # "i":I
    :cond_2a
    div-int/lit8 v4, v0, 0xc

    .line 62
    .local v4, "pageCount":I
    rem-int/lit8 v5, v0, 0xc

    if-eqz v5, :cond_32

    .line 63
    add-int/lit8 v4, v4, 0x1

    .line 65
    :cond_32
    filled-new-array {v4, v6}, [I

    move-result-object v5

    const-class v6, Ljava/lang/Object;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[Ljava/lang/Object;

    iput-object v5, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/PlatformPageAdapterPort;->cells:[[Ljava/lang/Object;

    goto :goto_26

    .line 69
    .end local v4    # "pageCount":I
    .restart local v1    # "i":I
    :cond_41
    div-int/lit8 v3, v1, 0xc

    .line 70
    .local v3, "p":I
    iget-object v5, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/PlatformPageAdapterPort;->cells:[[Ljava/lang/Object;

    aget-object v5, v5, v3

    mul-int/lit8 v6, v3, 0xc

    sub-int v6, v1, v6

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    .line 68
    add-int/lit8 v1, v1, 0x1

    goto :goto_27
.end method
