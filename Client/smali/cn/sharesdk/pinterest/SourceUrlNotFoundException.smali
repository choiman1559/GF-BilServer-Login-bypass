.class public Lcn/sharesdk/pinterest/SourceUrlNotFoundException;
.super Ljava/lang/RuntimeException;
.source "SourceUrlNotFoundException.java"


# static fields
.field public static final MESSAGE:Ljava/lang/String; = "url cannot be null"

.field private static final serialVersionUID:J = 0xc46c887e13f382cL


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 9
    const-string v0, "url cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 10
    return-void
.end method
