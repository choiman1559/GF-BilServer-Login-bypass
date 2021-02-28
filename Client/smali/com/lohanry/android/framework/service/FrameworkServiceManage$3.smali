.class final Lcom/lohanry/android/framework/service/FrameworkServiceManage$3;
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


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public register()Lcom/lohanry/android/framework/service/FrameworkService;
    .registers 2

    .prologue
    .line 48
    new-instance v0, Lcom/lohanry/android/framework/service/PreferencesFrameworkServiceImp;

    invoke-direct {v0}, Lcom/lohanry/android/framework/service/PreferencesFrameworkServiceImp;-><init>()V

    return-object v0
.end method
