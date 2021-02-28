.class final Lcom/lohanry/android/framework/service/FrameworkServiceManage$1;
.super Ljava/lang/Object;
.source "FrameworkServiceManage.java"

# interfaces
.implements Lcom/lohanry/android/framework/service/ServiceManage$ServiceManageRegister;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lohanry/android/framework/service/FrameworkServiceManage;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 29
    iput-object p1, p0, Lcom/lohanry/android/framework/service/FrameworkServiceManage$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public register()Lcom/lohanry/android/framework/service/FrameworkService;
    .registers 3

    .prologue
    .line 32
    new-instance v0, Lcom/lohanry/android/framework/service/ResourceFrameworkServiceImp;

    invoke-direct {v0}, Lcom/lohanry/android/framework/service/ResourceFrameworkServiceImp;-><init>()V

    .line 33
    .local v0, "resourceFrameworkServiceImp":Lcom/lohanry/android/framework/service/ResourceFrameworkServiceImp;
    iget-object v1, p0, Lcom/lohanry/android/framework/service/FrameworkServiceManage$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/lohanry/android/framework/service/ResourceFrameworkServiceImp;->init(Landroid/content/Context;)V

    .line 34
    return-object v0
.end method
