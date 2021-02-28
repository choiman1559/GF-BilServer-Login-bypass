.class public final Lcom/google/android/gms/dynamite/DynamiteModule;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/dynamite/DynamiteModule$DynamiteLoaderClassLoader;,
        Lcom/google/android/gms/dynamite/DynamiteModule$zza;,
        Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;,
        Lcom/google/android/gms/dynamite/DynamiteModule$zzb;,
        Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;
    }
.end annotation


# static fields
.field public static final PREFER_HIGHEST_OR_LOCAL_VERSION:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

.field public static final PREFER_HIGHEST_OR_LOCAL_VERSION_NO_FORCE_STAGING:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

.field public static final PREFER_HIGHEST_OR_REMOTE_VERSION:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

.field public static final PREFER_LOCAL:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

.field public static final PREFER_REMOTE:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

.field private static zzif:Ljava/lang/Boolean;

.field private static zzig:Lcom/google/android/gms/dynamite/zzi;

.field private static zzih:Lcom/google/android/gms/dynamite/zzk;

.field private static zzii:Ljava/lang/String;

.field private static zzij:I

.field private static final zzik:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/google/android/gms/dynamite/DynamiteModule$zza;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzil:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zza;

.field private static final zzim:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;


# instance fields
.field private final zzin:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 259
    const/4 v0, -0x1

    sput v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzij:I

    .line 260
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzik:Ljava/lang/ThreadLocal;

    .line 261
    new-instance v0, Lcom/google/android/gms/dynamite/zza;

    invoke-direct {v0}, Lcom/google/android/gms/dynamite/zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzil:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zza;

    .line 262
    new-instance v0, Lcom/google/android/gms/dynamite/zzb;

    invoke-direct {v0}, Lcom/google/android/gms/dynamite/zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_REMOTE:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    .line 263
    new-instance v0, Lcom/google/android/gms/dynamite/zzc;

    invoke-direct {v0}, Lcom/google/android/gms/dynamite/zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_LOCAL:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    .line 264
    new-instance v0, Lcom/google/android/gms/dynamite/zzd;

    invoke-direct {v0}, Lcom/google/android/gms/dynamite/zzd;-><init>()V

    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_HIGHEST_OR_LOCAL_VERSION:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    .line 265
    new-instance v0, Lcom/google/android/gms/dynamite/zze;

    invoke-direct {v0}, Lcom/google/android/gms/dynamite/zze;-><init>()V

    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_HIGHEST_OR_LOCAL_VERSION_NO_FORCE_STAGING:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    .line 266
    new-instance v0, Lcom/google/android/gms/dynamite/zzf;

    invoke-direct {v0}, Lcom/google/android/gms/dynamite/zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_HIGHEST_OR_REMOTE_VERSION:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    .line 267
    new-instance v0, Lcom/google/android/gms/dynamite/zzg;

    invoke-direct {v0}, Lcom/google/android/gms/dynamite/zzg;-><init>()V

    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzim:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzin:Landroid/content/Context;

    .line 258
    return-void
.end method

.method public static getLocalVersion(Landroid/content/Context;Ljava/lang/String;)I
    .registers 7

    .line 37
    const-string v0, "DynamiteModule"

    .line 38
    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x3d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "com.google.android.gms.dynamite.descriptors."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".ModuleDescriptor"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 40
    invoke-virtual {p0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 41
    const-string v2, "MODULE_ID"

    invoke-virtual {p0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 42
    const-string v3, "MODULE_VERSION"

    invoke-virtual {p0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    .line 43
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8c

    .line 44
    nop

    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x33

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Module descriptor id \'"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, "\' didn\'t match expected id \'"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, "\'"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 46
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    return v1

    .line 48
    :cond_8c
    invoke-virtual {p0, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0
    :try_end_90
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_90} :catch_b0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_90} :catch_91

    return p0

    .line 52
    :catch_91
    move-exception p0

    .line 53
    const-string p1, "Failed to load module descriptor class: "

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_a7

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_ac

    :cond_a7
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_ac
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d8

    .line 49
    :catch_b0
    move-exception p0

    .line 50
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, 0x2d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p0, "Local module descriptor class for "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " not found."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    nop

    .line 54
    :goto_d8
    return v1
.end method

.method public static getRemoteVersion(Landroid/content/Context;Ljava/lang/String;)I
    .registers 3

    .line 149
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->zza(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public static load(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;
        }
    .end annotation

    .line 1
    const-string v0, ":"

    const-string v1, "DynamiteModule"

    sget-object v2, Lcom/google/android/gms/dynamite/DynamiteModule;->zzik:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/dynamite/DynamiteModule$zza;

    .line 2
    new-instance v4, Lcom/google/android/gms/dynamite/DynamiteModule$zza;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/google/android/gms/dynamite/DynamiteModule$zza;-><init>(Lcom/google/android/gms/dynamite/zza;)V

    .line 3
    invoke-virtual {v2, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 4
    :try_start_15
    sget-object v6, Lcom/google/android/gms/dynamite/DynamiteModule;->zzil:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zza;

    .line 5
    invoke-interface {p1, p0, p2, v6}, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zza;)Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zzb;

    move-result-object v6

    .line 6
    iget v7, v6, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zzb;->zzir:I

    iget v8, v6, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zzb;->zzis:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x44

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "Considering local module "

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " and remote module "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget v0, v6, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zzb;->zzit:I

    if-eqz v0, :cond_10f

    iget v0, v6, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zzb;->zzit:I

    const/4 v7, -0x1

    if-ne v0, v7, :cond_6f

    iget v0, v6, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zzb;->zzir:I

    if-eqz v0, :cond_10f

    :cond_6f
    iget v0, v6, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zzb;->zzit:I

    const/4 v8, 0x1

    if-ne v0, v8, :cond_78

    iget v0, v6, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zzb;->zzis:I

    if-eqz v0, :cond_10f

    .line 9
    :cond_78
    iget v0, v6, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zzb;->zzit:I

    if-ne v0, v7, :cond_8d

    .line 10
    invoke-static {p0, p2}, Lcom/google/android/gms/dynamite/DynamiteModule;->zze(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object p0
    :try_end_80
    .catchall {:try_start_15 .. :try_end_80} :catchall_13e

    .line 11
    iget-object p1, v4, Lcom/google/android/gms/dynamite/DynamiteModule$zza;->zzio:Landroid/database/Cursor;

    if-eqz p1, :cond_89

    .line 12
    iget-object p1, v4, Lcom/google/android/gms/dynamite/DynamiteModule$zza;->zzio:Landroid/database/Cursor;

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 13
    :cond_89
    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 14
    return-object p0

    .line 15
    :cond_8d
    :try_start_8d
    iget v0, v6, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zzb;->zzit:I
    :try_end_8f
    .catchall {:try_start_8d .. :try_end_8f} :catchall_13e

    if-ne v0, v8, :cond_f2

    .line 16
    :try_start_91
    iget v0, v6, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zzb;->zzis:I

    invoke-static {p0, p2, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->zza(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object p0
    :try_end_97
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_91 .. :try_end_97} :catch_a4
    .catchall {:try_start_91 .. :try_end_97} :catchall_13e

    .line 17
    iget-object p1, v4, Lcom/google/android/gms/dynamite/DynamiteModule$zza;->zzio:Landroid/database/Cursor;

    if-eqz p1, :cond_a0

    .line 18
    iget-object p1, v4, Lcom/google/android/gms/dynamite/DynamiteModule$zza;->zzio:Landroid/database/Cursor;

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 19
    :cond_a0
    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 20
    return-object p0

    .line 21
    :catch_a4
    move-exception v0

    .line 22
    :try_start_a5
    const-string v2, "Failed to load remote module: "

    invoke-virtual {v0}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_ba

    invoke-virtual {v2, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_c0

    :cond_ba
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v8

    :goto_c0
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    iget v1, v6, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zzb;->zzir:I

    if-eqz v1, :cond_ea

    .line 24
    new-instance v1, Lcom/google/android/gms/dynamite/DynamiteModule$zzb;

    iget v2, v6, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zzb;->zzir:I

    const/4 v6, 0x0

    invoke-direct {v1, v2, v6}, Lcom/google/android/gms/dynamite/DynamiteModule$zzb;-><init>(II)V

    .line 25
    invoke-interface {p1, p0, p2, v1}, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zza;)Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zzb;

    move-result-object p1

    .line 26
    iget p1, p1, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zzb;->zzit:I

    if-ne p1, v7, :cond_ea

    .line 27
    invoke-static {p0, p2}, Lcom/google/android/gms/dynamite/DynamiteModule;->zze(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object p0
    :try_end_db
    .catchall {:try_start_a5 .. :try_end_db} :catchall_13e

    .line 28
    iget-object p1, v4, Lcom/google/android/gms/dynamite/DynamiteModule$zza;->zzio:Landroid/database/Cursor;

    if-eqz p1, :cond_e4

    .line 29
    iget-object p1, v4, Lcom/google/android/gms/dynamite/DynamiteModule$zza;->zzio:Landroid/database/Cursor;

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 30
    :cond_e4
    sget-object p1, Lcom/google/android/gms/dynamite/DynamiteModule;->zzik:Ljava/lang/ThreadLocal;

    invoke-virtual {p1, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 31
    return-object p0

    .line 32
    :cond_ea
    :try_start_ea
    new-instance p0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string p1, "Remote load failed. No local fallback found."

    invoke-direct {p0, p1, v0, v5}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/android/gms/dynamite/zza;)V

    throw p0

    .line 33
    :cond_f2
    new-instance p0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    iget p1, v6, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zzb;->zzit:I

    const/16 p2, 0x2f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "VersionPolicy returned invalid code:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v5}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/zza;)V

    throw p0

    .line 8
    :cond_10f
    new-instance p0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    iget p1, v6, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zzb;->zzir:I

    iget p2, v6, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zzb;->zzis:I

    const/16 v0, 0x5b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "No acceptable module found. Local version is "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " and remote version is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v5}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/zza;)V

    throw p0
    :try_end_13e
    .catchall {:try_start_ea .. :try_end_13e} :catchall_13e

    .line 34
    :catchall_13e
    move-exception p0

    iget-object p1, v4, Lcom/google/android/gms/dynamite/DynamiteModule$zza;->zzio:Landroid/database/Cursor;

    if-eqz p1, :cond_148

    .line 35
    iget-object p1, v4, Lcom/google/android/gms/dynamite/DynamiteModule$zza;->zzio:Landroid/database/Cursor;

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 36
    :cond_148
    sget-object p1, Lcom/google/android/gms/dynamite/DynamiteModule;->zzik:Ljava/lang/ThreadLocal;

    invoke-virtual {p1, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    throw p0
.end method

.method public static zza(Landroid/content/Context;Ljava/lang/String;Z)I
    .registers 11

    .line 55
    :try_start_0
    const-class v0, Lcom/google/android/gms/dynamite/DynamiteModule;

    monitor-enter v0
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_f0

    .line 56
    :try_start_3
    sget-object v1, Lcom/google/android/gms/dynamite/DynamiteModule;->zzif:Ljava/lang/Boolean;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_ed

    .line 57
    if-nez v1, :cond_ba

    .line 58
    :try_start_7
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 59
    const-class v2, Lcom/google/android/gms/dynamite/DynamiteModule$DynamiteLoaderClassLoader;

    .line 60
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 61
    const-string v2, "sClassLoader"

    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 63
    monitor-enter v1
    :try_end_20
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_20} :catch_8f
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_20} :catch_8f
    .catch Ljava/lang/NoSuchFieldException; {:try_start_7 .. :try_end_20} :catch_8f
    .catchall {:try_start_7 .. :try_end_20} :catchall_ed

    .line 64
    const/4 v3, 0x0

    :try_start_21
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ClassLoader;

    .line 65
    if-eqz v4, :cond_3a

    .line 66
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    if-ne v4, v2, :cond_32

    .line 67
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_31
    .catchall {:try_start_21 .. :try_end_31} :catchall_8c

    goto :goto_89

    .line 68
    :cond_32
    :try_start_32
    invoke-static {v4}, Lcom/google/android/gms/dynamite/DynamiteModule;->zza(Ljava/lang/ClassLoader;)V
    :try_end_35
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_32 .. :try_end_35} :catch_36
    .catchall {:try_start_32 .. :try_end_35} :catchall_8c

    .line 69
    goto :goto_37

    .line 70
    :catch_36
    move-exception v2

    .line 71
    :goto_37
    :try_start_37
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_89

    .line 72
    :cond_3a
    const-string v4, "com.google.android.gms"

    .line 73
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 74
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_54

    .line 75
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 76
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_53
    .catchall {:try_start_37 .. :try_end_53} :catchall_8c

    goto :goto_89

    .line 77
    :cond_54
    :try_start_54
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzc(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v4

    .line 78
    sget-object v5, Lcom/google/android/gms/dynamite/DynamiteModule;->zzii:Ljava/lang/String;

    if-eqz v5, :cond_7c

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_63

    goto :goto_7c

    .line 80
    :cond_63
    new-instance v5, Lcom/google/android/gms/dynamite/zzh;

    sget-object v6, Lcom/google/android/gms/dynamite/DynamiteModule;->zzii:Ljava/lang/String;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/google/android/gms/dynamite/zzh;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 81
    nop

    .line 82
    invoke-static {v5}, Lcom/google/android/gms/dynamite/DynamiteModule;->zza(Ljava/lang/ClassLoader;)V

    .line 83
    invoke-virtual {v2, v3, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 84
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v5, Lcom/google/android/gms/dynamite/DynamiteModule;->zzif:Ljava/lang/Boolean;
    :try_end_79
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_54 .. :try_end_79} :catch_7f
    .catchall {:try_start_54 .. :try_end_79} :catchall_8c

    .line 85
    :try_start_79
    monitor-exit v1
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_8c

    :try_start_7a
    monitor-exit v0
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_ed

    return v4

    .line 79
    :cond_7c
    :goto_7c
    :try_start_7c
    monitor-exit v1
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_8c

    :try_start_7d
    monitor-exit v0
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_ed

    return v4

    .line 86
    :catch_7f
    move-exception v4

    .line 87
    :try_start_80
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 88
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 89
    :goto_89
    monitor-exit v1

    move-object v1, v2

    goto :goto_b8

    :catchall_8c
    move-exception v2

    monitor-exit v1
    :try_end_8e
    .catchall {:try_start_80 .. :try_end_8e} :catchall_8c

    :try_start_8e
    throw v2
    :try_end_8f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8e .. :try_end_8f} :catch_8f
    .catch Ljava/lang/IllegalAccessException; {:try_start_8e .. :try_end_8f} :catch_8f
    .catch Ljava/lang/NoSuchFieldException; {:try_start_8e .. :try_end_8f} :catch_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_ed

    .line 90
    :catch_8f
    move-exception v1

    .line 91
    :try_start_90
    const-string v2, "DynamiteModule"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Failed to load module via V2: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 93
    :goto_b8
    sput-object v1, Lcom/google/android/gms/dynamite/DynamiteModule;->zzif:Ljava/lang/Boolean;

    .line 94
    :cond_ba
    monitor-exit v0
    :try_end_bb
    .catchall {:try_start_90 .. :try_end_bb} :catchall_ed

    .line 95
    :try_start_bb
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_bf
    .catchall {:try_start_bb .. :try_end_bf} :catchall_f0

    if-eqz v0, :cond_e8

    .line 96
    :try_start_c1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzc(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result p0
    :try_end_c5
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_c1 .. :try_end_c5} :catch_c6
    .catchall {:try_start_c1 .. :try_end_c5} :catchall_f0

    return p0

    .line 97
    :catch_c6
    move-exception p1

    .line 98
    :try_start_c7
    const-string p2, "DynamiteModule"

    const-string v0, "Failed to retrieve remote module version: "

    invoke-virtual {p1}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_de

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_e3

    :cond_de
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_e3
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const/4 p0, 0x0

    return p0

    .line 100
    :cond_e8
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzb(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result p0
    :try_end_ec
    .catchall {:try_start_c7 .. :try_end_ec} :catchall_f0

    return p0

    .line 94
    :catchall_ed
    move-exception p1

    :try_start_ee
    monitor-exit v0
    :try_end_ef
    .catchall {:try_start_ee .. :try_end_ef} :catchall_ed

    :try_start_ef
    throw p1
    :try_end_f0
    .catchall {:try_start_ef .. :try_end_f0} :catchall_f0

    .line 101
    :catchall_f0
    move-exception p1

    .line 102
    invoke-static {p0, p1}, Lcom/google/android/gms/common/util/CrashUtils;->addDynamiteErrorToDropBox(Landroid/content/Context;Ljava/lang/Throwable;)Z

    .line 103
    throw p1
.end method

.method private static zza(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/gms/dynamite/DynamiteModule;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;
        }
    .end annotation

    .line 152
    const/4 v0, 0x0

    :try_start_1
    const-class v1, Lcom/google/android/gms/dynamite/DynamiteModule;

    monitor-enter v1
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_4} :catch_a3
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_1 .. :try_end_4} :catch_a1
    .catchall {:try_start_1 .. :try_end_4} :catchall_95

    .line 153
    :try_start_4
    sget-object v2, Lcom/google/android/gms/dynamite/DynamiteModule;->zzif:Ljava/lang/Boolean;

    .line 154
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_92

    .line 155
    if-eqz v2, :cond_8a

    .line 157
    :try_start_9
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 158
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzb(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object p0

    return-object p0

    .line 159
    :cond_14
    nop

    .line 160
    const-string v1, "DynamiteModule"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x33

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Selected remote version of "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", version >= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-static {p0}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzj(Landroid/content/Context;)Lcom/google/android/gms/dynamite/zzi;

    move-result-object v1

    .line 162
    if-eqz v1, :cond_82

    .line 164
    invoke-interface {v1}, Lcom/google/android/gms/dynamite/zzi;->zzak()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_58

    .line 165
    nop

    .line 166
    invoke-static {p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2}, Lcom/google/android/gms/dynamite/zzi;->zzb(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;I)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    goto :goto_68

    .line 167
    :cond_58
    const-string v2, "DynamiteModule"

    const-string v3, "Dynamite loader version < 2, falling back to createModuleContext"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    nop

    .line 169
    invoke-static {p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2}, Lcom/google/android/gms/dynamite/zzi;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;I)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 170
    :goto_68
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_7a

    .line 172
    new-instance p2, Lcom/google/android/gms/dynamite/DynamiteModule;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-direct {p2, p1}, Lcom/google/android/gms/dynamite/DynamiteModule;-><init>(Landroid/content/Context;)V

    .line 173
    return-object p2

    .line 171
    :cond_7a
    new-instance p1, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string p2, "Failed to load remote module."

    invoke-direct {p1, p2, v0}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/zza;)V

    throw p1

    .line 163
    :cond_82
    new-instance p1, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string p2, "Failed to create IDynamiteLoader."

    invoke-direct {p1, p2, v0}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/zza;)V

    throw p1

    .line 156
    :cond_8a
    new-instance p1, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string p2, "Failed to determine which loading route to use."

    invoke-direct {p1, p2, v0}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/zza;)V

    throw p1
    :try_end_92
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_92} :catch_a3
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_9 .. :try_end_92} :catch_a1
    .catchall {:try_start_9 .. :try_end_92} :catchall_95

    .line 154
    :catchall_92
    move-exception p1

    :try_start_93
    monitor-exit v1
    :try_end_94
    .catchall {:try_start_93 .. :try_end_94} :catchall_92

    :try_start_94
    throw p1
    :try_end_95
    .catch Landroid/os/RemoteException; {:try_start_94 .. :try_end_95} :catch_a3
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_94 .. :try_end_95} :catch_a1
    .catchall {:try_start_94 .. :try_end_95} :catchall_95

    .line 177
    :catchall_95
    move-exception p1

    .line 178
    invoke-static {p0, p1}, Lcom/google/android/gms/common/util/CrashUtils;->addDynamiteErrorToDropBox(Landroid/content/Context;Ljava/lang/Throwable;)Z

    .line 179
    new-instance p0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string p2, "Failed to load remote module."

    invoke-direct {p0, p2, p1, v0}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/android/gms/dynamite/zza;)V

    throw p0

    .line 176
    :catch_a1
    move-exception p0

    throw p0

    .line 174
    :catch_a3
    move-exception p0

    .line 175
    new-instance p1, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string p2, "Failed to load remote module."

    invoke-direct {p1, p2, p0, v0}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/android/gms/dynamite/zza;)V

    throw p1
.end method

.method private static zza(Ljava/lang/ClassLoader;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;
        }
    .end annotation

    .line 239
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "com.google.android.gms.dynamiteloader.DynamiteLoaderV2"

    .line 240
    invoke-virtual {p0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {p0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IBinder;

    .line 241
    nop

    .line 242
    if-nez p0, :cond_1b

    .line 243
    move-object v1, v0

    goto :goto_2d

    .line 244
    :cond_1b
    const-string v1, "com.google.android.gms.dynamite.IDynamiteLoaderV2"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 245
    instance-of v2, v1, Lcom/google/android/gms/dynamite/zzk;

    if-eqz v2, :cond_28

    .line 246
    check-cast v1, Lcom/google/android/gms/dynamite/zzk;

    goto :goto_2d

    .line 247
    :cond_28
    new-instance v1, Lcom/google/android/gms/dynamite/zzl;

    invoke-direct {v1, p0}, Lcom/google/android/gms/dynamite/zzl;-><init>(Landroid/os/IBinder;)V

    .line 248
    :goto_2d
    sput-object v1, Lcom/google/android/gms/dynamite/DynamiteModule;->zzih:Lcom/google/android/gms/dynamite/zzk;
    :try_end_2f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_2f} :catch_30
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_2f} :catch_30
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_2f} :catch_30
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_2f} :catch_30
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_2f} :catch_30

    .line 249
    return-void

    .line 250
    :catch_30
    move-exception p0

    .line 251
    new-instance v1, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string v2, "Failed to instantiate dynamite loader"

    invoke-direct {v1, v2, p0, v0}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/android/gms/dynamite/zza;)V

    throw v1
.end method

.method private static zzaj()Ljava/lang/Boolean;
    .registers 3

    .line 236
    const-class v0, Lcom/google/android/gms/dynamite/DynamiteModule;

    monitor-enter v0

    .line 237
    :try_start_3
    sget v1, Lcom/google/android/gms/dynamite/DynamiteModule;->zzij:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 238
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method private static zzb(Landroid/content/Context;Ljava/lang/String;Z)I
    .registers 8

    .line 104
    const-string v0, "DynamiteModule"

    invoke-static {p0}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzj(Landroid/content/Context;)Lcom/google/android/gms/dynamite/zzi;

    move-result-object v1

    .line 105
    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 106
    return v2

    .line 107
    :cond_a
    :try_start_a
    invoke-interface {v1}, Lcom/google/android/gms/dynamite/zzi;->zzak()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_1b

    .line 108
    nop

    .line 109
    invoke-static {p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p0

    .line 110
    invoke-interface {v1, p0, p1, p2}, Lcom/google/android/gms/dynamite/zzi;->zzb(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Z)I

    move-result p0

    return p0

    .line 111
    :cond_1b
    const-string v3, "IDynamite loader version < 2, falling back to getModuleVersion2"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-static {p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p0

    invoke-interface {v1, p0, p1, p2}, Lcom/google/android/gms/dynamite/zzi;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Z)I

    move-result p0
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_28} :catch_29

    return p0

    .line 113
    :catch_29
    move-exception p0

    .line 114
    const-string p1, "Failed to retrieve remote module version: "

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_3f

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_44

    :cond_3f
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_44
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return v2
.end method

.method private static zzb(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/gms/dynamite/DynamiteModule;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 207
    const-string v0, "DynamiteModule"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x33

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Selected remote version of "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", version >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    const-class v0, Lcom/google/android/gms/dynamite/DynamiteModule;

    monitor-enter v0

    .line 209
    :try_start_2f
    sget-object v1, Lcom/google/android/gms/dynamite/DynamiteModule;->zzih:Lcom/google/android/gms/dynamite/zzk;

    .line 210
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_a7

    .line 211
    const/4 v0, 0x0

    if-eqz v1, :cond_9f

    .line 213
    sget-object v2, Lcom/google/android/gms/dynamite/DynamiteModule;->zzik:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/dynamite/DynamiteModule$zza;

    .line 214
    if-eqz v2, :cond_97

    iget-object v3, v2, Lcom/google/android/gms/dynamite/DynamiteModule$zza;->zzio:Landroid/database/Cursor;

    if-eqz v3, :cond_97

    .line 216
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 217
    iget-object v2, v2, Lcom/google/android/gms/dynamite/DynamiteModule$zza;->zzio:Landroid/database/Cursor;

    .line 218
    nop

    .line 219
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 220
    invoke-static {}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzaj()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 221
    const-string v3, "DynamiteModule"

    const-string v4, "Dynamite loader version >= 2, using loadModule2NoCrashUtils"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    nop

    .line 223
    invoke-static {p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p0

    .line 224
    invoke-static {v2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    .line 225
    invoke-interface {v1, p0, p1, p2, v2}, Lcom/google/android/gms/dynamite/zzk;->zzb(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;ILcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p0

    goto :goto_80

    .line 226
    :cond_6c
    const-string v3, "DynamiteModule"

    const-string v4, "Dynamite loader version < 2, falling back to loadModule2"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    nop

    .line 228
    invoke-static {p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p0

    .line 229
    invoke-static {v2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    .line 230
    invoke-interface {v1, p0, p1, p2, v2}, Lcom/google/android/gms/dynamite/zzk;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;ILcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p0

    .line 231
    :goto_80
    invoke-static {p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    .line 232
    nop

    .line 233
    if-eqz p0, :cond_8f

    .line 235
    new-instance p1, Lcom/google/android/gms/dynamite/DynamiteModule;

    invoke-direct {p1, p0}, Lcom/google/android/gms/dynamite/DynamiteModule;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 234
    :cond_8f
    new-instance p0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string p1, "Failed to get module context"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/zza;)V

    throw p0

    .line 215
    :cond_97
    new-instance p0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string p1, "No result cursor"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/zza;)V

    throw p0

    .line 212
    :cond_9f
    new-instance p0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string p1, "DynamiteLoaderV2 was not cached."

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/zza;)V

    throw p0

    .line 210
    :catchall_a7
    move-exception p0

    :try_start_a8
    monitor-exit v0
    :try_end_a9
    .catchall {:try_start_a8 .. :try_end_a9} :catchall_a7

    throw p0
.end method

.method private static zzc(Landroid/content/Context;Ljava/lang/String;Z)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;
        }
    .end annotation

    .line 116
    nop

    .line 117
    nop

    .line 118
    const/4 v0, 0x0

    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 119
    nop

    .line 120
    if-eqz p2, :cond_d

    const-string p0, "api_force_staging"

    goto :goto_f

    :cond_d
    const-string p0, "api"

    .line 121
    :goto_f
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, 0x2a

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr p2, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "content://com.google.android.gms.chimera/"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, "/"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 122
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_4b} :catch_a9
    .catchall {:try_start_3 .. :try_end_4b} :catchall_a7

    .line 123
    nop

    .line 124
    if-eqz p0, :cond_8f

    :try_start_4e
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_8f

    .line 127
    const/4 p1, 0x0

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 128
    if-lez p1, :cond_88

    .line 129
    const-class p2, Lcom/google/android/gms/dynamite/DynamiteModule;

    monitor-enter p2
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_5e} :catch_a2
    .catchall {:try_start_4e .. :try_end_5e} :catchall_9e

    .line 130
    const/4 v1, 0x2

    :try_start_5f
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/dynamite/DynamiteModule;->zzii:Ljava/lang/String;

    .line 131
    const-string v1, "loaderVersion"

    .line 132
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 133
    if-ltz v1, :cond_73

    .line 134
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    sput v1, Lcom/google/android/gms/dynamite/DynamiteModule;->zzij:I

    .line 135
    :cond_73
    monitor-exit p2
    :try_end_74
    .catchall {:try_start_5f .. :try_end_74} :catchall_85

    .line 136
    :try_start_74
    sget-object p2, Lcom/google/android/gms/dynamite/DynamiteModule;->zzik:Ljava/lang/ThreadLocal;

    invoke-virtual {p2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/dynamite/DynamiteModule$zza;

    .line 137
    if-eqz p2, :cond_88

    iget-object v1, p2, Lcom/google/android/gms/dynamite/DynamiteModule$zza;->zzio:Landroid/database/Cursor;

    if-nez v1, :cond_88

    .line 138
    iput-object p0, p2, Lcom/google/android/gms/dynamite/DynamiteModule$zza;->zzio:Landroid/database/Cursor;
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_84} :catch_a2
    .catchall {:try_start_74 .. :try_end_84} :catchall_9e

    .line 139
    goto :goto_89

    .line 135
    :catchall_85
    move-exception p1

    :try_start_86
    monitor-exit p2
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_85

    :try_start_87
    throw p1
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_88} :catch_a2
    .catchall {:try_start_87 .. :try_end_88} :catchall_9e

    .line 140
    :cond_88
    move-object v0, p0

    :goto_89
    if-eqz v0, :cond_8e

    .line 141
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 142
    :cond_8e
    return p1

    .line 125
    :cond_8f
    :try_start_8f
    const-string p1, "DynamiteModule"

    const-string p2, "Failed to retrieve remote module version."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    new-instance p1, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string p2, "Failed to connect to dynamite module ContentResolver."

    invoke-direct {p1, p2, v0}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/zza;)V

    throw p1
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_9e} :catch_a2
    .catchall {:try_start_8f .. :try_end_9e} :catchall_9e

    .line 147
    :catchall_9e
    move-exception p1

    move-object v0, p0

    move-object p0, p1

    goto :goto_ba

    .line 143
    :catch_a2
    move-exception p1

    move-object v7, p1

    move-object p1, p0

    move-object p0, v7

    goto :goto_ab

    .line 147
    :catchall_a7
    move-exception p0

    goto :goto_ba

    .line 143
    :catch_a9
    move-exception p0

    move-object p1, v0

    .line 144
    :goto_ab
    :try_start_ab
    instance-of p2, p0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    if-eqz p2, :cond_b0

    .line 145
    throw p0

    .line 146
    :cond_b0
    new-instance p2, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string v1, "V2 version check failed"

    invoke-direct {p2, v1, p0, v0}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/android/gms/dynamite/zza;)V

    throw p2
    :try_end_b8
    .catchall {:try_start_ab .. :try_end_b8} :catchall_b8

    .line 147
    :catchall_b8
    move-exception p0

    move-object v0, p1

    :goto_ba
    if-eqz v0, :cond_bf

    .line 148
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_bf
    throw p0
.end method

.method private static zze(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;
    .registers 4

    .line 150
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "Selected local version of "

    if-eqz v0, :cond_11

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_16

    :cond_11
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_16
    const-string v0, "DynamiteModule"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    new-instance p1, Lcom/google/android/gms/dynamite/DynamiteModule;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/android/gms/dynamite/DynamiteModule;-><init>(Landroid/content/Context;)V

    return-object p1
.end method

.method private static zzj(Landroid/content/Context;)Lcom/google/android/gms/dynamite/zzi;
    .registers 6

    .line 180
    const-class v0, Lcom/google/android/gms/dynamite/DynamiteModule;

    monitor-enter v0

    .line 181
    :try_start_3
    sget-object v1, Lcom/google/android/gms/dynamite/DynamiteModule;->zzig:Lcom/google/android/gms/dynamite/zzi;

    if-eqz v1, :cond_9

    .line 182
    monitor-exit v0

    return-object v1

    .line 183
    :cond_9
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_16

    .line 184
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_6e

    return-object v2

    .line 185
    :cond_16
    :try_start_16
    const-string v1, "com.google.android.gms"

    const/4 v3, 0x3

    .line 186
    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p0

    .line 187
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    .line 188
    const-string v1, "com.google.android.gms.chimera.container.DynamiteLoaderImpl"

    invoke-virtual {p0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 189
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IBinder;

    .line 190
    nop

    .line 191
    if-nez p0, :cond_32

    .line 192
    move-object v1, v2

    goto :goto_44

    .line 193
    :cond_32
    const-string v1, "com.google.android.gms.dynamite.IDynamiteLoader"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 194
    instance-of v3, v1, Lcom/google/android/gms/dynamite/zzi;

    if-eqz v3, :cond_3f

    .line 195
    check-cast v1, Lcom/google/android/gms/dynamite/zzi;

    goto :goto_44

    .line 196
    :cond_3f
    new-instance v1, Lcom/google/android/gms/dynamite/zzj;

    invoke-direct {v1, p0}, Lcom/google/android/gms/dynamite/zzj;-><init>(Landroid/os/IBinder;)V

    .line 197
    :goto_44
    nop

    .line 198
    if-eqz v1, :cond_4b

    .line 199
    sput-object v1, Lcom/google/android/gms/dynamite/DynamiteModule;->zzig:Lcom/google/android/gms/dynamite/zzi;
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_49} :catch_4c
    .catchall {:try_start_16 .. :try_end_49} :catchall_6e

    .line 200
    :try_start_49
    monitor-exit v0

    return-object v1

    .line 201
    :cond_4b
    goto :goto_6c

    .line 202
    :catch_4c
    move-exception p0

    .line 203
    const-string v1, "DynamiteModule"

    const-string v3, "Failed to load IDynamiteLoader from GmsCore: "

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_64

    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_69

    :cond_64
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_69
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :goto_6c
    monitor-exit v0

    .line 205
    return-object v2

    .line 204
    :catchall_6e
    move-exception p0

    monitor-exit v0
    :try_end_70
    .catchall {:try_start_49 .. :try_end_70} :catchall_6e

    throw p0
.end method


# virtual methods
.method public final getModuleContext()Landroid/content/Context;
    .registers 2

    .line 206
    iget-object v0, p0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzin:Landroid/content/Context;

    return-object v0
.end method

.method public final instantiate(Ljava/lang/String;)Landroid/os/IBinder;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;
        }
    .end annotation

    .line 252
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzin:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 253
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;
    :try_end_10
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_10} :catch_11
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_10} :catch_11
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_10} :catch_11

    return-object v0

    .line 254
    :catch_11
    move-exception v0

    .line 255
    new-instance v1, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string v2, "Failed to instantiate module class: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_25

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2a

    :cond_25
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2a
    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v2}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/android/gms/dynamite/zza;)V

    throw v1
.end method
