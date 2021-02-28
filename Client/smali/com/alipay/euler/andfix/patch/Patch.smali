.class public Lcom/alipay/euler/andfix/patch/Patch;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/alipay/euler/andfix/patch/Patch;",
        ">;"
    }
.end annotation


# static fields
.field private static final CLASSES:Ljava/lang/String; = "-Classes"

.field private static final CREATED_TIME:Ljava/lang/String; = "Created-Time"

.field private static final ENTRY_NAME:Ljava/lang/String; = "META-INF/PATCH.MF"

.field private static final PATCH_CLASSES:Ljava/lang/String; = "Patch-Classes"

.field private static final PATCH_NAME:Ljava/lang/String; = "Patch-Name"


# instance fields
.field private mClassesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mFile:Ljava/io/File;

.field private mName:Ljava/lang/String;

.field private mTime:Ljava/util/Date;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/euler/andfix/patch/Patch;->mFile:Ljava/io/File;

    invoke-direct {p0}, Lcom/alipay/euler/andfix/patch/Patch;->init()V

    return-void
.end method

.method private init()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_1
    new-instance v2, Ljava/util/jar/JarFile;

    iget-object v0, p0, Lcom/alipay/euler/andfix/patch/Patch;->mFile:Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a1

    :try_start_8
    const-string v0, "META-INF/PATCH.MF"

    invoke-virtual {v2, v0}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    new-instance v0, Ljava/util/jar/Manifest;

    invoke-direct {v0, v1}, Ljava/util/jar/Manifest;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v3

    const-string v0, "Patch-Name"

    invoke-virtual {v3, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/euler/andfix/patch/Patch;->mName:Ljava/lang/String;

    new-instance v0, Ljava/util/Date;

    const-string v4, "Created-Time"

    invoke-virtual {v3, v4}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/util/Date;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/euler/andfix/patch/Patch;->mTime:Ljava/util/Date;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/euler/andfix/patch/Patch;->mClassesMap:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/util/jar/Attributes;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3f
    :goto_3f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_96

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/Attributes$Name;

    invoke-virtual {v0}, Ljava/util/jar/Attributes$Name;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "-Classes"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3f

    invoke-virtual {v3, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v0

    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v6, "Patch-Classes"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_81

    iget-object v5, p0, Lcom/alipay/euler/andfix/patch/Patch;->mClassesMap:Ljava/util/Map;

    iget-object v6, p0, Lcom/alipay/euler/andfix/patch/Patch;->mName:Ljava/lang/String;

    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_74
    .catchall {:try_start_8 .. :try_end_74} :catchall_75

    goto :goto_3f

    :catchall_75
    move-exception v0

    :goto_76
    if-eqz v2, :cond_7b

    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V

    :cond_7b
    if-eqz v1, :cond_80

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_80
    throw v0

    :cond_81
    :try_start_81
    iget-object v6, p0, Lcom/alipay/euler/andfix/patch/Patch;->mClassesMap:Ljava/util/Map;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x8

    invoke-virtual {v7, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_95
    .catchall {:try_start_81 .. :try_end_95} :catchall_75

    goto :goto_3f

    :cond_96
    if-eqz v2, :cond_9b

    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V

    :cond_9b
    if-eqz v1, :cond_a0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_a0
    return-void

    :catchall_a1
    move-exception v0

    move-object v2, v1

    goto :goto_76
.end method


# virtual methods
.method public compareTo(Lcom/alipay/euler/andfix/patch/Patch;)I
    .registers 4

    iget-object v0, p0, Lcom/alipay/euler/andfix/patch/Patch;->mTime:Ljava/util/Date;

    invoke-virtual {p1}, Lcom/alipay/euler/andfix/patch/Patch;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/alipay/euler/andfix/patch/Patch;

    invoke-virtual {p0, p1}, Lcom/alipay/euler/andfix/patch/Patch;->compareTo(Lcom/alipay/euler/andfix/patch/Patch;)I

    move-result v0

    return v0
.end method

.method public getClasses(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/euler/andfix/patch/Patch;->mClassesMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lcom/alipay/euler/andfix/patch/Patch;->mFile:Ljava/io/File;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/alipay/euler/andfix/patch/Patch;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPatchNames()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/euler/andfix/patch/Patch;->mClassesMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getTime()Ljava/util/Date;
    .registers 2

    iget-object v0, p0, Lcom/alipay/euler/andfix/patch/Patch;->mTime:Ljava/util/Date;

    return-object v0
.end method
