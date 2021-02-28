.class public Lcom/sunborn/gameplatform/core/common/MsgCode;
.super Ljava/lang/Object;
.source "MsgCode.java"


# static fields
.field public static COMMON_NETWORK_CONNECT_ERROR:Ljava/lang/String;

.field public static COMMON_NETWORK_DATA_CANT_ANALYSIS_ERROR:Ljava/lang/String;

.field private static MSG_0:I

.field public static MSG_NULL_ERROR_CODE:I

.field public static MSG_sunborn_error_phone_or_zone:I

.field private static TAG:Ljava/lang/String;

.field private static mMsgCodeHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    const-class v0, Lcom/sunborn/gameplatform/core/common/MsgCode;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sunborn/gameplatform/core/common/MsgCode;->TAG:Ljava/lang/String;

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sunborn/gameplatform/core/common/MsgCode;->mMsgCodeHashMap:Ljava/util/HashMap;

    .line 14
    const-string v0, "common_network_connect_failed"

    sput-object v0, Lcom/sunborn/gameplatform/core/common/MsgCode;->COMMON_NETWORK_CONNECT_ERROR:Ljava/lang/String;

    .line 15
    const-string v0, "common_network_data_cant_analysis"

    sput-object v0, Lcom/sunborn/gameplatform/core/common/MsgCode;->COMMON_NETWORK_DATA_CANT_ANALYSIS_ERROR:Ljava/lang/String;

    .line 17
    const/4 v0, 0x0

    sput v0, Lcom/sunborn/gameplatform/core/common/MsgCode;->MSG_NULL_ERROR_CODE:I

    .line 18
    sget v0, Lcom/sunborn/sunbornplatformsdk/R$string;->sunborn_error_msg_unkonw_error:I

    sput v0, Lcom/sunborn/gameplatform/core/common/MsgCode;->MSG_0:I

    .line 20
    sget v0, Lcom/sunborn/sunbornplatformsdk/R$string;->sunborn_error_msg_unkonw_error:I

    sput v0, Lcom/sunborn/gameplatform/core/common/MsgCode;->MSG_sunborn_error_phone_or_zone:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static codeToResID(Ljava/lang/String;)I
    .registers 7
    .param p0, "code"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 40
    invoke-static {}, Lcom/sunborn/gameplatform/core/common/MsgCode;->getMsgCodeHashMap()Ljava/util/HashMap;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSG_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 41
    sget-object v0, Lcom/sunborn/gameplatform/core/common/MsgCode;->TAG:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "Hit: %s. Dic Size:%d"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-static {}, Lcom/sunborn/gameplatform/core/common/MsgCode;->getMsgCodeHashMap()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lohanry/android/framework/tools/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-static {}, Lcom/sunborn/gameplatform/core/common/MsgCode;->getMsgCodeHashMap()Ljava/util/HashMap;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSG_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 45
    :goto_60
    return v0

    .line 44
    :cond_61
    sget-object v0, Lcom/sunborn/gameplatform/core/common/MsgCode;->TAG:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "No Hit: %s. Dic Size:%d"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-static {}, Lcom/sunborn/gameplatform/core/common/MsgCode;->getMsgCodeHashMap()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lohanry/android/framework/tools/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    sget v0, Lcom/sunborn/gameplatform/core/common/MsgCode;->MSG_0:I

    goto :goto_60
.end method

.method private static getMsgCodeHashMap()Ljava/util/HashMap;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    sget-object v4, Lcom/sunborn/gameplatform/core/common/MsgCode;->mMsgCodeHashMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-nez v4, :cond_48

    .line 51
    :try_start_8
    const-class v4, Lcom/sunborn/gameplatform/core/common/MsgCode;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_11
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_11} :catch_3c

    move-result-object v0

    .line 57
    .local v0, "clazz":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 58
    .local v3, "fields":[Ljava/lang/reflect/Field;
    array-length v5, v3

    const/4 v4, 0x0

    :goto_18
    if-ge v4, v5, :cond_48

    aget-object v2, v3, v4

    .line 59
    .local v2, "field":Ljava/lang/reflect/Field;
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 60
    const-class v6, Lcom/lohanry/android/framework/annotation/ResID;

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    if-eqz v6, :cond_39

    .line 62
    :try_start_28
    sget-object v6, Lcom/sunborn/gameplatform/core/common/MsgCode;->mMsgCodeHashMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_39} :catch_43

    .line 58
    :cond_39
    :goto_39
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 52
    .end local v0    # "clazz":Ljava/lang/Class;
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "fields":[Ljava/lang/reflect/Field;
    :catch_3c
    move-exception v1

    .line 53
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 54
    sget-object v4, Lcom/sunborn/gameplatform/core/common/MsgCode;->mMsgCodeHashMap:Ljava/util/HashMap;

    .line 69
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :goto_42
    return-object v4

    .line 63
    .restart local v0    # "clazz":Ljava/lang/Class;
    .restart local v2    # "field":Ljava/lang/reflect/Field;
    .restart local v3    # "fields":[Ljava/lang/reflect/Field;
    :catch_43
    move-exception v1

    .line 64
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_39

    .line 69
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "field":Ljava/lang/reflect/Field;
    :cond_48
    sget-object v4, Lcom/sunborn/gameplatform/core/common/MsgCode;->mMsgCodeHashMap:Ljava/util/HashMap;

    goto :goto_42
.end method
