.class public Lcom/bsgamesdk/android/utils/udid/e;
.super Ljava/lang/Object;


# direct methods
.method static a(Landroid/content/Context;)Lcom/bsgamesdk/android/utils/udid/c;
    .registers 3

    const-string v0, "env"

    const-string v1, "env.pub"

    invoke-static {v0, v1, p0}, Lcom/bsgamesdk/android/utils/udid/h;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/bsgamesdk/android/utils/udid/c;

    move-result-object v0

    return-object v0
.end method

.method static a(Landroid/content/Context;Lcom/bsgamesdk/android/utils/udid/c;)V
    .registers 4

    const-string v0, "env"

    const-string v1, "env.pub"

    invoke-static {p1, v0, v1, p0}, Lcom/bsgamesdk/android/utils/udid/i;->a(Lcom/bsgamesdk/android/utils/udid/c;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method
