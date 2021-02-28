.class public abstract Lcom/bsgamesdk/android/model/g;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/bsgamesdk/android/utils/SecurePreferences;

.field private b:Lcom/bsgamesdk/android/utils/SecurePreferences;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/bsgamesdk/android/model/g;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const-class v0, Lcom/bsgamesdk/android/model/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/model/g;->c:Ljava/lang/String;

    :cond_1b
    :try_start_1b
    sget-object v0, Lcom/bsgamesdk/android/model/c;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-static {v1}, Lcom/bsgamesdk/android/utils/o;->a(Landroid/content/Context;)Lcom/bsgamesdk/android/utils/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bsgamesdk/android/utils/o;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bsgamesdk/android/model/c;->e:Ljava/lang/String;

    sget-object v0, Lcom/bsgamesdk/android/model/c;->e:Ljava/lang/String;

    :cond_2f
    new-instance v2, Lcom/bsgamesdk/android/utils/SecurePreferences;

    invoke-direct {v2, v1, p2, v0, p3}, Lcom/bsgamesdk/android/utils/SecurePreferences;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v2, p0, Lcom/bsgamesdk/android/model/g;->a:Lcom/bsgamesdk/android/utils/SecurePreferences;

    iget-object v0, p0, Lcom/bsgamesdk/android/model/g;->b:Lcom/bsgamesdk/android/utils/SecurePreferences;

    if-nez v0, :cond_46

    new-instance v0, Lcom/bsgamesdk/android/utils/SecurePreferences;

    const-string v2, "bili_access_token"

    iget-object v3, p0, Lcom/bsgamesdk/android/model/g;->c:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/bsgamesdk/android/utils/SecurePreferences;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/bsgamesdk/android/model/g;->b:Lcom/bsgamesdk/android/utils/SecurePreferences;
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_46} :catch_47

    :cond_46
    :goto_46
    return-void

    :catch_47
    move-exception v0

    goto :goto_46
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/model/g;->a:Lcom/bsgamesdk/android/utils/SecurePreferences;

    invoke-virtual {v0}, Lcom/bsgamesdk/android/utils/SecurePreferences;->b()V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/bsgamesdk/android/model/g;->a:Lcom/bsgamesdk/android/utils/SecurePreferences;

    invoke-virtual {v0, p1, p2}, Lcom/bsgamesdk/android/utils/SecurePreferences;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/model/g;->b:Lcom/bsgamesdk/android/utils/SecurePreferences;

    invoke-virtual {v0}, Lcom/bsgamesdk/android/utils/SecurePreferences;->b()V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/bsgamesdk/android/model/g;->b:Lcom/bsgamesdk/android/utils/SecurePreferences;

    invoke-virtual {v0, p1, p2}, Lcom/bsgamesdk/android/utils/SecurePreferences;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/bsgamesdk/android/model/g;->a:Lcom/bsgamesdk/android/utils/SecurePreferences;

    invoke-virtual {v0, p1}, Lcom/bsgamesdk/android/utils/SecurePreferences;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/bsgamesdk/android/model/g;->b:Lcom/bsgamesdk/android/utils/SecurePreferences;

    invoke-virtual {v0, p1}, Lcom/bsgamesdk/android/utils/SecurePreferences;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
