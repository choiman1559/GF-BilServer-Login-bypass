.class public abstract Lcopy/google/json/internal/reflect/ReflectionAccessor;
.super Ljava/lang/Object;


# static fields
.field private static final instance:Lcopy/google/json/internal/reflect/ReflectionAccessor;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    invoke-static {}, Lcopy/google/json/internal/JavaVersion;->getMajorJavaVersion()I

    move-result v0

    const/16 v1, 0x9

    if-ge v0, v1, :cond_10

    new-instance v0, Lcopy/google/json/internal/reflect/PreJava9ReflectionAccessor;

    invoke-direct {v0}, Lcopy/google/json/internal/reflect/PreJava9ReflectionAccessor;-><init>()V

    :goto_d
    sput-object v0, Lcopy/google/json/internal/reflect/ReflectionAccessor;->instance:Lcopy/google/json/internal/reflect/ReflectionAccessor;

    return-void

    :cond_10
    new-instance v0, Lcopy/google/json/internal/reflect/UnsafeReflectionAccessor;

    invoke-direct {v0}, Lcopy/google/json/internal/reflect/UnsafeReflectionAccessor;-><init>()V

    goto :goto_d
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcopy/google/json/internal/reflect/ReflectionAccessor;
    .registers 1

    sget-object v0, Lcopy/google/json/internal/reflect/ReflectionAccessor;->instance:Lcopy/google/json/internal/reflect/ReflectionAccessor;

    return-object v0
.end method


# virtual methods
.method public abstract makeAccessible(Ljava/lang/reflect/AccessibleObject;)V
.end method
