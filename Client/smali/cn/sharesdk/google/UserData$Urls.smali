.class public final Lcn/sharesdk/google/UserData$Urls;
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
    name = "Urls"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/sharesdk/google/UserData$Urls$a;
    }
.end annotation


# static fields
.field public static final a:Lcn/sharesdk/google/UserData$Urls$a;


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

.field private e:I

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1419
    new-instance v0, Lcn/sharesdk/google/UserData$Urls$a;

    invoke-direct {v0}, Lcn/sharesdk/google/UserData$Urls$a;-><init>()V

    sput-object v0, Lcn/sharesdk/google/UserData$Urls;->a:Lcn/sharesdk/google/UserData$Urls$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 1426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1427
    const/4 v0, 0x1

    iput v0, p0, Lcn/sharesdk/google/UserData$Urls;->c:I

    .line 1428
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/google/UserData$Urls;->b:Ljava/util/Set;

    .line 1429
    return-void
.end method

.method constructor <init>(Ljava/util/Set;IZILjava/lang/String;)V
    .registers 6
    .param p2, "paramInt1"    # I
    .param p3, "paramBoolean"    # Z
    .param p4, "paramInt2"    # I
    .param p5, "paramString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;IZI",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1431
    .local p1, "paramSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1432
    iput-object p1, p0, Lcn/sharesdk/google/UserData$Urls;->b:Ljava/util/Set;

    .line 1433
    iput p2, p0, Lcn/sharesdk/google/UserData$Urls;->c:I

    .line 1434
    iput-boolean p3, p0, Lcn/sharesdk/google/UserData$Urls;->d:Z

    .line 1435
    iput p4, p0, Lcn/sharesdk/google/UserData$Urls;->e:I

    .line 1436
    iput-object p5, p0, Lcn/sharesdk/google/UserData$Urls;->f:Ljava/lang/String;

    .line 1437
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
    .line 1440
    iget-object v0, p0, Lcn/sharesdk/google/UserData$Urls;->b:Ljava/util/Set;

    return-object v0
.end method

.method b()I
    .registers 2

    .prologue
    .line 1444
    iget v0, p0, Lcn/sharesdk/google/UserData$Urls;->c:I

    return v0
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 1448
    iget-boolean v0, p0, Lcn/sharesdk/google/UserData$Urls;->d:Z

    return v0
.end method

.method public d()I
    .registers 2

    .prologue
    .line 1456
    iget v0, p0, Lcn/sharesdk/google/UserData$Urls;->e:I

    return v0
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 1472
    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1464
    iget-object v0, p0, Lcn/sharesdk/google/UserData$Urls;->f:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1476
    invoke-static {p0, p1, p2}, Lcn/sharesdk/google/UserData$Urls$a;->a(Lcn/sharesdk/google/UserData$Urls;Landroid/os/Parcel;I)V

    .line 1477
    return-void
.end method
