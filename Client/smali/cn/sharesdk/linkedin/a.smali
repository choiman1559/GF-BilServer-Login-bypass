.class public Lcn/sharesdk/linkedin/a;
.super Lcn/sharesdk/framework/b;
.source "LinkedInHelper.java"


# static fields
.field private static final b:[Ljava/lang/String;

.field private static c:Lcn/sharesdk/linkedin/a;


# instance fields
.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 39
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "r_basicprofile"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "r_emailaddress"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "rw_company_admin"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "w_share"

    aput-object v2, v0, v1

    sput-object v0, Lcn/sharesdk/linkedin/a;->b:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcn/sharesdk/framework/Platform;)V
    .registers 2

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/b;-><init>(Lcn/sharesdk/framework/Platform;)V

    .line 58
    return-void
.end method

.method public static a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/linkedin/a;
    .registers 2

    .prologue
    .line 50
    sget-object v0, Lcn/sharesdk/linkedin/a;->c:Lcn/sharesdk/linkedin/a;

    if-nez v0, :cond_b

    .line 51
    new-instance v0, Lcn/sharesdk/linkedin/a;

    invoke-direct {v0, p0}, Lcn/sharesdk/linkedin/a;-><init>(Lcn/sharesdk/framework/Platform;)V

    sput-object v0, Lcn/sharesdk/linkedin/a;->c:Lcn/sharesdk/linkedin/a;

    .line 53
    :cond_b
    sget-object v0, Lcn/sharesdk/linkedin/a;->c:Lcn/sharesdk/linkedin/a;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 209
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 211
    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 212
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 213
    const-string v1, "Content-Type"

    const-string v2, "application/xml"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    new-instance v1, Ljava/io/PrintWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 215
    invoke-virtual {v1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 217
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 218
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 221
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    if-eq v1, p3, :cond_78

    .line 222
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    .line 226
    :goto_41
    const-string v2, "gzip"

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 227
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, v0

    .line 230
    :cond_53
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    const-string v3, "UTF-8"

    invoke-direct {v0, v1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 232
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 233
    :goto_68
    if-eqz v0, :cond_7d

    .line 234
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_68

    .line 224
    :cond_78
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    goto :goto_41

    .line 237
    :cond_7d
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 239
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private e(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?format=json&oauth2_access_token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/linkedin/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 109
    const-string v0, "dO21p12N1kD1J2w3nA"

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    const-string v1, "<share>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    const-string v1, "<comment>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</comment>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    const-string v1, "<content>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    const-string v1, "<title>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</title>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    const-string v1, "<description>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</description>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    const-string v1, "<submitted-url><![CDATA["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]]></submitted-url>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    if-eqz p4, :cond_5c

    .line 191
    const-string v1, "<submitted-image-url><![CDATA["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]]></submitted-image-url>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    :cond_5c
    const-string v1, "</content>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    const-string v1, "<visibility>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    const-string v1, "<code>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</code>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    const-string v1, "</visibility>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    const-string v1, "</share>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    const-string v1, "/v1/people/~/shares"

    invoke-virtual {p0}, Lcn/sharesdk/linkedin/a;->c()I

    move-result v2

    invoke-static {v1, v2}, Lcn/sharesdk/framework/ShareSDK;->logApiEvent(Ljava/lang/String;I)V

    .line 200
    const-string v1, "https://api.linkedin.com/v1/people/~/shares"

    .line 201
    invoke-direct {p0, v1}, Lcn/sharesdk/linkedin/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xc9

    invoke-direct {p0, v1, v0, v2}, Lcn/sharesdk/linkedin/a;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 202
    if-eqz v0, :cond_aa

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_aa

    .line 203
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 205
    :goto_a9
    return-object v0

    :cond_aa
    const/4 v0, 0x0

    goto :goto_a9
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/sharesdk/framework/PlatformActionListener;)V
    .registers 15

    .prologue
    .line 175
    new-instance v0, Lcn/sharesdk/linkedin/c;

    invoke-direct {v0}, Lcn/sharesdk/linkedin/c;-><init>()V

    .line 176
    iget-object v1, p0, Lcn/sharesdk/linkedin/a;->a:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v0, p7, v1}, Lcn/sharesdk/linkedin/c;->a(Lcn/sharesdk/framework/PlatformActionListener;Lcn/sharesdk/framework/Platform;)V

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move v5, p1

    move-object v6, p2

    .line 177
    invoke-virtual/range {v0 .. v6}, Lcn/sharesdk/linkedin/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 178
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/linkedin/c;->show(Landroid/content/Context;Landroid/content/Intent;)V

    .line 179
    return-void
.end method

.method public a(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V
    .registers 2

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lcn/sharesdk/linkedin/a;->b(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    .line 71
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 66
    iput-object p1, p0, Lcn/sharesdk/linkedin/a;->f:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 61
    iput-object p1, p0, Lcn/sharesdk/linkedin/a;->d:Ljava/lang/String;

    .line 62
    iput-object p2, p0, Lcn/sharesdk/linkedin/a;->e:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public a([Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 74
    iput-object p1, p0, Lcn/sharesdk/linkedin/a;->h:[Ljava/lang/String;

    .line 75
    return-void
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 114
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "grant_type"

    const-string v3, "authorization_code"

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "code"

    invoke-direct {v1, v2, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "redirect_uri"

    iget-object v3, p0, Lcn/sharesdk/linkedin/a;->f:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "client_id"

    iget-object v3, p0, Lcn/sharesdk/linkedin/a;->d:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "client_secret"

    iget-object v3, p0, Lcn/sharesdk/linkedin/a;->e:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    invoke-static {}, Lcn/sharesdk/framework/a/a;->a()Lcn/sharesdk/framework/a/a;

    move-result-object v1

    const-string v2, "https://www.linkedin.com/uas/oauth2/accessToken"

    const-string v3, "/uas/oauth2/accessToken"

    .line 121
    invoke-virtual {p0}, Lcn/sharesdk/linkedin/a;->c()I

    move-result v4

    .line 120
    invoke-virtual {v1, v2, v0, v3, v4}, Lcn/sharesdk/framework/a/a;->b(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 161
    .line 163
    :try_start_1
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.linkedin.android"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_f} :catch_14

    move-result-object v1

    .line 165
    if-eqz v1, :cond_13

    const/4 v0, 0x1

    .line 170
    :cond_13
    :goto_13
    return v0

    .line 166
    :catch_14
    move-exception v1

    .line 167
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_13
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 125
    iput-object p1, p0, Lcn/sharesdk/linkedin/a;->g:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public d(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 129
    const-string v0, "~"

    .line 130
    if-eqz p1, :cond_4c

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    const-string v2, "http"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 133
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_95

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "url="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "utf-8"

    invoke-static {v2, v3}, Lcom/mob/tools/utils/Data;->urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 140
    :cond_4c
    :goto_4c
    const-string v2, "id,first-name,last-name,maiden-name,formatted-name,phonetic-first-name,phonetic-last-name,formatted-phonetic-name,headline,location:(name,country:(code)),industry,distance,relation-to-viewer:(distance),current-share,num-connections,num-connections-capped,summary,specialties,positions,picture-url,site-standard-profile-request,api-standard-profile-request:(url,headers),public-profile-url,educations,email-address,following,date-of-birth"

    .line 147
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://api.linkedin.com/v1/people/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ":("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 148
    invoke-direct {p0, v0}, Lcn/sharesdk/linkedin/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    invoke-static {}, Lcn/sharesdk/framework/a/a;->a()Lcn/sharesdk/framework/a/a;

    move-result-object v2

    const-string v3, "/v1/people/"

    invoke-virtual {p0}, Lcn/sharesdk/linkedin/a;->c()I

    move-result v4

    invoke-virtual {v2, v0, v1, v3, v4}, Lcn/sharesdk/framework/a/a;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 150
    if-eqz v0, :cond_af

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_af

    .line 151
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 153
    :goto_94
    return-object v0

    .line 136
    :cond_95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "url="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "utf-8"

    invoke-static {p1, v2}, Lcom/mob/tools/utils/Data;->urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4c

    :cond_af
    move-object v0, v1

    .line 153
    goto :goto_94
.end method

.method public getAuthorizeUrl()Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 78
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 79
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v2, "client_id"

    iget-object v4, p0, Lcn/sharesdk/linkedin/a;->d:Ljava/lang/String;

    invoke-direct {v0, v2, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v0, p0, Lcn/sharesdk/linkedin/a;->h:[Ljava/lang/String;

    if-nez v0, :cond_32

    sget-object v0, Lcn/sharesdk/linkedin/a;->b:[Ljava/lang/String;

    .line 81
    :goto_18
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    array-length v5, v0

    move v2, v1

    :goto_1f
    if-ge v1, v5, :cond_35

    aget-object v6, v0, v1

    .line 84
    if-lez v2, :cond_2a

    .line 85
    const-string v7, "%20"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    :cond_2a
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    add-int/lit8 v2, v2, 0x1

    .line 83
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 80
    :cond_32
    iget-object v0, p0, Lcn/sharesdk/linkedin/a;->h:[Ljava/lang/String;

    goto :goto_18

    .line 90
    :cond_35
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v1, "state"

    invoke-virtual {p0}, Lcn/sharesdk/linkedin/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v1, "redirect_uri"

    iget-object v2, p0, Lcn/sharesdk/linkedin/a;->f:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v1, "response_type"

    const-string v2, "code"

    invoke-direct {v0, v1, v2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    const-string v0, "/uas/oauth2/authorization"

    invoke-virtual {p0}, Lcn/sharesdk/linkedin/a;->c()I

    move-result v1

    invoke-static {v0, v1}, Lcn/sharesdk/framework/ShareSDK;->logApiEvent(Ljava/lang/String;I)V

    .line 95
    invoke-static {v3}, Lcom/mob/tools/utils/ResHelper;->encodeUrl(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://www.linkedin.com/uas/oauth2/authorization?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&scope="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAuthorizeWebviewClient(Lcn/sharesdk/framework/authorize/e;)Lcn/sharesdk/framework/authorize/b;
    .registers 3
    .param p1, "webAct"    # Lcn/sharesdk/framework/authorize/e;

    .prologue
    .line 105
    new-instance v0, Lcn/sharesdk/linkedin/b;

    invoke-direct {v0, p1}, Lcn/sharesdk/linkedin/b;-><init>(Lcn/sharesdk/framework/authorize/e;)V

    return-object v0
.end method

.method public getRedirectUri()Ljava/lang/String;
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lcn/sharesdk/linkedin/a;->f:Ljava/lang/String;

    return-object v0
.end method
