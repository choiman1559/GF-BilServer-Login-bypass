.class public Lcom/bsgamesdk/android/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bsgamesdk/android/dynamic/IConstant;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "BSGameSdk"

    iput-object v0, p0, Lcom/bsgamesdk/android/c;->a:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bsgamesdk/android/c;->b:Z

    const-string v0, "3.4.2"

    iput-object v0, p0, Lcom/bsgamesdk/android/c;->c:Ljava/lang/String;

    const-string v0, "v0.1"

    iput-object v0, p0, Lcom/bsgamesdk/android/c;->d:Ljava/lang/String;

    const-string v0, "3"

    iput-object v0, p0, Lcom/bsgamesdk/android/c;->e:Ljava/lang/String;

    const-string v0, "1"

    iput-object v0, p0, Lcom/bsgamesdk/android/c;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPLATFORM()Ljava/lang/String;
    .registers 2

    const-string v0, "3"

    return-object v0
.end method

.method public getSDK_NAME()Ljava/lang/String;
    .registers 2

    const-string v0, "BSGameSdk"

    return-object v0
.end method

.method public getSDK_Version()Ljava/lang/String;
    .registers 2

    const-string v0, "3.4.2"

    return-object v0
.end method

.method public getTYPE()Ljava/lang/String;
    .registers 2

    const-string v0, "1"

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    const-string v0, "v0.1"

    return-object v0
.end method

.method public isBiliSDK()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
