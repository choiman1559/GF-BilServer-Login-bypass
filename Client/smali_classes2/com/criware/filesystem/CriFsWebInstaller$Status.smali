.class public final enum Lcom/criware/filesystem/CriFsWebInstaller$Status;
.super Ljava/lang/Enum;
.source "CriFsWebInstaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/criware/filesystem/CriFsWebInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/criware/filesystem/CriFsWebInstaller$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/criware/filesystem/CriFsWebInstaller$Status;

.field public static final enum CRIFSWEBINSTALLER_STATUS_BUSY:Lcom/criware/filesystem/CriFsWebInstaller$Status;

.field public static final enum CRIFSWEBINSTALLER_STATUS_COMPLETE:Lcom/criware/filesystem/CriFsWebInstaller$Status;

.field public static final enum CRIFSWEBINSTALLER_STATUS_ERROR:Lcom/criware/filesystem/CriFsWebInstaller$Status;

.field public static final enum CRIFSWEBINSTALLER_STATUS_STOP:Lcom/criware/filesystem/CriFsWebInstaller$Status;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 45
    new-instance v0, Lcom/criware/filesystem/CriFsWebInstaller$Status;

    const-string v1, "CRIFSWEBINSTALLER_STATUS_STOP"

    invoke-direct {v0, v1, v2, v2}, Lcom/criware/filesystem/CriFsWebInstaller$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/criware/filesystem/CriFsWebInstaller$Status;->CRIFSWEBINSTALLER_STATUS_STOP:Lcom/criware/filesystem/CriFsWebInstaller$Status;

    .line 46
    new-instance v0, Lcom/criware/filesystem/CriFsWebInstaller$Status;

    const-string v1, "CRIFSWEBINSTALLER_STATUS_BUSY"

    invoke-direct {v0, v1, v3, v3}, Lcom/criware/filesystem/CriFsWebInstaller$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/criware/filesystem/CriFsWebInstaller$Status;->CRIFSWEBINSTALLER_STATUS_BUSY:Lcom/criware/filesystem/CriFsWebInstaller$Status;

    .line 47
    new-instance v0, Lcom/criware/filesystem/CriFsWebInstaller$Status;

    const-string v1, "CRIFSWEBINSTALLER_STATUS_COMPLETE"

    invoke-direct {v0, v1, v4, v4}, Lcom/criware/filesystem/CriFsWebInstaller$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/criware/filesystem/CriFsWebInstaller$Status;->CRIFSWEBINSTALLER_STATUS_COMPLETE:Lcom/criware/filesystem/CriFsWebInstaller$Status;

    .line 48
    new-instance v0, Lcom/criware/filesystem/CriFsWebInstaller$Status;

    const-string v1, "CRIFSWEBINSTALLER_STATUS_ERROR"

    invoke-direct {v0, v1, v5, v5}, Lcom/criware/filesystem/CriFsWebInstaller$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/criware/filesystem/CriFsWebInstaller$Status;->CRIFSWEBINSTALLER_STATUS_ERROR:Lcom/criware/filesystem/CriFsWebInstaller$Status;

    .line 44
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/criware/filesystem/CriFsWebInstaller$Status;

    sget-object v1, Lcom/criware/filesystem/CriFsWebInstaller$Status;->CRIFSWEBINSTALLER_STATUS_STOP:Lcom/criware/filesystem/CriFsWebInstaller$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/criware/filesystem/CriFsWebInstaller$Status;->CRIFSWEBINSTALLER_STATUS_BUSY:Lcom/criware/filesystem/CriFsWebInstaller$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/criware/filesystem/CriFsWebInstaller$Status;->CRIFSWEBINSTALLER_STATUS_COMPLETE:Lcom/criware/filesystem/CriFsWebInstaller$Status;

    aput-object v1, v0, v4

    sget-object v1, Lcom/criware/filesystem/CriFsWebInstaller$Status;->CRIFSWEBINSTALLER_STATUS_ERROR:Lcom/criware/filesystem/CriFsWebInstaller$Status;

    aput-object v1, v0, v5

    sput-object v0, Lcom/criware/filesystem/CriFsWebInstaller$Status;->$VALUES:[Lcom/criware/filesystem/CriFsWebInstaller$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 52
    iput p3, p0, Lcom/criware/filesystem/CriFsWebInstaller$Status;->value:I

    .line 53
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/criware/filesystem/CriFsWebInstaller$Status;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 44
    const-class v0, Lcom/criware/filesystem/CriFsWebInstaller$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/criware/filesystem/CriFsWebInstaller$Status;

    return-object v0
.end method

.method public static values()[Lcom/criware/filesystem/CriFsWebInstaller$Status;
    .registers 1

    .prologue
    .line 44
    sget-object v0, Lcom/criware/filesystem/CriFsWebInstaller$Status;->$VALUES:[Lcom/criware/filesystem/CriFsWebInstaller$Status;

    invoke-virtual {v0}, [Lcom/criware/filesystem/CriFsWebInstaller$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/criware/filesystem/CriFsWebInstaller$Status;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    .prologue
    .line 55
    iget v0, p0, Lcom/criware/filesystem/CriFsWebInstaller$Status;->value:I

    return v0
.end method
