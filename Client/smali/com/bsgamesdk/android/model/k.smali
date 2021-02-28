.class public Lcom/bsgamesdk/android/model/k;
.super Lcom/bsgamesdk/android/model/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const-string v0, "TouristLogin"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/bsgamesdk/android/model/g;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public a(Lcom/bsgamesdk/android/model/TouristUserParceable;)V
    .registers 4

    invoke-static {p1}, Lcom/bsgamesdk/android/utils/v;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tourist_user"

    invoke-virtual {p0, v1, v0}, Lcom/bsgamesdk/android/model/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "tourist"

    invoke-virtual {p0, v1, v0}, Lcom/bsgamesdk/android/model/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c()Lcom/bsgamesdk/android/model/TouristUserParceable;
    .registers 2

    const-string v0, "tourist_user"

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/model/k;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/v;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bsgamesdk/android/model/TouristUserParceable;

    if-nez v0, :cond_1c

    const-string v0, "tourist"

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/model/k;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/v;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bsgamesdk/android/model/TouristUserParceable;

    if-eqz v0, :cond_1d

    :cond_1c
    :goto_1c
    return-object v0

    :cond_1d
    new-instance v0, Lcom/bsgamesdk/android/model/TouristUserParceable;

    invoke-direct {v0}, Lcom/bsgamesdk/android/model/TouristUserParceable;-><init>()V

    goto :goto_1c
.end method
