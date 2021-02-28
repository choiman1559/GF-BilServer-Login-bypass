.class public final Lcn/sharesdk/google/UserData$AgeRange;
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
    name = "AgeRange"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/sharesdk/google/UserData$AgeRange$a;
    }
.end annotation


# static fields
.field public static final a:Lcn/sharesdk/google/UserData$AgeRange$a;


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
    .line 14
    new-instance v0, Lcn/sharesdk/google/UserData$AgeRange$a;

    invoke-direct {v0}, Lcn/sharesdk/google/UserData$AgeRange$a;-><init>()V

    sput-object v0, Lcn/sharesdk/google/UserData$AgeRange;->a:Lcn/sharesdk/google/UserData$AgeRange$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x1

    iput v0, p0, Lcn/sharesdk/google/UserData$AgeRange;->c:I

    .line 22
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/google/UserData$AgeRange;->b:Ljava/util/Set;

    .line 23
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
    .line 25
    .local p1, "paramSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcn/sharesdk/google/UserData$AgeRange;->b:Ljava/util/Set;

    .line 27
    iput p2, p0, Lcn/sharesdk/google/UserData$AgeRange;->c:I

    .line 28
    iput p3, p0, Lcn/sharesdk/google/UserData$AgeRange;->d:I

    .line 29
    iput p4, p0, Lcn/sharesdk/google/UserData$AgeRange;->e:I

    .line 30
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
    .line 33
    iget-object v0, p0, Lcn/sharesdk/google/UserData$AgeRange;->b:Ljava/util/Set;

    return-object v0
.end method

.method b()I
    .registers 2

    .prologue
    .line 37
    iget v0, p0, Lcn/sharesdk/google/UserData$AgeRange;->c:I

    return v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 41
    iget v0, p0, Lcn/sharesdk/google/UserData$AgeRange;->d:I

    return v0
.end method

.method public d()I
    .registers 2

    .prologue
    .line 49
    iget v0, p0, Lcn/sharesdk/google/UserData$AgeRange;->e:I

    return v0
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 61
    invoke-static {p0, p1, p2}, Lcn/sharesdk/google/UserData$AgeRange$a;->a(Lcn/sharesdk/google/UserData$AgeRange;Landroid/os/Parcel;I)V

    .line 62
    return-void
.end method
