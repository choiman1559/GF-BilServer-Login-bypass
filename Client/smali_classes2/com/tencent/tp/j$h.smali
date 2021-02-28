.class public final Lcom/tencent/tp/j$h;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tp/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "h"
.end annotation


# static fields
.field public static AppBaseTheme:I

.field public static AppTheme:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/high16 v0, 0x7f060000

    sput v0, Lcom/tencent/tp/j$h;->AppBaseTheme:I

    const v0, 0x7f060001

    sput v0, Lcom/tencent/tp/j$h;->AppTheme:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
