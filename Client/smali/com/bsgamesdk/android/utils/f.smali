.class public final Lcom/bsgamesdk/android/utils/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bsgamesdk/android/utils/f$f;,
        Lcom/bsgamesdk/android/utils/f$e;,
        Lcom/bsgamesdk/android/utils/f$d;,
        Lcom/bsgamesdk/android/utils/f$c;,
        Lcom/bsgamesdk/android/utils/f$b;,
        Lcom/bsgamesdk/android/utils/f$a;
    }
.end annotation


# static fields
.field private static a:Landroid/content/res/Resources;

.field private static b:Ljava/lang/String;


# direct methods
.method static synthetic a()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/bsgamesdk/android/utils/f;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lcom/bsgamesdk/android/utils/f;->a:Landroid/content/res/Resources;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bsgamesdk/android/utils/f;->b:Ljava/lang/String;

    return-void
.end method

.method static synthetic b()Landroid/content/res/Resources;
    .registers 1

    sget-object v0, Lcom/bsgamesdk/android/utils/f;->a:Landroid/content/res/Resources;

    return-object v0
.end method
