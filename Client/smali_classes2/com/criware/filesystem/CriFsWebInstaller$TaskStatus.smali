.class public final enum Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;
.super Ljava/lang/Enum;
.source "CriFsWebInstaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/criware/filesystem/CriFsWebInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TaskStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;

.field public static final enum BUSY:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;

.field public static final enum STOP:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;

.field public static final enum STOPPING:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 144
    new-instance v0, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;

    const-string v1, "BUSY"

    invoke-direct {v0, v1, v2}, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;->BUSY:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;

    .line 145
    new-instance v0, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;

    const-string v1, "STOP"

    invoke-direct {v0, v1, v3}, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;->STOP:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;

    .line 146
    new-instance v0, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;

    const-string v1, "STOPPING"

    invoke-direct {v0, v1, v4}, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;->STOPPING:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;

    .line 143
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;

    sget-object v1, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;->BUSY:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;->STOP:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;->STOPPING:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;->$VALUES:[Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;

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
    .line 143
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 143
    const-class v0, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;

    return-object v0
.end method

.method public static values()[Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;
    .registers 1

    .prologue
    .line 143
    sget-object v0, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;->$VALUES:[Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;

    invoke-virtual {v0}, [Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;

    return-object v0
.end method
