.class public final enum Lcom/bsgamesdk/android/widget/AlignTextView$Align;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bsgamesdk/android/widget/AlignTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Align"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bsgamesdk/android/widget/AlignTextView$Align;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ALIGN_CENTER:Lcom/bsgamesdk/android/widget/AlignTextView$Align;

.field public static final enum ALIGN_LEFT:Lcom/bsgamesdk/android/widget/AlignTextView$Align;

.field public static final enum ALIGN_RIGHT:Lcom/bsgamesdk/android/widget/AlignTextView$Align;

.field private static final synthetic a:[Lcom/bsgamesdk/android/widget/AlignTextView$Align;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/bsgamesdk/android/widget/AlignTextView$Align;

    const-string v1, "ALIGN_LEFT"

    invoke-direct {v0, v1, v2}, Lcom/bsgamesdk/android/widget/AlignTextView$Align;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bsgamesdk/android/widget/AlignTextView$Align;->ALIGN_LEFT:Lcom/bsgamesdk/android/widget/AlignTextView$Align;

    new-instance v0, Lcom/bsgamesdk/android/widget/AlignTextView$Align;

    const-string v1, "ALIGN_CENTER"

    invoke-direct {v0, v1, v3}, Lcom/bsgamesdk/android/widget/AlignTextView$Align;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bsgamesdk/android/widget/AlignTextView$Align;->ALIGN_CENTER:Lcom/bsgamesdk/android/widget/AlignTextView$Align;

    new-instance v0, Lcom/bsgamesdk/android/widget/AlignTextView$Align;

    const-string v1, "ALIGN_RIGHT"

    invoke-direct {v0, v1, v4}, Lcom/bsgamesdk/android/widget/AlignTextView$Align;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bsgamesdk/android/widget/AlignTextView$Align;->ALIGN_RIGHT:Lcom/bsgamesdk/android/widget/AlignTextView$Align;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/bsgamesdk/android/widget/AlignTextView$Align;

    sget-object v1, Lcom/bsgamesdk/android/widget/AlignTextView$Align;->ALIGN_LEFT:Lcom/bsgamesdk/android/widget/AlignTextView$Align;

    aput-object v1, v0, v2

    sget-object v1, Lcom/bsgamesdk/android/widget/AlignTextView$Align;->ALIGN_CENTER:Lcom/bsgamesdk/android/widget/AlignTextView$Align;

    aput-object v1, v0, v3

    sget-object v1, Lcom/bsgamesdk/android/widget/AlignTextView$Align;->ALIGN_RIGHT:Lcom/bsgamesdk/android/widget/AlignTextView$Align;

    aput-object v1, v0, v4

    sput-object v0, Lcom/bsgamesdk/android/widget/AlignTextView$Align;->a:[Lcom/bsgamesdk/android/widget/AlignTextView$Align;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bsgamesdk/android/widget/AlignTextView$Align;
    .registers 2

    const-class v0, Lcom/bsgamesdk/android/widget/AlignTextView$Align;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bsgamesdk/android/widget/AlignTextView$Align;

    return-object v0
.end method

.method public static values()[Lcom/bsgamesdk/android/widget/AlignTextView$Align;
    .registers 1

    sget-object v0, Lcom/bsgamesdk/android/widget/AlignTextView$Align;->a:[Lcom/bsgamesdk/android/widget/AlignTextView$Align;

    invoke-virtual {v0}, [Lcom/bsgamesdk/android/widget/AlignTextView$Align;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bsgamesdk/android/widget/AlignTextView$Align;

    return-object v0
.end method
