.class public Lcom/lohanry/framework/support/SinglePermissionRequest;
.super Ljava/lang/Object;
.source "SinglePermissionRequest.java"

# interfaces
.implements Landroid/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;


# instance fields
.field private isCheckDone:Z

.field private isDone:Z

.field private isGranted:Z

.field private permission:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-boolean v0, p0, Lcom/lohanry/framework/support/SinglePermissionRequest;->isDone:Z

    .line 18
    iput-boolean v0, p0, Lcom/lohanry/framework/support/SinglePermissionRequest;->isCheckDone:Z

    .line 19
    iput-boolean v0, p0, Lcom/lohanry/framework/support/SinglePermissionRequest;->isGranted:Z

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/lohanry/framework/support/SinglePermissionRequest;->permission:Ljava/lang/String;

    return-void
.end method

.method private done()V
    .registers 2

    .prologue
    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lohanry/framework/support/SinglePermissionRequest;->isDone:Z

    .line 51
    return-void
.end method

.method private granted()V
    .registers 2

    .prologue
    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lohanry/framework/support/SinglePermissionRequest;->isGranted:Z

    .line 46
    invoke-direct {p0}, Lcom/lohanry/framework/support/SinglePermissionRequest;->done()V

    .line 47
    return-void
.end method


# virtual methods
.method public CheckSelf(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "permission"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 30
    iput-boolean v1, p0, Lcom/lohanry/framework/support/SinglePermissionRequest;->isGranted:Z

    .line 31
    iput-boolean v1, p0, Lcom/lohanry/framework/support/SinglePermissionRequest;->isCheckDone:Z

    .line 32
    iput-boolean v1, p0, Lcom/lohanry/framework/support/SinglePermissionRequest;->isDone:Z

    .line 33
    iput-object p2, p0, Lcom/lohanry/framework/support/SinglePermissionRequest;->permission:Ljava/lang/String;

    .line 34
    invoke-static {p1, p2}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_17

    .line 35
    iput-boolean v2, p0, Lcom/lohanry/framework/support/SinglePermissionRequest;->isGranted:Z

    .line 36
    iput-boolean v2, p0, Lcom/lohanry/framework/support/SinglePermissionRequest;->isCheckDone:Z

    .line 37
    iput-boolean v1, p0, Lcom/lohanry/framework/support/SinglePermissionRequest;->isDone:Z

    .line 43
    :goto_16
    return-void

    .line 39
    :cond_17
    iput-boolean v1, p0, Lcom/lohanry/framework/support/SinglePermissionRequest;->isGranted:Z

    .line 40
    iput-boolean v2, p0, Lcom/lohanry/framework/support/SinglePermissionRequest;->isCheckDone:Z

    .line 41
    iput-boolean v1, p0, Lcom/lohanry/framework/support/SinglePermissionRequest;->isDone:Z

    goto :goto_16
.end method

.method public checkPermission()Z
    .registers 2

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/lohanry/framework/support/SinglePermissionRequest;->isGranted:Z

    return v0
.end method

.method public isCheckDone()Z
    .registers 2

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/lohanry/framework/support/SinglePermissionRequest;->isCheckDone:Z

    return v0
.end method

.method public isDone()Z
    .registers 2

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/lohanry/framework/support/SinglePermissionRequest;->isDone:Z

    return v0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 7
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "grantResults"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 67
    iget-object v1, p0, Lcom/lohanry/framework/support/SinglePermissionRequest;->permission:Ljava/lang/String;

    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 68
    aget v1, p3, v0

    if-nez v1, :cond_10

    const/4 v0, 0x1

    :cond_10
    iput-boolean v0, p0, Lcom/lohanry/framework/support/SinglePermissionRequest;->isGranted:Z

    .line 70
    :cond_12
    invoke-direct {p0}, Lcom/lohanry/framework/support/SinglePermissionRequest;->done()V

    .line 71
    return-void
.end method

.method public request(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "permission"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 22
    iput-boolean v2, p0, Lcom/lohanry/framework/support/SinglePermissionRequest;->isDone:Z

    .line 23
    iput-object p2, p0, Lcom/lohanry/framework/support/SinglePermissionRequest;->permission:Ljava/lang/String;

    .line 25
    invoke-static {}, Lcom/lohanry/framework/support/PermissionRequestManage;->getInstance()Lcom/lohanry/framework/support/PermissionRequestManage;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/lohanry/framework/support/PermissionRequestManage;->addRequest(Landroid/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;)I

    move-result v0

    .line 26
    .local v0, "index":I
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    aput-object p2, v1, v2

    invoke-static {p1, v1, v0}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 28
    return-void
.end method
