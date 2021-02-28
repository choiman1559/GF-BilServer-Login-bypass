.class Lorg/apache/commons/lang3/text/StrLookup$SystemPropertiesStrLookup;
.super Lorg/apache/commons/lang3/text/StrLookup;
.source "StrLookup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/text/StrLookup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SystemPropertiesStrLookup"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/lang3/text/StrLookup",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 168
    invoke-direct {p0}, Lorg/apache/commons/lang3/text/StrLookup;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/lang3/text/StrLookup$1;)V
    .registers 2
    .param p1, "x0"    # Lorg/apache/commons/lang3/text/StrLookup$1;

    .prologue
    .line 168
    invoke-direct {p0}, Lorg/apache/commons/lang3/text/StrLookup$SystemPropertiesStrLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public lookup(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 174
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 176
    :try_start_6
    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_9} :catch_b

    move-result-object v0

    .line 181
    :goto_a
    return-object v0

    .line 177
    :catch_b
    move-exception v0

    .line 181
    :cond_c
    const/4 v0, 0x0

    goto :goto_a
.end method
