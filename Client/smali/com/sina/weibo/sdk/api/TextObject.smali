.class public Lcom/sina/weibo/sdk/api/TextObject;
.super Ljava/lang/Object;
.source "TextObject.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sina/weibo/sdk/api/TextObject;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    new-instance v0, Lcom/sina/weibo/sdk/api/TextObject$1;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/api/TextObject$1;-><init>()V

    sput-object v0, Lcom/sina/weibo/sdk/api/TextObject;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/api/TextObject;->text:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public checkArgs()Z
    .registers 3

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/TextObject;->text:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/sina/weibo/sdk/api/TextObject;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x400

    if-le v0, v1, :cond_14

    .line 41
    :cond_12
    const/4 v0, 0x0

    .line 43
    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x1

    goto :goto_13
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public getObjType()I
    .registers 2

    .prologue
    .line 47
    const/4 v0, 0x1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/TextObject;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 37
    return-void
.end method
