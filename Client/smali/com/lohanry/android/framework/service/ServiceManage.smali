.class public Lcom/lohanry/android/framework/service/ServiceManage;
.super Ljava/lang/Object;
.source "ServiceManage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lohanry/android/framework/service/ServiceManage$ServiceManageRegister;
    }
.end annotation


# static fields
.field private static mServiceHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/lohanry/android/framework/service/FrameworkService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lohanry/android/framework/service/ServiceManage;->mServiceHashMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addService(Ljava/lang/String;Lcom/lohanry/android/framework/service/ServiceManage$ServiceManageRegister;)V
    .registers 5
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "serviceManageRegister"    # Lcom/lohanry/android/framework/service/ServiceManage$ServiceManageRegister;

    .prologue
    .line 26
    sget-object v0, Lcom/lohanry/android/framework/service/ServiceManage;->mServiceHashMap:Ljava/util/HashMap;

    invoke-interface {p2}, Lcom/lohanry/android/framework/service/ServiceManage$ServiceManageRegister;->register()Lcom/lohanry/android/framework/service/FrameworkService;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    return-void
.end method

.method public getService(Ljava/lang/String;)Lcom/lohanry/android/framework/service/FrameworkService;
    .registers 3
    .param p1, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/lohanry/android/framework/service/FrameworkService;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 20
    sget-object v0, Lcom/lohanry/android/framework/service/ServiceManage;->mServiceHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 21
    sget-object v0, Lcom/lohanry/android/framework/service/ServiceManage;->mServiceHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lohanry/android/framework/service/FrameworkService;

    .line 22
    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method
