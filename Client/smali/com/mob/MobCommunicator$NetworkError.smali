.class public Lcom/mob/MobCommunicator$NetworkError;
.super Ljava/lang/Exception;
.source "MobCommunicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/MobCommunicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkError"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x753c1bad2fee9493L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 265
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 266
    return-void
.end method