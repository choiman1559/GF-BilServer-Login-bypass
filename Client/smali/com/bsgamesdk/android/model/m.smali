.class public Lcom/bsgamesdk/android/model/m;
.super Lcom/bsgamesdk/android/model/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const-string v0, "login"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/bsgamesdk/android/model/g;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public a(Lcom/bsgamesdk/android/model/UserParcelable;)V
    .registers 4

    invoke-static {p1}, Lcom/bsgamesdk/android/utils/v;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {p0, v1, v0}, Lcom/bsgamesdk/android/model/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c()Lcom/bsgamesdk/android/model/UserParcelable;
    .registers 2

    const-string v0, "user"

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/model/m;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/v;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bsgamesdk/android/model/UserParcelable;

    if-nez v0, :cond_13

    new-instance v0, Lcom/bsgamesdk/android/model/UserParcelable;

    invoke-direct {v0}, Lcom/bsgamesdk/android/model/UserParcelable;-><init>()V

    :cond_13
    return-object v0
.end method
