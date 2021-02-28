.class public final Lcn/sharesdk/google/UserData$Cover$CoverInfo;
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
    name = "CoverInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/sharesdk/google/UserData$Cover$CoverInfo$a;
    }
.end annotation


# static fields
.field public static final a:Lcn/sharesdk/google/UserData$Cover$CoverInfo$a;


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

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 371
    new-instance v0, Lcn/sharesdk/google/UserData$Cover$CoverInfo$a;

    invoke-direct {v0}, Lcn/sharesdk/google/UserData$Cover$CoverInfo$a;-><init>()V

    sput-object v0, Lcn/sharesdk/google/UserData$Cover$CoverInfo;->a:Lcn/sharesdk/google/UserData$Cover$CoverInfo$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 378
    const/4 v0, 0x1

    iput v0, p0, Lcn/sharesdk/google/UserData$Cover$CoverInfo;->c:I

    .line 379
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/google/UserData$Cover$CoverInfo;->b:Ljava/util/Set;

    .line 380
    return-void
.end method

.method constructor <init>(Ljava/util/Set;III)V
    .registers 5
    .param p2, "paramInt1"    # I
    .param p3, "paramInt2"    # I
    .param p4, "paramInt3"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;III)V"
        }
    .end annotation

    .prologue
    .line 382
    .local p1, "paramSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 383
    iput-object p1, p0, Lcn/sharesdk/google/UserData$Cover$CoverInfo;->b:Ljava/util/Set;

    .line 384
    iput p2, p0, Lcn/sharesdk/google/UserData$Cover$CoverInfo;->c:I

    .line 385
    iput p3, p0, Lcn/sharesdk/google/UserData$Cover$CoverInfo;->d:I

    .line 386
    iput p4, p0, Lcn/sharesdk/google/UserData$Cover$CoverInfo;->e:I

    .line 387
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
    .line 390
    iget-object v0, p0, Lcn/sharesdk/google/UserData$Cover$CoverInfo;->b:Ljava/util/Set;

    return-object v0
.end method

.method b()I
    .registers 2

    .prologue
    .line 394
    iget v0, p0, Lcn/sharesdk/google/UserData$Cover$CoverInfo;->c:I

    return v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 398
    iget v0, p0, Lcn/sharesdk/google/UserData$Cover$CoverInfo;->d:I

    return v0
.end method

.method public d()I
    .registers 2

    .prologue
    .line 406
    iget v0, p0, Lcn/sharesdk/google/UserData$Cover$CoverInfo;->e:I

    return v0
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 414
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 418
    invoke-static {p0, p1, p2}, Lcn/sharesdk/google/UserData$Cover$CoverInfo$a;->a(Lcn/sharesdk/google/UserData$Cover$CoverInfo;Landroid/os/Parcel;I)V

    .line 419
    return-void
.end method
