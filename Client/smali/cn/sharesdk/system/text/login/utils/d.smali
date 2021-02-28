.class public Lcn/sharesdk/system/text/login/utils/d;
.super Ljava/lang/Object;
.source "SizeHelper.java"


# static fields
.field public static a:F

.field public static b:I

.field private static c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 9
    const/high16 v0, 0x3fc00000    # 1.5f

    sput v0, Lcn/sharesdk/system/text/login/utils/d;->a:F

    .line 10
    const/16 v0, 0x21c

    sput v0, Lcn/sharesdk/system/text/login/utils/d;->b:I

    .line 11
    const/4 v0, 0x0

    sput-object v0, Lcn/sharesdk/system/text/login/utils/d;->c:Landroid/content/Context;

    return-void
.end method

.method public static a(I)I
    .registers 3

    .prologue
    .line 29
    sget-object v0, Lcn/sharesdk/system/text/login/utils/d;->c:Landroid/content/Context;

    sget v1, Lcn/sharesdk/system/text/login/utils/d;->a:F

    invoke-static {v0, v1, p0}, Lcom/mob/tools/utils/ResHelper;->designToDevice(Landroid/content/Context;FI)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 19
    sget-object v0, Lcn/sharesdk/system/text/login/utils/d;->c:Landroid/content/Context;

    if-eqz v0, :cond_c

    sget-object v0, Lcn/sharesdk/system/text/login/utils/d;->c:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eq v0, v1, :cond_e

    .line 20
    :cond_c
    sput-object p0, Lcn/sharesdk/system/text/login/utils/d;->c:Landroid/content/Context;

    .line 22
    :cond_e
    return-void
.end method

.method public static b(I)I
    .registers 3

    .prologue
    .line 37
    sget-object v0, Lcn/sharesdk/system/text/login/utils/d;->c:Landroid/content/Context;

    sget v1, Lcn/sharesdk/system/text/login/utils/d;->b:I

    invoke-static {v0, v1, p0}, Lcom/mob/tools/utils/ResHelper;->designToDevice(Landroid/content/Context;II)I

    move-result v0

    return v0
.end method
