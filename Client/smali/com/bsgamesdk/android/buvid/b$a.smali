.class Lcom/bsgamesdk/android/buvid/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bsgamesdk/android/buvid/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/bsgamesdk/android/buvid/b;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/bsgamesdk/android/buvid/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bsgamesdk/android/buvid/b;-><init>(Lcom/bsgamesdk/android/buvid/b$1;)V

    sput-object v0, Lcom/bsgamesdk/android/buvid/b$a;->a:Lcom/bsgamesdk/android/buvid/b;

    return-void
.end method

.method static synthetic a()Lcom/bsgamesdk/android/buvid/b;
    .registers 1

    sget-object v0, Lcom/bsgamesdk/android/buvid/b$a;->a:Lcom/bsgamesdk/android/buvid/b;

    return-object v0
.end method
