.class public Lcom/mob/commons/MobProductCollector;
.super Ljava/lang/Object;
.source "MobProductCollector.java"

# interfaces
.implements Lcom/mob/tools/proguard/PublicMemberKeeper;


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mob/commons/MobProduct;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 29
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "SHARESDK"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "SMSSDK"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "SHAREREC"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "MOBAPI"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "MOBLINK"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "UMSSDK"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "CMSSDK"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "BBSSDK"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "SHOPSDK"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "PAYSDK"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "MOBIM"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "MOBPUSH"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "ANALYSDK"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mob/commons/MobProductCollector;->a:[Ljava/lang/String;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mob/commons/MobProductCollector;->b:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Ljava/util/ArrayList;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/commons/MobProduct;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 88
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 90
    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/mob/commons/MobProductCollector;

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 91
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    .line 92
    const-class v6, Lcom/mob/commons/MobProduct;

    .line 93
    new-instance v0, Ldalvik/system/PathClassLoader;

    .line 94
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-direct {v0, v2, v7}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 95
    const-string v2, "pathList"

    invoke-static {v0, v2}, Lcom/mob/tools/utils/ReflectHelper;->getInstanceField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 96
    const-string v2, "dexElements"

    invoke-static {v0, v2}, Lcom/mob/tools/utils/ReflectHelper;->getInstanceField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 97
    if-eqz v7, :cond_d7

    .line 98
    const-string v0, "length"

    invoke-static {v7, v0}, Lcom/mob/tools/utils/ReflectHelper;->getInstanceField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_57} :catch_cf

    move-result v8

    move v2, v1

    .line 99
    :goto_59
    if-ge v2, v8, :cond_d7

    .line 101
    :try_start_5b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/mob/tools/utils/ReflectHelper;->getInstanceField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 102
    if-eqz v0, :cond_cb

    .line 103
    const-string v1, "dexFile"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ReflectHelper;->getInstanceField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 104
    if-eqz v0, :cond_cb

    .line 105
    const-string v1, "entries"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v0, v1, v9}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Enumeration;

    .line 106
    :cond_8d
    :goto_8d
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_cb

    .line 107
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 108
    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8d

    const-string v9, "."

    invoke-virtual {v1, v9, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I
    :try_end_a4
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_a4} :catch_ca

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_8d

    .line 110
    :try_start_a8
    invoke-static {v1, v1}, Lcom/mob/tools/utils/ReflectHelper;->importClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 111
    invoke-static {v1}, Lcom/mob/tools/utils/ReflectHelper;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    .line 112
    invoke-virtual {v6, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_8d

    invoke-virtual {v6, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8d

    .line 113
    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v1, v9}, Lcom/mob/tools/utils/ReflectHelper;->newInstance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mob/commons/MobProduct;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_c7
    .catch Ljava/lang/Throwable; {:try_start_a8 .. :try_end_c7} :catch_c8

    goto :goto_8d

    .line 115
    :catch_c8
    move-exception v1

    goto :goto_8d

    .line 120
    :catch_ca
    move-exception v0

    .line 99
    :cond_cb
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_59

    .line 123
    :catch_cf
    move-exception v0

    .line 124
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 126
    :cond_d7
    return-object v3
.end method

.method private static b()Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/commons/MobProduct;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 130
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 132
    :try_start_6
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "comm"

    invoke-static {v3, v4}, Lcom/mob/tools/utils/ResHelper;->getCachePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 133
    new-instance v3, Ljava/io/File;

    const-string v4, ".mps"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 134
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_66

    .line 135
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 136
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 137
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    .line 138
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 139
    array-length v5, v4

    move v1, v0

    :goto_38
    if-ge v1, v5, :cond_63

    aget-object v0, v4, v1
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_3c} :catch_67

    .line 141
    :try_start_3c
    invoke-static {v0, v0}, Lcom/mob/tools/utils/ReflectHelper;->importClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 142
    invoke-static {v0}, Lcom/mob/tools/utils/ReflectHelper;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 143
    const-class v7, Lcom/mob/commons/MobProduct;

    invoke-virtual {v7, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_5f

    const-class v7, Lcom/mob/commons/MobProduct;

    invoke-virtual {v7, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5f

    .line 144
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0, v6}, Lcom/mob/tools/utils/ReflectHelper;->newInstance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mob/commons/MobProduct;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_5f} :catch_70

    .line 139
    :cond_5f
    :goto_5f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_38

    .line 148
    :cond_63
    :try_start_63
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_66
    .catch Ljava/lang/Throwable; {:try_start_63 .. :try_end_66} :catch_67

    .line 153
    :cond_66
    :goto_66
    return-object v2

    .line 150
    :catch_67
    move-exception v0

    .line 151
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_66

    .line 146
    :catch_70
    move-exception v0

    goto :goto_5f
.end method

.method private static c()V
    .registers 4

    .prologue
    .line 158
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 159
    sget-object v0, Lcom/mob/commons/MobProductCollector;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mob/commons/MobProduct;

    .line 160
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_26} :catch_27

    goto :goto_f

    .line 171
    :catch_27
    move-exception v0

    .line 172
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 174
    :goto_2f
    return-void

    .line 162
    :cond_30
    :try_start_30
    const-string v0, ","

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 164
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "comm"

    invoke-static {v2, v3}, Lcom/mob/tools/utils/ResHelper;->getCachePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 165
    new-instance v2, Ljava/io/File;

    const-string v3, ".mps"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 166
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 167
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 168
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 170
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_5f} :catch_27

    goto :goto_2f
.end method

.method public static final declared-synchronized collect()V
    .registers 2

    .prologue
    .line 43
    const-class v0, Lcom/mob/commons/MobProductCollector;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/mob/commons/MobProductCollector;->getProducts()Ljava/util/ArrayList;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_8

    .line 44
    monitor-exit v0

    return-void

    .line 43
    :catchall_8
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static final declared-synchronized getProducts()Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/commons/MobProduct;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 49
    const-class v2, Lcom/mob/commons/MobProductCollector;

    monitor-enter v2

    :try_start_4
    invoke-static {}, Lcom/mob/commons/MobProductCollector;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mob/commons/MobProduct;

    .line 51
    sget-object v4, Lcom/mob/commons/MobProductCollector;->b:Ljava/util/HashMap;

    invoke-interface {v0}, Lcom/mob/commons/MobProduct;->getProductTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catchall {:try_start_4 .. :try_end_21} :catchall_22

    goto :goto_c

    .line 49
    :catchall_22
    move-exception v0

    monitor-exit v2

    throw v0

    .line 56
    :cond_25
    :try_start_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/mob/commons/MobProductCollector;

    invoke-virtual {v3}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".*"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/ReflectHelper;->importClass(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    sget-object v3, Lcom/mob/commons/MobProductCollector;->a:[Ljava/lang/String;

    array-length v4, v3

    :goto_48
    if-ge v1, v4, :cond_74

    aget-object v0, v3, v1

    .line 58
    sget-object v5, Lcom/mob/commons/MobProductCollector;->b:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_51} :catch_6c
    .catchall {:try_start_25 .. :try_end_51} :catchall_22

    move-result-object v5

    if-nez v5, :cond_68

    .line 60
    const/4 v5, 0x0

    :try_start_55
    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v5}, Lcom/mob/tools/utils/ReflectHelper;->newInstance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mob/commons/MobProduct;

    .line 61
    if-eqz v0, :cond_68

    .line 62
    sget-object v5, Lcom/mob/commons/MobProductCollector;->b:Ljava/util/HashMap;

    invoke-interface {v0}, Lcom/mob/commons/MobProduct;->getProductTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_68
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_68} :catch_ad
    .catchall {:try_start_55 .. :try_end_68} :catchall_22

    .line 57
    :cond_68
    :goto_68
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_48

    .line 67
    :catch_6c
    move-exception v0

    .line 68
    :try_start_6d
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 71
    :cond_74
    sget-object v0, Lcom/mob/commons/MobProductCollector;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 73
    invoke-static {}, Lcom/mob/commons/MobProductCollector;->b()Ljava/util/ArrayList;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_84
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mob/commons/MobProduct;

    .line 75
    sget-object v3, Lcom/mob/commons/MobProductCollector;->b:Ljava/util/HashMap;

    invoke-interface {v0}, Lcom/mob/commons/MobProduct;->getProductTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_84

    .line 79
    :cond_9a
    invoke-static {}, Lcom/mob/commons/MobProductCollector;->c()V

    .line 82
    :cond_9d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    sget-object v1, Lcom/mob/commons/MobProductCollector;->b:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_ab
    .catchall {:try_start_6d .. :try_end_ab} :catchall_22

    .line 84
    monitor-exit v2

    return-object v0

    .line 64
    :catch_ad
    move-exception v0

    goto :goto_68
.end method

.method public static final declared-synchronized getUserIdentity(Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/commons/MobProduct;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 179
    const-class v3, Lcom/mob/commons/MobProductCollector;

    monitor-enter v3

    :try_start_3
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    .line 180
    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "utf-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 181
    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getAppVersionName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "utf-8"

    invoke-static {v2, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 182
    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getManufacturer()Ljava/lang/String;

    move-result-object v4

    const-string v5, "utf-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 183
    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getModel()Ljava/lang/String;

    move-result-object v5

    const-string v6, "utf-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 185
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "APP/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ";"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SYS/Android;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getOSVersionInt()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SDI/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getDeviceKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FM/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NE/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getNetworkTypeForStatic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getCarrier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Lang/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-r"

    const-string v9, "-"

    invoke-virtual {v1, v2, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 191
    const-string v10, "CLV/1"

    .line 192
    const-string v1, "SDK/"

    .line 193
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_138

    .line 194
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I
    :try_end_f1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_f1} :catch_18d
    .catchall {:try_start_3 .. :try_end_f1} :catchall_198

    move-result v11

    move v2, v0

    :goto_f3
    if-ge v2, v11, :cond_138

    .line 196
    :try_start_f5
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mob/commons/MobProduct;

    .line 197
    if-eqz v2, :cond_110

    .line 198
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 200
    :cond_110
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v0}, Lcom/mob/commons/MobProduct;->getProductTag()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v0}, Lcom/mob/commons/MobProduct;->getSdkver()I

    move-result v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_132
    .catch Ljava/lang/Throwable; {:try_start_f5 .. :try_end_132} :catch_19b
    .catchall {:try_start_f5 .. :try_end_132} :catchall_198

    move-result-object v0

    .line 194
    :goto_133
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_f3

    .line 204
    :cond_138
    :try_start_138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_18a
    .catch Ljava/lang/Throwable; {:try_start_138 .. :try_end_18a} :catch_18d
    .catchall {:try_start_138 .. :try_end_18a} :catchall_198

    move-result-object v0

    .line 208
    :goto_18b
    monitor-exit v3

    return-object v0

    .line 205
    :catch_18d
    move-exception v0

    .line 206
    :try_start_18e
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 208
    const-string v0, ""
    :try_end_197
    .catchall {:try_start_18e .. :try_end_197} :catchall_198

    goto :goto_18b

    .line 179
    :catchall_198
    move-exception v0

    monitor-exit v3

    throw v0

    .line 201
    :catch_19b
    move-exception v0

    move-object v0, v1

    goto :goto_133
.end method

.method public static final declared-synchronized registerProduct(Lcom/mob/commons/MobProduct;)V
    .registers 4

    .prologue
    .line 37
    const-class v1, Lcom/mob/commons/MobProductCollector;

    monitor-enter v1

    if-eqz p0, :cond_1a

    :try_start_5
    sget-object v0, Lcom/mob/commons/MobProductCollector;->b:Ljava/util/HashMap;

    invoke-interface {p0}, Lcom/mob/commons/MobProduct;->getProductTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 38
    sget-object v0, Lcom/mob/commons/MobProductCollector;->b:Ljava/util/HashMap;

    invoke-interface {p0}, Lcom/mob/commons/MobProduct;->getProductTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1c

    .line 40
    :cond_1a
    monitor-exit v1

    return-void

    .line 37
    :catchall_1c
    move-exception v0

    monitor-exit v1

    throw v0
.end method
