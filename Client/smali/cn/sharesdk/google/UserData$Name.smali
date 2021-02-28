.class public final Lcn/sharesdk/google/UserData$Name;
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
    name = "Name"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/sharesdk/google/UserData$Name$a;
    }
.end annotation


# static fields
.field public static final a:Lcn/sharesdk/google/UserData$Name$a;


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

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 690
    new-instance v0, Lcn/sharesdk/google/UserData$Name$a;

    invoke-direct {v0}, Lcn/sharesdk/google/UserData$Name$a;-><init>()V

    sput-object v0, Lcn/sharesdk/google/UserData$Name;->a:Lcn/sharesdk/google/UserData$Name$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 700
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 701
    const/4 v0, 0x1

    iput v0, p0, Lcn/sharesdk/google/UserData$Name;->c:I

    .line 702
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/google/UserData$Name;->b:Ljava/util/Set;

    .line 703
    return-void
.end method

.method constructor <init>(Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p2, "paramInt"    # I
    .param p3, "paramString1"    # Ljava/lang/String;
    .param p4, "paramString2"    # Ljava/lang/String;
    .param p5, "paramString3"    # Ljava/lang/String;
    .param p6, "paramString4"    # Ljava/lang/String;
    .param p7, "paramString5"    # Ljava/lang/String;
    .param p8, "paramString6"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 706
    .local p1, "paramSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 707
    iput-object p1, p0, Lcn/sharesdk/google/UserData$Name;->b:Ljava/util/Set;

    .line 708
    iput p2, p0, Lcn/sharesdk/google/UserData$Name;->c:I

    .line 709
    iput-object p3, p0, Lcn/sharesdk/google/UserData$Name;->d:Ljava/lang/String;

    .line 710
    iput-object p4, p0, Lcn/sharesdk/google/UserData$Name;->e:Ljava/lang/String;

    .line 711
    iput-object p5, p0, Lcn/sharesdk/google/UserData$Name;->f:Ljava/lang/String;

    .line 712
    iput-object p6, p0, Lcn/sharesdk/google/UserData$Name;->g:Ljava/lang/String;

    .line 713
    iput-object p7, p0, Lcn/sharesdk/google/UserData$Name;->h:Ljava/lang/String;

    .line 714
    iput-object p8, p0, Lcn/sharesdk/google/UserData$Name;->i:Ljava/lang/String;

    .line 715
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
    .line 718
    iget-object v0, p0, Lcn/sharesdk/google/UserData$Name;->b:Ljava/util/Set;

    return-object v0
.end method

.method b()I
    .registers 2

    .prologue
    .line 722
    iget v0, p0, Lcn/sharesdk/google/UserData$Name;->c:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 726
    iget-object v0, p0, Lcn/sharesdk/google/UserData$Name;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 734
    iget-object v0, p0, Lcn/sharesdk/google/UserData$Name;->e:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 774
    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 742
    iget-object v0, p0, Lcn/sharesdk/google/UserData$Name;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .prologue
    .line 750
    iget-object v0, p0, Lcn/sharesdk/google/UserData$Name;->g:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    .prologue
    .line 758
    iget-object v0, p0, Lcn/sharesdk/google/UserData$Name;->h:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .prologue
    .line 766
    iget-object v0, p0, Lcn/sharesdk/google/UserData$Name;->i:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 778
    invoke-static {p0, p1, p2}, Lcn/sharesdk/google/UserData$Name$a;->a(Lcn/sharesdk/google/UserData$Name;Landroid/os/Parcel;I)V

    .line 779
    return-void
.end method
