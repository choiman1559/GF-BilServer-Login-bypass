.class public final Lcom/paypal/android/sdk/da;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/paypal/android/sdk/eq;


# static fields
.field private static volatile a:Lcom/paypal/android/sdk/da;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/paypal/android/sdk/da;
    .registers 2

    sget-object v0, Lcom/paypal/android/sdk/da;->a:Lcom/paypal/android/sdk/da;

    if-nez v0, :cond_13

    const-class v1, Lcom/paypal/android/sdk/da;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/paypal/android/sdk/da;->a:Lcom/paypal/android/sdk/da;

    if-nez v0, :cond_12

    new-instance v0, Lcom/paypal/android/sdk/da;

    invoke-direct {v0}, Lcom/paypal/android/sdk/da;-><init>()V

    sput-object v0, Lcom/paypal/android/sdk/da;->a:Lcom/paypal/android/sdk/da;

    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    :cond_13
    sget-object v0, Lcom/paypal/android/sdk/da;->a:Lcom/paypal/android/sdk/da;

    return-object v0

    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    return-object p1
.end method

.method public final b()Ljava/util/Locale;
    .registers 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lcom/paypal/android/sdk/ee;
    .registers 3

    new-instance v0, Lcom/paypal/android/sdk/ee;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/paypal/android/sdk/ee;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final d()Lcom/paypal/android/sdk/ee;
    .registers 2

    invoke-virtual {p0}, Lcom/paypal/android/sdk/da;->c()Lcom/paypal/android/sdk/ee;

    move-result-object v0

    return-object v0
.end method
