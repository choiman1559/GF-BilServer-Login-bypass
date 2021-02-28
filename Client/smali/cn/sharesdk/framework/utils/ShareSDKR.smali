.class public Lcn/sharesdk/framework/utils/ShareSDKR;
.super Ljava/lang/Object;
.source "ShareSDKR.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAnimRes(Landroid/content/Context;Ljava/lang/String;)I
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resName"    # Ljava/lang/String;

    .prologue
    .line 106
    const-string v0, "anim"

    invoke-static {p0, v0, p1}, Lcn/sharesdk/framework/utils/ShareSDKR;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resName"    # Ljava/lang/String;

    .prologue
    .line 70
    const-string v0, "drawable"

    invoke-static {p0, v0, p1}, Lcn/sharesdk/framework/utils/ShareSDKR;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getColorRes(Landroid/content/Context;Ljava/lang/String;)I
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resName"    # Ljava/lang/String;

    .prologue
    .line 94
    const-string v0, "color"

    invoke-static {p0, v0, p1}, Lcn/sharesdk/framework/utils/ShareSDKR;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getIdRes(Landroid/content/Context;Ljava/lang/String;)I
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resName"    # Ljava/lang/String;

    .prologue
    .line 90
    const-string v0, "id"

    invoke-static {p0, v0, p1}, Lcn/sharesdk/framework/utils/ShareSDKR;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getLayoutRes(Landroid/content/Context;Ljava/lang/String;)I
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resName"    # Ljava/lang/String;

    .prologue
    .line 82
    const-string v0, "layout"

    invoke-static {p0, v0, p1}, Lcn/sharesdk/framework/utils/ShareSDKR;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getPluralsRes(Landroid/content/Context;Ljava/lang/String;)I
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resName"    # Ljava/lang/String;

    .prologue
    .line 102
    const-string v0, "plurals"

    invoke-static {p0, v0, p1}, Lcn/sharesdk/framework/utils/ShareSDKR;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getRawRes(Landroid/content/Context;Ljava/lang/String;)I
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resName"    # Ljava/lang/String;

    .prologue
    .line 98
    const-string v0, "raw"

    invoke-static {p0, v0, p1}, Lcn/sharesdk/framework/utils/ShareSDKR;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resType"    # Ljava/lang/String;
    .param p2, "resName"    # Ljava/lang/String;

    .prologue
    .line 9
    const/4 v0, 0x0

    .line 10
    if-eqz p0, :cond_f

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 66
    :cond_f
    :goto_f
    return v0

    .line 14
    :cond_10
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 15
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2, p1, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 44
    if-gtz v0, :cond_30

    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 49
    :cond_30
    if-gtz v0, :cond_6e

    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ssdk_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 51
    if-gtz v0, :cond_6e

    .line 52
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ssdk_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 56
    :cond_6e
    if-gtz v0, :cond_ac

    .line 57
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ssdk_oks_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 58
    if-gtz v0, :cond_ac

    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ssdk_oks_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 63
    :cond_ac
    if-gtz v0, :cond_f

    .line 64
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to parse "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " resource \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/String;)I

    goto/16 :goto_f
.end method

.method public static getStringArrayRes(Landroid/content/Context;Ljava/lang/String;)I
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resName"    # Ljava/lang/String;

    .prologue
    .line 78
    const-string v0, "array"

    invoke-static {p0, v0, p1}, Lcn/sharesdk/framework/utils/ShareSDKR;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getStringRes(Landroid/content/Context;Ljava/lang/String;)I
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resName"    # Ljava/lang/String;

    .prologue
    .line 74
    const-string v0, "string"

    invoke-static {p0, v0, p1}, Lcn/sharesdk/framework/utils/ShareSDKR;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getStyleRes(Landroid/content/Context;Ljava/lang/String;)I
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resName"    # Ljava/lang/String;

    .prologue
    .line 86
    const-string v0, "style"

    invoke-static {p0, v0, p1}, Lcn/sharesdk/framework/utils/ShareSDKR;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
