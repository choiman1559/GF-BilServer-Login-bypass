.class Landroid/support/v7/widget/ViewBoundsCheck;
.super Ljava/lang/Object;
.source "ViewBoundsCheck.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/ViewBoundsCheck$Callback;,
        Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;,
        Landroid/support/v7/widget/ViewBoundsCheck$ViewBounds;
    }
.end annotation


# static fields
.field static final CVE_PVE_POS:I = 0xc

.field static final CVE_PVS_POS:I = 0x8

.field static final CVS_PVE_POS:I = 0x4

.field static final CVS_PVS_POS:I = 0x0

.field static final EQ:I = 0x2

.field static final FLAG_CVE_EQ_PVE:I = 0x2000

.field static final FLAG_CVE_EQ_PVS:I = 0x200

.field static final FLAG_CVE_GT_PVE:I = 0x1000

.field static final FLAG_CVE_GT_PVS:I = 0x100

.field static final FLAG_CVE_LT_PVE:I = 0x4000

.field static final FLAG_CVE_LT_PVS:I = 0x400

.field static final FLAG_CVS_EQ_PVE:I = 0x20

.field static final FLAG_CVS_EQ_PVS:I = 0x2

.field static final FLAG_CVS_GT_PVE:I = 0x10

.field static final FLAG_CVS_GT_PVS:I = 0x1

.field static final FLAG_CVS_LT_PVE:I = 0x40

.field static final FLAG_CVS_LT_PVS:I = 0x4

.field static final GT:I = 0x1

.field static final LT:I = 0x4

.field static final MASK:I = 0x7


# instance fields
.field mBoundFlags:Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;

.field final mCallback:Landroid/support/v7/widget/ViewBoundsCheck$Callback;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/ViewBoundsCheck$Callback;)V
    .registers 3
    .param p1, "callback"    # Landroid/support/v7/widget/ViewBoundsCheck$Callback;

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p1, p0, Landroid/support/v7/widget/ViewBoundsCheck;->mCallback:Landroid/support/v7/widget/ViewBoundsCheck$Callback;

    .line 133
    new-instance v0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;

    invoke-direct {v0}, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ViewBoundsCheck;->mBoundFlags:Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;

    .line 134
    return-void
.end method


# virtual methods
.method findOneViewWithinBoundFlags(IIII)Landroid/view/View;
    .registers 14
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "preferredBoundFlags"    # I
    .param p4, "acceptableBoundFlags"    # I

    .prologue
    .line 217
    iget-object v8, p0, Landroid/support/v7/widget/ViewBoundsCheck;->mCallback:Landroid/support/v7/widget/ViewBoundsCheck$Callback;

    invoke-interface {v8}, Landroid/support/v7/widget/ViewBoundsCheck$Callback;->getParentStart()I

    move-result v7

    .line 218
    .local v7, "start":I
    iget-object v8, p0, Landroid/support/v7/widget/ViewBoundsCheck;->mCallback:Landroid/support/v7/widget/ViewBoundsCheck$Callback;

    invoke-interface {v8}, Landroid/support/v7/widget/ViewBoundsCheck$Callback;->getParentEnd()I

    move-result v4

    .line 219
    .local v4, "end":I
    if-le p2, p1, :cond_3f

    const/4 v6, 0x1

    .line 220
    .local v6, "next":I
    :goto_f
    const/4 v0, 0x0

    .line 221
    .local v0, "acceptableMatch":Landroid/view/View;
    move v5, p1

    .local v5, "i":I
    :goto_11
    if-eq v5, p2, :cond_58

    .line 222
    iget-object v8, p0, Landroid/support/v7/widget/ViewBoundsCheck;->mCallback:Landroid/support/v7/widget/ViewBoundsCheck$Callback;

    invoke-interface {v8, v5}, Landroid/support/v7/widget/ViewBoundsCheck$Callback;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 223
    .local v1, "child":Landroid/view/View;
    iget-object v8, p0, Landroid/support/v7/widget/ViewBoundsCheck;->mCallback:Landroid/support/v7/widget/ViewBoundsCheck$Callback;

    invoke-interface {v8, v1}, Landroid/support/v7/widget/ViewBoundsCheck$Callback;->getChildStart(Landroid/view/View;)I

    move-result v3

    .line 224
    .local v3, "childStart":I
    iget-object v8, p0, Landroid/support/v7/widget/ViewBoundsCheck;->mCallback:Landroid/support/v7/widget/ViewBoundsCheck$Callback;

    invoke-interface {v8, v1}, Landroid/support/v7/widget/ViewBoundsCheck$Callback;->getChildEnd(Landroid/view/View;)I

    move-result v2

    .line 225
    .local v2, "childEnd":I
    iget-object v8, p0, Landroid/support/v7/widget/ViewBoundsCheck;->mBoundFlags:Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;

    invoke-virtual {v8, v7, v4, v3, v2}, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->setBounds(IIII)V

    .line 226
    if-eqz p3, :cond_41

    .line 227
    iget-object v8, p0, Landroid/support/v7/widget/ViewBoundsCheck;->mBoundFlags:Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;

    invoke-virtual {v8}, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->resetFlags()V

    .line 228
    iget-object v8, p0, Landroid/support/v7/widget/ViewBoundsCheck;->mBoundFlags:Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;

    invoke-virtual {v8, p3}, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->addFlags(I)V

    .line 229
    iget-object v8, p0, Landroid/support/v7/widget/ViewBoundsCheck;->mBoundFlags:Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;

    invoke-virtual {v8}, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->boundsMatch()Z

    move-result v8

    if-eqz v8, :cond_41

    .line 242
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childEnd":I
    .end local v3    # "childStart":I
    :goto_3e
    return-object v1

    .line 219
    .end local v0    # "acceptableMatch":Landroid/view/View;
    .end local v5    # "i":I
    .end local v6    # "next":I
    :cond_3f
    const/4 v6, -0x1

    goto :goto_f

    .line 234
    .restart local v0    # "acceptableMatch":Landroid/view/View;
    .restart local v1    # "child":Landroid/view/View;
    .restart local v2    # "childEnd":I
    .restart local v3    # "childStart":I
    .restart local v5    # "i":I
    .restart local v6    # "next":I
    :cond_41
    if-eqz p4, :cond_56

    .line 235
    iget-object v8, p0, Landroid/support/v7/widget/ViewBoundsCheck;->mBoundFlags:Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;

    invoke-virtual {v8}, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->resetFlags()V

    .line 236
    iget-object v8, p0, Landroid/support/v7/widget/ViewBoundsCheck;->mBoundFlags:Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;

    invoke-virtual {v8, p4}, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->addFlags(I)V

    .line 237
    iget-object v8, p0, Landroid/support/v7/widget/ViewBoundsCheck;->mBoundFlags:Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;

    invoke-virtual {v8}, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->boundsMatch()Z

    move-result v8

    if-eqz v8, :cond_56

    .line 238
    move-object v0, v1

    .line 221
    :cond_56
    add-int/2addr v5, v6

    goto :goto_11

    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childEnd":I
    .end local v3    # "childStart":I
    :cond_58
    move-object v1, v0

    .line 242
    goto :goto_3e
.end method

.method isViewWithinBoundFlags(Landroid/view/View;I)Z
    .registers 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "boundsFlags"    # I

    .prologue
    .line 252
    iget-object v0, p0, Landroid/support/v7/widget/ViewBoundsCheck;->mBoundFlags:Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;

    iget-object v1, p0, Landroid/support/v7/widget/ViewBoundsCheck;->mCallback:Landroid/support/v7/widget/ViewBoundsCheck$Callback;

    invoke-interface {v1}, Landroid/support/v7/widget/ViewBoundsCheck$Callback;->getParentStart()I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/ViewBoundsCheck;->mCallback:Landroid/support/v7/widget/ViewBoundsCheck$Callback;

    invoke-interface {v2}, Landroid/support/v7/widget/ViewBoundsCheck$Callback;->getParentEnd()I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/ViewBoundsCheck;->mCallback:Landroid/support/v7/widget/ViewBoundsCheck$Callback;

    .line 253
    invoke-interface {v3, p1}, Landroid/support/v7/widget/ViewBoundsCheck$Callback;->getChildStart(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/widget/ViewBoundsCheck;->mCallback:Landroid/support/v7/widget/ViewBoundsCheck$Callback;

    invoke-interface {v4, p1}, Landroid/support/v7/widget/ViewBoundsCheck$Callback;->getChildEnd(Landroid/view/View;)I

    move-result v4

    .line 252
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->setBounds(IIII)V

    .line 254
    if-eqz p2, :cond_30

    .line 255
    iget-object v0, p0, Landroid/support/v7/widget/ViewBoundsCheck;->mBoundFlags:Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;

    invoke-virtual {v0}, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->resetFlags()V

    .line 256
    iget-object v0, p0, Landroid/support/v7/widget/ViewBoundsCheck;->mBoundFlags:Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->addFlags(I)V

    .line 257
    iget-object v0, p0, Landroid/support/v7/widget/ViewBoundsCheck;->mBoundFlags:Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;

    invoke-virtual {v0}, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->boundsMatch()Z

    move-result v0

    .line 259
    :goto_2f
    return v0

    :cond_30
    const/4 v0, 0x0

    goto :goto_2f
.end method
