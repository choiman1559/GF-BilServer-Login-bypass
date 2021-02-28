.class public Lcn/sharesdk/pinterest/ImageNotFoundException;
.super Ljava/lang/RuntimeException;
.source "ImageNotFoundException.java"


# static fields
.field public static final MESSAGE:Ljava/lang/String; = "imageUrl and/or imagePath cannot be null!"

.field private static final serialVersionUID:J = 0x69780b1b7ea41091L


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 8
    const-string v0, "imageUrl and/or imagePath cannot be null!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 9
    return-void
.end method
