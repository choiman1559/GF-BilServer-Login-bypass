.class public Lcom/bsgamesdk/android/utils/c;
.super Landroid/text/method/ReplacementTransformationMethod;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/text/method/ReplacementTransformationMethod;-><init>()V

    return-void
.end method


# virtual methods
.method protected getOriginal()[C
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/16 v2, 0xa

    aput-char v2, v0, v1

    return-object v0
.end method

.method protected getReplacement()[C
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/16 v2, 0x20

    aput-char v2, v0, v1

    return-object v0
.end method
