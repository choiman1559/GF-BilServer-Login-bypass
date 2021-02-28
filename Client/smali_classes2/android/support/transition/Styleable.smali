.class Landroid/support/transition/Styleable;
.super Ljava/lang/Object;
.source "Styleable.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InlinedApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/transition/Styleable$PatternPathMotion;,
        Landroid/support/transition/Styleable$ArcMotion;,
        Landroid/support/transition/Styleable$TransitionSet;,
        Landroid/support/transition/Styleable$Slide;,
        Landroid/support/transition/Styleable$ChangeTransform;,
        Landroid/support/transition/Styleable$Fade;,
        Landroid/support/transition/Styleable$VisibilityTransition;,
        Landroid/support/transition/Styleable$ChangeBounds;,
        Landroid/support/transition/Styleable$Transition;,
        Landroid/support/transition/Styleable$TransitionManager;,
        Landroid/support/transition/Styleable$TransitionTarget;
    }
.end annotation


# static fields
.field static final ARC_MOTION:[I
    .annotation build Landroid/support/annotation/StyleableRes;
    .end annotation
.end field

.field static final CHANGE_BOUNDS:[I
    .annotation build Landroid/support/annotation/StyleableRes;
    .end annotation
.end field

.field static final CHANGE_TRANSFORM:[I
    .annotation build Landroid/support/annotation/StyleableRes;
    .end annotation
.end field

.field static final FADE:[I
    .annotation build Landroid/support/annotation/StyleableRes;
    .end annotation
.end field

.field static final PATTERN_PATH_MOTION:[I
    .annotation build Landroid/support/annotation/StyleableRes;
    .end annotation
.end field

.field static final SLIDE:[I
    .annotation build Landroid/support/annotation/StyleableRes;
    .end annotation
.end field

.field static final TRANSITION:[I
    .annotation build Landroid/support/annotation/StyleableRes;
    .end annotation
.end field

.field static final TRANSITION_MANAGER:[I
    .annotation build Landroid/support/annotation/StyleableRes;
    .end annotation
.end field

.field static final TRANSITION_SET:[I
    .annotation build Landroid/support/annotation/StyleableRes;
    .end annotation
.end field

.field static final TRANSITION_TARGET:[I
    .annotation build Landroid/support/annotation/StyleableRes;
    .end annotation
.end field

.field static final VISIBILITY_TRANSITION:[I
    .annotation build Landroid/support/annotation/StyleableRes;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 30
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_60

    sput-object v0, Landroid/support/transition/Styleable;->TRANSITION_TARGET:[I

    .line 55
    new-array v0, v4, [I

    fill-array-data v0, :array_70

    sput-object v0, Landroid/support/transition/Styleable;->TRANSITION_MANAGER:[I

    .line 71
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_7a

    sput-object v0, Landroid/support/transition/Styleable;->TRANSITION:[I

    .line 90
    new-array v0, v3, [I

    const v1, 0x10104cf

    aput v1, v0, v2

    sput-object v0, Landroid/support/transition/Styleable;->CHANGE_BOUNDS:[I

    .line 100
    new-array v0, v3, [I

    const v1, 0x101047c

    aput v1, v0, v2

    sput-object v0, Landroid/support/transition/Styleable;->VISIBILITY_TRANSITION:[I

    .line 110
    new-array v0, v3, [I

    const v1, 0x10103e1

    aput v1, v0, v2

    sput-object v0, Landroid/support/transition/Styleable;->FADE:[I

    .line 120
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_86

    sput-object v0, Landroid/support/transition/Styleable;->CHANGE_TRANSFORM:[I

    .line 133
    new-array v0, v3, [I

    const v1, 0x1010430

    aput v1, v0, v2

    sput-object v0, Landroid/support/transition/Styleable;->SLIDE:[I

    .line 143
    new-array v0, v3, [I

    const v1, 0x10103e0

    aput v1, v0, v2

    sput-object v0, Landroid/support/transition/Styleable;->TRANSITION_SET:[I

    .line 153
    new-array v0, v4, [I

    fill-array-data v0, :array_8e

    sput-object v0, Landroid/support/transition/Styleable;->ARC_MOTION:[I

    .line 169
    new-array v0, v3, [I

    const v1, 0x10104ca

    aput v1, v0, v2

    sput-object v0, Landroid/support/transition/Styleable;->PATTERN_PATH_MOTION:[I

    return-void

    .line 30
    :array_60
    .array-data 4
        0x101002f
        0x10103dc
        0x1010441
        0x1010442
        0x101044d
        0x101044e
    .end array-data

    .line 55
    :array_70
    .array-data 4
        0x10103dd
        0x10103de
        0x10103df
    .end array-data

    .line 71
    :array_7a
    .array-data 4
        0x1010141
        0x1010198
        0x10103e2
        0x101044f
    .end array-data

    .line 120
    :array_86
    .array-data 4
        0x10104bc
        0x10104bd
    .end array-data

    .line 153
    :array_8e
    .array-data 4
        0x101047d
        0x101047e
        0x101047f
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    return-void
.end method
