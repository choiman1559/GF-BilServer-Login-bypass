.class public final Lcom/bsgamesdk/android/utils/f$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bsgamesdk/android/utils/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static a:I

.field public static b:I

.field public static c:I

.field public static d:I

.field public static e:I

.field public static f:I

.field public static g:I

.field public static h:I

.field private static i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-string v0, "anim"

    sput-object v0, Lcom/bsgamesdk/android/utils/f$a;->i:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_animate_progress"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$a;->i:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$a;->a:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_from_left"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$a;->i:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$a;->b:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_from_right"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$a;->i:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$a;->c:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_loading"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$a;->i:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$a;->d:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_to_left"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$a;->i:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$a;->e:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_to_right"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$a;->i:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$a;->f:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_from_top"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$a;->i:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$a;->g:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_to_top"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$a;->i:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$a;->h:I

    return-void
.end method
