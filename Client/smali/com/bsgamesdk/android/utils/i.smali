.class public Lcom/bsgamesdk/android/utils/i;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bsgamesdk/android/utils/i$b;,
        Lcom/bsgamesdk/android/utils/i$f;,
        Lcom/bsgamesdk/android/utils/i$a;,
        Lcom/bsgamesdk/android/utils/i$c;,
        Lcom/bsgamesdk/android/utils/i$d;,
        Lcom/bsgamesdk/android/utils/i$e;
    }
.end annotation


# direct methods
.method public static a(Ljava/util/Map;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const-string v1, ""

    const/4 v0, 0x0

    move-object v2, v1

    move v1, v0

    :goto_11
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_38

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_11

    :cond_38
    return-object v2
.end method

.method private static a(Landroid/content/Context;Landroid/view/View;)V
    .registers 4

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method

.method public static varargs a(Landroid/content/Context;[Landroid/view/View;)V
    .registers 5

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1c

    array-length v1, p1

    if-le v1, v0, :cond_1c

    aget-object v1, p1, v2

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    :goto_c
    array-length v1, p1

    if-ge v0, v1, :cond_17

    aget-object v1, p1, v0

    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_17
    aget-object v0, p1, v2

    invoke-static {p0, v0}, Lcom/bsgamesdk/android/utils/i;->a(Landroid/content/Context;Landroid/view/View;)V

    :cond_1c
    return-void
.end method

.method public static a(II)Z
    .registers 5

    const/4 v0, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x1

    if-eq p0, v2, :cond_7

    if-ne p1, v2, :cond_d

    :cond_7
    sget-boolean v2, Lcom/bsgamesdk/android/model/c;->x:Z

    if-eqz v2, :cond_c

    move v0, v1

    :cond_c
    :goto_c
    return v0

    :cond_d
    if-ne p1, v1, :cond_11

    if-eq p0, v1, :cond_c

    :cond_11
    move v0, v1

    goto :goto_c
.end method

.method public static a(Landroid/content/Context;Landroid/widget/EditText;Landroid/widget/EditText;)Z
    .registers 8

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2d

    const-string v1, "\u59d3\u540d\u672a\u586b\u5199"

    invoke-static {p0, v1}, Lcom/bsgamesdk/android/utils/y;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_2c
    return v0

    :cond_2d
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_39

    const-string v1, "\u8eab\u4efd\u8bc1\u53f7\u7801\u672a\u586b\u5199"

    invoke-static {p0, v1}, Lcom/bsgamesdk/android/utils/y;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2c

    :cond_39
    const/4 v0, 0x1

    goto :goto_2c
.end method

.method public static a(Landroid/content/Context;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Z)Z
    .registers 14

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\n"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\n"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_57

    const-string v2, "\u8bf7\u8f93\u5165\u624b\u673a\u53f7"

    invoke-static {p0, v2}, Lcom/bsgamesdk/android/utils/y;->a(Landroid/content/Context;Ljava/lang/String;)V

    new-array v2, v8, [Landroid/view/View;

    aput-object p1, v2, v0

    aput-object p2, v2, v1

    aput-object p3, v2, v7

    invoke-static {p0, v2}, Lcom/bsgamesdk/android/utils/i;->a(Landroid/content/Context;[Landroid/view/View;)V

    :goto_56
    return v0

    :cond_57
    sget-object v5, Lcom/bsgamesdk/android/b;->b:Lcom/bsgamesdk/android/dynamic/IUtils;

    invoke-interface {v5, v2}, Lcom/bsgamesdk/android/dynamic/IUtils;->checkPhone(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_70

    const-string v2, "\u624b\u673a\u53f7\u683c\u5f0f\u4e0d\u6b63\u786e\uff0c\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u624b\u673a\u53f7"

    invoke-static {p0, v2}, Lcom/bsgamesdk/android/utils/y;->a(Landroid/content/Context;Ljava/lang/String;)V

    new-array v2, v8, [Landroid/view/View;

    aput-object p1, v2, v0

    aput-object p2, v2, v1

    aput-object p3, v2, v7

    invoke-static {p0, v2}, Lcom/bsgamesdk/android/utils/i;->a(Landroid/content/Context;[Landroid/view/View;)V

    goto :goto_56

    :cond_70
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_87

    const-string v2, "\u8bf7\u8f93\u5165\u9a8c\u8bc1\u7801"

    invoke-static {p0, v2}, Lcom/bsgamesdk/android/utils/y;->a(Landroid/content/Context;Ljava/lang/String;)V

    new-array v2, v8, [Landroid/view/View;

    aput-object p2, v2, v0

    aput-object p1, v2, v1

    aput-object p3, v2, v7

    invoke-static {p0, v2}, Lcom/bsgamesdk/android/utils/i;->a(Landroid/content/Context;[Landroid/view/View;)V

    goto :goto_56

    :cond_87
    sget-object v2, Lcom/bsgamesdk/android/b;->b:Lcom/bsgamesdk/android/dynamic/IUtils;

    invoke-interface {v2, v3}, Lcom/bsgamesdk/android/dynamic/IUtils;->checkCaptcha(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a0

    const-string v2, "\u9a8c\u8bc1\u7801\u683c\u5f0f\u4e0d\u6b63\u786e\uff0c\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u9a8c\u8bc1\u7801"

    invoke-static {p0, v2}, Lcom/bsgamesdk/android/utils/y;->a(Landroid/content/Context;Ljava/lang/String;)V

    new-array v2, v8, [Landroid/view/View;

    aput-object p2, v2, v0

    aput-object p1, v2, v1

    aput-object p3, v2, v7

    invoke-static {p0, v2}, Lcom/bsgamesdk/android/utils/i;->a(Landroid/content/Context;[Landroid/view/View;)V

    goto :goto_56

    :cond_a0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_b7

    const-string v2, "\u8bf7\u8f93\u5165\u5bc6\u7801"

    invoke-static {p0, v2}, Lcom/bsgamesdk/android/utils/y;->a(Landroid/content/Context;Ljava/lang/String;)V

    new-array v2, v8, [Landroid/view/View;

    aput-object p3, v2, v0

    aput-object p1, v2, v1

    aput-object p2, v2, v7

    invoke-static {p0, v2}, Lcom/bsgamesdk/android/utils/i;->a(Landroid/content/Context;[Landroid/view/View;)V

    goto :goto_56

    :cond_b7
    sget-object v2, Lcom/bsgamesdk/android/b;->b:Lcom/bsgamesdk/android/dynamic/IUtils;

    invoke-interface {v2, v4}, Lcom/bsgamesdk/android/dynamic/IUtils;->checkPassword(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d0

    const-string v2, "\u5bc6\u7801\u683c\u5f0f\u4e0d\u6b63\u786e\uff0c\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u5bc6\u7801"

    invoke-static {p0, v2}, Lcom/bsgamesdk/android/utils/y;->a(Landroid/content/Context;Ljava/lang/String;)V

    new-array v2, v8, [Landroid/view/View;

    aput-object p3, v2, v0

    aput-object p1, v2, v1

    aput-object p2, v2, v7

    invoke-static {p0, v2}, Lcom/bsgamesdk/android/utils/i;->a(Landroid/content/Context;[Landroid/view/View;)V

    goto :goto_56

    :cond_d0
    if-nez p4, :cond_d9

    const-string v1, "\u60a8\u6ca1\u6709\u540c\u610f\u6211\u4eec\u7684\u670d\u52a1\u6761\u6b3e"

    invoke-static {p0, v1}, Lcom/bsgamesdk/android/utils/y;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_56

    :cond_d9
    move v0, v1

    goto/16 :goto_56
.end method

.method public static a(Landroid/content/Context;Landroid/widget/TextView;)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_29

    const-string v2, "\u8bf7\u8f93\u5165\u624b\u673a\u53f7"

    invoke-static {p0, v2}, Lcom/bsgamesdk/android/utils/y;->a(Landroid/content/Context;Ljava/lang/String;)V

    new-array v1, v1, [Landroid/view/View;

    aput-object p1, v1, v0

    invoke-static {p0, v1}, Lcom/bsgamesdk/android/utils/i;->a(Landroid/content/Context;[Landroid/view/View;)V

    :goto_28
    return v0

    :cond_29
    sget-object v3, Lcom/bsgamesdk/android/b;->b:Lcom/bsgamesdk/android/dynamic/IUtils;

    invoke-interface {v3, v2}, Lcom/bsgamesdk/android/dynamic/IUtils;->checkPhone(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3e

    const-string v2, "\u624b\u673a\u53f7\u683c\u5f0f\u4e0d\u6b63\u786e\uff0c\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u624b\u673a\u53f7"

    invoke-static {p0, v2}, Lcom/bsgamesdk/android/utils/y;->a(Landroid/content/Context;Ljava/lang/String;)V

    new-array v1, v1, [Landroid/view/View;

    aput-object p1, v1, v0

    invoke-static {p0, v1}, Lcom/bsgamesdk/android/utils/i;->a(Landroid/content/Context;[Landroid/view/View;)V

    goto :goto_28

    :cond_3e
    move v0, v1

    goto :goto_28
.end method

.method public static b(Ljava/util/Map;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {p0}, Lcom/bsgamesdk/android/utils/i;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    sget-object v1, Lcom/bsgamesdk/android/model/c;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/utils/p;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
