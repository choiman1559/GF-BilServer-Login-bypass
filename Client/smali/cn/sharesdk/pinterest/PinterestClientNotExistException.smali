.class public Lcn/sharesdk/pinterest/PinterestClientNotExistException;
.super Ljava/lang/RuntimeException;
.source "PinterestClientNotExistException.java"


# static fields
.field public static final MESSAGE:Ljava/lang/String; = "Pinterest for Android is not installed!"

.field private static final serialVersionUID:J = -0x3a53046645c5be25L


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 8
    const-string v0, "Pinterest for Android is not installed!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 9
    return-void
.end method
