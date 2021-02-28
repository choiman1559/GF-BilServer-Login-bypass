.class public Lcom/lohanry/android/framework/service/ResourceFrameworkServiceImp;
.super Ljava/lang/Object;
.source "ResourceFrameworkServiceImp.java"

# interfaces
.implements Lcom/lohanry/android/framework/service/FrameworkService;


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mResources:Landroid/content/res/Resources;

.field private packName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    const-class v0, Lcom/lohanry/android/framework/service/ResourceFrameworkServiceImp;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lohanry/android/framework/service/ResourceFrameworkServiceImp;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/lohanry/android/framework/service/ResourceFrameworkServiceImp;->packName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getIdentifier(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lohanry/android/framework/service/ResourceFrameworkServiceImp;->mResources:Landroid/content/res/Resources;

    if-nez v0, :cond_d

    .line 24
    sget-object v0, Lcom/lohanry/android/framework/service/ResourceFrameworkServiceImp;->TAG:Ljava/lang/String;

    const-string v1, "Please init first"

    invoke-static {v0, v1}, Lcom/lohanry/android/framework/tools/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    const/4 v0, 0x0

    .line 27
    :goto_c
    return v0

    :cond_d
    iget-object v0, p0, Lcom/lohanry/android/framework/service/ResourceFrameworkServiceImp;->mResources:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/lohanry/android/framework/service/ResourceFrameworkServiceImp;->packName:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_c
.end method

.method public getInt(I)I
    .registers 6
    .param p1, "id"    # I

    .prologue
    const/4 v1, 0x0

    .line 59
    if-nez p1, :cond_4

    .line 68
    :goto_3
    return v1

    .line 60
    :cond_4
    iget-object v2, p0, Lcom/lohanry/android/framework/service/ResourceFrameworkServiceImp;->mResources:Landroid/content/res/Resources;

    if-nez v2, :cond_10

    .line 61
    sget-object v2, Lcom/lohanry/android/framework/service/ResourceFrameworkServiceImp;->TAG:Ljava/lang/String;

    const-string v3, "Please init first"

    invoke-static {v2, v3}, Lcom/lohanry/android/framework/tools/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 65
    :cond_10
    :try_start_10
    iget-object v2, p0, Lcom/lohanry/android/framework/service/ResourceFrameworkServiceImp;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getInteger(I)I
    :try_end_15
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_10 .. :try_end_15} :catch_17

    move-result v1

    goto :goto_3

    .line 66
    :catch_17
    move-exception v0

    .line 67
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NotFound:ResID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",So return 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lohanry/android/framework/tools/Logger;->error(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public getString(I)Ljava/lang/String;
    .registers 5
    .param p1, "id"    # I

    .prologue
    .line 31
    if-nez p1, :cond_5

    const-string v1, ""

    .line 40
    :goto_4
    return-object v1

    .line 32
    :cond_5
    iget-object v1, p0, Lcom/lohanry/android/framework/service/ResourceFrameworkServiceImp;->mResources:Landroid/content/res/Resources;

    if-nez v1, :cond_13

    .line 33
    sget-object v1, Lcom/lohanry/android/framework/service/ResourceFrameworkServiceImp;->TAG:Ljava/lang/String;

    const-string v2, "Please init first"

    invoke-static {v1, v2}, Lcom/lohanry/android/framework/tools/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string v1, ""

    goto :goto_4

    .line 37
    :cond_13
    :try_start_13
    iget-object v1, p0, Lcom/lohanry/android/framework/service/ResourceFrameworkServiceImp;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_18
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_13 .. :try_end_18} :catch_1a

    move-result-object v1

    goto :goto_4

    .line 38
    :catch_1a
    move-exception v0

    .line 39
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NotFound:ResID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",So return \"\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lohanry/android/framework/tools/Logger;->error(Ljava/lang/String;)V

    .line 40
    const-string v1, ""

    goto :goto_4
.end method

.method public getStringArray(I)[Ljava/lang/String;
    .registers 6
    .param p1, "id"    # I

    .prologue
    const/4 v3, 0x0

    .line 45
    if-nez p1, :cond_6

    new-array v1, v3, [Ljava/lang/String;

    .line 54
    :goto_5
    return-object v1

    .line 46
    :cond_6
    iget-object v1, p0, Lcom/lohanry/android/framework/service/ResourceFrameworkServiceImp;->mResources:Landroid/content/res/Resources;

    if-nez v1, :cond_14

    .line 47
    sget-object v1, Lcom/lohanry/android/framework/service/ResourceFrameworkServiceImp;->TAG:Ljava/lang/String;

    const-string v2, "Please init first"

    invoke-static {v1, v2}, Lcom/lohanry/android/framework/tools/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    new-array v1, v3, [Ljava/lang/String;

    goto :goto_5

    .line 51
    :cond_14
    :try_start_14
    iget-object v1, p0, Lcom/lohanry/android/framework/service/ResourceFrameworkServiceImp;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;
    :try_end_19
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_14 .. :try_end_19} :catch_1b

    move-result-object v1

    goto :goto_5

    .line 52
    :catch_1b
    move-exception v0

    .line 53
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NotFound:ResID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",So return []"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lohanry/android/framework/tools/Logger;->error(Ljava/lang/String;)V

    .line 54
    new-array v1, v3, [Ljava/lang/String;

    goto :goto_5
.end method

.method public init(Landroid/content/Context;)V
    .registers 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/lohanry/android/framework/service/ResourceFrameworkServiceImp;->mResources:Landroid/content/res/Resources;

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lohanry/android/framework/service/ResourceFrameworkServiceImp;->packName:Ljava/lang/String;

    .line 20
    return-void
.end method
