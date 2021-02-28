.class public final Lcom/paypal/android/sdk/ex;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "Android"

    sput-object v0, Lcom/paypal/android/sdk/ex;->a:Ljava/lang/String;

    const-string v0, "mobile"

    sput-object v0, Lcom/paypal/android/sdk/ex;->b:Ljava/lang/String;

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sput-object v0, Lcom/paypal/android/sdk/ex;->c:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/paypal/android/sdk/ex;->d:Ljava/lang/String;

    return-void
.end method
