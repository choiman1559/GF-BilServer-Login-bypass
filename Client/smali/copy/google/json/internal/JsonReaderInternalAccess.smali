.class public abstract Lcopy/google/json/internal/JsonReaderInternalAccess;
.super Ljava/lang/Object;


# static fields
.field public static INSTANCE:Lcopy/google/json/internal/JsonReaderInternalAccess;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract promoteNameToValue(Lcopy/google/json/stream/JsonReader;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
