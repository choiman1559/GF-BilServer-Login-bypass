.class public final Lcom/alipay/sdk/net/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/sdk/net/a$b;,
        Lcom/alipay/sdk/net/a$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "msp"

.field private static final b:Ljava/lang/String; = "application/octet-stream;binary/octet-stream"

.field private static final c:Ljava/net/CookieManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/net/CookieManager;

    invoke-direct {v0}, Ljava/net/CookieManager;-><init>()V

    sput-object v0, Lcom/alipay/sdk/net/a;->c:Ljava/net/CookieManager;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/alipay/sdk/net/a$a;)Lcom/alipay/sdk/net/a$b;
    .registers 17

    const/4 v4, 0x0

    if-nez p0, :cond_5

    move-object v1, v4

    :cond_4
    :goto_4
    return-object v1

    :cond_5
    :try_start_5
    const-string v1, "mspl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "conn config: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/sdk/util/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/net/URL;

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/alipay/sdk/net/a$a;->a:Ljava/lang/String;

    invoke-direct {v7, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/alipay/sdk/net/a;->a(Landroid/content/Context;)Ljava/net/Proxy;

    move-result-object v1

    const-string v2, "mspl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "conn proxy: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/sdk/util/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_111

    invoke-virtual {v7, v1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_4c} :catch_217
    .catchall {:try_start_5 .. :try_end_4c} :catchall_201

    move-object v2, v1

    :goto_4d
    :try_start_4d
    const-string v1, "http.keepAlive"

    const-string v3, "false"

    invoke-static {v1, v3}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    instance-of v1, v2, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v1, :cond_5c

    move-object v0, v2

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v1, v0

    :cond_5c
    sget-object v1, Lcom/alipay/sdk/net/a;->c:Ljava/net/CookieManager;

    invoke-virtual {v1}, Ljava/net/CookieManager;->getCookieStore()Ljava/net/CookieStore;

    move-result-object v1

    invoke-interface {v1}, Ljava/net/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_81

    const-string v1, "Cookie"

    const-string v3, ";"

    sget-object v5, Lcom/alipay/sdk/net/a;->c:Ljava/net/CookieManager;

    invoke-virtual {v5}, Ljava/net/CookieManager;->getCookieStore()Ljava/net/CookieStore;

    move-result-object v5

    invoke-interface {v5}, Ljava/net/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_81
    const/16 v1, 0x4e20

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v1, 0x7530

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const-string v1, "User-Agent"

    const-string v3, "msp"

    invoke-virtual {v2, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/alipay/sdk/net/a$a;->b:[B

    if-eqz v1, :cond_11a

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/alipay/sdk/net/a$a;->b:[B

    array-length v1, v1

    if-lez v1, :cond_11a

    const-string v1, "POST"

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v1, "Content-Type"

    const-string v3, "application/octet-stream;binary/octet-stream"

    invoke-virtual {v2, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Accept-Charset"

    const-string v3, "UTF-8"

    invoke-virtual {v2, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Connection"

    const-string v3, "Keep-Alive"

    invoke-virtual {v2, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Keep-Alive"

    const-string v3, "timeout=180, max=100"

    invoke-virtual {v2, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :goto_c4
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/alipay/sdk/net/a$a;->c:Ljava/util/Map;

    if-eqz v1, :cond_132

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/alipay/sdk/net/a$a;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_d6
    :goto_d6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_132

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_d6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f7
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_f7} :catch_f8
    .catchall {:try_start_4d .. :try_end_f7} :catchall_120

    goto :goto_d6

    :catch_f8
    move-exception v1

    move-object v3, v4

    move-object v5, v2

    move-object v2, v4

    :goto_fc
    :try_start_fc
    invoke-static {v1}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V
    :try_end_ff
    .catchall {:try_start_fc .. :try_end_ff} :catchall_211

    if-eqz v5, :cond_104

    :try_start_101
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_104
    .catch Ljava/lang/Throwable; {:try_start_101 .. :try_end_104} :catch_1ef

    :cond_104
    :goto_104
    if-eqz v2, :cond_109

    :try_start_106
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_109
    .catch Ljava/lang/Throwable; {:try_start_106 .. :try_end_109} :catch_1f2

    :cond_109
    :goto_109
    if-eqz v3, :cond_10e

    :try_start_10b
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_10e
    .catch Ljava/lang/Throwable; {:try_start_10b .. :try_end_10e} :catch_1f5

    :cond_10e
    :goto_10e
    move-object v1, v4

    goto/16 :goto_4

    :cond_111
    :try_start_111
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_117
    .catch Ljava/lang/Throwable; {:try_start_111 .. :try_end_117} :catch_217
    .catchall {:try_start_111 .. :try_end_117} :catchall_201

    move-object v2, v1

    goto/16 :goto_4d

    :cond_11a
    :try_start_11a
    const-string v1, "GET"

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_11f
    .catch Ljava/lang/Throwable; {:try_start_11a .. :try_end_11f} :catch_f8
    .catchall {:try_start_11a .. :try_end_11f} :catchall_120

    goto :goto_c4

    :catchall_120
    move-exception v1

    move-object v5, v4

    :goto_122
    if-eqz v2, :cond_127

    :try_start_124
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_127
    .catch Ljava/lang/Throwable; {:try_start_124 .. :try_end_127} :catch_1f8

    :cond_127
    :goto_127
    if-eqz v4, :cond_12c

    :try_start_129
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_12c
    .catch Ljava/lang/Throwable; {:try_start_129 .. :try_end_12c} :catch_1fb

    :cond_12c
    :goto_12c
    if-eqz v5, :cond_131

    :try_start_12e
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_131
    .catch Ljava/lang/Throwable; {:try_start_12e .. :try_end_131} :catch_1fe

    :cond_131
    :goto_131
    throw v1

    :cond_132
    const/4 v1, 0x1

    :try_start_133
    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const-string v1, "POST"

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_146

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    :cond_146
    const-string v1, "POST"

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_228

    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_15b
    .catch Ljava/lang/Throwable; {:try_start_133 .. :try_end_15b} :catch_f8
    .catchall {:try_start_133 .. :try_end_15b} :catchall_120

    :try_start_15b
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/alipay/sdk/net/a$a;->b:[B

    invoke-virtual {v3, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_165
    .catch Ljava/lang/Throwable; {:try_start_15b .. :try_end_165} :catch_21d
    .catchall {:try_start_15b .. :try_end_165} :catchall_206

    move-object v5, v3

    :goto_166
    :try_start_166
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_16f
    .catch Ljava/lang/Throwable; {:try_start_166 .. :try_end_16f} :catch_222
    .catchall {:try_start_166 .. :try_end_16f} :catchall_20a

    :try_start_16f
    invoke-static {v3}, Lcom/alipay/sdk/net/a;->a(Ljava/io/InputStream;)[B

    move-result-object v8

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v9

    if-eqz v9, :cond_1d0

    const/4 v1, 0x0

    invoke-interface {v9, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1d0

    const-string v6, ","

    const/4 v1, 0x0

    invoke-interface {v9, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v6, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    :goto_18e
    const-string v1, "Set-Cookie"

    invoke-interface {v9, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1d2

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_19c
    :goto_19c
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/net/HttpCookie;->parse(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_19c

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_19c

    sget-object v11, Lcom/alipay/sdk/net/a;->c:Ljava/net/CookieManager;

    invoke-virtual {v11}, Ljava/net/CookieManager;->getCookieStore()Ljava/net/CookieStore;

    move-result-object v11

    invoke-virtual {v7}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/HttpCookie;

    invoke-interface {v11, v12, v1}, Ljava/net/CookieStore;->add(Ljava/net/URI;Ljava/net/HttpCookie;)V

    goto :goto_19c

    :catch_1c9
    move-exception v1

    move-object v14, v3

    move-object v3, v5

    move-object v5, v2

    move-object v2, v14

    goto/16 :goto_fc

    :cond_1d0
    move-object v6, v4

    goto :goto_18e

    :cond_1d2
    new-instance v1, Lcom/alipay/sdk/net/a$b;

    invoke-direct {v1, v9, v6, v8}, Lcom/alipay/sdk/net/a$b;-><init>(Ljava/util/Map;Ljava/lang/String;[B)V
    :try_end_1d7
    .catch Ljava/lang/Throwable; {:try_start_16f .. :try_end_1d7} :catch_1c9
    .catchall {:try_start_16f .. :try_end_1d7} :catchall_20d

    if-eqz v2, :cond_1dc

    :try_start_1d9
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1dc
    .catch Ljava/lang/Throwable; {:try_start_1d9 .. :try_end_1dc} :catch_1eb

    :cond_1dc
    :goto_1dc
    if-eqz v3, :cond_1e1

    :try_start_1de
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1e1
    .catch Ljava/lang/Throwable; {:try_start_1de .. :try_end_1e1} :catch_1ed

    :cond_1e1
    :goto_1e1
    if-eqz v5, :cond_4

    :try_start_1e3
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_1e6
    .catch Ljava/lang/Throwable; {:try_start_1e3 .. :try_end_1e6} :catch_1e8

    goto/16 :goto_4

    :catch_1e8
    move-exception v2

    goto/16 :goto_4

    :catch_1eb
    move-exception v2

    goto :goto_1dc

    :catch_1ed
    move-exception v2

    goto :goto_1e1

    :catch_1ef
    move-exception v1

    goto/16 :goto_104

    :catch_1f2
    move-exception v1

    goto/16 :goto_109

    :catch_1f5
    move-exception v1

    goto/16 :goto_10e

    :catch_1f8
    move-exception v2

    goto/16 :goto_127

    :catch_1fb
    move-exception v2

    goto/16 :goto_12c

    :catch_1fe
    move-exception v2

    goto/16 :goto_131

    :catchall_201
    move-exception v1

    move-object v5, v4

    move-object v2, v4

    goto/16 :goto_122

    :catchall_206
    move-exception v1

    move-object v5, v3

    goto/16 :goto_122

    :catchall_20a
    move-exception v1

    goto/16 :goto_122

    :catchall_20d
    move-exception v1

    move-object v4, v3

    goto/16 :goto_122

    :catchall_211
    move-exception v1

    move-object v4, v2

    move-object v2, v5

    move-object v5, v3

    goto/16 :goto_122

    :catch_217
    move-exception v1

    move-object v2, v4

    move-object v3, v4

    move-object v5, v4

    goto/16 :goto_fc

    :catch_21d
    move-exception v1

    move-object v5, v2

    move-object v2, v4

    goto/16 :goto_fc

    :catch_222
    move-exception v1

    move-object v3, v5

    move-object v5, v2

    move-object v2, v4

    goto/16 :goto_fc

    :cond_228
    move-object v5, v4

    goto/16 :goto_166
.end method

.method private static a(Landroid/content/Context;)Ljava/net/Proxy;
    .registers 7

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/alipay/sdk/net/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    const-string v2, "wap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    :cond_f
    :goto_f
    return-object v1

    :cond_10
    :try_start_10
    const-string v0, "https.proxyHost"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "https.proxyPort"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    new-instance v0, Ljava/net/Proxy;

    sget-object v4, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v5, Ljava/net/InetSocketAddress;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v5, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v4, v5}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_32} :catch_34

    :goto_32
    move-object v1, v0

    goto :goto_f

    :catch_34
    move-exception v0

    move-object v0, v1

    goto :goto_32
.end method

.method private static a(Ljava/io/InputStream;)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    new-array v1, v1, [B

    :goto_a
    array-length v2, v1

    invoke-virtual {p0, v1, v4, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_16

    invoke-virtual {v0, v1, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_a

    :cond_16
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method private static b(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    :goto_3
    return-object v1

    :cond_4
    :try_start_4
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_f} :catch_12

    move-result-object v0

    :goto_10
    move-object v1, v0

    goto :goto_3

    :catch_12
    move-exception v0

    move-object v0, v1

    goto :goto_10
.end method

.method private static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    :try_start_0
    invoke-static {p0}, Lcom/alipay/sdk/net/a;->b(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_16

    const-string v0, "wifi"

    :goto_15
    return-object v0

    :cond_16
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    :cond_1f
    const-string v0, "none"
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_22

    goto :goto_15

    :catch_22
    move-exception v0

    const-string v0, "none"

    goto :goto_15
.end method
