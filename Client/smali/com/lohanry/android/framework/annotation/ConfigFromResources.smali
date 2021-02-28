.class public interface abstract annotation Lcom/lohanry/android/framework/annotation/ConfigFromResources;
.super Ljava/lang/Object;
.source "ConfigFromResources.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/lohanry/android/framework/annotation/ConfigFromResources;
        name = ""
        type = Ljava/lang/String;
        valueType = "string"
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract name()Ljava/lang/String;
.end method

.method public abstract type()Ljava/lang/Class;
.end method

.method public abstract valueType()Ljava/lang/String;
.end method
