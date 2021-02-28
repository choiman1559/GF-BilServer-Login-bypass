.class public final Lcn/sharesdk/google/UserData$Cover;
.super Ljava/lang/Object;
.source "UserData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sharesdk/google/UserData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Cover"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/sharesdk/google/UserData$Cover$a;,
        Lcn/sharesdk/google/UserData$Cover$CoverInfo;,
        Lcn/sharesdk/google/UserData$Cover$CoverPhoto;
    }
.end annotation


# static fields
.field public static final a:Lcn/sharesdk/google/UserData$Cover$a;


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

.field private d:Lcn/sharesdk/google/UserData$Cover$CoverInfo;

.field private e:Lcn/sharesdk/google/UserData$Cover$CoverPhoto;

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 142
    new-instance v0, Lcn/sharesdk/google/UserData$Cover$a;

    invoke-direct {v0}, Lcn/sharesdk/google/UserData$Cover$a;-><init>()V

    sput-object v0, Lcn/sharesdk/google/UserData$Cover;->a:Lcn/sharesdk/google/UserData$Cover$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    const/4 v0, 0x1

    iput v0, p0, Lcn/sharesdk/google/UserData$Cover;->c:I

    .line 152
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/google/UserData$Cover;->b:Ljava/util/Set;

    .line 153
    return-void
.end method

.method constructor <init>(Ljava/util/Set;ILcn/sharesdk/google/UserData$Cover$CoverInfo;Lcn/sharesdk/google/UserData$Cover$CoverPhoto;I)V
    .registers 6
    .param p2, "paramInt1"    # I
    .param p3, "parama"    # Lcn/sharesdk/google/UserData$Cover$CoverInfo;
    .param p4, "paramb"    # Lcn/sharesdk/google/UserData$Cover$CoverPhoto;
    .param p5, "paramInt2"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;I",
            "Lcn/sharesdk/google/UserData$Cover$CoverInfo;",
            "Lcn/sharesdk/google/UserData$Cover$CoverPhoto;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 155
    .local p1, "paramSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput-object p1, p0, Lcn/sharesdk/google/UserData$Cover;->b:Ljava/util/Set;

    .line 157
    iput p2, p0, Lcn/sharesdk/google/UserData$Cover;->c:I

    .line 158
    iput-object p3, p0, Lcn/sharesdk/google/UserData$Cover;->d:Lcn/sharesdk/google/UserData$Cover$CoverInfo;

    .line 159
    iput-object p4, p0, Lcn/sharesdk/google/UserData$Cover;->e:Lcn/sharesdk/google/UserData$Cover$CoverPhoto;

    .line 160
    iput p5, p0, Lcn/sharesdk/google/UserData$Cover;->f:I

    .line 161
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
    .line 164
    iget-object v0, p0, Lcn/sharesdk/google/UserData$Cover;->b:Ljava/util/Set;

    return-object v0
.end method

.method b()I
    .registers 2

    .prologue
    .line 168
    iget v0, p0, Lcn/sharesdk/google/UserData$Cover;->c:I

    return v0
.end method

.method c()Lcn/sharesdk/google/UserData$Cover$CoverInfo;
    .registers 2

    .prologue
    .line 176
    iget-object v0, p0, Lcn/sharesdk/google/UserData$Cover;->d:Lcn/sharesdk/google/UserData$Cover$CoverInfo;

    return-object v0
.end method

.method d()Lcn/sharesdk/google/UserData$Cover$CoverPhoto;
    .registers 2

    .prologue
    .line 188
    iget-object v0, p0, Lcn/sharesdk/google/UserData$Cover;->e:Lcn/sharesdk/google/UserData$Cover$CoverPhoto;

    return-object v0
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 204
    const/4 v0, 0x0

    return v0
.end method

.method public e()I
    .registers 2

    .prologue
    .line 196
    iget v0, p0, Lcn/sharesdk/google/UserData$Cover;->f:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 208
    invoke-static {p0, p1, p2}, Lcn/sharesdk/google/UserData$Cover$a;->a(Lcn/sharesdk/google/UserData$Cover;Landroid/os/Parcel;I)V

    .line 209
    return-void
.end method
