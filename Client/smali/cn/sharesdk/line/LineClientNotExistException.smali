.class public Lcn/sharesdk/line/LineClientNotExistException;
.super Ljava/lang/RuntimeException;
.source "LineClientNotExistException.java"


# static fields
.field public static final MESSAGE:Ljava/lang/String; = "Line for Android is not installed!"

.field private static final serialVersionUID:J = 0x37bd92e0e465cac4L


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 8
    const-string v0, "Line for Android is not installed!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 9
    return-void
.end method