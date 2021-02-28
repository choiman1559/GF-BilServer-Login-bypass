.class public Lcom/bsgamesdk/android/api/i;
.super Ljava/lang/Object;


# static fields
.field static a:Z

.field private static b:Landroid/content/Context;

.field private static c:Lcom/bsgamesdk/android/api/i;

.field private static d:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/bsgamesdk/android/api/i$1;

    invoke-direct {v1}, Lcom/bsgamesdk/android/api/i$1;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lcom/bsgamesdk/android/api/i;->d:Ljava/lang/Thread;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/bsgamesdk/android/api/i;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic a()Landroid/content/Context;
    .registers 1

    sget-object v0, Lcom/bsgamesdk/android/api/i;->b:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 2

    sget-object v0, Lcom/bsgamesdk/android/api/i;->c:Lcom/bsgamesdk/android/api/i;

    if-nez v0, :cond_10

    new-instance v0, Lcom/bsgamesdk/android/api/i;

    invoke-direct {v0, p0}, Lcom/bsgamesdk/android/api/i;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/bsgamesdk/android/api/i;->c:Lcom/bsgamesdk/android/api/i;

    sget-object v0, Lcom/bsgamesdk/android/api/i;->d:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_10
    const/4 v0, 0x0

    sput-boolean v0, Lcom/bsgamesdk/android/api/i;->a:Z

    new-instance v0, Lcom/bsgamesdk/android/api/i$2;

    invoke-direct {v0}, Lcom/bsgamesdk/android/api/i$2;-><init>()V

    invoke-virtual {v0}, Lcom/bsgamesdk/android/api/i$2;->start()V

    return-void
.end method
