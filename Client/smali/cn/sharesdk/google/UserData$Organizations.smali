.class public final Lcn/sharesdk/google/UserData$Organizations;
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
    name = "Organizations"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/sharesdk/google/UserData$Organizations$a;
    }
.end annotation


# static fields
.field public static final a:Lcn/sharesdk/google/UserData$Organizations$a;


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

.field private i:Z

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1165
    new-instance v0, Lcn/sharesdk/google/UserData$Organizations$a;

    invoke-direct {v0}, Lcn/sharesdk/google/UserData$Organizations$a;-><init>()V

    sput-object v0, Lcn/sharesdk/google/UserData$Organizations;->a:Lcn/sharesdk/google/UserData$Organizations$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 1178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1179
    const/4 v0, 0x1

    iput v0, p0, Lcn/sharesdk/google/UserData$Organizations;->c:I

    .line 1180
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/google/UserData$Organizations;->b:Ljava/util/Set;

    .line 1181
    return-void
.end method

.method constructor <init>(Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)V
    .registers 12
    .param p2, "paramInt1"    # I
    .param p3, "paramString1"    # Ljava/lang/String;
    .param p4, "paramString2"    # Ljava/lang/String;
    .param p5, "paramString3"    # Ljava/lang/String;
    .param p6, "paramString4"    # Ljava/lang/String;
    .param p7, "paramString5"    # Ljava/lang/String;
    .param p8, "paramBoolean"    # Z
    .param p9, "paramString6"    # Ljava/lang/String;
    .param p10, "paramString7"    # Ljava/lang/String;
    .param p11, "paramInt2"    # I
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
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 1184
    .local p1, "paramSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1185
    iput-object p1, p0, Lcn/sharesdk/google/UserData$Organizations;->b:Ljava/util/Set;

    .line 1186
    iput p2, p0, Lcn/sharesdk/google/UserData$Organizations;->c:I

    .line 1187
    iput-object p3, p0, Lcn/sharesdk/google/UserData$Organizations;->d:Ljava/lang/String;

    .line 1188
    iput-object p4, p0, Lcn/sharesdk/google/UserData$Organizations;->e:Ljava/lang/String;

    .line 1189
    iput-object p5, p0, Lcn/sharesdk/google/UserData$Organizations;->f:Ljava/lang/String;

    .line 1190
    iput-object p6, p0, Lcn/sharesdk/google/UserData$Organizations;->g:Ljava/lang/String;

    .line 1191
    iput-object p7, p0, Lcn/sharesdk/google/UserData$Organizations;->h:Ljava/lang/String;

    .line 1192
    iput-boolean p8, p0, Lcn/sharesdk/google/UserData$Organizations;->i:Z

    .line 1193
    iput-object p9, p0, Lcn/sharesdk/google/UserData$Organizations;->j:Ljava/lang/String;

    .line 1194
    iput-object p10, p0, Lcn/sharesdk/google/UserData$Organizations;->k:Ljava/lang/String;

    .line 1195
    iput p11, p0, Lcn/sharesdk/google/UserData$Organizations;->l:I

    .line 1196
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
    .line 1199
    iget-object v0, p0, Lcn/sharesdk/google/UserData$Organizations;->b:Ljava/util/Set;

    return-object v0
.end method

.method b()I
    .registers 2

    .prologue
    .line 1203
    iget v0, p0, Lcn/sharesdk/google/UserData$Organizations;->c:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1207
    iget-object v0, p0, Lcn/sharesdk/google/UserData$Organizations;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1215
    iget-object v0, p0, Lcn/sharesdk/google/UserData$Organizations;->e:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 1279
    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1223
    iget-object v0, p0, Lcn/sharesdk/google/UserData$Organizations;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1231
    iget-object v0, p0, Lcn/sharesdk/google/UserData$Organizations;->g:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1239
    iget-object v0, p0, Lcn/sharesdk/google/UserData$Organizations;->h:Ljava/lang/String;

    return-object v0
.end method

.method public h()Z
    .registers 2

    .prologue
    .line 1247
    iget-boolean v0, p0, Lcn/sharesdk/google/UserData$Organizations;->i:Z

    return v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1255
    iget-object v0, p0, Lcn/sharesdk/google/UserData$Organizations;->j:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1263
    iget-object v0, p0, Lcn/sharesdk/google/UserData$Organizations;->k:Ljava/lang/String;

    return-object v0
.end method

.method public k()I
    .registers 2

    .prologue
    .line 1271
    iget v0, p0, Lcn/sharesdk/google/UserData$Organizations;->l:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1283
    invoke-static {p0, p1, p2}, Lcn/sharesdk/google/UserData$Organizations$a;->a(Lcn/sharesdk/google/UserData$Organizations;Landroid/os/Parcel;I)V

    .line 1284
    return-void
.end method
