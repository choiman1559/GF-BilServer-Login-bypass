.class Lcom/bsgamesdk/android/dc/buvid/file/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bsgamesdk/android/dc/buvid/file/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/bsgamesdk/android/dc/buvid/file/a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/bsgamesdk/android/dc/buvid/file/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bsgamesdk/android/dc/buvid/file/a;-><init>(Lcom/bsgamesdk/android/dc/buvid/file/a$1;)V

    sput-object v0, Lcom/bsgamesdk/android/dc/buvid/file/a$a;->a:Lcom/bsgamesdk/android/dc/buvid/file/a;

    return-void
.end method

.method static synthetic a()Lcom/bsgamesdk/android/dc/buvid/file/a;
    .registers 1

    sget-object v0, Lcom/bsgamesdk/android/dc/buvid/file/a$a;->a:Lcom/bsgamesdk/android/dc/buvid/file/a;

    return-object v0
.end method
