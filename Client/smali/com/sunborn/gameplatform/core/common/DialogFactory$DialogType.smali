.class public final enum Lcom/sunborn/gameplatform/core/common/DialogFactory$DialogType;
.super Ljava/lang/Enum;
.source "DialogFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunborn/gameplatform/core/common/DialogFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DialogType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sunborn/gameplatform/core/common/DialogFactory$DialogType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sunborn/gameplatform/core/common/DialogFactory$DialogType;

.field public static final enum LOADING:Lcom/sunborn/gameplatform/core/common/DialogFactory$DialogType;

.field public static final enum MSG:Lcom/sunborn/gameplatform/core/common/DialogFactory$DialogType;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 40
    new-instance v0, Lcom/sunborn/gameplatform/core/common/DialogFactory$DialogType;

    const-string v1, "LOADING"

    invoke-direct {v0, v1, v2}, Lcom/sunborn/gameplatform/core/common/DialogFactory$DialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sunborn/gameplatform/core/common/DialogFactory$DialogType;->LOADING:Lcom/sunborn/gameplatform/core/common/DialogFactory$DialogType;

    new-instance v0, Lcom/sunborn/gameplatform/core/common/DialogFactory$DialogType;

    const-string v1, "MSG"

    invoke-direct {v0, v1, v3}, Lcom/sunborn/gameplatform/core/common/DialogFactory$DialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sunborn/gameplatform/core/common/DialogFactory$DialogType;->MSG:Lcom/sunborn/gameplatform/core/common/DialogFactory$DialogType;

    .line 39
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sunborn/gameplatform/core/common/DialogFactory$DialogType;

    sget-object v1, Lcom/sunborn/gameplatform/core/common/DialogFactory$DialogType;->LOADING:Lcom/sunborn/gameplatform/core/common/DialogFactory$DialogType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sunborn/gameplatform/core/common/DialogFactory$DialogType;->MSG:Lcom/sunborn/gameplatform/core/common/DialogFactory$DialogType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sunborn/gameplatform/core/common/DialogFactory$DialogType;->$VALUES:[Lcom/sunborn/gameplatform/core/common/DialogFactory$DialogType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sunborn/gameplatform/core/common/DialogFactory$DialogType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 39
    const-class v0, Lcom/sunborn/gameplatform/core/common/DialogFactory$DialogType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sunborn/gameplatform/core/common/DialogFactory$DialogType;

    return-object v0
.end method

.method public static values()[Lcom/sunborn/gameplatform/core/common/DialogFactory$DialogType;
    .registers 1

    .prologue
    .line 39
    sget-object v0, Lcom/sunborn/gameplatform/core/common/DialogFactory$DialogType;->$VALUES:[Lcom/sunborn/gameplatform/core/common/DialogFactory$DialogType;

    invoke-virtual {v0}, [Lcom/sunborn/gameplatform/core/common/DialogFactory$DialogType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sunborn/gameplatform/core/common/DialogFactory$DialogType;

    return-object v0
.end method
