.class public Llib/xdsdk/passport/httpUrlConnectionUtil/HttpUrlConnectionHelper;
.super Ljava/lang/Object;
.source "HttpUrlConnectionHelper.java"


# annotations
.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassMap;
    value = {
        Llib/xdsdk/passport/httpUrlConnectionUtil/-$$Lambda$HttpUrlConnectionHelper$x4HZ6zv_ZaLP0cleaU0DF2Gfb4g;
    }
.end annotation


# static fields
.field private static final httpHelper:Ljava/lang/String; = "help"

.field static threadPool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 46
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Llib/xdsdk/passport/httpUrlConnectionUtil/HttpUrlConnectionHelper;->threadPool:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static JsonFilter(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;

    .line 169
    const-string v0, "{"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\r\n"

    const-string v2, "\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static doPost(Landroid/app/Activity;Ljava/lang/String;Llib/xdsdk/passport/httpUrlConnectionUtil/callback/HttpCallbackModelListener;Ljava/util/Map;)V
    .registers 10
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Llib/xdsdk/passport/httpUrlConnectionUtil/callback/HttpCallbackModelListener<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 89
    .local p2, "httpCallbackModelListener":Llib/xdsdk/passport/httpUrlConnectionUtil/callback/HttpCallbackModelListener;, "Llib/xdsdk/passport/httpUrlConnectionUtil/callback/HttpCallbackModelListener<Ljava/lang/Object;>;"
    .local p3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .local v0, "r0":Ljava/lang/StringBuilder;
    if-eqz p3, :cond_36

    .line 91
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 92
    .local v2, "str4":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_26

    .line 93
    const-string v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    :cond_26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    .end local v2    # "str4":Ljava/lang/String;
    goto :goto_f

    .line 100
    :cond_36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Llib/xdsdk/passport/httpUrlConnectionUtil/HttpUrlConnectionHelper;->setPost(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "r7":Ljava/lang/String;
    const-string v2, "c877be4fa24080987b01a1817b90f7c5"

    invoke-static {v1, v2}, Llib/xdsdk/passport/httpUrlConnectionUtil/HttpUrlConnectionHelper;->getSig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, "str3":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&sig="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 103
    .local v3, "r8":Ljava/lang/String;
    sget-object v4, Llib/xdsdk/passport/httpUrlConnectionUtil/HttpUrlConnectionHelper;->threadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v5, Llib/xdsdk/passport/httpUrlConnectionUtil/-$$Lambda$HttpUrlConnectionHelper$x4HZ6zv_ZaLP0cleaU0DF2Gfb4g;

    invoke-direct {v5, p1, v3, p0, p2}, Llib/xdsdk/passport/httpUrlConnectionUtil/-$$Lambda$HttpUrlConnectionHelper$x4HZ6zv_ZaLP0cleaU0DF2Gfb4g;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Llib/xdsdk/passport/httpUrlConnectionUtil/callback/HttpCallbackModelListener;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 153
    return-void
.end method

.method public static getErroJson()Lorg/json/JSONObject;
    .registers 3

    .line 156
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 158
    .local v0, "r0":Lorg/json/JSONObject;
    :try_start_5
    const-string v1, "ret"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 159
    const-string v1, "msg"

    const-string v2, "\uc11c\ubc84 \uc5f0\uacb0 \uc2e4\ud328, \uc7ac\uc2dc\ub3c4 \ud574\uc8fc\uc138\uc694"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    const-string v1, "httpaction"

    const-string v2, "help"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_19
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_19} :catch_1a

    .line 163
    goto :goto_1e

    .line 161
    :catch_1a
    move-exception v1

    .line 162
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 164
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_1e
    return-object v0
.end method

.method public static getSig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "str2"    # Ljava/lang/String;

    .line 50
    const-string v0, "HmacSHA1"

    const-string v1, "UTF-8"

    :try_start_4
    invoke-static {p0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 51
    .local v2, "r2":Ljava/lang/String;
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Llib/xdsdk/passport/httpUrlConnectionUtil/HttpUrlConnectionHelper;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "dGjrdfdd"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Llib/xdsdk/passport/httpUrlConnectionUtil/HttpUrlConnectionHelper;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 52
    .local v3, "r0":Ljavax/crypto/spec/SecretKeySpec;
    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 53
    .local v0, "r3":Ljavax/crypto/Mac;
    invoke-virtual {v0, v3}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 54
    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_48
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_48} :catch_49
    .catch Ljava/security/InvalidKeyException; {:try_start_4 .. :try_end_48} :catch_49
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_48} :catch_49

    return-object v1

    .line 55
    .end local v0    # "r3":Ljavax/crypto/Mac;
    .end local v2    # "r2":Ljava/lang/String;
    .end local v3    # "r0":Ljavax/crypto/spec/SecretKeySpec;
    :catch_49
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 57
    const-string v1, ""

    return-object v1
.end method

.method static synthetic lambda$doPost$0(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Llib/xdsdk/passport/httpUrlConnectionUtil/callback/HttpCallbackModelListener;)V
    .registers 12
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "r8"    # Ljava/lang/String;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "httpCallbackModelListener"    # Llib/xdsdk/passport/httpUrlConnectionUtil/callback/HttpCallbackModelListener;

    .line 104
    const/4 v0, 0x0

    .line 107
    .local v0, "httpURLConnection":Ljava/net/HttpURLConnection;
    :try_start_1
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 108
    .local v1, "r1":Ljava/net/URL;
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    move-object v0, v2

    .line 109
    const-string v2, "accept"

    const-string v3, "*/*"

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v2, "connection"

    const-string v3, "Keep-Alive"

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v2, "Content-Type"

    const-string v3, "application/x-www-form-urlencoded; charset=utf-8"

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v2, "Content-Length"

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v2, "POST"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 114
    const/16 v2, 0x2710

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 115
    const/16 v2, 0x1f40

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 116
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 117
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 118
    new-instance v2, Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 119
    .local v2, "r01":Ljava/io/PrintWriter;
    invoke-virtual {v2, p1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 121
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 122
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_ac

    .line 123
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 124
    .local v3, "r001":Ljava/io/InputStream;
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    const-string v6, "UTF-8"

    invoke-direct {v5, v3, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 125
    .local v4, "r3":Ljava/io/BufferedReader;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .local v5, "r2":Ljava/lang/StringBuilder;
    :goto_74
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 128
    .local v6, "r4":Ljava/lang/String;
    if-nez v6, :cond_a7

    .line 129
    nop

    .line 133
    .end local v6    # "r4":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 134
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_81} :catch_e2

    .line 136
    :try_start_81
    new-instance v6, Lorg/json/JSONTokener;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Llib/xdsdk/passport/httpUrlConnectionUtil/HttpUrlConnectionHelper;->JsonFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/json/JSONObject;
    :try_end_94
    .catch Lorg/json/JSONException; {:try_start_81 .. :try_end_94} :catch_95
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_94} :catch_e2

    .line 140
    .local v6, "jSONObject":Lorg/json/JSONObject;
    goto :goto_9e

    .line 137
    .end local v6    # "jSONObject":Lorg/json/JSONObject;
    :catch_95
    move-exception v6

    .line 138
    .local v6, "e3":Lorg/json/JSONException;
    :try_start_96
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    .line 139
    invoke-static {}, Llib/xdsdk/passport/httpUrlConnectionUtil/HttpUrlConnectionHelper;->getErroJson()Lorg/json/JSONObject;

    move-result-object v7

    move-object v6, v7

    .line 141
    .local v6, "jSONObject":Lorg/json/JSONObject;
    :goto_9e
    new-instance v7, Llib/xdsdk/passport/httpUrlConnectionUtil/ResponseCall;

    invoke-direct {v7, p2, p3}, Llib/xdsdk/passport/httpUrlConnectionUtil/ResponseCall;-><init>(Landroid/app/Activity;Llib/xdsdk/passport/httpUrlConnectionUtil/callback/HttpCallbackModelListener;)V

    invoke-virtual {v7, v6}, Llib/xdsdk/passport/httpUrlConnectionUtil/ResponseCall;->doScuccess(Ljava/lang/Object;)V

    .line 142
    .end local v3    # "r001":Ljava/io/InputStream;
    .end local v4    # "r3":Ljava/io/BufferedReader;
    .end local v5    # "r2":Ljava/lang/StringBuilder;
    goto :goto_de

    .line 131
    .restart local v3    # "r001":Ljava/io/InputStream;
    .restart local v4    # "r3":Ljava/io/BufferedReader;
    .restart local v5    # "r2":Ljava/lang/StringBuilder;
    .local v6, "r4":Ljava/lang/String;
    :cond_a7
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    nop

    .end local v6    # "r4":Ljava/lang/String;
    goto :goto_74

    .line 143
    .end local v3    # "r001":Ljava/io/InputStream;
    .end local v4    # "r3":Ljava/io/BufferedReader;
    .end local v5    # "r2":Ljava/lang/StringBuilder;
    :cond_ac
    new-instance v3, Llib/xdsdk/passport/httpUrlConnectionUtil/ResponseCall;

    invoke-direct {v3, p2, p3}, Llib/xdsdk/passport/httpUrlConnectionUtil/ResponseCall;-><init>(Landroid/app/Activity;Llib/xdsdk/passport/httpUrlConnectionUtil/callback/HttpCallbackModelListener;)V

    new-instance v4, Landroid/accounts/NetworkErrorException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "respons:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " err code:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/accounts/NetworkErrorException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Llib/xdsdk/passport/httpUrlConnectionUtil/ResponseCall;->doFail(Ljava/lang/Exception;)V
    :try_end_de
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_de} :catch_e2

    .line 145
    :goto_de
    if-nez v0, :cond_e1

    .line 146
    return-void

    .line 150
    .end local v1    # "r1":Ljava/net/URL;
    .end local v2    # "r01":Ljava/io/PrintWriter;
    :cond_e1
    goto :goto_e6

    .line 148
    :catch_e2
    move-exception v1

    .line 149
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 151
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_e6
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 152
    return-void
.end method

.method public static md5(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "str"    # Ljava/lang/String;

    .line 63
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 64
    .local v0, "r5":[B
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, v0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 65
    .local v1, "r0":Ljava/lang/StringBuilder;
    array-length v2, v0

    const/4 v3, 0x0

    :goto_1a
    if-ge v3, v2, :cond_34

    aget-byte v4, v0, v3

    .line 66
    .local v4, "b":B
    and-int/lit16 v5, v4, 0xff

    .line 67
    .local v5, "r3":I
    const/16 v6, 0x10

    if-ge v5, v6, :cond_29

    .line 68
    const-string v6, "0"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    :cond_29
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    nop

    .end local v4    # "b":B
    .end local v5    # "r3":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 72
    :cond_34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_38
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_38} :catch_42
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_38} :catch_39

    return-object v2

    .line 75
    .end local v0    # "r5":[B
    .end local v1    # "r0":Ljava/lang/StringBuilder;
    :catch_39
    move-exception v0

    .line 76
    .local v0, "e2":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Huh, UTF-8 should be supported?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 73
    .end local v0    # "e2":Ljava/io/UnsupportedEncodingException;
    :catch_42
    move-exception v0

    .line 74
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Huh, MD5 should be supported?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static setPost(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 81
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 82
    .local v0, "r1":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 83
    invoke-static {p0}, Llib/xdsdk/passport/CustomDeviceIdHelper;->saveCustomDeviceId(Landroid/app/Activity;)V

    .line 84
    sget-object v1, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    const/16 v2, 0xd

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    sget-object v4, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    iget v7, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    iget v7, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    const-string v7, "%d_%d"

    invoke-static {v4, v7, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Llib/xdsdk/passport/CometPassport;->urlencode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v8

    sget-object v4, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    new-array v6, v5, [Ljava/lang/Object;

    sget-object v7, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v7, v6, v3

    sget-object v7, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    aput-object v7, v6, v8

    const-string v7, "%s(%s)"

    invoke-static {v4, v7, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Llib/xdsdk/passport/CometPassport;->urlencode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v5

    sget-object v4, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    new-array v5, v8, [Ljava/lang/Object;

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v6, v5, v3

    const-string v6, "%s"

    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Llib/xdsdk/passport/CometPassport;->urlencode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v2, v5

    sget-object v4, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    new-array v5, v8, [Ljava/lang/Object;

    sget-object v7, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    aput-object v7, v5, v3

    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Llib/xdsdk/passport/CometPassport;->urlencode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    aput-object v4, v2, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x5

    aput-object v4, v2, v5

    sget-object v4, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    new-array v5, v8, [Ljava/lang/Object;

    const-string v7, "2.0700_292"

    aput-object v7, v5, v3

    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Llib/xdsdk/passport/CometPassport;->urlencode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x6

    aput-object v4, v2, v5

    sget-object v4, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    new-array v5, v8, [Ljava/lang/Object;

    const-string v7, "292"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v3

    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Llib/xdsdk/passport/CometPassport;->urlencode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x7

    aput-object v3, v2, v4

    const-string v3, "android"

    invoke-static {v3}, Llib/xdsdk/passport/CometPassport;->urlencode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x8

    aput-object v3, v2, v4

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Llib/xdsdk/passport/CometPassport;->urlencode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x9

    aput-object v3, v2, v4

    const-string v3, "txwy"

    invoke-static {v3}, Llib/xdsdk/passport/CometPassport;->urlencode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xa

    aput-object v3, v2, v4

    const-string v3, "kr"

    invoke-static {v3}, Llib/xdsdk/passport/CometPassport;->urlencode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Llib/xdsdk/passport/CometPassport;->urldecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xb

    aput-object v3, v2, v4

    sget-object v3, Llib/xdsdk/passport/Constants;->CUSTOM_DEVICE_ID:Ljava/lang/String;

    const-string v4, ""

    invoke-static {p0, v3, v4}, Llib/xdsdk/passport/SPTools;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Llib/xdsdk/passport/CometPassport;->urlencode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xc

    aput-object v3, v2, v4

    const-string v3, "%s&fbl=%s&os=%s&dev=%s&cpu=%s&men=%s&appver=%s&buildnumber=%s&sys=%s&adid=%s&platform=%s&l=%s&guid=%s"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
