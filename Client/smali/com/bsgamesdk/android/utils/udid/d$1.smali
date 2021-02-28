.class Lcom/bsgamesdk/android/utils/udid/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/utils/udid/d;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bsgamesdk/android/utils/udid/c;

.field final synthetic b:Lcom/bsgamesdk/android/utils/udid/d;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/utils/udid/d;Lcom/bsgamesdk/android/utils/udid/c;)V
    .registers 3

    iput-object p1, p0, Lcom/bsgamesdk/android/utils/udid/d$1;->b:Lcom/bsgamesdk/android/utils/udid/d;

    iput-object p2, p0, Lcom/bsgamesdk/android/utils/udid/d$1;->a:Lcom/bsgamesdk/android/utils/udid/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    invoke-static {}, Lcom/bsgamesdk/android/utils/udid/d;->c()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/utils/udid/d$1;->a:Lcom/bsgamesdk/android/utils/udid/c;

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/utils/udid/e;->a(Landroid/content/Context;Lcom/bsgamesdk/android/utils/udid/c;)V

    return-void
.end method
