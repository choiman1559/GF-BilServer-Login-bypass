.class public final Lcn/sharesdk/google/UserData$Cover$CoverPhoto;
.super Ljava/lang/Object;
.source "UserData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sharesdk/google/UserData$Cover;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CoverPhoto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/sharesdk/google/UserData$Cover$CoverPhoto$a;
    }
.end annotation


# static fields
.field public static final a:Lcn/sharesdk/google/UserData$Cover$CoverPhoto$a;


# instance fields
.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final c:I

.field private d:I

.field private e:Ljava/lang/String;

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 224
    new-instance v0, Lcn/sharesdk/google/UserData$Cover$CoverPhoto$a;

    invoke-direct {v0}, Lcn/sharesdk/google/UserData$Cover$CoverPhoto$a;-><init>()V

    sput-object v0, Lcn/sharesdk/google/UserData$Cover$CoverPhoto;->a:Lcn/sharesdk/google/UserData$Cover$CoverPhoto$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    const/4 v0, 0x1

    iput v0, p0, Lcn/sharesdk/google/UserData$Cover$CoverPhoto;->c:I

    .line 233
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/google/UserData$Cover$CoverPhoto;->b:Ljava/util/Set;

    .line 234
    return-void
.end method

.method constructor <init>(Ljava/util/Set;IILjava/lang/String;I)V
    .registers 6
    .param p2, "paramInt1"    # I
    .param p3, "paramInt2"    # I
    .param p4, "paramString"    # Ljava/lang/String;
    .param p5, "paramInt3"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;II",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 236
    .local p1, "paramSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    iput-object p1, p0, Lcn/sharesdk/google/UserData$Cover$CoverPhoto;->b:Ljava/util/Set;

    .line 238
    iput p2, p0, Lcn/sharesdk/google/UserData$Cover$CoverPhoto;->c:I

    .line 239
    iput p3, p0, Lcn/sharesdk/google/UserData$Cover$CoverPhoto;->d:I

    .line 240
    iput-object p4, p0, Lcn/sharesdk/google/UserData$Cover$CoverPhoto;->e:Ljava/lang/String;

    .line 241
    iput p5, p0, Lcn/sharesdk/google/UserData$Cover$CoverPhoto;->f:I

    .line 242
    return-void
.end method


# virtual methods
.method a()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 245
    iget-object v0, p0, Lcn/sharesdk/google/UserData$Cover$CoverPhoto;->b:Ljava/util/Set;

    return-object v0
.end method

.method b()I
    .registers 2

    .prologue
    .line 249
    iget v0, p0, Lcn/sharesdk/google/UserData$Cover$CoverPhoto;->c:I

    return v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 253
    iget v0, p0, Lcn/sharesdk/google/UserData$Cover$CoverPhoto;->d:I

    return v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 261
    iget-object v0, p0, Lcn/sharesdk/google/UserData$Cover$CoverPhoto;->e:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 277
    const/4 v0, 0x0

    return v0
.end method

.method public e()I
    .registers 2

    .prologue
    .line 269
    iget v0, p0, Lcn/sharesdk/google/UserData$Cover$CoverPhoto;->f:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 281
    invoke-static {p0, p1, p2}, Lcn/sharesdk/google/UserData$Cover$CoverPhoto$a;->a(Lcn/sharesdk/google/UserData$Cover$CoverPhoto;Landroid/os/Parcel;I)V

    .line 282
    return-void
.end method
