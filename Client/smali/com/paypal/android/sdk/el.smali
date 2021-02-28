.class public final Lcom/paypal/android/sdk/el;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/paypal/android/sdk/er;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/paypal/android/sdk/em;

    invoke-direct {v0}, Lcom/paypal/android/sdk/em;-><init>()V

    sput-object v0, Lcom/paypal/android/sdk/el;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/el;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/el;->b:Ljava/lang/String;

    const-class v0, Lcom/paypal/android/sdk/er;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/sdk/er;

    iput-object v0, p0, Lcom/paypal/android/sdk/el;->c:Lcom/paypal/android/sdk/er;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/el;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/paypal/android/sdk/er;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/paypal/android/sdk/el;->c:Lcom/paypal/android/sdk/er;

    iput-object p2, p0, Lcom/paypal/android/sdk/el;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/paypal/android/sdk/el;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/paypal/android/sdk/el;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/el;->a:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/el;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/el;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Lcom/paypal/android/sdk/er;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/el;->c:Lcom/paypal/android/sdk/er;

    return-object v0
.end method

.method public final describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/el;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-object v0, p0, Lcom/paypal/android/sdk/el;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/el;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/el;->c:Lcom/paypal/android/sdk/er;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/paypal/android/sdk/el;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
