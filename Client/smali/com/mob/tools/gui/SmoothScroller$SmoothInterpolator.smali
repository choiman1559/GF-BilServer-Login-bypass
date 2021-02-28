.class public final enum Lcom/mob/tools/gui/SmoothScroller$SmoothInterpolator;
.super Ljava/lang/Enum;
.source "SmoothScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/tools/gui/SmoothScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SmoothInterpolator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mob/tools/gui/SmoothScroller$SmoothInterpolator;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mob/tools/gui/SmoothScroller$SmoothInterpolator;

.field public static final enum DEFAULT:Lcom/mob/tools/gui/SmoothScroller$SmoothInterpolator;

.field public static final enum OVER_SCROLL:Lcom/mob/tools/gui/SmoothScroller$SmoothInterpolator;


# instance fields
.field private interpolator:Landroid/view/animation/Interpolator;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 12
    new-instance v0, Lcom/mob/tools/gui/SmoothScroller$SmoothInterpolator;

    const-string v1, "DEFAULT"

    invoke-static {}, Lcom/mob/tools/gui/SmoothScroller;->access$000()Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2}, Lcom/mob/tools/gui/SmoothScroller$SmoothInterpolator;-><init>(Ljava/lang/String;ILandroid/view/animation/Interpolator;)V

    sput-object v0, Lcom/mob/tools/gui/SmoothScroller$SmoothInterpolator;->DEFAULT:Lcom/mob/tools/gui/SmoothScroller$SmoothInterpolator;

    .line 13
    new-instance v0, Lcom/mob/tools/gui/SmoothScroller$SmoothInterpolator;

    const-string v1, "OVER_SCROLL"

    invoke-static {}, Lcom/mob/tools/gui/SmoothScroller;->access$100()Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-direct {v0, v1, v4, v2}, Lcom/mob/tools/gui/SmoothScroller$SmoothInterpolator;-><init>(Ljava/lang/String;ILandroid/view/animation/Interpolator;)V

    sput-object v0, Lcom/mob/tools/gui/SmoothScroller$SmoothInterpolator;->OVER_SCROLL:Lcom/mob/tools/gui/SmoothScroller$SmoothInterpolator;

    .line 11
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/mob/tools/gui/SmoothScroller$SmoothInterpolator;

    sget-object v1, Lcom/mob/tools/gui/SmoothScroller$SmoothInterpolator;->DEFAULT:Lcom/mob/tools/gui/SmoothScroller$SmoothInterpolator;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mob/tools/gui/SmoothScroller$SmoothInterpolator;->OVER_SCROLL:Lcom/mob/tools/gui/SmoothScroller$SmoothInterpolator;

    aput-object v1, v0, v4

    sput-object v0, Lcom/mob/tools/gui/SmoothScroller$SmoothInterpolator;->$VALUES:[Lcom/mob/tools/gui/SmoothScroller$SmoothInterpolator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILandroid/view/animation/Interpolator;)V
    .registers 4
    .param p3, "interpolator"    # Landroid/view/animation/Interpolator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/animation/Interpolator;",
            ")V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput-object p3, p0, Lcom/mob/tools/gui/SmoothScroller$SmoothInterpolator;->interpolator:Landroid/view/animation/Interpolator;

    .line 19
    return-void
.end method

.method static synthetic access$200(Lcom/mob/tools/gui/SmoothScroller$SmoothInterpolator;)Landroid/view/animation/Interpolator;
    .registers 2
    .param p0, "x0"    # Lcom/mob/tools/gui/SmoothScroller$SmoothInterpolator;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/mob/tools/gui/SmoothScroller$SmoothInterpolator;->interpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mob/tools/gui/SmoothScroller$SmoothInterpolator;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 11
    const-class v0, Lcom/mob/tools/gui/SmoothScroller$SmoothInterpolator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mob/tools/gui/SmoothScroller$SmoothInterpolator;

    return-object v0
.end method

.method public static values()[Lcom/mob/tools/gui/SmoothScroller$SmoothInterpolator;
    .registers 1

    .prologue
    .line 11
    sget-object v0, Lcom/mob/tools/gui/SmoothScroller$SmoothInterpolator;->$VALUES:[Lcom/mob/tools/gui/SmoothScroller$SmoothInterpolator;

    invoke-virtual {v0}, [Lcom/mob/tools/gui/SmoothScroller$SmoothInterpolator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mob/tools/gui/SmoothScroller$SmoothInterpolator;

    return-object v0
.end method
