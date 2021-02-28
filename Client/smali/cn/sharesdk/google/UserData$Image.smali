.class public final Lcn/sharesdk/google/UserData$Image;
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
    name = "Image"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/sharesdk/google/UserData$Image$a;
    }
.end annotation


# static fields
.field public static final a:Lcn/sharesdk/google/UserData$Image$a;


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

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 572
    new-instance v0, Lcn/sharesdk/google/UserData$Image$a;

    invoke-direct {v0}, Lcn/sharesdk/google/UserData$Image$a;-><init>()V

    sput-object v0, Lcn/sharesdk/google/UserData$Image;->a:Lcn/sharesdk/google/UserData$Image$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 584
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 585
    const/4 v0, 0x1

    iput v0, p0, Lcn/sharesdk/google/UserData$Image;->c:I

    .line 586
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/google/UserData$Image;->b:Ljava/util/Set;

    .line 587
    return-void
.end method

.method constructor <init>(Ljava/util/Set;ILjava/lang/String;)V
    .registers 4
    .param p2, "paramInt"    # I
    .param p3, "paramString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 589
    .local p1, "paramSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 590
    iput-object p1, p0, Lcn/sharesdk/google/UserData$Image;->b:Ljava/util/Set;

    .line 591
    iput p2, p0, Lcn/sharesdk/google/UserData$Image;->c:I

    .line 592
    iput-object p3, p0, Lcn/sharesdk/google/UserData$Image;->d:Ljava/lang/String;

    .line 593
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
    .line 596
    iget-object v0, p0, Lcn/sharesdk/google/UserData$Image;->b:Ljava/util/Set;

    return-object v0
.end method

.method b()I
    .registers 2

    .prologue
    .line 600
    iget v0, p0, Lcn/sharesdk/google/UserData$Image;->c:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 604
    iget-object v0, p0, Lcn/sharesdk/google/UserData$Image;->d:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 612
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 616
    invoke-static {p0, p1, p2}, Lcn/sharesdk/google/UserData$Image$a;->a(Lcn/sharesdk/google/UserData$Image;Landroid/os/Parcel;I)V

    .line 617
    return-void
.end method
