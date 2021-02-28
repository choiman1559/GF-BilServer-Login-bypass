.class public final Lcn/sharesdk/google/UserData$PlacesLived;
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
    name = "PlacesLived"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/sharesdk/google/UserData$PlacesLived$a;
    }
.end annotation


# static fields
.field public static final a:Lcn/sharesdk/google/UserData$PlacesLived$a;


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

.field private d:Z

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1038
    new-instance v0, Lcn/sharesdk/google/UserData$PlacesLived$a;

    invoke-direct {v0}, Lcn/sharesdk/google/UserData$PlacesLived$a;-><init>()V

    sput-object v0, Lcn/sharesdk/google/UserData$PlacesLived;->a:Lcn/sharesdk/google/UserData$PlacesLived$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 1044
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1045
    const/4 v0, 0x1

    iput v0, p0, Lcn/sharesdk/google/UserData$PlacesLived;->c:I

    .line 1046
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/google/UserData$PlacesLived;->b:Ljava/util/Set;

    .line 1047
    return-void
.end method

.method constructor <init>(Ljava/util/Set;IZLjava/lang/String;)V
    .registers 5
    .param p2, "paramInt"    # I
    .param p3, "paramBoolean"    # Z
    .param p4, "paramString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;IZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1049
    .local p1, "paramSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1050
    iput-object p1, p0, Lcn/sharesdk/google/UserData$PlacesLived;->b:Ljava/util/Set;

    .line 1051
    iput p2, p0, Lcn/sharesdk/google/UserData$PlacesLived;->c:I

    .line 1052
    iput-boolean p3, p0, Lcn/sharesdk/google/UserData$PlacesLived;->d:Z

    .line 1053
    iput-object p4, p0, Lcn/sharesdk/google/UserData$PlacesLived;->e:Ljava/lang/String;

    .line 1054
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
    .line 1057
    iget-object v0, p0, Lcn/sharesdk/google/UserData$PlacesLived;->b:Ljava/util/Set;

    return-object v0
.end method

.method b()I
    .registers 2

    .prologue
    .line 1061
    iget v0, p0, Lcn/sharesdk/google/UserData$PlacesLived;->c:I

    return v0
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 1065
    iget-boolean v0, p0, Lcn/sharesdk/google/UserData$PlacesLived;->d:Z

    return v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1073
    iget-object v0, p0, Lcn/sharesdk/google/UserData$PlacesLived;->e:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 1081
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1085
    invoke-static {p0, p1, p2}, Lcn/sharesdk/google/UserData$PlacesLived$a;->a(Lcn/sharesdk/google/UserData$PlacesLived;Landroid/os/Parcel;I)V

    .line 1086
    return-void
.end method
