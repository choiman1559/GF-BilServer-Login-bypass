.class public abstract Lcn/sharesdk/meipai/entity/MeipaiBaseObject;
.super Ljava/lang/Object;
.source "MeipaiBaseObject.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final TYPE_IMGS:I = 0x1

.field public static final TYPE_INVALID:I = -0x1

.field public static final TYPE_VIDEO:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method


# virtual methods
.method public checkArgs()Z
    .registers 2

    .prologue
    .line 24
    const/4 v0, 0x1

    return v0
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 20
    const/4 v0, 0x0

    return v0
.end method

.method public abstract getObjectType()I
.end method
