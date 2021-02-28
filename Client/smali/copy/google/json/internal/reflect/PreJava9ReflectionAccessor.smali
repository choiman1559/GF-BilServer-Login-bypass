.class final Lcopy/google/json/internal/reflect/PreJava9ReflectionAccessor;
.super Lcopy/google/json/internal/reflect/ReflectionAccessor;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcopy/google/json/internal/reflect/ReflectionAccessor;-><init>()V

    return-void
.end method


# virtual methods
.method public makeAccessible(Ljava/lang/reflect/AccessibleObject;)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    return-void
.end method
