.class public Lcn/sharesdk/meipai/Meipai$ShareParams;
.super Lcn/sharesdk/framework/Platform$ShareParams;
.source "Meipai.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sharesdk/meipai/Meipai;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShareParams"
.end annotation


# instance fields
.field public imagePath:Ljava/lang/String;

.field public type:I

.field public videoPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 127
    invoke-direct {p0}, Lcn/sharesdk/framework/Platform$ShareParams;-><init>()V

    return-void
.end method
