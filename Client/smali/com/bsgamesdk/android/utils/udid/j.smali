.class public Lcom/bsgamesdk/android/utils/udid/j;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;)V
    .registers 2

    :try_start_0
    invoke-static {p0}, Lcom/bsgamesdk/android/utils/udid/d;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/bsgamesdk/android/utils/udid/d;->a()Lcom/bsgamesdk/android/utils/udid/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bsgamesdk/android/utils/udid/d;->b()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_a} :catch_b

    :goto_a
    return-void

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_a
.end method
