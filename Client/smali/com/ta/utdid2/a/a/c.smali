.class public Lcom/ta/utdid2/a/a/c;
.super Ljava/lang/Object;


# direct methods
.method public static a()Z
    .registers 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-ge v2, v3, :cond_24

    sget-object v2, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v1, :cond_25

    sget-object v2, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x51

    if-lt v2, v3, :cond_25

    sget-object v2, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5a

    if-gt v2, v3, :cond_25

    :cond_24
    move v0, v1

    :cond_25
    return v0
.end method
