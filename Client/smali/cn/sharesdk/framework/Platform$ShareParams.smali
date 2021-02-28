.class public Lcn/sharesdk/framework/Platform$ShareParams;
.super Lcn/sharesdk/framework/InnerShareParams;
.source "Platform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sharesdk/framework/Platform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShareParams"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 387
    invoke-direct {p0}, Lcn/sharesdk/framework/InnerShareParams;-><init>()V

    .line 388
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "jsonParams"    # Ljava/lang/String;

    .prologue
    .line 395
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/InnerShareParams;-><init>(Ljava/lang/String;)V

    .line 396
    return-void
.end method

.method public constructor <init>(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 391
    .local p1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/InnerShareParams;-><init>(Ljava/util/HashMap;)V

    .line 392
    return-void
.end method
