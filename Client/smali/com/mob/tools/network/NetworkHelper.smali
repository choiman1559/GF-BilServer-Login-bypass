.class public Lcom/mob/tools/network/NetworkHelper;
.super Ljava/lang/Object;
.source "NetworkHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;,
        Lcom/mob/tools/network/NetworkHelper$SimpleX509TrustManager;
    }
.end annotation


# static fields
.field public static connectionTimeout:I

.field public static readTimout:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getConnection(Ljava/lang/String;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/net/HttpURLConnection;
    .registers 20
    .param p1, "urlStr"    # Ljava/lang/String;
    .param p2, "timeout"    # Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1309
    new-instance v9, Ljava/net/URL;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1310
    .local v9, "ourl":Ljava/net/URL;
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 1311
    .local v1, "conn":Ljava/net/HttpURLConnection;
    const-string v3, "methodTokens"

    .line 1312
    .local v3, "filedName":Ljava/lang/String;
    const/4 v12, 0x0

    .line 1313
    .local v12, "staticType":Z
    const/4 v7, 0x0

    .line 1315
    .local v7, "methods":Ljava/lang/Object;
    if-eqz v12, :cond_98

    :try_start_13
    const-string v14, "HttpURLConnection"

    invoke-static {v14, v3}, Lcom/mob/tools/utils/ReflectHelper;->getStaticField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_18} :catch_b4

    move-result-object v7

    .line 1318
    .end local v7    # "methods":Ljava/lang/Object;
    :goto_19
    if-nez v7, :cond_b7

    .line 1319
    const-string v3, "PERMITTED_USER_METHODS"

    .line 1320
    const/4 v12, 0x1

    .line 1322
    if-eqz v12, :cond_9e

    :try_start_20
    const-string v14, "HttpURLConnection"

    invoke-static {v14, v3}, Lcom/mob/tools/utils/ReflectHelper;->getStaticField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_25} :catch_a3

    move-result-object v7

    .restart local v7    # "methods":Ljava/lang/Object;
    :goto_26
    move-object v14, v7

    .line 1327
    .end local v7    # "methods":Ljava/lang/Object;
    :goto_27
    if-eqz v14, :cond_49

    .line 1328
    check-cast v14, [Ljava/lang/String;

    move-object v6, v14

    check-cast v6, [Ljava/lang/String;

    .line 1329
    .local v6, "methodTokens":[Ljava/lang/String;
    array-length v14, v6

    add-int/lit8 v14, v14, 0x1

    new-array v8, v14, [Ljava/lang/String;

    .line 1330
    .local v8, "myMethodTokens":[Ljava/lang/String;
    const/4 v14, 0x0

    const/4 v15, 0x0

    array-length v0, v6

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v6, v14, v8, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1331
    array-length v14, v6

    const-string v15, "PATCH"

    aput-object v15, v8, v14

    .line 1332
    if-eqz v12, :cond_a6

    .line 1333
    const-string v14, "HttpURLConnection"

    invoke-static {v14, v3, v8}, Lcom/mob/tools/utils/ReflectHelper;->setStaticField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1339
    .end local v6    # "methodTokens":[Ljava/lang/String;
    .end local v8    # "myMethodTokens":[Ljava/lang/String;
    :cond_49
    :goto_49
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x8

    if-ge v14, v15, :cond_56

    .line 1340
    const-string v14, "http.keepAlive"

    const-string v15, "false"

    invoke-static {v14, v15}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1343
    :cond_56
    instance-of v14, v1, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v14, :cond_85

    .line 1344
    sget-object v4, Lorg/apache/http/conn/ssl/SSLSocketFactory;->STRICT_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .local v4, "hostnameVerifier":Ljavax/net/ssl/HostnameVerifier;
    move-object v5, v1

    .line 1345
    check-cast v5, Ljavax/net/ssl/HttpsURLConnection;

    .line 1346
    .local v5, "httpsConn":Ljavax/net/ssl/HttpsURLConnection;
    const-string v14, "TLS"

    invoke-static {v14}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v11

    .line 1347
    .local v11, "sc":Ljavax/net/ssl/SSLContext;
    const/4 v14, 0x1

    new-array v13, v14, [Ljavax/net/ssl/TrustManager;

    const/4 v14, 0x0

    new-instance v15, Lcom/mob/tools/network/NetworkHelper$SimpleX509TrustManager;

    const/16 v16, 0x0

    invoke-direct/range {v15 .. v16}, Lcom/mob/tools/network/NetworkHelper$SimpleX509TrustManager;-><init>(Ljava/security/KeyStore;)V

    aput-object v15, v13, v14

    .line 1348
    .local v13, "trustManager":[Ljavax/net/ssl/TrustManager;
    const/4 v14, 0x0

    new-instance v15, Ljava/security/SecureRandom;

    invoke-direct {v15}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v11, v14, v13, v15}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 1349
    invoke-virtual {v11}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 1350
    invoke-virtual {v5, v4}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 1353
    .end local v4    # "hostnameVerifier":Ljavax/net/ssl/HostnameVerifier;
    .end local v5    # "httpsConn":Ljavax/net/ssl/HttpsURLConnection;
    .end local v11    # "sc":Ljavax/net/ssl/SSLContext;
    .end local v13    # "trustManager":[Ljavax/net/ssl/TrustManager;
    :cond_85
    if-nez p2, :cond_aa

    sget v2, Lcom/mob/tools/network/NetworkHelper;->connectionTimeout:I

    .line 1354
    .local v2, "connectionTimeout":I
    :goto_89
    if-lez v2, :cond_8e

    .line 1355
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1358
    :cond_8e
    if-nez p2, :cond_af

    sget v10, Lcom/mob/tools/network/NetworkHelper;->readTimout:I

    .line 1359
    .local v10, "readTimout":I
    :goto_92
    if-lez v10, :cond_97

    .line 1360
    invoke-virtual {v1, v10}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 1363
    :cond_97
    return-object v1

    .line 1316
    .end local v2    # "connectionTimeout":I
    .end local v10    # "readTimout":I
    .restart local v7    # "methods":Ljava/lang/Object;
    :cond_98
    :try_start_98
    invoke-static {v1, v3}, Lcom/mob/tools/utils/ReflectHelper;->getInstanceField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_9b
    .catch Ljava/lang/Throwable; {:try_start_98 .. :try_end_9b} :catch_b4

    move-result-object v7

    goto/16 :goto_19

    .line 1323
    .end local v7    # "methods":Ljava/lang/Object;
    :cond_9e
    :try_start_9e
    invoke-static {v1, v3}, Lcom/mob/tools/utils/ReflectHelper;->getInstanceField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_a1
    .catch Ljava/lang/Throwable; {:try_start_9e .. :try_end_a1} :catch_a3

    move-result-object v7

    goto :goto_26

    .line 1324
    :catch_a3
    move-exception v14

    move-object v14, v7

    goto :goto_27

    .line 1335
    .restart local v6    # "methodTokens":[Ljava/lang/String;
    .restart local v8    # "myMethodTokens":[Ljava/lang/String;
    :cond_a6
    invoke-static {v1, v3, v8}, Lcom/mob/tools/utils/ReflectHelper;->setInstanceField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_49

    .line 1353
    .end local v6    # "methodTokens":[Ljava/lang/String;
    .end local v8    # "myMethodTokens":[Ljava/lang/String;
    :cond_aa
    move-object/from16 v0, p2

    iget v2, v0, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->connectionTimeout:I

    goto :goto_89

    .line 1358
    .restart local v2    # "connectionTimeout":I
    :cond_af
    move-object/from16 v0, p2

    iget v10, v0, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->readTimout:I

    goto :goto_92

    .line 1317
    .end local v2    # "connectionTimeout":I
    .restart local v7    # "methods":Ljava/lang/Object;
    :catch_b4
    move-exception v14

    goto/16 :goto_19

    .end local v7    # "methods":Ljava/lang/Object;
    :cond_b7
    move-object v14, v7

    goto/16 :goto_27
.end method

.method private getDataPostHttpPart(Ljava/net/HttpURLConnection;Ljava/lang/String;[B)Lcom/mob/tools/network/HTTPPart;
    .registers 5
    .param p1, "conn"    # Ljava/net/HttpURLConnection;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 755
    new-instance v0, Lcom/mob/tools/network/ByteArrayPart;

    invoke-direct {v0}, Lcom/mob/tools/network/ByteArrayPart;-><init>()V

    .line 756
    .local v0, "bytePart":Lcom/mob/tools/network/ByteArrayPart;
    invoke-virtual {v0, p3}, Lcom/mob/tools/network/ByteArrayPart;->append([B)Lcom/mob/tools/network/ByteArrayPart;

    .line 757
    return-object v0
.end method

.method private getFilePostHTTPPart(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/mob/tools/network/HTTPPart;
    .registers 17
    .param p1, "conn"    # Ljava/net/HttpURLConnection;
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/mob/tools/network/HTTPPart;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 762
    .local p3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    .local p4, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 763
    .local v0, "boundary":Ljava/lang/String;
    const-string v9, "Content-Type"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "multipart/form-data; boundary="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v9, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    new-instance v6, Lcom/mob/tools/network/MultiPart;

    invoke-direct {v6}, Lcom/mob/tools/network/MultiPart;-><init>()V

    .line 766
    .local v6, "mp":Lcom/mob/tools/network/MultiPart;
    new-instance v7, Lcom/mob/tools/network/StringPart;

    invoke-direct {v7}, Lcom/mob/tools/network/StringPart;-><init>()V

    .line 767
    .local v7, "sp":Lcom/mob/tools/network/StringPart;
    if-eqz p3, :cond_6a

    .line 768
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_30
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mob/tools/network/KVPair;

    .line 769
    .local v8, "value":Lcom/mob/tools/network/KVPair;, "Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    const-string v9, "--"

    invoke-virtual {v7, v9}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    move-result-object v9

    const-string v11, "\r\n"

    invoke-virtual {v9, v11}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    .line 770
    const-string v9, "Content-Disposition: form-data; name=\""

    invoke-virtual {v7, v9}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    move-result-object v9

    iget-object v11, v8, Lcom/mob/tools/network/KVPair;->name:Ljava/lang/String;

    invoke-virtual {v9, v11}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    move-result-object v9

    const-string v11, "\"\r\n\r\n"

    invoke-virtual {v9, v11}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    .line 771
    iget-object v9, v8, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v7, v9}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    move-result-object v9

    const-string v11, "\r\n"

    invoke-virtual {v9, v11}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    goto :goto_30

    .line 774
    .end local v8    # "value":Lcom/mob/tools/network/KVPair;, "Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    :cond_6a
    invoke-virtual {v6, v7}, Lcom/mob/tools/network/MultiPart;->append(Lcom/mob/tools/network/HTTPPart;)Lcom/mob/tools/network/MultiPart;

    .line 776
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_71
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_160

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mob/tools/network/KVPair;

    .line 777
    .local v1, "file":Lcom/mob/tools/network/KVPair;, "Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    new-instance v7, Lcom/mob/tools/network/StringPart;

    .end local v7    # "sp":Lcom/mob/tools/network/StringPart;
    invoke-direct {v7}, Lcom/mob/tools/network/StringPart;-><init>()V

    .line 778
    .restart local v7    # "sp":Lcom/mob/tools/network/StringPart;
    new-instance v4, Ljava/io/File;

    iget-object v9, v1, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 779
    .local v4, "imageFile":Ljava/io/File;
    const-string v9, "--"

    invoke-virtual {v7, v9}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    move-result-object v9

    const-string v11, "\r\n"

    invoke-virtual {v9, v11}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    .line 780
    const-string v9, "Content-Disposition: form-data; name=\""

    invoke-virtual {v7, v9}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    move-result-object v9

    iget-object v11, v1, Lcom/mob/tools/network/KVPair;->name:Ljava/lang/String;

    invoke-virtual {v9, v11}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    move-result-object v9

    const-string v11, "\"; filename=\""

    invoke-virtual {v9, v11}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    move-result-object v9

    .line 781
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    move-result-object v9

    const-string v11, "\"\r\n"

    invoke-virtual {v9, v11}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    .line 782
    invoke-static {}, Ljava/net/URLConnection;->getFileNameMap()Ljava/net/FileNameMap;

    move-result-object v11

    iget-object v9, v1, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    invoke-interface {v11, v9}, Ljava/net/FileNameMap;->getContentTypeFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 783
    .local v5, "mime":Ljava/lang/String;
    if-eqz v5, :cond_cd

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-gtz v9, :cond_ef

    .line 784
    :cond_cd
    iget-object v9, v1, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v11, "jpg"

    invoke-virtual {v9, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_ed

    iget-object v9, v1, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    .line 785
    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v11, "jpeg"

    invoke-virtual {v9, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_11f

    .line 786
    :cond_ed
    const-string v5, "image/jpeg"

    .line 800
    :cond_ef
    :goto_ef
    const-string v9, "Content-Type: "

    invoke-virtual {v7, v9}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    move-result-object v9

    const-string v11, "\r\n\r\n"

    invoke-virtual {v9, v11}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    .line 801
    invoke-virtual {v6, v7}, Lcom/mob/tools/network/MultiPart;->append(Lcom/mob/tools/network/HTTPPart;)Lcom/mob/tools/network/MultiPart;

    .line 803
    new-instance v3, Lcom/mob/tools/network/FilePart;

    invoke-direct {v3}, Lcom/mob/tools/network/FilePart;-><init>()V

    .line 804
    .local v3, "fp":Lcom/mob/tools/network/FilePart;
    iget-object v9, v1, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v3, v9}, Lcom/mob/tools/network/FilePart;->setFile(Ljava/lang/String;)V

    .line 805
    invoke-virtual {v6, v3}, Lcom/mob/tools/network/MultiPart;->append(Lcom/mob/tools/network/HTTPPart;)Lcom/mob/tools/network/MultiPart;

    .line 807
    new-instance v7, Lcom/mob/tools/network/StringPart;

    .end local v7    # "sp":Lcom/mob/tools/network/StringPart;
    invoke-direct {v7}, Lcom/mob/tools/network/StringPart;-><init>()V

    .line 808
    .restart local v7    # "sp":Lcom/mob/tools/network/StringPart;
    const-string v9, "\r\n"

    invoke-virtual {v7, v9}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    .line 809
    invoke-virtual {v6, v7}, Lcom/mob/tools/network/MultiPart;->append(Lcom/mob/tools/network/HTTPPart;)Lcom/mob/tools/network/MultiPart;

    goto/16 :goto_71

    .line 787
    .end local v3    # "fp":Lcom/mob/tools/network/FilePart;
    :cond_11f
    iget-object v9, v1, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v11, "png"

    invoke-virtual {v9, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_132

    .line 788
    const-string v5, "image/png"

    goto :goto_ef

    .line 789
    :cond_132
    iget-object v9, v1, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v11, "gif"

    invoke-virtual {v9, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_145

    .line 790
    const-string v5, "image/gif"

    goto :goto_ef

    .line 792
    :cond_145
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v9, v1, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    invoke-direct {v2, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 793
    .local v2, "fis":Ljava/io/FileInputStream;
    invoke-static {v2}, Ljava/net/URLConnection;->guessContentTypeFromStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    .line 794
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 795
    if-eqz v5, :cond_15d

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-gtz v9, :cond_ef

    .line 796
    :cond_15d
    const-string v5, "application/octet-stream"

    goto :goto_ef

    .line 813
    .end local v1    # "file":Lcom/mob/tools/network/KVPair;, "Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "imageFile":Ljava/io/File;
    .end local v5    # "mime":Ljava/lang/String;
    :cond_160
    new-instance v7, Lcom/mob/tools/network/StringPart;

    .end local v7    # "sp":Lcom/mob/tools/network/StringPart;
    invoke-direct {v7}, Lcom/mob/tools/network/StringPart;-><init>()V

    .line 814
    .restart local v7    # "sp":Lcom/mob/tools/network/StringPart;
    const-string v9, "--"

    invoke-virtual {v7, v9}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    move-result-object v9

    const-string v10, "--\r\n"

    invoke-virtual {v9, v10}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    .line 815
    invoke-virtual {v6, v7}, Lcom/mob/tools/network/MultiPart;->append(Lcom/mob/tools/network/HTTPPart;)Lcom/mob/tools/network/MultiPart;

    .line 817
    return-object v6
.end method

.method private getHttpPatch(Ljava/lang/String;)Ljava/lang/Object;
    .registers 7
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1229
    new-instance v0, Lcom/mob/tools/network/NetworkHelper$5;

    invoke-direct {v0, p0}, Lcom/mob/tools/network/NetworkHelper$5;-><init>(Lcom/mob/tools/network/NetworkHelper;)V

    .line 1234
    .local v0, "patch":Lcom/mob/tools/network/NetworkHelper$5;
    const-string v1, "setURI"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1235
    return-object v0
.end method

.method private getTextPostHTTPPart(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/util/ArrayList;)Lcom/mob/tools/network/HTTPPart;
    .registers 7
    .param p1, "conn"    # Ljava/net/HttpURLConnection;
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/mob/tools/network/HTTPPart;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 822
    .local p3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    const-string v1, "Content-Type"

    const-string v2, "application/x-www-form-urlencoded"

    invoke-virtual {p1, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    new-instance v0, Lcom/mob/tools/network/StringPart;

    invoke-direct {v0}, Lcom/mob/tools/network/StringPart;-><init>()V

    .line 824
    .local v0, "sp":Lcom/mob/tools/network/StringPart;
    if-eqz p3, :cond_15

    .line 825
    invoke-direct {p0, p3}, Lcom/mob/tools/network/NetworkHelper;->kvPairsToUrl(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    .line 827
    :cond_15
    return-object v0
.end method

.method private httpPatchImpl(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;JLjava/util/ArrayList;Lcom/mob/tools/network/OnReadListener;Lcom/mob/tools/network/HttpResponseCallback;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V
    .registers 46
    .param p1, "url"    # Ljava/lang/String;
    .param p4, "offset"    # J
    .param p7, "listener"    # Lcom/mob/tools/network/OnReadListener;
    .param p8, "callback"    # Lcom/mob/tools/network/HttpResponseCallback;
    .param p9, "timeout"    # Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;J",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/network/OnReadListener;",
            "Lcom/mob/tools/network/HttpResponseCallback;",
            "Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1139
    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    .local p3, "file":Lcom/mob/tools/network/KVPair;, "Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    .local p6, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    .line 1140
    .local v28, "time":J
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v30

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "httpPatch: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    invoke-virtual/range {v30 .. v32}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 1142
    const-string v30, "org.apache.http.entity.InputStreamEntity"

    invoke-static/range {v30 .. v30}, Lcom/mob/tools/utils/ReflectHelper;->importClass(Ljava/lang/String;)Ljava/lang/String;

    .line 1143
    const-string v30, "org.apache.http.params.BasicHttpParams"

    invoke-static/range {v30 .. v30}, Lcom/mob/tools/utils/ReflectHelper;->importClass(Ljava/lang/String;)Ljava/lang/String;

    .line 1144
    const-string v30, "org.apache.http.params.HttpConnectionParams"

    invoke-static/range {v30 .. v30}, Lcom/mob/tools/utils/ReflectHelper;->importClass(Ljava/lang/String;)Ljava/lang/String;

    .line 1145
    const-string v30, "org.apache.http.HttpVersion"

    invoke-static/range {v30 .. v30}, Lcom/mob/tools/utils/ReflectHelper;->importClass(Ljava/lang/String;)Ljava/lang/String;

    .line 1146
    const-string v30, "org.apache.http.params.HttpProtocolParams"

    invoke-static/range {v30 .. v30}, Lcom/mob/tools/utils/ReflectHelper;->importClass(Ljava/lang/String;)Ljava/lang/String;

    .line 1147
    const-string v30, "org.apache.http.conn.scheme.SchemeRegistry"

    invoke-static/range {v30 .. v30}, Lcom/mob/tools/utils/ReflectHelper;->importClass(Ljava/lang/String;)Ljava/lang/String;

    .line 1148
    const-string v30, "org.apache.http.conn.scheme.PlainSocketFactory"

    invoke-static/range {v30 .. v30}, Lcom/mob/tools/utils/ReflectHelper;->importClass(Ljava/lang/String;)Ljava/lang/String;

    .line 1149
    const-string v30, "org.apache.http.conn.scheme.Scheme"

    invoke-static/range {v30 .. v30}, Lcom/mob/tools/utils/ReflectHelper;->importClass(Ljava/lang/String;)Ljava/lang/String;

    .line 1150
    const-string v30, "org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager"

    invoke-static/range {v30 .. v30}, Lcom/mob/tools/utils/ReflectHelper;->importClass(Ljava/lang/String;)Ljava/lang/String;

    .line 1151
    const-string v30, "org.apache.http.impl.client.DefaultHttpClient"

    invoke-static/range {v30 .. v30}, Lcom/mob/tools/utils/ReflectHelper;->importClass(Ljava/lang/String;)Ljava/lang/String;

    .line 1153
    if-eqz p2, :cond_8b

    .line 1154
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/mob/tools/network/NetworkHelper;->kvPairsToUrl(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v20

    .line 1155
    .local v20, "param":Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v30

    if-lez v30, :cond_8b

    .line 1156
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "?"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1160
    .end local v20    # "param":Ljava/lang/String;
    :cond_8b
    invoke-direct/range {p0 .. p1}, Lcom/mob/tools/network/NetworkHelper;->getHttpPatch(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    .line 1161
    .local v22, "patch":Ljava/lang/Object;
    if-eqz p6, :cond_c5

    .line 1162
    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v30

    :goto_95
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_c5

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mob/tools/network/KVPair;

    .line 1163
    .local v9, "header":Lcom/mob/tools/network/KVPair;, "Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    const-string v31, "setHeader"

    const/16 v32, 0x2

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    iget-object v0, v9, Lcom/mob/tools/network/KVPair;->name:Ljava/lang/String;

    move-object/from16 v34, v0

    aput-object v34, v32, v33

    const/16 v33, 0x1

    iget-object v0, v9, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    move-object/from16 v34, v0

    aput-object v34, v32, v33

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-static {v0, v1, v2}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_95

    .line 1167
    .end local v9    # "header":Lcom/mob/tools/network/KVPair;, "Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    :cond_c5
    new-instance v8, Lcom/mob/tools/network/FilePart;

    invoke-direct {v8}, Lcom/mob/tools/network/FilePart;-><init>()V

    .line 1168
    .local v8, "fp":Lcom/mob/tools/network/FilePart;
    move-object/from16 v0, p7

    invoke-virtual {v8, v0}, Lcom/mob/tools/network/FilePart;->setOnReadListener(Lcom/mob/tools/network/OnReadListener;)V

    .line 1169
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Ljava/lang/String;

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Lcom/mob/tools/network/FilePart;->setFile(Ljava/lang/String;)V

    .line 1170
    move-wide/from16 v0, p4

    invoke-virtual {v8, v0, v1}, Lcom/mob/tools/network/FilePart;->setOffset(J)V

    .line 1171
    invoke-virtual {v8}, Lcom/mob/tools/network/FilePart;->toInputStream()Ljava/io/InputStream;

    move-result-object v16

    .line 1172
    .local v16, "is":Ljava/io/InputStream;
    invoke-virtual {v8}, Lcom/mob/tools/network/FilePart;->length()J

    move-result-wide v30

    sub-long v18, v30, p4

    .line 1173
    .local v18, "length":J
    const-string v30, "InputStreamEntity"

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aput-object v16, v31, v32

    const/16 v32, 0x1

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v33

    aput-object v33, v31, v32

    invoke-static/range {v30 .. v31}, Lcom/mob/tools/utils/ReflectHelper;->newInstance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1174
    .local v7, "entity":Ljava/lang/Object;
    const-string v30, "setContentEncoding"

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const-string v33, "application/offset+octet-stream"

    aput-object v33, v31, v32

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v7, v0, v1}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1175
    const-string v30, "setEntity"

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aput-object v7, v31, v32

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1177
    const-string v30, "BasicHttpParams"

    const/16 v31, 0x0

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    invoke-static/range {v30 .. v31}, Lcom/mob/tools/utils/ReflectHelper;->newInstance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 1178
    .local v12, "httpParams":Ljava/lang/Object;
    if-nez p9, :cond_343

    sget v4, Lcom/mob/tools/network/NetworkHelper;->connectionTimeout:I

    .line 1179
    .local v4, "cTimeout":I
    :goto_145
    if-lez v4, :cond_162

    .line 1180
    const-string v30, "HttpConnectionParams"

    const-string v31, "setConnectionTimeout"

    const/16 v32, 0x2

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput-object v12, v32, v33

    const/16 v33, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    aput-object v34, v32, v33

    invoke-static/range {v30 .. v32}, Lcom/mob/tools/utils/ReflectHelper;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1182
    :cond_162
    if-nez p9, :cond_349

    sget v23, Lcom/mob/tools/network/NetworkHelper;->readTimout:I

    .line 1183
    .local v23, "rTimout":I
    :goto_166
    if-lez v23, :cond_183

    .line 1184
    const-string v30, "HttpConnectionParams"

    const-string v31, "setSoTimeout"

    const/16 v32, 0x2

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput-object v12, v32, v33

    const/16 v33, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    aput-object v34, v32, v33

    invoke-static/range {v30 .. v32}, Lcom/mob/tools/utils/ReflectHelper;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1186
    :cond_183
    const-string v30, "setParams"

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aput-object v12, v31, v32

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1189
    const-string v30, "https://"

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_351

    .line 1190
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v27

    .line 1191
    .local v27, "trustStore":Ljava/security/KeyStore;
    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 1192
    new-instance v25, Lcom/mob/tools/network/SSLSocketFactoryEx;

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/mob/tools/network/SSLSocketFactoryEx;-><init>(Ljava/security/KeyStore;)V

    .line 1193
    .local v25, "sf":Lcom/mob/tools/network/SSLSocketFactoryEx;
    sget-object v30, Lorg/apache/http/conn/ssl/SSLSocketFactory;->STRICT_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/mob/tools/network/SSLSocketFactoryEx;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 1195
    const-string v30, "BasicHttpParams"

    const/16 v31, 0x0

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    invoke-static/range {v30 .. v31}, Lcom/mob/tools/utils/ReflectHelper;->newInstance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .line 1196
    .local v21, "params":Ljava/lang/Object;
    const-string v30, "HttpVersion"

    const-string v31, "HTTP_1_1"

    invoke-static/range {v30 .. v31}, Lcom/mob/tools/utils/ReflectHelper;->getStaticField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 1197
    .local v11, "http11":Ljava/lang/Object;
    const-string v30, "HttpProtocolParams"

    const-string v31, "setVersion"

    const/16 v32, 0x2

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput-object v21, v32, v33

    const/16 v33, 0x1

    aput-object v11, v32, v33

    invoke-static/range {v30 .. v32}, Lcom/mob/tools/utils/ReflectHelper;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1198
    const-string v30, "HttpProtocolParams"

    const-string v31, "setContentCharset"

    const/16 v32, 0x2

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput-object v21, v32, v33

    const/16 v33, 0x1

    const-string v34, "UTF-8"

    aput-object v34, v32, v33

    invoke-static/range {v30 .. v32}, Lcom/mob/tools/utils/ReflectHelper;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1199
    const-string v30, "SchemeRegistry"

    const/16 v31, 0x0

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    invoke-static/range {v30 .. v31}, Lcom/mob/tools/utils/ReflectHelper;->newInstance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    .line 1200
    .local v24, "registry":Ljava/lang/Object;
    const-string v30, "PlainSocketFactory"

    const-string v31, "getSocketFactory"

    const/16 v32, 0x0

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    invoke-static/range {v30 .. v32}, Lcom/mob/tools/utils/ReflectHelper;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 1201
    .local v14, "httpSf":Ljava/lang/Object;
    const-string v30, "Scheme"

    const/16 v31, 0x3

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const-string v33, "http"

    aput-object v33, v31, v32

    const/16 v32, 0x1

    aput-object v14, v31, v32

    const/16 v32, 0x2

    const/16 v33, 0x50

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v31, v32

    invoke-static/range {v30 .. v31}, Lcom/mob/tools/utils/ReflectHelper;->newInstance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 1202
    .local v10, "http":Ljava/lang/Object;
    const-string v30, "Scheme"

    const/16 v31, 0x3

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const-string v33, "https"

    aput-object v33, v31, v32

    const/16 v32, 0x1

    aput-object v25, v31, v32

    const/16 v32, 0x2

    const/16 v33, 0x1bb

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v31, v32

    invoke-static/range {v30 .. v31}, Lcom/mob/tools/utils/ReflectHelper;->newInstance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 1203
    .local v15, "https":Ljava/lang/Object;
    const-string v30, "register"

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aput-object v10, v31, v32

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1204
    const-string v30, "register"

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aput-object v15, v31, v32

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1205
    const-string v30, "ThreadSafeClientConnManager"

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aput-object v21, v31, v32

    const/16 v32, 0x1

    aput-object v24, v31, v32

    invoke-static/range {v30 .. v31}, Lcom/mob/tools/utils/ReflectHelper;->newInstance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1206
    .local v5, "ccm":Ljava/lang/Object;
    const-string v30, "DefaultHttpClient"

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aput-object v5, v31, v32

    const/16 v32, 0x1

    aput-object v21, v31, v32

    invoke-static/range {v30 .. v31}, Lcom/mob/tools/utils/ReflectHelper;->newInstance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 1211
    .end local v5    # "ccm":Ljava/lang/Object;
    .end local v10    # "http":Ljava/lang/Object;
    .end local v11    # "http11":Ljava/lang/Object;
    .end local v14    # "httpSf":Ljava/lang/Object;
    .end local v15    # "https":Ljava/lang/Object;
    .end local v21    # "params":Ljava/lang/Object;
    .end local v24    # "registry":Ljava/lang/Object;
    .end local v25    # "sf":Lcom/mob/tools/network/SSLSocketFactoryEx;
    .end local v27    # "trustStore":Ljava/security/KeyStore;
    .local v6, "client":Ljava/lang/Object;
    :goto_2cf
    const-string v30, "execute"

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aput-object v22, v31, v32

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v6, v0, v1}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 1212
    .local v13, "httpResponse":Ljava/lang/Object;
    const-string v30, "getConnectionManager"

    const/16 v31, 0x0

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v6, v0, v1}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .line 1213
    .local v17, "manager":Ljava/lang/Object;
    if-eqz p8, :cond_378

    .line 1215
    :try_start_2f9
    new-instance v30, Lcom/mob/tools/network/HttpConnectionImpl;

    move-object/from16 v0, v30

    invoke-direct {v0, v13}, Lcom/mob/tools/network/HttpConnectionImpl;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, p8

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Lcom/mob/tools/network/HttpResponseCallback;->onResponse(Lcom/mob/tools/network/HttpConnection;)V
    :try_end_307
    .catch Ljava/lang/Throwable; {:try_start_2f9 .. :try_end_307} :catch_361
    .catchall {:try_start_2f9 .. :try_end_307} :catchall_363

    .line 1219
    const-string v30, "shutdown"

    const/16 v31, 0x0

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1224
    :goto_31a
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v30

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "use time: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    sub-long v32, v32, v28

    invoke-virtual/range {v31 .. v33}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    invoke-virtual/range {v30 .. v32}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 1225
    return-void

    .line 1178
    .end local v4    # "cTimeout":I
    .end local v6    # "client":Ljava/lang/Object;
    .end local v13    # "httpResponse":Ljava/lang/Object;
    .end local v17    # "manager":Ljava/lang/Object;
    .end local v23    # "rTimout":I
    :cond_343
    move-object/from16 v0, p9

    iget v4, v0, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->connectionTimeout:I

    goto/16 :goto_145

    .line 1182
    .restart local v4    # "cTimeout":I
    :cond_349
    move-object/from16 v0, p9

    iget v0, v0, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->readTimout:I

    move/from16 v23, v0

    goto/16 :goto_166

    .line 1208
    .restart local v23    # "rTimout":I
    :cond_351
    const-string v30, "DefaultHttpClient"

    const/16 v31, 0x0

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    invoke-static/range {v30 .. v31}, Lcom/mob/tools/utils/ReflectHelper;->newInstance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .restart local v6    # "client":Ljava/lang/Object;
    goto/16 :goto_2cf

    .line 1216
    .restart local v13    # "httpResponse":Ljava/lang/Object;
    .restart local v17    # "manager":Ljava/lang/Object;
    :catch_361
    move-exception v26

    .line 1217
    .local v26, "t":Ljava/lang/Throwable;
    :try_start_362
    throw v26
    :try_end_363
    .catchall {:try_start_362 .. :try_end_363} :catchall_363

    .line 1219
    .end local v26    # "t":Ljava/lang/Throwable;
    :catchall_363
    move-exception v30

    const-string v31, "shutdown"

    const/16 v32, 0x0

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-static {v0, v1, v2}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    throw v30

    .line 1222
    :cond_378
    const-string v30, "shutdown"

    const/16 v31, 0x0

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_31a
.end method

.method private kvPairsToUrl(Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1295
    .local p1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1296
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_47

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mob/tools/network/KVPair;

    .line 1297
    .local v3, "value":Lcom/mob/tools/network/KVPair;, "Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    iget-object v4, v3, Lcom/mob/tools/network/KVPair;->name:Ljava/lang/String;

    const-string v6, "utf-8"

    invoke-static {v4, v6}, Lcom/mob/tools/utils/Data;->urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1298
    .local v0, "encodedName":Ljava/lang/String;
    iget-object v4, v3, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    if-eqz v4, :cond_44

    iget-object v4, v3, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    const-string v6, "utf-8"

    .line 1299
    invoke-static {v4, v6}, Lcom/mob/tools/utils/Data;->urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1300
    .local v1, "encodedValue":Ljava/lang/String;
    :goto_2b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_36

    .line 1301
    const/16 v4, 0x26

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1303
    :cond_36
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v6, 0x3d

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 1299
    .end local v1    # "encodedValue":Ljava/lang/String;
    :cond_44
    const-string v1, ""

    goto :goto_2b

    .line 1305
    .end local v0    # "encodedName":Ljava/lang/String;
    .end local v3    # "value":Lcom/mob/tools/network/KVPair;, "Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    :cond_47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public downloadCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "cacheFolder"    # Ljava/lang/String;
    .param p4, "skipIfCached"    # Z
    .param p5, "timeout"    # Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 108
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/mob/tools/network/NetworkHelper;->downloadCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/mob/tools/network/NetworkHelper$NetworkTimeOut;Lcom/mob/tools/network/FileDownloadListener;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public downloadCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/mob/tools/network/NetworkHelper$NetworkTimeOut;Lcom/mob/tools/network/FileDownloadListener;)Ljava/lang/String;
    .registers 45
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "cacheFolder"    # Ljava/lang/String;
    .param p4, "skipIfCached"    # Z
    .param p5, "timeout"    # Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;
    .param p6, "downloadListener"    # Lcom/mob/tools/network/FileDownloadListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v34

    .line 114
    .local v34, "time":J
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "downloading: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 115
    if-eqz p4, :cond_7b

    .line 116
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getCachePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 117
    .local v29, "path":Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcom/mob/tools/utils/Data;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 118
    .local v26, "name":Ljava/lang/String;
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-direct {v12, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .local v12, "cache":Ljava/io/File;
    if-eqz p4, :cond_7b

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_7b

    .line 120
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "use time: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v6, v6, v34

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 121
    if-eqz p6, :cond_76

    .line 122
    const/16 v5, 0x64

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v8

    move-object/from16 v4, p6

    invoke-virtual/range {v4 .. v9}, Lcom/mob/tools/network/FileDownloadListener;->onProgress(IJJ)V

    .line 124
    :cond_76
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 246
    :goto_7a
    return-object v4

    .line 128
    .end local v12    # "cache":Ljava/io/File;
    .end local v26    # "name":Ljava/lang/String;
    .end local v29    # "path":Ljava/lang/String;
    :cond_7b
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    invoke-direct {v0, v1, v2}, Lcom/mob/tools/network/NetworkHelper;->getConnection(Ljava/lang/String;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/net/HttpURLConnection;

    move-result-object v13

    .line 129
    .local v13, "conn":Ljava/net/HttpURLConnection;
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->connect()V

    .line 130
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v31

    .line 131
    .local v31, "status":I
    const/16 v4, 0xc8

    move/from16 v0, v31

    if-ne v0, v4, :cond_2ec

    .line 132
    const/16 v26, 0x0

    .line 135
    .restart local v26    # "name":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v25

    .line 136
    .local v25, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-eqz v25, :cond_100

    .line 137
    const-string v4, "Content-Disposition"

    move-object/from16 v0, v25

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/List;

    .line 138
    .local v19, "headers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v19, :cond_100

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_100

    .line 139
    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/lang/String;

    .line 140
    .local v37, "value":Ljava/lang/String;
    const-string v4, ";"

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    .line 141
    .local v28, "parts":[Ljava/lang/String;
    move-object/from16 v0, v28

    array-length v5, v0

    const/4 v4, 0x0

    :goto_c1
    if-ge v4, v5, :cond_100

    aget-object v27, v28, v4

    .line 142
    .local v27, "part":Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, "filename"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_fd

    .line 143
    const-string v6, "="

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v26, v6, v7

    .line 144
    const-string v6, "\""

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_fd

    const-string v6, "\""

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_fd

    .line 145
    const/4 v6, 0x1

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    .line 141
    :cond_fd
    add-int/lit8 v4, v4, 0x1

    goto :goto_c1

    .line 153
    .end local v19    # "headers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v27    # "part":Ljava/lang/String;
    .end local v28    # "parts":[Ljava/lang/String;
    .end local v37    # "value":Ljava/lang/String;
    :cond_100
    if-nez v26, :cond_164

    .line 154
    invoke-static/range {p2 .. p2}, Lcom/mob/tools/utils/Data;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 155
    if-eqz v25, :cond_164

    .line 156
    const-string v4, "Content-Type"

    move-object/from16 v0, v25

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/List;

    .line 157
    .restart local v19    # "headers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v19, :cond_164

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_164

    .line 158
    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/lang/String;

    .line 159
    .restart local v37    # "value":Ljava/lang/String;
    if-nez v37, :cond_1ba

    const-string v37, ""

    .line 160
    :goto_127
    const-string v4, "image/"

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1c0

    .line 161
    const-string v4, "image/"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v36

    .line 162
    .local v36, "type":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "jpeg"

    move-object/from16 v0, v36

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15a

    const-string v36, "jpg"

    .end local v36    # "type":Ljava/lang/String;
    :cond_15a
    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 181
    .end local v19    # "headers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v37    # "value":Ljava/lang/String;
    :cond_164
    :goto_164
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getCachePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 182
    .restart local v29    # "path":Ljava/lang/String;
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-direct {v12, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .restart local v12    # "cache":Ljava/io/File;
    if-eqz p4, :cond_20a

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_20a

    .line 184
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 185
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "use time: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v6, v6, v34

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 186
    if-eqz p6, :cond_1b4

    .line 187
    const/16 v5, 0x64

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v8

    move-object/from16 v4, p6

    invoke-virtual/range {v4 .. v9}, Lcom/mob/tools/network/FileDownloadListener;->onProgress(IJJ)V

    .line 189
    :cond_1b4
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_7a

    .line 159
    .end local v12    # "cache":Ljava/io/File;
    .end local v29    # "path":Ljava/lang/String;
    .restart local v19    # "headers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v37    # "value":Ljava/lang/String;
    :cond_1ba
    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v37

    goto/16 :goto_127

    .line 165
    :cond_1c0
    const/16 v4, 0x2f

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v20

    .line 166
    .local v20, "index":I
    const/16 v23, 0x0

    .line 167
    .local v23, "lastPart":Ljava/lang/String;
    if-lez v20, :cond_1d4

    .line 168
    add-int/lit8 v4, v20, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    .line 170
    :cond_1d4
    if-eqz v23, :cond_164

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_164

    .line 171
    const/16 v4, 0x2e

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v15

    .line 172
    .local v15, "dot":I
    if-lez v15, :cond_164

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v15

    const/16 v5, 0xa

    if-ge v4, v5, :cond_164

    .line 173
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_164

    .line 191
    .end local v15    # "dot":I
    .end local v19    # "headers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v20    # "index":I
    .end local v23    # "lastPart":Ljava/lang/String;
    .end local v37    # "value":Ljava/lang/String;
    .restart local v12    # "cache":Ljava/io/File;
    .restart local v29    # "path":Ljava/lang/String;
    :cond_20a
    invoke-virtual {v12}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_21b

    .line 192
    invoke-virtual {v12}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 194
    :cond_21b
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_224

    .line 195
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 199
    :cond_224
    if-eqz p6, :cond_238

    :try_start_226
    invoke-virtual/range {p6 .. p6}, Lcom/mob/tools/network/FileDownloadListener;->isCanceled()Z

    move-result v4

    if-eqz v4, :cond_238

    .line 200
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_235

    .line 201
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 203
    :cond_235
    const/4 v4, 0x0

    goto/16 :goto_7a

    .line 205
    :cond_238
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v21

    .line 206
    .local v21, "is":Ljava/io/InputStream;
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v14

    .line 207
    .local v14, "contentLength":I
    new-instance v18, Ljava/io/FileOutputStream;

    move-object/from16 v0, v18

    invoke-direct {v0, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 208
    .local v18, "fos":Ljava/io/FileOutputStream;
    const/16 v4, 0x400

    new-array v11, v4, [B

    .line 209
    .local v11, "buf":[B
    const/16 v16, 0x0

    .line 210
    .local v16, "downloadLength":I
    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/io/InputStream;->read([B)I

    move-result v24

    .line 211
    .local v24, "len":I
    :goto_253
    if-lez v24, :cond_274

    .line 212
    const/4 v4, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v11, v4, v1}, Ljava/io/FileOutputStream;->write([BII)V

    .line 213
    add-int v16, v16, v24

    .line 214
    if-eqz p6, :cond_296

    .line 215
    if-gtz v14, :cond_291

    const/16 v5, 0x64

    :goto_265
    move/from16 v0, v16

    int-to-long v6, v0

    int-to-long v8, v14

    move-object/from16 v4, p6

    invoke-virtual/range {v4 .. v9}, Lcom/mob/tools/network/FileDownloadListener;->onProgress(IJJ)V

    .line 217
    invoke-virtual/range {p6 .. p6}, Lcom/mob/tools/network/FileDownloadListener;->isCanceled()Z

    move-result v4

    if-eqz v4, :cond_296

    .line 223
    :cond_274
    if-eqz p6, :cond_2ac

    .line 224
    invoke-virtual/range {p6 .. p6}, Lcom/mob/tools/network/FileDownloadListener;->isCanceled()Z

    move-result v4

    if-eqz v4, :cond_29d

    .line 225
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_285

    .line 226
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 228
    :cond_285
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->flush()V

    .line 229
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V

    .line 230
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->close()V

    .line 231
    const/4 v4, 0x0

    goto/16 :goto_7a

    .line 215
    :cond_291
    mul-int/lit8 v4, v16, 0x64

    div-int v5, v4, v14

    goto :goto_265

    .line 221
    :cond_296
    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/io/InputStream;->read([B)I

    move-result v24

    goto :goto_253

    .line 233
    :cond_29d
    const/16 v5, 0x64

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v8

    move-object/from16 v4, p6

    invoke-virtual/range {v4 .. v9}, Lcom/mob/tools/network/FileDownloadListener;->onProgress(IJJ)V

    .line 235
    :cond_2ac
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->flush()V

    .line 236
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V

    .line 237
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->close()V
    :try_end_2b5
    .catch Ljava/lang/Throwable; {:try_start_226 .. :try_end_2b5} :catch_2e1

    .line 244
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 245
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "use time: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v6, v6, v34

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 246
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_7a

    .line 238
    .end local v11    # "buf":[B
    .end local v14    # "contentLength":I
    .end local v16    # "downloadLength":I
    .end local v18    # "fos":Ljava/io/FileOutputStream;
    .end local v21    # "is":Ljava/io/InputStream;
    .end local v24    # "len":I
    :catch_2e1
    move-exception v32

    .line 239
    .local v32, "t":Ljava/lang/Throwable;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2eb

    .line 240
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 242
    :cond_2eb
    throw v32

    .line 249
    .end local v12    # "cache":Ljava/io/File;
    .end local v25    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v26    # "name":Ljava/lang/String;
    .end local v29    # "path":Ljava/lang/String;
    .end local v32    # "t":Ljava/lang/Throwable;
    :cond_2ec
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    .line 250
    .local v30, "sb":Ljava/lang/StringBuilder;
    new-instance v22, Ljava/io/InputStreamReader;

    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v4

    const-string v5, "utf-8"

    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-direct {v0, v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 251
    .local v22, "isr":Ljava/io/InputStreamReader;
    new-instance v10, Ljava/io/BufferedReader;

    move-object/from16 v0, v22

    invoke-direct {v10, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 252
    .local v10, "br":Ljava/io/BufferedReader;
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v33

    .line 253
    .local v33, "txt":Ljava/lang/String;
    :goto_30d
    if-eqz v33, :cond_328

    .line 254
    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_31c

    .line 255
    const/16 v4, 0xa

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 257
    :cond_31c
    move-object/from16 v0, v30

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v33

    goto :goto_30d

    .line 260
    :cond_328
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V

    .line 261
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 263
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    .line 264
    .local v17, "errMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "error"

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    const-string v4, "status"

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    new-instance v4, Ljava/lang/Throwable;

    new-instance v5, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v5}, Lcom/mob/tools/utils/Hashon;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getHttpPostResponse(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;Lcom/mob/tools/network/HttpResponseCallback;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V
    .registers 27
    .param p1, "url"    # Ljava/lang/String;
    .param p5, "callback"    # Lcom/mob/tools/network/HttpResponseCallback;
    .param p6, "timeout"    # Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/network/HttpResponseCallback;",
            "Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 950
    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    .local p3, "file":Lcom/mob/tools/network/KVPair;, "Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    .local p4, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 951
    .local v14, "time":J
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v13

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "httpPost: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 953
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    invoke-direct {v0, v1, v2}, Lcom/mob/tools/network/NetworkHelper;->getConnection(Ljava/lang/String;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/net/HttpURLConnection;

    move-result-object v5

    .line 954
    .local v5, "conn":Ljava/net/HttpURLConnection;
    const/4 v13, 0x1

    invoke-virtual {v5, v13}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 955
    const/4 v13, 0x0

    invoke-virtual {v5, v13}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 957
    if-eqz p3, :cond_8f

    move-object/from16 v0, p3

    iget-object v13, v0, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    if-eqz v13, :cond_8f

    new-instance v16, Ljava/io/File;

    move-object/from16 v0, p3

    iget-object v13, v0, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v0, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_8f

    .line 958
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 959
    .local v6, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 960
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v5, v1, v2, v6}, Lcom/mob/tools/network/NetworkHelper;->getFilePostHTTPPart(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/mob/tools/network/HTTPPart;

    move-result-object v11

    .line 965
    .end local v6    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    .local v11, "part":Lcom/mob/tools/network/HTTPPart;
    :goto_6f
    if-eqz p4, :cond_9a

    .line 966
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_75
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_9a

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mob/tools/network/KVPair;

    .line 967
    .local v7, "header":Lcom/mob/tools/network/KVPair;, "Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    iget-object v0, v7, Lcom/mob/tools/network/KVPair;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    iget-object v13, v7, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v5, v0, v13}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_75

    .line 962
    .end local v7    # "header":Lcom/mob/tools/network/KVPair;, "Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    .end local v11    # "part":Lcom/mob/tools/network/HTTPPart;
    :cond_8f
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v5, v1, v2}, Lcom/mob/tools/network/NetworkHelper;->getTextPostHTTPPart(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/util/ArrayList;)Lcom/mob/tools/network/HTTPPart;

    move-result-object v11

    .restart local v11    # "part":Lcom/mob/tools/network/HTTPPart;
    goto :goto_6f

    .line 971
    :cond_9a
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->connect()V

    .line 972
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    .line 973
    .local v10, "os":Ljava/io/OutputStream;
    invoke-virtual {v11}, Lcom/mob/tools/network/HTTPPart;->toInputStream()Ljava/io/InputStream;

    move-result-object v8

    .line 974
    .local v8, "is":Ljava/io/InputStream;
    const/high16 v13, 0x10000

    new-array v4, v13, [B

    .line 975
    .local v4, "buf":[B
    invoke-virtual {v8, v4}, Ljava/io/InputStream;->read([B)I

    move-result v9

    .line 976
    .local v9, "len":I
    :goto_ad
    if-lez v9, :cond_b8

    .line 977
    const/4 v13, 0x0

    invoke-virtual {v10, v4, v13, v9}, Ljava/io/OutputStream;->write([BII)V

    .line 978
    invoke-virtual {v8, v4}, Ljava/io/InputStream;->read([B)I

    move-result v9

    goto :goto_ad

    .line 980
    :cond_b8
    invoke-virtual {v10}, Ljava/io/OutputStream;->flush()V

    .line 981
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 982
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    .line 984
    if-eqz p5, :cond_108

    .line 986
    :try_start_c3
    new-instance v13, Lcom/mob/tools/network/HttpConnectionImpl23;

    invoke-direct {v13, v5}, Lcom/mob/tools/network/HttpConnectionImpl23;-><init>(Ljava/net/HttpURLConnection;)V

    move-object/from16 v0, p5

    invoke-interface {v0, v13}, Lcom/mob/tools/network/HttpResponseCallback;->onResponse(Lcom/mob/tools/network/HttpConnection;)V
    :try_end_cd
    .catch Ljava/lang/Throwable; {:try_start_c3 .. :try_end_cd} :catch_101
    .catchall {:try_start_c3 .. :try_end_cd} :catchall_103

    .line 990
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 995
    :goto_d0
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v13

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "use time: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sub-long v18, v18, v14

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 996
    return-void

    .line 987
    :catch_101
    move-exception v12

    .line 988
    .local v12, "t":Ljava/lang/Throwable;
    :try_start_102
    throw v12
    :try_end_103
    .catchall {:try_start_102 .. :try_end_103} :catchall_103

    .line 990
    .end local v12    # "t":Ljava/lang/Throwable;
    :catchall_103
    move-exception v13

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v13

    .line 993
    :cond_108
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_d0
.end method

.method public httpGet(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;
    .registers 25
    .param p1, "url"    # Ljava/lang/String;
    .param p4, "timeout"    # Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 47
    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    .local p3, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 48
    .local v14, "time":J
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v16

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "httpGet: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 49
    if-eqz p2, :cond_57

    .line 50
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/mob/tools/network/NetworkHelper;->kvPairsToUrl(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v9

    .line 51
    .local v9, "param":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v16

    if-lez v16, :cond_57

    .line 52
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "?"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 56
    .end local v9    # "param":Ljava/lang/String;
    :cond_57
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/mob/tools/network/NetworkHelper;->getConnection(Ljava/lang/String;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/net/HttpURLConnection;

    move-result-object v5

    .line 57
    .local v5, "conn":Ljava/net/HttpURLConnection;
    if-eqz p3, :cond_85

    .line 58
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_67
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_85

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mob/tools/network/KVPair;

    .line 59
    .local v7, "header":Lcom/mob/tools/network/KVPair;, "Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    iget-object v0, v7, Lcom/mob/tools/network/KVPair;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    iget-object v0, v7, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v5, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_67

    .line 63
    .end local v7    # "header":Lcom/mob/tools/network/KVPair;, "Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    :cond_85
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->connect()V

    .line 64
    const/4 v10, 0x0

    .line 65
    .local v10, "resp":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v12

    .line 66
    .local v12, "status":I
    const/16 v16, 0xc8

    move/from16 v0, v16

    if-ne v12, v0, :cond_fe

    .line 67
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .local v11, "sb":Ljava/lang/StringBuilder;
    new-instance v8, Ljava/io/InputStreamReader;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v16

    const-string v17, "utf-8"

    invoke-static/range {v17 .. v17}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v8, v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 69
    .local v8, "isr":Ljava/io/InputStreamReader;
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 70
    .local v4, "br":Ljava/io/BufferedReader;
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    .line 71
    .local v13, "txt":Ljava/lang/String;
    :goto_b4
    if-eqz v13, :cond_cb

    .line 72
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v16

    if-lez v16, :cond_c3

    .line 73
    const/16 v16, 0xa

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 75
    :cond_c3
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    goto :goto_b4

    .line 78
    :cond_cb
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 79
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 80
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 102
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v16

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "use time: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sub-long v18, v18, v14

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 103
    return-object v10

    .line 82
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v8    # "isr":Ljava/io/InputStreamReader;
    .end local v11    # "sb":Ljava/lang/StringBuilder;
    .end local v13    # "txt":Ljava/lang/String;
    :cond_fe
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .restart local v11    # "sb":Ljava/lang/StringBuilder;
    new-instance v8, Ljava/io/InputStreamReader;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v16

    const-string v17, "utf-8"

    invoke-static/range {v17 .. v17}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v8, v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 84
    .restart local v8    # "isr":Ljava/io/InputStreamReader;
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 85
    .restart local v4    # "br":Ljava/io/BufferedReader;
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    .line 86
    .restart local v13    # "txt":Ljava/lang/String;
    :goto_11f
    if-eqz v13, :cond_136

    .line 87
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v16

    if-lez v16, :cond_12e

    .line 88
    const/16 v16, 0xa

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 90
    :cond_12e
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    goto :goto_11f

    .line 93
    :cond_136
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 94
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 96
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 97
    .local v6, "errMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v16, "error"

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string v16, "status"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    new-instance v16, Ljava/lang/Throwable;

    new-instance v17, Lcom/mob/tools/utils/Hashon;

    invoke-direct/range {v17 .. v17}, Lcom/mob/tools/utils/Hashon;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v16
.end method

.method public httpHead(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/util/ArrayList;
    .registers 26
    .param p1, "url"    # Ljava/lang/String;
    .param p5, "timeout"    # Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<[",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1086
    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    .local p3, "file":Lcom/mob/tools/network/KVPair;, "Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    .local p4, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 1087
    .local v12, "time":J
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "httpHead: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 1088
    if-eqz p2, :cond_53

    .line 1089
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/mob/tools/network/NetworkHelper;->kvPairsToUrl(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v11

    .line 1090
    .local v11, "param":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_53

    .line 1091
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "?"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1095
    .end local v11    # "param":Ljava/lang/String;
    :cond_53
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    invoke-direct {v0, v1, v2}, Lcom/mob/tools/network/NetworkHelper;->getConnection(Ljava/lang/String;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/net/HttpURLConnection;

    move-result-object v4

    .line 1096
    .local v4, "conn":Ljava/net/HttpURLConnection;
    const-string v15, "HEAD"

    invoke-virtual {v4, v15}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1097
    if-eqz p4, :cond_82

    .line 1098
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_68
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_82

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mob/tools/network/KVPair;

    .line 1099
    .local v7, "header":Lcom/mob/tools/network/KVPair;, "Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    iget-object v0, v7, Lcom/mob/tools/network/KVPair;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    iget-object v15, v7, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0, v15}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_68

    .line 1103
    .end local v7    # "header":Lcom/mob/tools/network/KVPair;, "Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    :cond_82
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    .line 1104
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v10

    .line 1105
    .local v10, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1106
    .local v9, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<[Ljava/lang/String;>;>;"
    if-eqz v10, :cond_f1

    .line 1107
    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_98
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_f1

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 1108
    .local v5, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    .line 1109
    .local v14, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v14, :cond_c9

    .line 1110
    new-instance v17, Lcom/mob/tools/network/KVPair;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v15, v1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_98

    .line 1112
    :cond_c9
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    new-array v6, v15, [Ljava/lang/String;

    .line 1113
    .local v6, "hds":[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_d0
    array-length v15, v6

    if-ge v8, v15, :cond_de

    .line 1114
    invoke-interface {v14, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    aput-object v15, v6, v8

    .line 1113
    add-int/lit8 v8, v8, 0x1

    goto :goto_d0

    .line 1116
    :cond_de
    new-instance v17, Lcom/mob/tools/network/KVPair;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v0, v15, v6}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_98

    .line 1120
    .end local v5    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v6    # "hds":[Ljava/lang/String;
    .end local v8    # "i":I
    .end local v14    # "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_f1
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1122
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "use time: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sub-long v18, v18, v12

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 1123
    return-object v9
.end method

.method public httpPatch(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;JLjava/util/ArrayList;Lcom/mob/tools/network/OnReadListener;Lcom/mob/tools/network/HttpResponseCallback;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V
    .registers 12
    .param p1, "url"    # Ljava/lang/String;
    .param p4, "offset"    # J
    .param p7, "listener"    # Lcom/mob/tools/network/OnReadListener;
    .param p8, "callback"    # Lcom/mob/tools/network/HttpResponseCallback;
    .param p9, "timeout"    # Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;J",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/network/OnReadListener;",
            "Lcom/mob/tools/network/HttpResponseCallback;",
            "Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1129
    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    .local p3, "file":Lcom/mob/tools/network/KVPair;, "Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    .local p6, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_a

    .line 1130
    invoke-virtual/range {p0 .. p9}, Lcom/mob/tools/network/NetworkHelper;->httpPatchImpl23(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;JLjava/util/ArrayList;Lcom/mob/tools/network/OnReadListener;Lcom/mob/tools/network/HttpResponseCallback;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V

    .line 1134
    :goto_9
    return-void

    .line 1132
    :cond_a
    invoke-direct/range {p0 .. p9}, Lcom/mob/tools/network/NetworkHelper;->httpPatchImpl(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;JLjava/util/ArrayList;Lcom/mob/tools/network/OnReadListener;Lcom/mob/tools/network/HttpResponseCallback;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V

    goto :goto_9
.end method

.method public httpPatchImpl23(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;JLjava/util/ArrayList;Lcom/mob/tools/network/OnReadListener;Lcom/mob/tools/network/HttpResponseCallback;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V
    .registers 30
    .param p1, "url"    # Ljava/lang/String;
    .param p4, "offset"    # J
    .param p7, "listener"    # Lcom/mob/tools/network/OnReadListener;
    .param p8, "callback"    # Lcom/mob/tools/network/HttpResponseCallback;
    .param p9, "timeout"    # Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;J",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/network/OnReadListener;",
            "Lcom/mob/tools/network/HttpResponseCallback;",
            "Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1241
    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    .local p3, "file":Lcom/mob/tools/network/KVPair;, "Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    .local p6, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 1242
    .local v14, "time":J
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v13

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "httpPatch: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 1243
    if-eqz p2, :cond_59

    .line 1244
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/mob/tools/network/NetworkHelper;->kvPairsToUrl(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v11

    .line 1245
    .local v11, "param":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_59

    .line 1246
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v16, "?"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1250
    .end local v11    # "param":Ljava/lang/String;
    :cond_59
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p9

    invoke-direct {v0, v1, v2}, Lcom/mob/tools/network/NetworkHelper;->getConnection(Ljava/lang/String;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/net/HttpURLConnection;

    move-result-object v5

    .line 1251
    .local v5, "conn":Ljava/net/HttpURLConnection;
    const/4 v13, 0x1

    invoke-virtual {v5, v13}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 1252
    const/4 v13, 0x0

    invoke-virtual {v5, v13}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 1253
    const-string v13, "PATCH"

    invoke-virtual {v5, v13}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1254
    const-string v13, "Content-Type"

    const-string v16, "application/offset+octet-stream"

    move-object/from16 v0, v16

    invoke-virtual {v5, v13, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1255
    if-eqz p6, :cond_99

    .line 1256
    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_7f
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_99

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mob/tools/network/KVPair;

    .line 1257
    .local v7, "header":Lcom/mob/tools/network/KVPair;, "Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    iget-object v0, v7, Lcom/mob/tools/network/KVPair;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    iget-object v13, v7, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v5, v0, v13}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7f

    .line 1261
    .end local v7    # "header":Lcom/mob/tools/network/KVPair;, "Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    :cond_99
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->connect()V

    .line 1262
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    .line 1263
    .local v10, "os":Ljava/io/OutputStream;
    new-instance v6, Lcom/mob/tools/network/FilePart;

    invoke-direct {v6}, Lcom/mob/tools/network/FilePart;-><init>()V

    .line 1264
    .local v6, "fp":Lcom/mob/tools/network/FilePart;
    move-object/from16 v0, p7

    invoke-virtual {v6, v0}, Lcom/mob/tools/network/FilePart;->setOnReadListener(Lcom/mob/tools/network/OnReadListener;)V

    .line 1265
    move-object/from16 v0, p3

    iget-object v13, v0, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v6, v13}, Lcom/mob/tools/network/FilePart;->setFile(Ljava/lang/String;)V

    .line 1266
    move-wide/from16 v0, p4

    invoke-virtual {v6, v0, v1}, Lcom/mob/tools/network/FilePart;->setOffset(J)V

    .line 1267
    invoke-virtual {v6}, Lcom/mob/tools/network/FilePart;->toInputStream()Ljava/io/InputStream;

    move-result-object v8

    .line 1268
    .local v8, "is":Ljava/io/InputStream;
    const/high16 v13, 0x10000

    new-array v4, v13, [B

    .line 1269
    .local v4, "buf":[B
    invoke-virtual {v8, v4}, Ljava/io/InputStream;->read([B)I

    move-result v9

    .line 1270
    .local v9, "len":I
    :goto_c4
    if-lez v9, :cond_cf

    .line 1271
    const/4 v13, 0x0

    invoke-virtual {v10, v4, v13, v9}, Ljava/io/OutputStream;->write([BII)V

    .line 1272
    invoke-virtual {v8, v4}, Ljava/io/InputStream;->read([B)I

    move-result v9

    goto :goto_c4

    .line 1274
    :cond_cf
    invoke-virtual {v10}, Ljava/io/OutputStream;->flush()V

    .line 1275
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 1276
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    .line 1278
    if-eqz p8, :cond_11f

    .line 1280
    :try_start_da
    new-instance v13, Lcom/mob/tools/network/HttpConnectionImpl23;

    invoke-direct {v13, v5}, Lcom/mob/tools/network/HttpConnectionImpl23;-><init>(Ljava/net/HttpURLConnection;)V

    move-object/from16 v0, p8

    invoke-interface {v0, v13}, Lcom/mob/tools/network/HttpResponseCallback;->onResponse(Lcom/mob/tools/network/HttpConnection;)V
    :try_end_e4
    .catch Ljava/lang/Throwable; {:try_start_da .. :try_end_e4} :catch_118
    .catchall {:try_start_da .. :try_end_e4} :catchall_11a

    .line 1284
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1289
    :goto_e7
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v13

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "use time: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sub-long v18, v18, v14

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 1290
    return-void

    .line 1281
    :catch_118
    move-exception v12

    .line 1282
    .local v12, "t":Ljava/lang/Throwable;
    :try_start_119
    throw v12
    :try_end_11a
    .catchall {:try_start_119 .. :try_end_11a} :catchall_11a

    .line 1284
    .end local v12    # "t":Ljava/lang/Throwable;
    :catchall_11a
    move-exception v13

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v13

    .line 1287
    :cond_11f
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_e7
.end method

.method public httpPost(Ljava/lang/String;Ljava/util/ArrayList;ILcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;
    .registers 12
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "chunkLength"    # I
    .param p4, "timeout"    # Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;I",
            "Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 558
    .local p2, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 559
    .local v6, "tmpMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Lcom/mob/tools/network/NetworkHelper$4;

    invoke-direct {v4, p0, v6}, Lcom/mob/tools/network/NetworkHelper$4;-><init>(Lcom/mob/tools/network/NetworkHelper;Ljava/util/HashMap;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/mob/tools/network/NetworkHelper;->httpPost(Ljava/lang/String;Ljava/util/ArrayList;ILcom/mob/tools/network/HttpResponseCallback;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V

    .line 597
    const-string v0, "resp"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public httpPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;ILcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;
    .registers 14
    .param p1, "url"    # Ljava/lang/String;
    .param p5, "chunkLength"    # I
    .param p6, "timeout"    # Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;I",
            "Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 456
    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    .local p3, "file":Lcom/mob/tools/network/KVPair;, "Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    .local p4, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 457
    .local v3, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    if-eqz p3, :cond_1d

    iget-object v0, p3, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    if-eqz v0, :cond_1d

    new-instance v1, Ljava/io/File;

    iget-object v0, p3, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 458
    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1d
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    .line 460
    invoke-virtual/range {v0 .. v6}, Lcom/mob/tools/network/NetworkHelper;->httpPostFiles(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ILcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public httpPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;
    .registers 13
    .param p1, "url"    # Ljava/lang/String;
    .param p5, "timeout"    # Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 451
    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    .local p3, "file":Lcom/mob/tools/network/KVPair;, "Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    .local p4, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/mob/tools/network/NetworkHelper;->httpPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;ILcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public httpPost(Ljava/lang/String;Ljava/util/ArrayList;ILcom/mob/tools/network/HttpResponseCallback;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V
    .registers 24
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "chunkLength"    # I
    .param p4, "callback"    # Lcom/mob/tools/network/HttpResponseCallback;
    .param p5, "timeout"    # Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;I",
            "Lcom/mob/tools/network/HttpResponseCallback;",
            "Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 715
    .local p2, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 716
    .local v12, "time":J
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "httpPost: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 718
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    invoke-direct {v0, v1, v2}, Lcom/mob/tools/network/NetworkHelper;->getConnection(Ljava/lang/String;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/net/HttpURLConnection;

    move-result-object v5

    .line 719
    .local v5, "conn":Ljava/net/HttpURLConnection;
    const/4 v14, 0x1

    invoke-virtual {v5, v14}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 720
    const-string v14, "Connection"

    const-string v15, "Keep-Alive"

    invoke-virtual {v5, v14, v15}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    if-eqz p2, :cond_5d

    .line 722
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_43
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5d

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mob/tools/network/KVPair;

    .line 723
    .local v6, "header":Lcom/mob/tools/network/KVPair;, "Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    iget-object v0, v6, Lcom/mob/tools/network/KVPair;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    iget-object v14, v6, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v5, v0, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_43

    .line 726
    .end local v6    # "header":Lcom/mob/tools/network/KVPair;, "Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    :cond_5d
    new-instance v10, Lcom/mob/tools/network/StringPart;

    invoke-direct {v10}, Lcom/mob/tools/network/StringPart;-><init>()V

    .line 727
    .local v10, "part":Lcom/mob/tools/network/StringPart;
    const/4 v14, 0x0

    invoke-virtual {v10, v14}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    .line 728
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->connect()V

    .line 729
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    .line 730
    .local v9, "os":Ljava/io/OutputStream;
    invoke-virtual {v10}, Lcom/mob/tools/network/StringPart;->toInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 731
    .local v7, "is":Ljava/io/InputStream;
    const/high16 v14, 0x10000

    new-array v4, v14, [B

    .line 732
    .local v4, "buf":[B
    invoke-virtual {v7, v4}, Ljava/io/InputStream;->read([B)I

    move-result v8

    .line 733
    .local v8, "len":I
    :goto_79
    if-lez v8, :cond_84

    .line 734
    const/4 v14, 0x0

    invoke-virtual {v9, v4, v14, v8}, Ljava/io/OutputStream;->write([BII)V

    .line 735
    invoke-virtual {v7, v4}, Ljava/io/InputStream;->read([B)I

    move-result v8

    goto :goto_79

    .line 737
    :cond_84
    invoke-virtual {v9}, Ljava/io/OutputStream;->flush()V

    .line 738
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 739
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V

    .line 740
    if-eqz p4, :cond_cc

    .line 742
    :try_start_8f
    new-instance v14, Lcom/mob/tools/network/HttpConnectionImpl23;

    invoke-direct {v14, v5}, Lcom/mob/tools/network/HttpConnectionImpl23;-><init>(Ljava/net/HttpURLConnection;)V

    move-object/from16 v0, p4

    invoke-interface {v0, v14}, Lcom/mob/tools/network/HttpResponseCallback;->onResponse(Lcom/mob/tools/network/HttpConnection;)V
    :try_end_99
    .catch Ljava/lang/Throwable; {:try_start_8f .. :try_end_99} :catch_c5
    .catchall {:try_start_8f .. :try_end_99} :catchall_c7

    .line 746
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 751
    :goto_9c
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "use time: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v12

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 752
    return-void

    .line 743
    :catch_c5
    move-exception v11

    .line 744
    .local v11, "t":Ljava/lang/Throwable;
    :try_start_c6
    throw v11
    :try_end_c7
    .catchall {:try_start_c6 .. :try_end_c7} :catchall_c7

    .line 746
    .end local v11    # "t":Ljava/lang/Throwable;
    :catchall_c7
    move-exception v14

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v14

    .line 749
    :cond_cc
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_9c
.end method

.method public httpPost(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ILcom/mob/tools/network/HttpResponseCallback;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V
    .registers 26
    .param p1, "url"    # Ljava/lang/String;
    .param p5, "chunkLength"    # I
    .param p6, "callback"    # Lcom/mob/tools/network/HttpResponseCallback;
    .param p7, "timeout"    # Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;I",
            "Lcom/mob/tools/network/HttpResponseCallback;",
            "Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 609
    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    .local p3, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    .local p4, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 610
    .local v12, "time":J
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "httpPost: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 612
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p7

    invoke-direct {v0, v1, v2}, Lcom/mob/tools/network/NetworkHelper;->getConnection(Ljava/lang/String;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/net/HttpURLConnection;

    move-result-object v5

    .line 613
    .local v5, "conn":Ljava/net/HttpURLConnection;
    const/4 v14, 0x1

    invoke-virtual {v5, v14}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 614
    const-string v14, "Connection"

    const-string v15, "Keep-Alive"

    invoke-virtual {v5, v14, v15}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    if-eqz p3, :cond_78

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_78

    .line 617
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/mob/tools/network/NetworkHelper;->getFilePostHTTPPart(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/mob/tools/network/HTTPPart;

    move-result-object v10

    .line 618
    .local v10, "part":Lcom/mob/tools/network/HTTPPart;
    if-ltz p5, :cond_58

    .line 619
    move/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 626
    :cond_58
    :goto_58
    if-eqz p4, :cond_8b

    .line 627
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_5e
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8b

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mob/tools/network/KVPair;

    .line 628
    .local v6, "header":Lcom/mob/tools/network/KVPair;, "Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    iget-object v0, v6, Lcom/mob/tools/network/KVPair;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    iget-object v14, v6, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v5, v0, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5e

    .line 622
    .end local v6    # "header":Lcom/mob/tools/network/KVPair;, "Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    .end local v10    # "part":Lcom/mob/tools/network/HTTPPart;
    :cond_78
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v5, v1, v2}, Lcom/mob/tools/network/NetworkHelper;->getTextPostHTTPPart(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/util/ArrayList;)Lcom/mob/tools/network/HTTPPart;

    move-result-object v10

    .line 623
    .restart local v10    # "part":Lcom/mob/tools/network/HTTPPart;
    invoke-virtual {v10}, Lcom/mob/tools/network/HTTPPart;->length()J

    move-result-wide v14

    long-to-int v14, v14

    invoke-virtual {v5, v14}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    goto :goto_58

    .line 632
    :cond_8b
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->connect()V

    .line 633
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    .line 634
    .local v9, "os":Ljava/io/OutputStream;
    invoke-virtual {v10}, Lcom/mob/tools/network/HTTPPart;->toInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 635
    .local v7, "is":Ljava/io/InputStream;
    const/high16 v14, 0x10000

    new-array v4, v14, [B

    .line 636
    .local v4, "buf":[B
    invoke-virtual {v7, v4}, Ljava/io/InputStream;->read([B)I

    move-result v8

    .line 637
    .local v8, "len":I
    :goto_9e
    if-lez v8, :cond_a9

    .line 638
    const/4 v14, 0x0

    invoke-virtual {v9, v4, v14, v8}, Ljava/io/OutputStream;->write([BII)V

    .line 639
    invoke-virtual {v7, v4}, Ljava/io/InputStream;->read([B)I

    move-result v8

    goto :goto_9e

    .line 641
    :cond_a9
    invoke-virtual {v9}, Ljava/io/OutputStream;->flush()V

    .line 642
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 643
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V

    .line 645
    if-eqz p6, :cond_f1

    .line 647
    :try_start_b4
    new-instance v14, Lcom/mob/tools/network/HttpConnectionImpl23;

    invoke-direct {v14, v5}, Lcom/mob/tools/network/HttpConnectionImpl23;-><init>(Ljava/net/HttpURLConnection;)V

    move-object/from16 v0, p6

    invoke-interface {v0, v14}, Lcom/mob/tools/network/HttpResponseCallback;->onResponse(Lcom/mob/tools/network/HttpConnection;)V
    :try_end_be
    .catch Ljava/lang/Throwable; {:try_start_b4 .. :try_end_be} :catch_ea
    .catchall {:try_start_b4 .. :try_end_be} :catchall_ec

    .line 651
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 656
    :goto_c1
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "use time: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v12

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 657
    return-void

    .line 648
    :catch_ea
    move-exception v11

    .line 649
    .local v11, "t":Ljava/lang/Throwable;
    :try_start_eb
    throw v11
    :try_end_ec
    .catchall {:try_start_eb .. :try_end_ec} :catchall_ec

    .line 651
    .end local v11    # "t":Ljava/lang/Throwable;
    :catchall_ec
    move-exception v14

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v14

    .line 654
    :cond_f1
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_c1
.end method

.method public httpPost(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/mob/tools/network/HttpResponseCallback;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V
    .registers 15
    .param p1, "url"    # Ljava/lang/String;
    .param p5, "callback"    # Lcom/mob/tools/network/HttpResponseCallback;
    .param p6, "timeout"    # Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/network/HttpResponseCallback;",
            "Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 603
    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    .local p3, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    .local p4, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/mob/tools/network/NetworkHelper;->httpPost(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ILcom/mob/tools/network/HttpResponseCallback;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V

    .line 604
    return-void
.end method

.method public httpPost(Ljava/lang/String;Ljava/util/ArrayList;[BLjava/util/ArrayList;ILcom/mob/tools/network/HttpResponseCallback;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V
    .registers 26
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "data"    # [B
    .param p5, "chunkLength"    # I
    .param p6, "callback"    # Lcom/mob/tools/network/HttpResponseCallback;
    .param p7, "timeout"    # Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;[B",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;I",
            "Lcom/mob/tools/network/HttpResponseCallback;",
            "Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 662
    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    .local p4, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 663
    .local v12, "time":J
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "httpPost: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 665
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p7

    invoke-direct {v0, v1, v2}, Lcom/mob/tools/network/NetworkHelper;->getConnection(Ljava/lang/String;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/net/HttpURLConnection;

    move-result-object v5

    .line 666
    .local v5, "conn":Ljava/net/HttpURLConnection;
    const/4 v14, 0x1

    invoke-virtual {v5, v14}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 667
    const-string v14, "Connection"

    const-string v15, "Keep-Alive"

    invoke-virtual {v5, v14, v15}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    if-eqz p3, :cond_75

    move-object/from16 v0, p3

    array-length v14, v0

    if-lez v14, :cond_75

    .line 670
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v5, v1, v2}, Lcom/mob/tools/network/NetworkHelper;->getDataPostHttpPart(Ljava/net/HttpURLConnection;Ljava/lang/String;[B)Lcom/mob/tools/network/HTTPPart;

    move-result-object v10

    .line 671
    .local v10, "part":Lcom/mob/tools/network/HTTPPart;
    if-ltz p5, :cond_55

    .line 672
    move/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 679
    :cond_55
    :goto_55
    if-eqz p4, :cond_88

    .line 680
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_5b
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_88

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mob/tools/network/KVPair;

    .line 681
    .local v6, "header":Lcom/mob/tools/network/KVPair;, "Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    iget-object v0, v6, Lcom/mob/tools/network/KVPair;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    iget-object v14, v6, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v5, v0, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5b

    .line 675
    .end local v6    # "header":Lcom/mob/tools/network/KVPair;, "Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    .end local v10    # "part":Lcom/mob/tools/network/HTTPPart;
    :cond_75
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v5, v1, v2}, Lcom/mob/tools/network/NetworkHelper;->getTextPostHTTPPart(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/util/ArrayList;)Lcom/mob/tools/network/HTTPPart;

    move-result-object v10

    .line 676
    .restart local v10    # "part":Lcom/mob/tools/network/HTTPPart;
    invoke-virtual {v10}, Lcom/mob/tools/network/HTTPPart;->length()J

    move-result-wide v14

    long-to-int v14, v14

    invoke-virtual {v5, v14}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    goto :goto_55

    .line 685
    :cond_88
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->connect()V

    .line 686
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    .line 687
    .local v9, "os":Ljava/io/OutputStream;
    invoke-virtual {v10}, Lcom/mob/tools/network/HTTPPart;->toInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 688
    .local v7, "is":Ljava/io/InputStream;
    const/high16 v14, 0x10000

    new-array v4, v14, [B

    .line 689
    .local v4, "buf":[B
    invoke-virtual {v7, v4}, Ljava/io/InputStream;->read([B)I

    move-result v8

    .line 690
    .local v8, "len":I
    :goto_9b
    if-lez v8, :cond_a6

    .line 691
    const/4 v14, 0x0

    invoke-virtual {v9, v4, v14, v8}, Ljava/io/OutputStream;->write([BII)V

    .line 692
    invoke-virtual {v7, v4}, Ljava/io/InputStream;->read([B)I

    move-result v8

    goto :goto_9b

    .line 694
    :cond_a6
    invoke-virtual {v9}, Ljava/io/OutputStream;->flush()V

    .line 695
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 696
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V

    .line 698
    if-eqz p6, :cond_ee

    .line 700
    :try_start_b1
    new-instance v14, Lcom/mob/tools/network/HttpConnectionImpl23;

    invoke-direct {v14, v5}, Lcom/mob/tools/network/HttpConnectionImpl23;-><init>(Ljava/net/HttpURLConnection;)V

    move-object/from16 v0, p6

    invoke-interface {v0, v14}, Lcom/mob/tools/network/HttpResponseCallback;->onResponse(Lcom/mob/tools/network/HttpConnection;)V
    :try_end_bb
    .catch Ljava/lang/Throwable; {:try_start_b1 .. :try_end_bb} :catch_e7
    .catchall {:try_start_b1 .. :try_end_bb} :catchall_e9

    .line 704
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 709
    :goto_be
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "use time: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v12

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 710
    return-void

    .line 701
    :catch_e7
    move-exception v11

    .line 702
    .local v11, "t":Ljava/lang/Throwable;
    :try_start_e8
    throw v11
    :try_end_e9
    .catchall {:try_start_e8 .. :try_end_e9} :catchall_e9

    .line 704
    .end local v11    # "t":Ljava/lang/Throwable;
    :catchall_e9
    move-exception v14

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v14

    .line 707
    :cond_ee
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_be
.end method

.method public httpPostFiles(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ILcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;
    .registers 16
    .param p1, "url"    # Ljava/lang/String;
    .param p5, "chunkLength"    # I
    .param p6, "timeout"    # Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;I",
            "Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 470
    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    .local p3, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    .local p4, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 471
    .local v8, "tmpMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v6, Lcom/mob/tools/network/NetworkHelper$2;

    invoke-direct {v6, p0, v8}, Lcom/mob/tools/network/NetworkHelper$2;-><init>(Lcom/mob/tools/network/NetworkHelper;Ljava/util/HashMap;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/mob/tools/network/NetworkHelper;->httpPost(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ILcom/mob/tools/network/HttpResponseCallback;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V

    .line 509
    const-string v0, "resp"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public httpPostFiles(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;
    .registers 13
    .param p1, "url"    # Ljava/lang/String;
    .param p5, "timeout"    # Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 465
    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    .local p3, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    .local p4, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/mob/tools/network/NetworkHelper;->httpPostFiles(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ILcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public httpPostFilesChecked(Ljava/lang/String;Ljava/util/ArrayList;[BLjava/util/ArrayList;ILcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;
    .registers 16
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "data"    # [B
    .param p5, "chunkLength"    # I
    .param p6, "timeout"    # Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;[B",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;I",
            "Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 514
    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    .local p4, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 515
    .local v8, "tmpMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v6, Lcom/mob/tools/network/NetworkHelper$3;

    invoke-direct {v6, p0, v8}, Lcom/mob/tools/network/NetworkHelper$3;-><init>(Lcom/mob/tools/network/NetworkHelper;Ljava/util/HashMap;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/mob/tools/network/NetworkHelper;->httpPost(Ljava/lang/String;Ljava/util/ArrayList;[BLjava/util/ArrayList;ILcom/mob/tools/network/HttpResponseCallback;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V

    .line 553
    const-string v0, "resp"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public httpPut(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;
    .registers 13
    .param p1, "url"    # Ljava/lang/String;
    .param p5, "timeout"    # Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1000
    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    .local p3, "file":Lcom/mob/tools/network/KVPair;, "Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    .local p4, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/mob/tools/network/NetworkHelper;->httpPut(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;Lcom/mob/tools/network/OnReadListener;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public httpPut(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;Lcom/mob/tools/network/OnReadListener;)Ljava/lang/String;
    .registers 33
    .param p1, "url"    # Ljava/lang/String;
    .param p5, "timeout"    # Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;
    .param p6, "listener"    # Lcom/mob/tools/network/OnReadListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;",
            "Lcom/mob/tools/network/OnReadListener;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1005
    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    .local p3, "file":Lcom/mob/tools/network/KVPair;, "Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    .local p4, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 1006
    .local v18, "time":J
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "httpPut: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 1007
    if-eqz p2, :cond_57

    .line 1008
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/mob/tools/network/NetworkHelper;->kvPairsToUrl(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v14

    .line 1009
    .local v14, "param":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_57

    .line 1010
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "?"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1014
    .end local v14    # "param":Ljava/lang/String;
    :cond_57
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    invoke-direct {v0, v1, v2}, Lcom/mob/tools/network/NetworkHelper;->getConnection(Ljava/lang/String;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/net/HttpURLConnection;

    move-result-object v6

    .line 1015
    .local v6, "conn":Ljava/net/HttpURLConnection;
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 1016
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 1017
    const-string v21, "PUT"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1018
    const-string v21, "Content-Type"

    const-string v22, "application/octet-stream"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v6, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    if-eqz p4, :cond_a5

    .line 1020
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_87
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_a5

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mob/tools/network/KVPair;

    .line 1021
    .local v9, "header":Lcom/mob/tools/network/KVPair;, "Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    iget-object v0, v9, Lcom/mob/tools/network/KVPair;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    iget-object v0, v9, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_87

    .line 1025
    .end local v9    # "header":Lcom/mob/tools/network/KVPair;, "Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    :cond_a5
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->connect()V

    .line 1026
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v13

    .line 1027
    .local v13, "os":Ljava/io/OutputStream;
    new-instance v8, Lcom/mob/tools/network/FilePart;

    invoke-direct {v8}, Lcom/mob/tools/network/FilePart;-><init>()V

    .line 1028
    .local v8, "fp":Lcom/mob/tools/network/FilePart;
    if-eqz p6, :cond_b8

    .line 1029
    move-object/from16 v0, p6

    invoke-virtual {v8, v0}, Lcom/mob/tools/network/FilePart;->setOnReadListener(Lcom/mob/tools/network/OnReadListener;)V

    .line 1031
    :cond_b8
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Lcom/mob/tools/network/FilePart;->setFile(Ljava/lang/String;)V

    .line 1032
    invoke-virtual {v8}, Lcom/mob/tools/network/FilePart;->toInputStream()Ljava/io/InputStream;

    move-result-object v10

    .line 1033
    .local v10, "is":Ljava/io/InputStream;
    const/high16 v21, 0x10000

    move/from16 v0, v21

    new-array v5, v0, [B

    .line 1034
    .local v5, "buf":[B
    invoke-virtual {v10, v5}, Ljava/io/InputStream;->read([B)I

    move-result v12

    .line 1035
    .local v12, "len":I
    :goto_d3
    if-lez v12, :cond_e1

    .line 1036
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v13, v5, v0, v12}, Ljava/io/OutputStream;->write([BII)V

    .line 1037
    invoke-virtual {v10, v5}, Ljava/io/InputStream;->read([B)I

    move-result v12

    goto :goto_d3

    .line 1039
    :cond_e1
    invoke-virtual {v13}, Ljava/io/OutputStream;->flush()V

    .line 1040
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 1041
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V

    .line 1043
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v17

    .line 1044
    .local v17, "status":I
    const/4 v15, 0x0

    .line 1045
    .local v15, "resp":Ljava/lang/String;
    const/16 v21, 0xc8

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_ff

    const/16 v21, 0xc9

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_174

    .line 1046
    :cond_ff
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 1047
    .local v16, "sb":Ljava/lang/StringBuilder;
    new-instance v11, Ljava/io/InputStreamReader;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v21

    const-string v22, "utf-8"

    invoke-static/range {v22 .. v22}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v11, v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 1048
    .local v11, "isr":Ljava/io/InputStreamReader;
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1049
    .local v4, "br":Ljava/io/BufferedReader;
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v20

    .line 1050
    .local v20, "txt":Ljava/lang/String;
    :goto_120
    if-eqz v20, :cond_13d

    .line 1051
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v21

    if-lez v21, :cond_131

    .line 1052
    const/16 v21, 0xa

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1054
    :cond_131
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1055
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v20

    goto :goto_120

    .line 1057
    :cond_13d
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 1058
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1059
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1079
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "use time: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    sub-long v24, v24, v18

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 1080
    return-object v15

    .line 1061
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v11    # "isr":Ljava/io/InputStreamReader;
    .end local v16    # "sb":Ljava/lang/StringBuilder;
    .end local v20    # "txt":Ljava/lang/String;
    :cond_174
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 1062
    .restart local v16    # "sb":Ljava/lang/StringBuilder;
    new-instance v11, Ljava/io/InputStreamReader;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v21

    const-string v22, "utf-8"

    invoke-static/range {v22 .. v22}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v11, v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 1063
    .restart local v11    # "isr":Ljava/io/InputStreamReader;
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1064
    .restart local v4    # "br":Ljava/io/BufferedReader;
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v20

    .line 1065
    .restart local v20    # "txt":Ljava/lang/String;
    :goto_195
    if-eqz v20, :cond_1b2

    .line 1066
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v21

    if-lez v21, :cond_1a6

    .line 1067
    const/16 v21, 0xa

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1069
    :cond_1a6
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1070
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v20

    goto :goto_195

    .line 1072
    :cond_1b2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 1074
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1075
    .local v7, "errMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v21, "error"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1076
    const-string v21, "status"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1077
    new-instance v21, Ljava/lang/Throwable;

    new-instance v22, Lcom/mob/tools/utils/Hashon;

    invoke-direct/range {v22 .. v22}, Lcom/mob/tools/utils/Hashon;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v21
.end method

.method public jsonPost(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;
    .registers 13
    .param p1, "url"    # Ljava/lang/String;
    .param p4, "timeout"    # Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 347
    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    .local p3, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    const/4 v7, 0x0

    .line 348
    .local v7, "resp":Ljava/lang/String;
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 349
    .local v6, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v5, Lcom/mob/tools/network/NetworkHelper$1;

    invoke-direct {v5, p0, v6}, Lcom/mob/tools/network/NetworkHelper$1;-><init>(Lcom/mob/tools/network/NetworkHelper;Ljava/util/HashMap;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/mob/tools/network/NetworkHelper;->jsonPost(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;Lcom/mob/tools/network/HttpResponseCallback;)V

    .line 388
    const-string v0, "res"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 389
    const-string v0, "res"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "resp":Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .line 391
    .restart local v7    # "resp":Ljava/lang/String;
    :cond_23
    return-object v7
.end method

.method public jsonPost(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;Lcom/mob/tools/network/HttpResponseCallback;)V
    .registers 13
    .param p1, "url"    # Ljava/lang/String;
    .param p4, "timeout"    # Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;
    .param p5, "callback"    # Lcom/mob/tools/network/HttpResponseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;",
            "Lcom/mob/tools/network/HttpResponseCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 396
    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    .local p3, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 397
    .local v2, "valuesMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mob/tools/network/KVPair;

    .line 398
    .local v6, "p":Lcom/mob/tools/network/KVPair;, "Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    iget-object v1, v6, Lcom/mob/tools/network/KVPair;->name:Ljava/lang/String;

    iget-object v3, v6, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .end local v6    # "p":Lcom/mob/tools/network/KVPair;, "Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    :cond_1d
    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 400
    invoke-virtual/range {v0 .. v5}, Lcom/mob/tools/network/NetworkHelper;->jsonPost(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;Lcom/mob/tools/network/HttpResponseCallback;)V

    .line 401
    return-void
.end method

.method public jsonPost(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;Lcom/mob/tools/network/HttpResponseCallback;)V
    .registers 24
    .param p1, "url"    # Ljava/lang/String;
    .param p4, "timeout"    # Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;
    .param p5, "callback"    # Lcom/mob/tools/network/HttpResponseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;",
            "Lcom/mob/tools/network/HttpResponseCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 405
    .local p2, "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p3, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 406
    .local v12, "time":J
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "jsonPost: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 408
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/mob/tools/network/NetworkHelper;->getConnection(Ljava/lang/String;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/net/HttpURLConnection;

    move-result-object v5

    .line 409
    .local v5, "conn":Ljava/net/HttpURLConnection;
    const/4 v14, 0x1

    invoke-virtual {v5, v14}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 410
    const/4 v14, 0x0

    invoke-virtual {v5, v14}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 411
    const-string v14, "content-type"

    const-string v15, "application/json"

    invoke-virtual {v5, v14, v15}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    if-eqz p3, :cond_61

    .line 413
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_47
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_61

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mob/tools/network/KVPair;

    .line 414
    .local v6, "header":Lcom/mob/tools/network/KVPair;, "Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    iget-object v0, v6, Lcom/mob/tools/network/KVPair;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    iget-object v14, v6, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v5, v0, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_47

    .line 418
    .end local v6    # "header":Lcom/mob/tools/network/KVPair;, "Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    :cond_61
    new-instance v10, Lcom/mob/tools/network/StringPart;

    invoke-direct {v10}, Lcom/mob/tools/network/StringPart;-><init>()V

    .line 419
    .local v10, "sp":Lcom/mob/tools/network/StringPart;
    if-eqz p2, :cond_76

    .line 420
    new-instance v14, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v14}, Lcom/mob/tools/utils/Hashon;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    .line 423
    :cond_76
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->connect()V

    .line 424
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    .line 425
    .local v9, "os":Ljava/io/OutputStream;
    invoke-virtual {v10}, Lcom/mob/tools/network/StringPart;->toInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 426
    .local v7, "is":Ljava/io/InputStream;
    const/high16 v14, 0x10000

    new-array v4, v14, [B

    .line 427
    .local v4, "buf":[B
    invoke-virtual {v7, v4}, Ljava/io/InputStream;->read([B)I

    move-result v8

    .line 428
    .local v8, "len":I
    :goto_89
    if-lez v8, :cond_94

    .line 429
    const/4 v14, 0x0

    invoke-virtual {v9, v4, v14, v8}, Ljava/io/OutputStream;->write([BII)V

    .line 430
    invoke-virtual {v7, v4}, Ljava/io/InputStream;->read([B)I

    move-result v8

    goto :goto_89

    .line 432
    :cond_94
    invoke-virtual {v9}, Ljava/io/OutputStream;->flush()V

    .line 433
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 434
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V

    .line 435
    if-eqz p5, :cond_dc

    .line 437
    :try_start_9f
    new-instance v14, Lcom/mob/tools/network/HttpConnectionImpl23;

    invoke-direct {v14, v5}, Lcom/mob/tools/network/HttpConnectionImpl23;-><init>(Ljava/net/HttpURLConnection;)V

    move-object/from16 v0, p5

    invoke-interface {v0, v14}, Lcom/mob/tools/network/HttpResponseCallback;->onResponse(Lcom/mob/tools/network/HttpConnection;)V
    :try_end_a9
    .catch Ljava/lang/Throwable; {:try_start_9f .. :try_end_a9} :catch_d5
    .catchall {:try_start_9f .. :try_end_a9} :catchall_d7

    .line 441
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 446
    :goto_ac
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "use time: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v12

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 447
    return-void

    .line 438
    :catch_d5
    move-exception v11

    .line 439
    .local v11, "t":Ljava/lang/Throwable;
    :try_start_d6
    throw v11
    :try_end_d7
    .catchall {:try_start_d6 .. :try_end_d7} :catchall_d7

    .line 441
    .end local v11    # "t":Ljava/lang/Throwable;
    :catchall_d7
    move-exception v14

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v14

    .line 444
    :cond_dc
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_ac
.end method

.method public rawGet(Ljava/lang/String;Lcom/mob/tools/network/HttpResponseCallback;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V
    .registers 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/mob/tools/network/HttpResponseCallback;
    .param p3, "timeout"    # Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 316
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/mob/tools/network/NetworkHelper;->rawGet(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/HttpResponseCallback;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V

    .line 317
    return-void
.end method

.method public rawGet(Ljava/lang/String;Lcom/mob/tools/network/RawNetworkCallback;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V
    .registers 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/mob/tools/network/RawNetworkCallback;
    .param p3, "timeout"    # Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 271
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/mob/tools/network/NetworkHelper;->rawGet(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/RawNetworkCallback;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V

    .line 272
    return-void
.end method

.method public rawGet(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/HttpResponseCallback;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V
    .registers 16
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/mob/tools/network/HttpResponseCallback;
    .param p4, "timeout"    # Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/network/HttpResponseCallback;",
            "Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .local p2, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    const/4 v10, 0x0

    .line 321
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 322
    .local v4, "time":J
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rawGet: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v10, [Ljava/lang/Object;

    invoke-virtual {v3, v6, v7}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 324
    invoke-direct {p0, p1, p4}, Lcom/mob/tools/network/NetworkHelper;->getConnection(Ljava/lang/String;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 325
    .local v0, "conn":Ljava/net/HttpURLConnection;
    if-eqz p2, :cond_41

    .line 326
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_41

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mob/tools/network/KVPair;

    .line 327
    .local v1, "header":Lcom/mob/tools/network/KVPair;, "Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    iget-object v7, v1, Lcom/mob/tools/network/KVPair;->name:Ljava/lang/String;

    iget-object v3, v1, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v7, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2b

    .line 330
    .end local v1    # "header":Lcom/mob/tools/network/KVPair;, "Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    :cond_41
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 331
    if-eqz p3, :cond_7a

    .line 333
    :try_start_46
    new-instance v3, Lcom/mob/tools/network/HttpConnectionImpl23;

    invoke-direct {v3, v0}, Lcom/mob/tools/network/HttpConnectionImpl23;-><init>(Ljava/net/HttpURLConnection;)V

    invoke-interface {p3, v3}, Lcom/mob/tools/network/HttpResponseCallback;->onResponse(Lcom/mob/tools/network/HttpConnection;)V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_4e} :catch_73
    .catchall {:try_start_46 .. :try_end_4e} :catchall_75

    .line 337
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 342
    :goto_51
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "use time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v10, [Ljava/lang/Object;

    invoke-virtual {v3, v6, v7}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 343
    return-void

    .line 334
    :catch_73
    move-exception v2

    .line 335
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_74
    throw v2
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_75

    .line 337
    .end local v2    # "t":Ljava/lang/Throwable;
    :catchall_75
    move-exception v3

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v3

    .line 340
    :cond_7a
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_51
.end method

.method public rawGet(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/RawNetworkCallback;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V
    .registers 23
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/mob/tools/network/RawNetworkCallback;
    .param p4, "timeout"    # Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/network/RawNetworkCallback;",
            "Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 276
    .local p2, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 277
    .local v12, "time":J
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "rawGet: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 279
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/mob/tools/network/NetworkHelper;->getConnection(Ljava/lang/String;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/net/HttpURLConnection;

    move-result-object v5

    .line 280
    .local v5, "conn":Ljava/net/HttpURLConnection;
    if-eqz p2, :cond_52

    .line 281
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_38
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_52

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mob/tools/network/KVPair;

    .line 282
    .local v7, "header":Lcom/mob/tools/network/KVPair;, "Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    iget-object v0, v7, Lcom/mob/tools/network/KVPair;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    iget-object v14, v7, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v5, v0, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_38

    .line 285
    .end local v7    # "header":Lcom/mob/tools/network/KVPair;, "Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    :cond_52
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->connect()V

    .line 286
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v10

    .line 287
    .local v10, "status":I
    const/16 v14, 0xc8

    if-ne v10, v14, :cond_94

    .line 288
    if-eqz p3, :cond_68

    .line 289
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v14

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Lcom/mob/tools/network/RawNetworkCallback;->onResponse(Ljava/io/InputStream;)V

    .line 291
    :cond_68
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 292
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "use time: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v12

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 313
    return-void

    .line 294
    :cond_94
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 295
    .local v9, "sb":Ljava/lang/StringBuilder;
    new-instance v8, Ljava/io/InputStreamReader;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v14

    const-string v15, "utf-8"

    invoke-static {v15}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v15

    invoke-direct {v8, v14, v15}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 296
    .local v8, "isr":Ljava/io/InputStreamReader;
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 297
    .local v4, "br":Ljava/io/BufferedReader;
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    .line 298
    .local v11, "txt":Ljava/lang/String;
    :goto_b1
    if-eqz v11, :cond_c6

    .line 299
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    if-lez v14, :cond_be

    .line 300
    const/16 v14, 0xa

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 302
    :cond_be
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    goto :goto_b1

    .line 305
    :cond_c6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 306
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 308
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 309
    .local v6, "errMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v14, "error"

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    const-string v14, "status"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v6, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    new-instance v14, Ljava/lang/Throwable;

    new-instance v15, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v15}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v15, v6}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v14
.end method

.method public rawPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/HTTPPart;ILcom/mob/tools/network/HttpResponseCallback;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V
    .registers 25
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "data"    # Lcom/mob/tools/network/HTTPPart;
    .param p4, "chunkLength"    # I
    .param p5, "callback"    # Lcom/mob/tools/network/HttpResponseCallback;
    .param p6, "timeout"    # Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/network/HTTPPart;",
            "I",
            "Lcom/mob/tools/network/HttpResponseCallback;",
            "Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 906
    .local p2, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 907
    .local v12, "time":J
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v11

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "rawpost: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-virtual {v11, v14, v15}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 909
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    invoke-direct {v0, v1, v2}, Lcom/mob/tools/network/NetworkHelper;->getConnection(Ljava/lang/String;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/net/HttpURLConnection;

    move-result-object v5

    .line 910
    .local v5, "conn":Ljava/net/HttpURLConnection;
    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 911
    if-ltz p4, :cond_37

    .line 912
    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 914
    :cond_37
    if-eqz p2, :cond_53

    .line 915
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_3d
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_53

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mob/tools/network/KVPair;

    .line 916
    .local v6, "header":Lcom/mob/tools/network/KVPair;, "Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    iget-object v15, v6, Lcom/mob/tools/network/KVPair;->name:Ljava/lang/String;

    iget-object v11, v6, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v5, v15, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3d

    .line 920
    .end local v6    # "header":Lcom/mob/tools/network/KVPair;, "Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    :cond_53
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->connect()V

    .line 921
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    .line 922
    .local v9, "os":Ljava/io/OutputStream;
    invoke-virtual/range {p3 .. p3}, Lcom/mob/tools/network/HTTPPart;->toInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 923
    .local v7, "is":Ljava/io/InputStream;
    const/high16 v11, 0x10000

    new-array v4, v11, [B

    .line 924
    .local v4, "buf":[B
    invoke-virtual {v7, v4}, Ljava/io/InputStream;->read([B)I

    move-result v8

    .line 925
    .local v8, "len":I
    :goto_66
    if-lez v8, :cond_71

    .line 926
    const/4 v11, 0x0

    invoke-virtual {v9, v4, v11, v8}, Ljava/io/OutputStream;->write([BII)V

    .line 927
    invoke-virtual {v7, v4}, Ljava/io/InputStream;->read([B)I

    move-result v8

    goto :goto_66

    .line 929
    :cond_71
    invoke-virtual {v9}, Ljava/io/OutputStream;->flush()V

    .line 930
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 931
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V

    .line 933
    if-eqz p5, :cond_b6

    .line 935
    :try_start_7c
    new-instance v11, Lcom/mob/tools/network/HttpConnectionImpl23;

    invoke-direct {v11, v5}, Lcom/mob/tools/network/HttpConnectionImpl23;-><init>(Ljava/net/HttpURLConnection;)V

    move-object/from16 v0, p5

    invoke-interface {v0, v11}, Lcom/mob/tools/network/HttpResponseCallback;->onResponse(Lcom/mob/tools/network/HttpConnection;)V
    :try_end_86
    .catch Ljava/lang/Throwable; {:try_start_7c .. :try_end_86} :catch_af
    .catchall {:try_start_7c .. :try_end_86} :catchall_b1

    .line 939
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 944
    :goto_89
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v11

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "use time: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v12

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-virtual {v11, v14, v15}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 945
    return-void

    .line 936
    :catch_af
    move-exception v10

    .line 937
    .local v10, "t":Ljava/lang/Throwable;
    :try_start_b0
    throw v10
    :try_end_b1
    .catchall {:try_start_b0 .. :try_end_b1} :catchall_b1

    .line 939
    .end local v10    # "t":Ljava/lang/Throwable;
    :catchall_b1
    move-exception v11

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v11

    .line 942
    :cond_b6
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_89
.end method

.method public rawPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/HTTPPart;Lcom/mob/tools/network/HttpResponseCallback;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V
    .registers 13
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "data"    # Lcom/mob/tools/network/HTTPPart;
    .param p4, "callback"    # Lcom/mob/tools/network/HttpResponseCallback;
    .param p5, "timeout"    # Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/network/HTTPPart;",
            "Lcom/mob/tools/network/HttpResponseCallback;",
            "Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 901
    .local p2, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/mob/tools/network/NetworkHelper;->rawPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/HTTPPart;ILcom/mob/tools/network/HttpResponseCallback;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V

    .line 902
    return-void
.end method

.method public rawPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/HTTPPart;Lcom/mob/tools/network/RawNetworkCallback;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V
    .registers 30
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "data"    # Lcom/mob/tools/network/HTTPPart;
    .param p4, "callback"    # Lcom/mob/tools/network/RawNetworkCallback;
    .param p5, "timeout"    # Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/network/HTTPPart;",
            "Lcom/mob/tools/network/RawNetworkCallback;",
            "Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 832
    .local p2, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 833
    .local v18, "time":J
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "rawpost: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 835
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    invoke-direct {v0, v1, v2}, Lcom/mob/tools/network/NetworkHelper;->getConnection(Ljava/lang/String;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/net/HttpURLConnection;

    move-result-object v6

    .line 836
    .local v6, "conn":Ljava/net/HttpURLConnection;
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 837
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 838
    if-eqz p2, :cond_66

    .line 839
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_48
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_66

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mob/tools/network/KVPair;

    .line 840
    .local v8, "header":Lcom/mob/tools/network/KVPair;, "Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    iget-object v0, v8, Lcom/mob/tools/network/KVPair;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    iget-object v0, v8, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_48

    .line 844
    .end local v8    # "header":Lcom/mob/tools/network/KVPair;, "Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    :cond_66
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->connect()V

    .line 845
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v13

    .line 846
    .local v13, "os":Ljava/io/OutputStream;
    invoke-virtual/range {p3 .. p3}, Lcom/mob/tools/network/HTTPPart;->toInputStream()Ljava/io/InputStream;

    move-result-object v10

    .line 847
    .local v10, "is":Ljava/io/InputStream;
    const/high16 v20, 0x10000

    move/from16 v0, v20

    new-array v5, v0, [B

    .line 848
    .local v5, "buf":[B
    invoke-virtual {v10, v5}, Ljava/io/InputStream;->read([B)I

    move-result v12

    .line 849
    .local v12, "len":I
    :goto_7b
    if-lez v12, :cond_89

    .line 850
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v13, v5, v0, v12}, Ljava/io/OutputStream;->write([BII)V

    .line 851
    invoke-virtual {v10, v5}, Ljava/io/InputStream;->read([B)I

    move-result v12

    goto :goto_7b

    .line 853
    :cond_89
    invoke-virtual {v13}, Ljava/io/OutputStream;->flush()V

    .line 854
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 855
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V

    .line 857
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v15

    .line 858
    .local v15, "status":I
    const/16 v20, 0xc8

    move/from16 v0, v20

    if-ne v15, v0, :cond_e8

    .line 859
    if-eqz p4, :cond_e4

    .line 860
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    .line 862
    .local v9, "in":Ljava/io/InputStream;
    :try_start_a2
    move-object/from16 v0, p4

    invoke-interface {v0, v9}, Lcom/mob/tools/network/RawNetworkCallback;->onResponse(Ljava/io/InputStream;)V
    :try_end_a7
    .catch Ljava/lang/Throwable; {:try_start_a2 .. :try_end_a7} :catch_d8
    .catchall {:try_start_a2 .. :try_end_a7} :catchall_da

    .line 866
    if-eqz v9, :cond_ac

    .line 868
    :try_start_a9
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_ac
    .catch Ljava/lang/Throwable; {:try_start_a9 .. :try_end_ac} :catch_158

    .line 871
    :cond_ac
    :goto_ac
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 876
    .end local v9    # "in":Ljava/io/InputStream;
    :goto_af
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "use time: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    sub-long v22, v22, v18

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 897
    return-void

    .line 863
    .restart local v9    # "in":Ljava/io/InputStream;
    :catch_d8
    move-exception v16

    .line 864
    .local v16, "t":Ljava/lang/Throwable;
    :try_start_d9
    throw v16
    :try_end_da
    .catchall {:try_start_d9 .. :try_end_da} :catchall_da

    .line 866
    .end local v16    # "t":Ljava/lang/Throwable;
    :catchall_da
    move-exception v20

    if-eqz v9, :cond_e0

    .line 868
    :try_start_dd
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_e0
    .catch Ljava/lang/Throwable; {:try_start_dd .. :try_end_e0} :catch_15b

    .line 871
    :cond_e0
    :goto_e0
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v20

    .line 874
    .end local v9    # "in":Ljava/io/InputStream;
    :cond_e4
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_af

    .line 878
    :cond_e8
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 879
    .local v14, "sb":Ljava/lang/StringBuilder;
    new-instance v11, Ljava/io/InputStreamReader;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v20

    const-string v21, "utf-8"

    invoke-static/range {v21 .. v21}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v11, v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 880
    .local v11, "isr":Ljava/io/InputStreamReader;
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 881
    .local v4, "br":Ljava/io/BufferedReader;
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v17

    .line 882
    .local v17, "txt":Ljava/lang/String;
    :goto_109
    if-eqz v17, :cond_122

    .line 883
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v20

    if-lez v20, :cond_118

    .line 884
    const/16 v20, 0xa

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 886
    :cond_118
    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 887
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v17

    goto :goto_109

    .line 889
    :cond_122
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 890
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 892
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 893
    .local v7, "errMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v20, "error"

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 894
    const-string v20, "status"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 895
    new-instance v20, Ljava/lang/Throwable;

    new-instance v21, Lcom/mob/tools/utils/Hashon;

    invoke-direct/range {v21 .. v21}, Lcom/mob/tools/utils/Hashon;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v20

    .line 869
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v7    # "errMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v11    # "isr":Ljava/io/InputStreamReader;
    .end local v14    # "sb":Ljava/lang/StringBuilder;
    .end local v17    # "txt":Ljava/lang/String;
    .restart local v9    # "in":Ljava/io/InputStream;
    :catch_158
    move-exception v20

    goto/16 :goto_ac

    :catch_15b
    move-exception v21

    goto :goto_e0
.end method
