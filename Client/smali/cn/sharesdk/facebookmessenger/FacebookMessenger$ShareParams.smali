.class public Lcn/sharesdk/facebookmessenger/FacebookMessenger$ShareParams;
.super Lcn/sharesdk/framework/Platform$ShareParams;
.source "FacebookMessenger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sharesdk/facebookmessenger/FacebookMessenger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShareParams"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 196
    invoke-direct {p0}, Lcn/sharesdk/framework/Platform$ShareParams;-><init>()V

    return-void
.end method