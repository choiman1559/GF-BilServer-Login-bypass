.class public Lcn/sharesdk/meipai/entity/MeipaiImageObject;
.super Lcn/sharesdk/meipai/entity/MeipaiBaseObject;
.source "MeipaiImageObject.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcn/sharesdk/meipai/entity/MeipaiImageObject;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public imagePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    new-instance v0, Lcn/sharesdk/meipai/entity/MeipaiImageObject$1;

    invoke-direct {v0}, Lcn/sharesdk/meipai/entity/MeipaiImageObject$1;-><init>()V

    sput-object v0, Lcn/sharesdk/meipai/entity/MeipaiImageObject;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcn/sharesdk/meipai/entity/MeipaiBaseObject;-><init>()V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 28
    invoke-direct {p0}, Lcn/sharesdk/meipai/entity/MeipaiBaseObject;-><init>()V

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/meipai/entity/MeipaiImageObject;->imagePath:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public checkArgs()Z
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcn/sharesdk/meipai/entity/MeipaiImageObject;->imagePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public getObjectType()I
    .registers 2

    .prologue
    .line 33
    const/4 v0, 0x1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 41
    iget-object v0, p0, Lcn/sharesdk/meipai/entity/MeipaiImageObject;->imagePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 42
    return-void
.end method
