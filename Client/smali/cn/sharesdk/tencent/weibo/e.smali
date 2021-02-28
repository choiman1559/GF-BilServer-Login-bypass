.class public Lcn/sharesdk/tencent/weibo/e;
.super Lcn/sharesdk/framework/authorize/d;
.source "TencentWeiboSSOProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/sharesdk/tencent/weibo/e$a;
    }
.end annotation


# instance fields
.field private d:Lcn/sharesdk/tencent/weibo/c;


# direct methods
.method public constructor <init>(Lcn/sharesdk/framework/authorize/c;)V
    .registers 2

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/authorize/d;-><init>(Lcn/sharesdk/framework/authorize/c;)V

    .line 46
    return-void
.end method

.method private a(Landroid/content/Context;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 128
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 130
    :try_start_4
    const-string v1, "com.tencent.WBlog"

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 133
    if-eqz v1, :cond_2f

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    const/16 v2, 0x2c

    if-lt v1, v2, :cond_2f

    .line 135
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "TencentAuth://weibo"

    .line 136
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 137
    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 139
    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_2a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_2a} :catch_31

    move-result v0

    if-lez v0, :cond_2f

    .line 140
    const/4 v0, 0x0

    .line 145
    :goto_2e
    return v0

    .line 143
    :cond_2f
    const/4 v0, -0x1

    goto :goto_2e

    .line 144
    :catch_31
    move-exception v0

    .line 145
    const/4 v0, -0x2

    goto :goto_2e
.end method

.method static synthetic a(Lcn/sharesdk/tencent/weibo/e;)Lcn/sharesdk/framework/authorize/c;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/e;->a:Lcn/sharesdk/framework/authorize/c;

    return-object v0
.end method

.method private a(Landroid/os/Bundle;)V
    .registers 6

    .prologue
    .line 190
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/e;->d:Lcn/sharesdk/tencent/weibo/c;

    const-string v1, "com.tencent.sso.WEIBO_NICK"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/sharesdk/tencent/weibo/c;->e:Ljava/lang/String;

    .line 191
    const-string v0, "com.tencent.sso.ACCESS_TOKEN"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 192
    new-instance v1, Lcn/sharesdk/tencent/weibo/b;

    invoke-direct {v1}, Lcn/sharesdk/tencent/weibo/b;-><init>()V

    const-string v2, "&-*)Wb5_U,[^!9\'+"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v1, v0, v2, v3}, Lcn/sharesdk/tencent/weibo/b;->a([B[BI)[B

    move-result-object v0

    .line 193
    invoke-direct {p0, v0}, Lcn/sharesdk/tencent/weibo/e;->a([B)V

    .line 194
    return-void
.end method

.method static synthetic a(Lcn/sharesdk/tencent/weibo/e;Landroid/os/Bundle;)V
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcn/sharesdk/tencent/weibo/e;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method private a([B)V
    .registers 8

    .prologue
    .line 197
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 198
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 200
    :try_start_a
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/e;->d:Lcn/sharesdk/tencent/weibo/c;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcn/sharesdk/tencent/weibo/c;->d:Ljava/lang/String;

    .line 201
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/e;->d:Lcn/sharesdk/tencent/weibo/c;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    iput-wide v4, v0, Lcn/sharesdk/tencent/weibo/c;->h:J

    .line 202
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/e;->d:Lcn/sharesdk/tencent/weibo/c;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcn/sharesdk/tencent/weibo/c;->i:Ljava/lang/String;

    .line 203
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/e;->d:Lcn/sharesdk/tencent/weibo/c;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcn/sharesdk/tencent/weibo/c;->f:Ljava/lang/String;

    .line 204
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/e;->d:Lcn/sharesdk/tencent/weibo/c;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcn/sharesdk/tencent/weibo/c;->j:Ljava/lang/String;

    .line 205
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/e;->d:Lcn/sharesdk/tencent/weibo/c;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcn/sharesdk/tencent/weibo/c;->k:Ljava/lang/String;

    .line 207
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/e;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    if-eqz v0, :cond_44

    .line 208
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/e;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Lcn/sharesdk/framework/authorize/SSOListener;->onComplete(Landroid/os/Bundle;)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_44} :catch_4f
    .catchall {:try_start_a .. :try_end_44} :catchall_66

    .line 215
    :cond_44
    if-eqz v1, :cond_49

    .line 217
    :try_start_46
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_49} :catch_72

    .line 222
    :cond_49
    :goto_49
    if-eqz v2, :cond_4e

    .line 224
    :try_start_4b
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4e} :catch_74

    .line 230
    :cond_4e
    :goto_4e
    return-void

    .line 210
    :catch_4f
    move-exception v0

    .line 211
    :try_start_50
    iget-object v3, p0, Lcn/sharesdk/tencent/weibo/e;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    if-eqz v3, :cond_59

    .line 212
    iget-object v3, p0, Lcn/sharesdk/tencent/weibo/e;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    invoke-interface {v3, v0}, Lcn/sharesdk/framework/authorize/SSOListener;->onFailed(Ljava/lang/Throwable;)V
    :try_end_59
    .catchall {:try_start_50 .. :try_end_59} :catchall_66

    .line 215
    :cond_59
    if-eqz v1, :cond_5e

    .line 217
    :try_start_5b
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_5e} :catch_76

    .line 222
    :cond_5e
    :goto_5e
    if-eqz v2, :cond_4e

    .line 224
    :try_start_60
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_60 .. :try_end_63} :catch_64

    goto :goto_4e

    .line 225
    :catch_64
    move-exception v0

    goto :goto_4e

    .line 215
    :catchall_66
    move-exception v0

    if-eqz v1, :cond_6c

    .line 217
    :try_start_69
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_6c
    .catch Ljava/lang/Throwable; {:try_start_69 .. :try_end_6c} :catch_78

    .line 222
    :cond_6c
    :goto_6c
    if-eqz v2, :cond_71

    .line 224
    :try_start_6e
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_71
    .catch Ljava/lang/Throwable; {:try_start_6e .. :try_end_71} :catch_7a

    .line 227
    :cond_71
    :goto_71
    throw v0

    .line 218
    :catch_72
    move-exception v0

    goto :goto_49

    .line 225
    :catch_74
    move-exception v0

    goto :goto_4e

    .line 218
    :catch_76
    move-exception v0

    goto :goto_5e

    :catch_78
    move-exception v1

    goto :goto_6c

    .line 225
    :catch_7a
    move-exception v1

    goto :goto_71
.end method

.method private a(JJ)[B
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 164
    .line 165
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 166
    iget-object v1, p0, Lcn/sharesdk/tencent/weibo/e;->d:Lcn/sharesdk/tencent/weibo/c;

    iget-object v1, v1, Lcn/sharesdk/tencent/weibo/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 167
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 168
    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 169
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 170
    const-string v1, "HmacSHA1"

    invoke-static {v1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    .line 171
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v3, p0, Lcn/sharesdk/tencent/weibo/e;->d:Lcn/sharesdk/tencent/weibo/c;

    iget-object v3, v3, Lcn/sharesdk/tencent/weibo/c;->b:Ljava/lang/String;

    const-string v4, "UTF-8"

    .line 172
    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1}, Ljavax/crypto/Mac;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 173
    invoke-virtual {v1, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 174
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v0

    .line 175
    invoke-static {v0}, Lcn/sharesdk/tencent/weibo/a;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 177
    if-nez v0, :cond_52

    .line 178
    const-string v0, "Generating signature failed"

    .line 179
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v1

    .line 182
    :cond_52
    new-instance v1, Lcn/sharesdk/tencent/weibo/b;

    invoke-direct {v1}, Lcn/sharesdk/tencent/weibo/b;-><init>()V

    const-string v2, "&-*)Wb5_U,[^!9\'+"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcn/sharesdk/tencent/weibo/b;->a([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method private b(Landroid/content/Context;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 151
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 152
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x40

    .line 151
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 153
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 154
    new-instance v2, Ljava/io/ByteArrayInputStream;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    .line 155
    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 154
    invoke-virtual {v1, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 156
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 157
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 158
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 159
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/Data;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Landroid/os/Bundle;)V
    .registers 6

    .prologue
    .line 233
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/e;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    if-eqz v0, :cond_38

    .line 234
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 235
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 236
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    .line 238
    :cond_25
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/e;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    new-instance v2, Ljava/lang/Throwable;

    new-instance v3, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v3}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v3, v1}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lcn/sharesdk/framework/authorize/SSOListener;->onFailed(Ljava/lang/Throwable;)V

    .line 240
    :cond_38
    return-void
.end method

.method static synthetic b(Lcn/sharesdk/tencent/weibo/e;Landroid/os/Bundle;)V
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcn/sharesdk/tencent/weibo/e;->b(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 13

    .prologue
    .line 54
    :try_start_0
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/e;->a:Lcn/sharesdk/framework/authorize/c;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/c;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/sharesdk/tencent/weibo/e;->a(Landroid/content/Context;)I
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_e8

    move-result v0

    packed-switch v0, :pswitch_data_132

    .line 74
    :try_start_d
    new-instance v1, Landroid/content/IntentFilter;

    const-string v0, "com.tencent.sso.AUTH"

    invoke-direct {v1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 75
    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 76
    new-instance v2, Lcn/sharesdk/tencent/weibo/e$a;

    invoke-direct {v2, p0}, Lcn/sharesdk/tencent/weibo/e$a;-><init>(Lcn/sharesdk/tencent/weibo/e;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_1e} :catch_118

    .line 78
    :try_start_1e
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/e;->a:Lcn/sharesdk/framework/authorize/c;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/c;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_2b} :catch_10e

    .line 82
    :goto_2b
    :try_start_2b
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/e;->a:Lcn/sharesdk/framework/authorize/c;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/c;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_38} :catch_118

    .line 91
    :try_start_38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v2, v0, v2

    .line 92
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-long v4, v0

    .line 93
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/e;->a:Lcn/sharesdk/framework/authorize/c;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/c;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 94
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/e;->a:Lcn/sharesdk/framework/authorize/c;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/c;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/sharesdk/tencent/weibo/e;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 95
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/e;->a:Lcn/sharesdk/framework/authorize/c;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/c;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 96
    const/4 v1, 0x0

    invoke-virtual {v0, v6, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 97
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .line 98
    invoke-direct {p0, v2, v3, v4, v5}, Lcn/sharesdk/tencent/weibo/e;->a(JJ)[B

    move-result-object v9

    .line 100
    new-instance v10, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    const-string v1, "TencentAuth://weibo"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v10, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 101
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/e;->d:Lcn/sharesdk/tencent/weibo/c;

    iget-object v0, v0, Lcn/sharesdk/tencent/weibo/c;->a:Ljava/lang/String;

    if-nez v0, :cond_128

    const-wide/16 v0, 0x0

    .line 102
    :goto_92
    const-string v11, "com.tencent.sso.APP_ID"

    invoke-virtual {v10, v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 103
    const-string v0, "com.tencent.sso.TIMESTAMP"

    invoke-virtual {v10, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 104
    const-string v0, "com.tencent.sso.NONCE"

    invoke-virtual {v10, v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 105
    const-string v0, "com.tencent.sso.SDK_VERSION"

    const/4 v1, 0x1

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 106
    const-string v0, "com.tencent.sso.PACKAGE_NAME"

    invoke-virtual {v10, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    const-string v0, "com.tencent.sso.ICON_MD5"

    invoke-virtual {v10, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    const-string v0, "com.tencent.sso.APP_NAME"

    invoke-virtual {v10, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    const-string v0, "com.tencent.sso.SIGNATURE"

    invoke-virtual {v10, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 110
    const-string v0, "com.tencent.sso.RESERVER"

    const-string v1, ""

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    const/high16 v0, 0x10000000

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 112
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/e;->a:Lcn/sharesdk/framework/authorize/c;

    invoke-virtual {v0, v10}, Lcn/sharesdk/framework/authorize/c;->startActivity(Landroid/content/Intent;)V

    .line 113
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/e;->a:Lcn/sharesdk/framework/authorize/c;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/c;->finish()V

    .line 120
    :cond_d1
    :goto_d1
    return-void

    .line 56
    :pswitch_d2
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/e;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    if-eqz v0, :cond_d1

    .line 57
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/e;->a:Lcn/sharesdk/framework/authorize/c;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/c;->finish()V

    .line 58
    const-string v0, "Weibo client version mis-match"

    .line 59
    iget-object v1, p0, Lcn/sharesdk/tencent/weibo/e;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcn/sharesdk/framework/authorize/SSOListener;->onFailed(Ljava/lang/Throwable;)V
    :try_end_e7
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_e7} :catch_e8

    goto :goto_d1

    .line 114
    :catch_e8
    move-exception v0

    .line 115
    iget-object v1, p0, Lcn/sharesdk/tencent/weibo/e;->a:Lcn/sharesdk/framework/authorize/c;

    invoke-virtual {v1}, Lcn/sharesdk/framework/authorize/c;->finish()V

    .line 116
    iget-object v1, p0, Lcn/sharesdk/tencent/weibo/e;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    if-eqz v1, :cond_d1

    .line 117
    iget-object v1, p0, Lcn/sharesdk/tencent/weibo/e;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    invoke-interface {v1, v0}, Lcn/sharesdk/framework/authorize/SSOListener;->onFailed(Ljava/lang/Throwable;)V

    goto :goto_d1

    .line 64
    :pswitch_f8
    :try_start_f8
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/e;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    if-eqz v0, :cond_d1

    .line 65
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/e;->a:Lcn/sharesdk/framework/authorize/c;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/c;->finish()V

    .line 66
    const-string v0, "Weibo client install needed"

    .line 67
    iget-object v1, p0, Lcn/sharesdk/tencent/weibo/e;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcn/sharesdk/framework/authorize/SSOListener;->onFailed(Ljava/lang/Throwable;)V
    :try_end_10d
    .catch Ljava/lang/Throwable; {:try_start_f8 .. :try_end_10d} :catch_e8

    goto :goto_d1

    .line 79
    :catch_10e
    move-exception v0

    .line 80
    :try_start_10f
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_116
    .catch Ljava/lang/Throwable; {:try_start_10f .. :try_end_116} :catch_118

    goto/16 :goto_2b

    .line 83
    :catch_118
    move-exception v0

    .line 84
    :try_start_119
    iget-object v1, p0, Lcn/sharesdk/tencent/weibo/e;->a:Lcn/sharesdk/framework/authorize/c;

    invoke-virtual {v1}, Lcn/sharesdk/framework/authorize/c;->finish()V

    .line 85
    iget-object v1, p0, Lcn/sharesdk/tencent/weibo/e;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    if-eqz v1, :cond_d1

    .line 86
    iget-object v1, p0, Lcn/sharesdk/tencent/weibo/e;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    invoke-interface {v1, v0}, Lcn/sharesdk/framework/authorize/SSOListener;->onFailed(Ljava/lang/Throwable;)V

    goto :goto_d1

    .line 101
    :cond_128
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/e;->d:Lcn/sharesdk/tencent/weibo/c;

    iget-object v0, v0, Lcn/sharesdk/tencent/weibo/c;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/mob/tools/utils/ResHelper;->parseLong(Ljava/lang/String;)J
    :try_end_12f
    .catch Ljava/lang/Throwable; {:try_start_119 .. :try_end_12f} :catch_e8

    move-result-wide v0

    goto/16 :goto_92

    .line 54
    :pswitch_data_132
    .packed-switch -0x2
        :pswitch_f8
        :pswitch_d2
    .end packed-switch
.end method

.method public a(IILandroid/content/Intent;)V
    .registers 4

    .prologue
    .line 186
    invoke-super {p0, p1, p2, p3}, Lcn/sharesdk/framework/authorize/d;->a(IILandroid/content/Intent;)V

    .line 187
    return-void
.end method

.method public a(Lcn/sharesdk/tencent/weibo/c;)V
    .registers 2

    .prologue
    .line 49
    iput-object p1, p0, Lcn/sharesdk/tencent/weibo/e;->d:Lcn/sharesdk/tencent/weibo/c;

    .line 50
    return-void
.end method
