.class Lcn/sharesdk/system/text/login/gui/GroupListView$b;
.super Landroid/widget/BaseAdapter;
.source "GroupListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sharesdk/system/text/login/gui/GroupListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:Lcn/sharesdk/system/text/login/gui/GroupListView$a;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/sharesdk/system/text/login/gui/GroupListView$a;)V
    .registers 3

    .prologue
    .line 177
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 178
    iput-object p1, p0, Lcn/sharesdk/system/text/login/gui/GroupListView$b;->a:Lcn/sharesdk/system/text/login/gui/GroupListView$a;

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/system/text/login/gui/GroupListView$b;->b:Ljava/util/ArrayList;

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/system/text/login/gui/GroupListView$b;->c:Ljava/util/ArrayList;

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/system/text/login/gui/GroupListView$b;->d:Ljava/util/ArrayList;

    .line 182
    invoke-direct {p0}, Lcn/sharesdk/system/text/login/gui/GroupListView$b;->a()V

    .line 183
    return-void
.end method

.method static synthetic a(Lcn/sharesdk/system/text/login/gui/GroupListView$b;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 171
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/GroupListView$b;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method private a()V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 186
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/GroupListView$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 187
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/GroupListView$b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 188
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/GroupListView$b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 189
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/GroupListView$b;->a:Lcn/sharesdk/system/text/login/gui/GroupListView$a;

    invoke-virtual {v0}, Lcn/sharesdk/system/text/login/gui/GroupListView$a;->a()I

    move-result v3

    move v2, v1

    :goto_17
    if-ge v2, v3, :cond_61

    .line 190
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/GroupListView$b;->a:Lcn/sharesdk/system/text/login/gui/GroupListView$a;

    invoke-virtual {v0, v2}, Lcn/sharesdk/system/text/login/gui/GroupListView$a;->a(I)I

    move-result v4

    .line 191
    if-lez v4, :cond_5d

    .line 192
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/GroupListView$b;->c:Ljava/util/ArrayList;

    iget-object v5, p0, Lcn/sharesdk/system/text/login/gui/GroupListView$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/GroupListView$b;->b:Ljava/util/ArrayList;

    iget-object v5, p0, Lcn/sharesdk/system/text/login/gui/GroupListView$b;->a:Lcn/sharesdk/system/text/login/gui/GroupListView$a;

    invoke-virtual {v5, v2}, Lcn/sharesdk/system/text/login/gui/GroupListView$a;->b(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    .line 194
    :goto_3c
    if-ge v0, v4, :cond_4c

    .line 195
    iget-object v5, p0, Lcn/sharesdk/system/text/login/gui/GroupListView$b;->b:Ljava/util/ArrayList;

    iget-object v6, p0, Lcn/sharesdk/system/text/login/gui/GroupListView$b;->a:Lcn/sharesdk/system/text/login/gui/GroupListView$a;

    invoke-virtual {v6, v2, v0}, Lcn/sharesdk/system/text/login/gui/GroupListView$a;->b(II)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    .line 197
    :cond_4c
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/GroupListView$b;->d:Ljava/util/ArrayList;

    iget-object v4, p0, Lcn/sharesdk/system/text/login/gui/GroupListView$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    :cond_5d
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_17

    .line 200
    :cond_61
    return-void
.end method


# virtual methods
.method public a(I)I
    .registers 5

    .prologue
    .line 215
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/GroupListView$b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 216
    const/4 v0, 0x0

    move v1, v0

    :goto_8
    if-ge v1, v2, :cond_1f

    .line 217
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/GroupListView$b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 218
    if-ge p1, v0, :cond_1b

    .line 219
    add-int/lit8 v0, v1, -0x1

    .line 222
    :goto_1a
    return v0

    .line 216
    :cond_1b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    .line 222
    :cond_1f
    add-int/lit8 v0, v2, -0x1

    goto :goto_1a
.end method

.method public b(I)Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 226
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/GroupListView$b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    :goto_8
    if-ge v2, v3, :cond_1e

    .line 227
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/GroupListView$b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_1a

    .line 228
    const/4 v0, 0x1

    .line 231
    :goto_19
    return v0

    .line 226
    :cond_1a
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_8

    :cond_1e
    move v0, v1

    .line 231
    goto :goto_19
.end method

.method public c(I)Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 264
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/GroupListView$b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    :goto_8
    if-ge v2, v3, :cond_1e

    .line 265
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/GroupListView$b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_1a

    .line 266
    const/4 v0, 0x1

    .line 269
    :goto_19
    return v0

    .line 264
    :cond_1a
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_8

    :cond_1e
    move v0, v1

    .line 269
    goto :goto_19
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 203
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/GroupListView$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 207
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/GroupListView$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 211
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 239
    invoke-virtual {p0, p1}, Lcn/sharesdk/system/text/login/gui/GroupListView$b;->b(I)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 243
    invoke-virtual {p0, p1}, Lcn/sharesdk/system/text/login/gui/GroupListView$b;->a(I)I

    move-result v1

    .line 244
    invoke-virtual {p0, p1}, Lcn/sharesdk/system/text/login/gui/GroupListView$b;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 245
    if-eqz p2, :cond_13

    .line 246
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/GroupListView$b;->a:Lcn/sharesdk/system/text/login/gui/GroupListView$a;

    invoke-virtual {v0, v1, p2, p3}, Lcn/sharesdk/system/text/login/gui/GroupListView$a;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 255
    :goto_12
    return-object p2

    .line 248
    :cond_13
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/GroupListView$b;->a:Lcn/sharesdk/system/text/login/gui/GroupListView$a;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p3}, Lcn/sharesdk/system/text/login/gui/GroupListView$a;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_12

    .line 252
    :cond_1b
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/GroupListView$b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, p1, v0

    add-int/lit8 v0, v0, -0x1

    .line 253
    iget-object v2, p0, Lcn/sharesdk/system/text/login/gui/GroupListView$b;->a:Lcn/sharesdk/system/text/login/gui/GroupListView$a;

    invoke-virtual {v2, v1, v0, p2, p3}, Lcn/sharesdk/system/text/login/gui/GroupListView$a;->a(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_12
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 235
    const/4 v0, 0x2

    return v0
.end method

.method public notifyDataSetChanged()V
    .registers 1

    .prologue
    .line 259
    invoke-direct {p0}, Lcn/sharesdk/system/text/login/gui/GroupListView$b;->a()V

    .line 260
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 261
    return-void
.end method
