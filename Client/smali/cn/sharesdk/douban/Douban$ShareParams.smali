.class public Lcn/sharesdk/douban/Douban$ShareParams;
.super Lcn/sharesdk/framework/Platform$ShareParams;
.source "Douban.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sharesdk/douban/Douban;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShareParams"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 384
    invoke-direct {p0}, Lcn/sharesdk/framework/Platform$ShareParams;-><init>()V

    return-void
.end method
