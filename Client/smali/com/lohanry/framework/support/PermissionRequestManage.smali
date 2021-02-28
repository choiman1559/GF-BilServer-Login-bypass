.class public Lcom/lohanry/framework/support/PermissionRequestManage;
.super Ljava/lang/Object;
.source "PermissionRequestManage.java"


# static fields
.field private static mPermissionRequestManage:Lcom/lohanry/framework/support/PermissionRequestManage;


# instance fields
.field private index:I

.field private mCallbackList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lohanry/framework/support/PermissionRequestManage;->mCallbackList:Ljava/util/HashMap;

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/lohanry/framework/support/PermissionRequestManage;->index:I

    return-void
.end method

.method public static getInstance()Lcom/lohanry/framework/support/PermissionRequestManage;
    .registers 1

    .prologue
    .line 21
    sget-object v0, Lcom/lohanry/framework/support/PermissionRequestManage;->mPermissionRequestManage:Lcom/lohanry/framework/support/PermissionRequestManage;

    if-nez v0, :cond_b

    .line 22
    new-instance v0, Lcom/lohanry/framework/support/PermissionRequestManage;

    invoke-direct {v0}, Lcom/lohanry/framework/support/PermissionRequestManage;-><init>()V

    sput-object v0, Lcom/lohanry/framework/support/PermissionRequestManage;->mPermissionRequestManage:Lcom/lohanry/framework/support/PermissionRequestManage;

    .line 24
    :cond_b
    sget-object v0, Lcom/lohanry/framework/support/PermissionRequestManage;->mPermissionRequestManage:Lcom/lohanry/framework/support/PermissionRequestManage;

    return-object v0
.end method


# virtual methods
.method addRequest(Landroid/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;)I
    .registers 4
    .param p1, "callback"    # Landroid/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;

    .prologue
    .line 35
    iget v0, p0, Lcom/lohanry/framework/support/PermissionRequestManage;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lohanry/framework/support/PermissionRequestManage;->index:I

    .line 36
    iget-object v0, p0, Lcom/lohanry/framework/support/PermissionRequestManage;->mCallbackList:Ljava/util/HashMap;

    iget v1, p0, Lcom/lohanry/framework/support/PermissionRequestManage;->index:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget v0, p0, Lcom/lohanry/framework/support/PermissionRequestManage;->index:I

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
    .line 28
    iget-object v1, p0, Lcom/lohanry/framework/support/PermissionRequestManage;->mCallbackList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 29
    iget-object v1, p0, Lcom/lohanry/framework/support/PermissionRequestManage;->mCallbackList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;

    .line 30
    .local v0, "permissionRequest":Landroid/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;
    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 32
    .end local v0    # "permissionRequest":Landroid/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;
    :cond_1b
    return-void
.end method
