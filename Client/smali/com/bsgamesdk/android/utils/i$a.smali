.class public abstract Lcom/bsgamesdk/android/utils/i$a;
.super Landroid/os/CountDownTimer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bsgamesdk/android/utils/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 5

    const-wide/32 v0, 0xea60

    const-wide/16 v2, 0x3e8

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/bsgamesdk/android/utils/i$a;-><init>(JJ)V

    return-void
.end method

.method public constructor <init>(JJ)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method
