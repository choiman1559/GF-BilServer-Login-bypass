.class public Lcn/sharesdk/system/text/login/gui/a;
.super Lcn/sharesdk/system/text/login/gui/GroupListView$a;
.source "CountryAdapter.java"


# instance fields
.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Character;",
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private e:Lcn/sharesdk/system/text/login/utils/c;

.field private f:Ljava/lang/String;

.field private g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Character;",
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/sharesdk/system/text/login/gui/GroupListView;)V
    .registers 3

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcn/sharesdk/system/text/login/gui/GroupListView$a;-><init>(Lcn/sharesdk/system/text/login/gui/GroupListView;)V

    .line 34
    invoke-virtual {p0}, Lcn/sharesdk/system/text/login/gui/a;->b()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/system/text/login/gui/a;->b:Ljava/util/HashMap;

    .line 35
    invoke-direct {p0}, Lcn/sharesdk/system/text/login/gui/a;->d()V

    .line 36
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/sharesdk/system/text/login/gui/a;->a(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method private d()V
    .registers 6

    .prologue
    .line 40
    new-instance v0, Lcn/sharesdk/system/text/login/utils/c;

    invoke-direct {v0}, Lcn/sharesdk/system/text/login/utils/c;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/system/text/login/gui/a;->e:Lcn/sharesdk/system/text/login/utils/c;

    .line 41
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 42
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/a;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 43
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 44
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 45
    const/4 v4, 0x0

    aget-object v0, v0, v4

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    .line 48
    :cond_3f
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/a;->e:Lcn/sharesdk/system/text/login/utils/c;

    invoke-virtual {v0, v1}, Lcn/sharesdk/system/text/login/utils/c;->a(Ljava/util/ArrayList;)V

    .line 49
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/a;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_5
.end method

.method public a(I)I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 90
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/a;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_7

    move v0, v1

    .line 99
    :goto_6
    return v0

    .line 94
    :cond_7
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 95
    if-nez v0, :cond_13

    move v0, v1

    .line 96
    goto :goto_6

    .line 99
    :cond_13
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_6
.end method

.method public a(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 203
    if-nez p3, :cond_57

    .line 204
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 205
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 208
    invoke-virtual {p4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/sharesdk/system/text/login/utils/d;->a(Landroid/content/Context;)V

    .line 210
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 211
    const v2, -0xcacacb

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 212
    const/16 v2, 0x18

    invoke-static {v2}, Lcn/sharesdk/system/text/login/utils/d;->b(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 213
    const/16 v2, 0x1e

    invoke-static {v2}, Lcn/sharesdk/system/text/login/utils/d;->b(I)I

    move-result v2

    .line 214
    invoke-virtual {v0, v4, v2, v4, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 215
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    :goto_42
    invoke-virtual {p0, p1, p2}, Lcn/sharesdk/system/text/login/gui/a;->a(II)[Ljava/lang/String;

    move-result-object v2

    .line 220
    if-eqz v2, :cond_56

    move-object v0, v1

    .line 221
    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 222
    aget-object v2, v2, v4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    :cond_56
    return-object v1

    :cond_57
    move-object v1, p3

    goto :goto_42
.end method

.method public a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 167
    if-nez p2, :cond_71

    .line 168
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 169
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 170
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 173
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/sharesdk/system/text/login/utils/d;->a(Landroid/content/Context;)V

    .line 175
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 176
    const/16 v2, 0x10

    invoke-static {v2}, Lcn/sharesdk/system/text/login/utils/d;->b(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 177
    const v2, -0x666667

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 178
    const/16 v2, 0xe

    invoke-static {v2}, Lcn/sharesdk/system/text/login/utils/d;->b(I)I

    move-result v2

    .line 179
    invoke-virtual {v0, v4, v2, v4, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 180
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 184
    new-instance v0, Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 185
    const v2, -0x1c1c1d

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 186
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    :goto_60
    invoke-virtual {p0, p1}, Lcn/sharesdk/system/text/login/gui/a;->b(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v1

    .line 190
    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 191
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    return-object v1

    :cond_71
    move-object v1, p2

    goto :goto_60
.end method

.method public a(Landroid/view/View;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 197
    check-cast p1, Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 198
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 11

    .prologue
    const/4 v3, 0x0

    .line 56
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/a;->e:Lcn/sharesdk/system/text/login/utils/c;

    invoke-virtual {v0, p1}, Lcn/sharesdk/system/text/login/utils/c;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 58
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_97

    .line 59
    :cond_f
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 60
    const/4 v0, 0x1

    move v2, v0

    move-object v0, v1

    .line 63
    :goto_17
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 64
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 65
    invoke-virtual {v4, v0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_20

    .line 68
    :cond_30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/system/text/login/gui/a;->c:Ljava/util/ArrayList;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/system/text/login/gui/a;->d:Ljava/util/ArrayList;

    .line 70
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/a;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_48
    :goto_48
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_96

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 71
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 72
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 73
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_63
    :goto_63
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 74
    if-nez v2, :cond_79

    aget-object v8, v1, v3

    invoke-virtual {v4, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_63

    .line 75
    :cond_79
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_63

    .line 78
    :cond_7d
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_48

    .line 79
    iget-object v1, p0, Lcn/sharesdk/system/text/login/gui/a;->c:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_48

    .line 83
    :cond_96
    return-void

    :cond_97
    move v2, v3

    goto/16 :goto_17
.end method

.method public a(II)[Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 111
    .line 112
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_22

    .line 114
    :try_start_9
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_17} :catch_18

    .line 120
    :goto_17
    return-object v0

    .line 115
    :catch_18
    move-exception v0

    .line 116
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_17

    :cond_22
    move-object v0, v1

    .line 120
    goto :goto_17
.end method

.method public synthetic b(II)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 24
    invoke-virtual {p0, p1, p2}, Lcn/sharesdk/system/text/login/gui/a;->a(II)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 103
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_15

    .line 104
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    :goto_14
    return-object v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public b()Ljava/util/HashMap;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Character;",
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 125
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getAppLanguage()Ljava/lang/String;

    move-result-object v0

    .line 126
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "appLanguage:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v5}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 127
    if-eqz v0, :cond_38

    iget-object v1, p0, Lcn/sharesdk/system/text/login/gui/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    .line 128
    iput-object v0, p0, Lcn/sharesdk/system/text/login/gui/a;->f:Ljava/lang/String;

    .line 129
    iput-object v2, p0, Lcn/sharesdk/system/text/login/gui/a;->g:Ljava/util/HashMap;

    .line 132
    :cond_38
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/a;->g:Ljava/util/HashMap;

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/a;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_47

    .line 133
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/a;->g:Ljava/util/HashMap;

    .line 162
    :goto_46
    return-object v0

    .line 137
    :cond_47
    const/16 v0, 0x41

    move v5, v0

    move-object v0, v2

    :goto_4b
    const/16 v1, 0x5a

    if-gt v5, v1, :cond_ae

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "smssdk_country_group_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 139
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/mob/tools/utils/ResHelper;->getStringArrayRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 140
    if-lez v1, :cond_a9

    .line 141
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 143
    if-eqz v6, :cond_98

    .line 144
    array-length v7, v6

    move v3, v4

    move-object v1, v2

    :goto_81
    if-ge v3, v7, :cond_99

    aget-object v8, v6, v3

    .line 145
    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 146
    if-nez v1, :cond_92

    .line 147
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 149
    :cond_92
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    add-int/lit8 v3, v3, 0x1

    goto :goto_81

    :cond_98
    move-object v1, v2

    .line 152
    :cond_99
    if-eqz v1, :cond_a9

    .line 153
    if-nez v0, :cond_a2

    .line 154
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 156
    :cond_a2
    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    :cond_a9
    add-int/lit8 v1, v5, 0x1

    int-to-char v1, v1

    move v5, v1

    goto :goto_4b

    .line 161
    :cond_ae
    iput-object v0, p0, Lcn/sharesdk/system/text/login/gui/a;->g:Ljava/util/HashMap;

    .line 162
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/a;->g:Ljava/util/HashMap;

    goto :goto_46
.end method
