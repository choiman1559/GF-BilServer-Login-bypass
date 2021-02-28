.class public final enum Lcom/bsgamesdk/android/presenter/CaptchaMModel$Action;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bsgamesdk/android/presenter/CaptchaMModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bsgamesdk/android/presenter/CaptchaMModel$Action;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum GEETEST:Lcom/bsgamesdk/android/presenter/CaptchaMModel$Action;

.field public static final enum IMG:Lcom/bsgamesdk/android/presenter/CaptchaMModel$Action;

.field private static final synthetic a:[Lcom/bsgamesdk/android/presenter/CaptchaMModel$Action;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/bsgamesdk/android/presenter/CaptchaMModel$Action;

    const-string v1, "GEETEST"

    invoke-direct {v0, v1, v2}, Lcom/bsgamesdk/android/presenter/CaptchaMModel$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bsgamesdk/android/presenter/CaptchaMModel$Action;->GEETEST:Lcom/bsgamesdk/android/presenter/CaptchaMModel$Action;

    new-instance v0, Lcom/bsgamesdk/android/presenter/CaptchaMModel$Action;

    const-string v1, "IMG"

    invoke-direct {v0, v1, v3}, Lcom/bsgamesdk/android/presenter/CaptchaMModel$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bsgamesdk/android/presenter/CaptchaMModel$Action;->IMG:Lcom/bsgamesdk/android/presenter/CaptchaMModel$Action;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/bsgamesdk/android/presenter/CaptchaMModel$Action;

    sget-object v1, Lcom/bsgamesdk/android/presenter/CaptchaMModel$Action;->GEETEST:Lcom/bsgamesdk/android/presenter/CaptchaMModel$Action;

    aput-object v1, v0, v2

    sget-object v1, Lcom/bsgamesdk/android/presenter/CaptchaMModel$Action;->IMG:Lcom/bsgamesdk/android/presenter/CaptchaMModel$Action;

    aput-object v1, v0, v3

    sput-object v0, Lcom/bsgamesdk/android/presenter/CaptchaMModel$Action;->a:[Lcom/bsgamesdk/android/presenter/CaptchaMModel$Action;

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

.method public static valueOf(Ljava/lang/String;)Lcom/bsgamesdk/android/presenter/CaptchaMModel$Action;
    .registers 2

    const-class v0, Lcom/bsgamesdk/android/presenter/CaptchaMModel$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bsgamesdk/android/presenter/CaptchaMModel$Action;

    return-object v0
.end method

.method public static values()[Lcom/bsgamesdk/android/presenter/CaptchaMModel$Action;
    .registers 1

    sget-object v0, Lcom/bsgamesdk/android/presenter/CaptchaMModel$Action;->a:[Lcom/bsgamesdk/android/presenter/CaptchaMModel$Action;

    invoke-virtual {v0}, [Lcom/bsgamesdk/android/presenter/CaptchaMModel$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bsgamesdk/android/presenter/CaptchaMModel$Action;

    return-object v0
.end method
