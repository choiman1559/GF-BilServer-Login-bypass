.class public final enum Lcom/bsgamesdk/android/presenter/PhoneGetMModel$Action;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bsgamesdk/android/presenter/PhoneGetMModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bsgamesdk/android/presenter/PhoneGetMModel$Action;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum FOUR:Lcom/bsgamesdk/android/presenter/PhoneGetMModel$Action;

.field public static final enum ONE:Lcom/bsgamesdk/android/presenter/PhoneGetMModel$Action;

.field public static final enum THREE:Lcom/bsgamesdk/android/presenter/PhoneGetMModel$Action;

.field public static final enum TWO:Lcom/bsgamesdk/android/presenter/PhoneGetMModel$Action;

.field private static final synthetic a:[Lcom/bsgamesdk/android/presenter/PhoneGetMModel$Action;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/bsgamesdk/android/presenter/PhoneGetMModel$Action;

    const-string v1, "ONE"

    invoke-direct {v0, v1, v2}, Lcom/bsgamesdk/android/presenter/PhoneGetMModel$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bsgamesdk/android/presenter/PhoneGetMModel$Action;->ONE:Lcom/bsgamesdk/android/presenter/PhoneGetMModel$Action;

    new-instance v0, Lcom/bsgamesdk/android/presenter/PhoneGetMModel$Action;

    const-string v1, "TWO"

    invoke-direct {v0, v1, v3}, Lcom/bsgamesdk/android/presenter/PhoneGetMModel$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bsgamesdk/android/presenter/PhoneGetMModel$Action;->TWO:Lcom/bsgamesdk/android/presenter/PhoneGetMModel$Action;

    new-instance v0, Lcom/bsgamesdk/android/presenter/PhoneGetMModel$Action;

    const-string v1, "THREE"

    invoke-direct {v0, v1, v4}, Lcom/bsgamesdk/android/presenter/PhoneGetMModel$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bsgamesdk/android/presenter/PhoneGetMModel$Action;->THREE:Lcom/bsgamesdk/android/presenter/PhoneGetMModel$Action;

    new-instance v0, Lcom/bsgamesdk/android/presenter/PhoneGetMModel$Action;

    const-string v1, "FOUR"

    invoke-direct {v0, v1, v5}, Lcom/bsgamesdk/android/presenter/PhoneGetMModel$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bsgamesdk/android/presenter/PhoneGetMModel$Action;->FOUR:Lcom/bsgamesdk/android/presenter/PhoneGetMModel$Action;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/bsgamesdk/android/presenter/PhoneGetMModel$Action;

    sget-object v1, Lcom/bsgamesdk/android/presenter/PhoneGetMModel$Action;->ONE:Lcom/bsgamesdk/android/presenter/PhoneGetMModel$Action;

    aput-object v1, v0, v2

    sget-object v1, Lcom/bsgamesdk/android/presenter/PhoneGetMModel$Action;->TWO:Lcom/bsgamesdk/android/presenter/PhoneGetMModel$Action;

    aput-object v1, v0, v3

    sget-object v1, Lcom/bsgamesdk/android/presenter/PhoneGetMModel$Action;->THREE:Lcom/bsgamesdk/android/presenter/PhoneGetMModel$Action;

    aput-object v1, v0, v4

    sget-object v1, Lcom/bsgamesdk/android/presenter/PhoneGetMModel$Action;->FOUR:Lcom/bsgamesdk/android/presenter/PhoneGetMModel$Action;

    aput-object v1, v0, v5

    sput-object v0, Lcom/bsgamesdk/android/presenter/PhoneGetMModel$Action;->a:[Lcom/bsgamesdk/android/presenter/PhoneGetMModel$Action;

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

.method public static valueOf(Ljava/lang/String;)Lcom/bsgamesdk/android/presenter/PhoneGetMModel$Action;
    .registers 2

    const-class v0, Lcom/bsgamesdk/android/presenter/PhoneGetMModel$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bsgamesdk/android/presenter/PhoneGetMModel$Action;

    return-object v0
.end method

.method public static values()[Lcom/bsgamesdk/android/presenter/PhoneGetMModel$Action;
    .registers 1

    sget-object v0, Lcom/bsgamesdk/android/presenter/PhoneGetMModel$Action;->a:[Lcom/bsgamesdk/android/presenter/PhoneGetMModel$Action;

    invoke-virtual {v0}, [Lcom/bsgamesdk/android/presenter/PhoneGetMModel$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bsgamesdk/android/presenter/PhoneGetMModel$Action;

    return-object v0
.end method
