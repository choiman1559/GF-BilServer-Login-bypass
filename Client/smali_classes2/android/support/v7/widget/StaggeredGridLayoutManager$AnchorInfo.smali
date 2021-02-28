.class Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;
.super Ljava/lang/Object;
.source "StaggeredGridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/StaggeredGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnchorInfo"
.end annotation


# instance fields
.field mInvalidateOffsets:Z

.field mLayoutFromEnd:Z

.field mOffset:I

.field mPosition:I

.field mSpanReferenceLines:[I

.field mValid:Z

.field final synthetic this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/StaggeredGridLayoutManager;)V
    .registers 2
    .param p1, "this$0"    # Landroid/support/v7/widget/StaggeredGridLayoutManager;

    .prologue
    .line 3266
    iput-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3267
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->reset()V

    .line 3268
    return-void
.end method


# virtual methods
.method assignCoordinateFromPadding()V
    .registers 2

    .prologue
    .line 3293
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    .line 3294
    :goto_c
    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    .line 3295
    return-void

    .line 3293
    :cond_f
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    .line 3294
    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    goto :goto_c
.end method

.method assignCoordinateFromPadding(I)V
    .registers 3
    .param p1, "addedDistance"    # I

    .prologue
    .line 3298
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v0, :cond_10

    .line 3299
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    .line 3303
    :goto_f
    return-void

    .line 3301
    :cond_10
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    goto :goto_f
.end method

.method reset()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 3271
    iput v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    .line 3272
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    .line 3273
    iput-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 3274
    iput-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mInvalidateOffsets:Z

    .line 3275
    iput-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mValid:Z

    .line 3276
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mSpanReferenceLines:[I

    if-eqz v0, :cond_17

    .line 3277
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mSpanReferenceLines:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 3279
    :cond_17
    return-void
.end method

.method saveSpanReferenceLines([Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;)V
    .registers 7
    .param p1, "spans"    # [Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    .prologue
    .line 3282
    array-length v1, p1

    .line 3283
    .local v1, "spanCount":I
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mSpanReferenceLines:[I

    if-eqz v2, :cond_a

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mSpanReferenceLines:[I

    array-length v2, v2

    if-ge v2, v1, :cond_13

    .line 3284
    :cond_a
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    array-length v2, v2

    new-array v2, v2, [I

    iput-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mSpanReferenceLines:[I

    .line 3286
    :cond_13
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_14
    if-ge v0, v1, :cond_25

    .line 3288
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mSpanReferenceLines:[I

    aget-object v3, p1, v0

    const/high16 v4, -0x80000000

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v3

    aput v3, v2, v0

    .line 3286
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 3290
    :cond_25
    return-void
.end method
