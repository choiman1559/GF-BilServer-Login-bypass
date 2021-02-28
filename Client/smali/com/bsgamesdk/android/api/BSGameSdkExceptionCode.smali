.class public Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;
.super Ljava/lang/Exception;


# static fields
.field public static final AUTH_NEED_ERROR:I = 0x30d43

.field public static final CAPTCHA_ERROR:I = 0x30d41

.field public static final CAPTCHA_GET_ERROR:I = 0x30d42

.field public static final CAPTCHA_NEED_ERROR:I = 0x30d40

.field public static final CDN_CODE_MAP:Ljava/util/Map;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final CODE_MAP:Ljava/util/Map;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final E_ACCESS_DENIED:I = -0x193

.field public static final E_ACCESS_KEY_INVALID:I = -0x2

.field public static final E_ACCOUNT_IS_BANNDED:I = -0x66

.field public static final E_ACCOUNT_IS_NOT_LOGIN:I = -0x65

.field public static final E_ACTIVATION_UNNECESSARY:I = 0x7a12c

.field public static final E_ACTIVE_COUNT_TRIGGLE_LIMITS:I = -0x270

.field public static final E_ADD_PAY_ORDER_ERROR:I = 0x7a132

.field public static final E_API_SIGN_INVALID:I = -0x3

.field public static final E_APPLICATION_NOT_EXISTS_OR_IS_BANNDED:I = -0x1

.field public static final E_CAPTCHA_IS_NOT_MATCH:I = -0x69

.field public static final E_CAPTURE_MAX:I = 0x7a139

.field public static final E_CARD_IS_GIVEN_AWAY:I = -0xcb

.field public static final E_CODE_BILI_ERROR:I = 0xdbba1

.field public static final E_CODE_FUSE:I = 0xea65

.field public static final E_CODE_LIMIT_FLOW:I = 0xea66

.field public static final E_CODE_PWD_TIMEOUT:I = -0x296

.field public static final E_CODE_PW_NOT_SAFE:I = 0x7a138

.field public static final E_CODE_REGISTER_TOO_MUCH:I = -0x2c3

.field public static final E_CODE_REMOVE_CACHE:I = 0xea6b

.field public static final E_CODE_RSA_PUBLICKEY_EXPIRED:I = 0xea6a

.field public static final E_COINS_IS_NOT_ENOUGH:I = -0x68

.field public static final E_CONTENT_HAVE_CONTAIN_UNALLOW_KEYWORDS:I = -0x3f0

.field public static final E_CONTENT_IS_TOO_LONG:I = -0x3f2

.field public static final E_CREDITS_IS_NOT_ENOUGH:I = -0x67

.field public static final E_DOCUMENT_IS_NOT_EXISTS:I = -0x194

.field public static final E_EMAIL_EXISTS:I = 0x7a129

.field public static final E_EMAIL_FORMAT_ERROR:I = -0x26d

.field public static final E_FAIL:I = -0xb

.field public static final E_FAIL_ACTIVATION:I = 0x7a12d

.field public static final E_FILENAME_IS_NOT_EXISTS:I = -0x3eb

.field public static final E_FILESIZE_RROR:I = -0x3ed

.field public static final E_FONTSIZE_INVALID:I = -0x3ee

.field public static final E_GAME_GOODS_NOT_EXIST:Ljava/lang/Integer;

.field public static final E_GAME_NOT_ACTIVEABLE:I = 0x7a121

.field public static final E_GAME_NOT_SECURE_BINGDING:I = 0x7a13f

.field public static final E_GAME_WILL_OFFLINE:I = -0xe

.field public static final E_INDEX_IS_EXISTS:I = -0x3ea

.field public static final E_INDEX_IS_NOT_EXISTS_ON_DB:I = -0x3e9

.field public static final E_INVALD_ACTIVATION:I = 0x7a12a

.field public static final E_IN_MAINTENANCE:I = -0x1bc

.field public static final E_JSON_PARES_ERROR:I = -0x18703

.field public static final E_JSON_RESOLVE_ERROR:I = -0x2711

.field public static final E_LOTTERY_IS_END:I = -0xca

.field public static final E_LOTTERY_IS_NOT_STARTED:I = -0xc9

.field public static final E_MD5_ERROR:I = -0x3ec

.field public static final E_MINOR_LIMITED:Ljava/lang/Integer;

.field public static final E_MINOR_LIMITED_PARENT:Ljava/lang/Integer;

.field public static final E_MODE_INVALID:I = -0x3ef

.field public static final E_NICKNAME_EXIST:Ljava/lang/Integer;

.field public static final E_NICKNAME_OR_PWD_TOO_SHORT:Ljava/lang/Integer;

.field public static final E_NICKNAME_TOO_LONG:Ljava/lang/Integer;

.field public static final E_NOT_MATCHED_ACTIVATION:I = 0x7a12e

.field public static final E_ORDER_SIGN_INVALID:I = -0x5

.field public static final E_PASSWORD_ERROR:I = 0x7a122

.field public static final E_PASSWORD_IS_LEAKED:I = -0x274

.field public static final E_PASSWORD_RETRIED_TOO_MANY_TIMES:I = 0x7a124

.field public static final E_PASSWORD_TOO_SHORT:I = 0x7a126

.field public static final E_PAY_USE_BACKUP_URL:I = 0xc350b

.field public static final E_PLAYTIME_ERROR:I = -0x3f3

.field public static final E_PWD_ERROR:Ljava/lang/Integer;

.field public static final E_REQUEST_ERROR:I = -0x190

.field public static final E_RESPONSE_EMPTY:I = -0x2712

.field public static final E_SEND_CAPATCHA_ERROR:I = 0x7a131

.field public static final E_SERVER_API_ERROR:I = -0x1f6

.field public static final E_SERVER_CONFIG_ERROR:I = 0x927c0

.field public static final E_SERVER_ERROR:I = 0xdbba0

.field public static final E_SERVER_INTERNAL_ERROR:I = -0x1f4

.field public static final E_SERVER_REQUESET_FREQUENT:I = -0x1f7

.field public static final E_SYSTEM_ERROR:I = -0x1f5

.field public static final E_TEL_EXIST:I = 0x7a130

.field public static final E_TEL_INVALID:I = 0x7a12f

.field public static final E_TOURIST_RECHARGE_CLOSED:I = -0xf

.field public static final E_TOURIST_REGISTER_CLOSED:I = -0x384

.field public static final E_USED_ACTIVATION:I = 0x7a12b

.field public static final E_USERNAME_EXISTS:I = 0x7a128

.field public static final E_USERNAME_FORMAT_ERROR:I = 0x7a127

.field public static final E_USERNAME_TOO_LONG:I = 0x7a125

.field public static final E_USER_IS_NOT_EXISTS:I = 0x7a123

.field public static final E_USER_NOT_EXIST:I = 0x7a133

.field public static final E_YOU_HAVE_BEEN_BANNED:I = -0x3f1

.field public static final LIMIT_AKERT_MESSAGE:Ljava/lang/String; = "limit_alert_message"

.field public static final LIMIT_ALERT_STATUS:Ljava/lang/String; = "limit_alert_status"

.field public static final LOGIN_TIME_LIMIT_ERROR:I = 0x7a142

.field public static final NEED_CAPTCH:Ljava/lang/String; = "need_captch"

.field public static final ONLINE_TIME_ERROR:I = 0x7a143

.field public static final PARENT_LOGIN_TIME_LIMIT_ERROR:I = 0x7a145

.field public static final PARENT_ONLINE_TIME_ERROR:I = 0x7a146

.field public static final RSA_AUTH_MRSA:Ljava/lang/String; = "rsaAuthMRsa"

.field public static final S_OK:I = 0x0

.field public static final THRID_LOGIN_ERROR_APPLE_IS_BIND:I = 0x7a15f

.field public static final THRID_LOGIN_ERROR_APPLE_REGITER_BIND_ERROR:I = 0x7a15e

.field public static final THRID_LOGIN_ERROR_FAIL:I = 0x7a160

.field public static final THRID_LOGIN_ERROR_IS_BIND:I = 0x7a15d

.field public static final THRID_LOGIN_ERROR_NOT_BIND:I = 0x7a161

.field private static final serialVersionUID:J = 0x54227ab13cdabaa2L


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field public backUpUrl:Ljava/lang/String;

.field public mCode:I

.field public newConfig:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->CODE_MAP:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->CDN_CODE_MAP:Ljava/util/Map;

    const v0, 0x7a134

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->E_NICKNAME_OR_PWD_TOO_SHORT:Ljava/lang/Integer;

    const v0, 0x7a135

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->E_NICKNAME_TOO_LONG:Ljava/lang/Integer;

    const v0, 0x7a136

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->E_NICKNAME_EXIST:Ljava/lang/Integer;

    const v0, 0x7a137

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->E_PWD_ERROR:Ljava/lang/Integer;

    const v0, 0x7a13b

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->E_MINOR_LIMITED:Ljava/lang/Integer;

    const v0, 0x7a13e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->E_MINOR_LIMITED_PARENT:Ljava/lang/Integer;

    const v0, 0xafc82

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->E_GAME_GOODS_NOT_EXIST:Ljava/lang/Integer;

    sget-object v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->CODE_MAP:Ljava/util/Map;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AppKey\u4e0d\u5b58\u5728\u6216\u8005\u5df2\u5c01\u7981"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->CODE_MAP:Ljava/util/Map;

    const/4 v1, -0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u65e0\u6548\u7684\u767b\u5f55Token(\u767b\u5f55\u5df2\u8fc7\u671f)"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->CODE_MAP:Ljava/util/Map;

    const/4 v1, -0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u65e0\u6548\u7684API\u7b7e\u540d(\u7a0b\u5e8f\u9519\u8bef)"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->CODE_MAP:Ljava/util/Map;

    const/16 v1, -0x65

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u672a\u767b\u5f55"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->CODE_MAP:Ljava/util/Map;

    const/16 v1, -0x66

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u5e10\u53f7\u5df2\u5c01\u7981"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->CODE_MAP:Ljava/util/Map;

    const/16 v1, -0x67

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u79ef\u5206\u4e0d\u8db3(\u7f51\u7ad9\u529f\u80fd)"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->CODE_MAP:Ljava/util/Map;

    const/16 v1, -0x68

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u786c\u5e01\u4e0d\u8db3(\u7f51\u7ad9\u529f\u80fd)"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->CODE_MAP:Ljava/util/Map;

    const/16 v1, -0x69

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u4e0e\u9a8c\u8bc1\u7801\u4e0d\u5339\u914d"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->CODE_MAP:Ljava/util/Map;

    const/16 v1, -0xc9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u62bd\u5956\u8fd8\u672a\u5f00\u59cb(\u7f51\u7ad9\u529f\u80fd)"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->CODE_MAP:Ljava/util/Map;

    const/16 v1, -0xca

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u62bd\u5956\u5df2\u7ed3\u675f(\u7f51\u7ad9\u529f\u80fd)"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->CODE_MAP:Ljava/util/Map;

    const/16 v1, -0xcb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "(\u7f51\u7ad9\u529f\u80fd)"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->CODE_MAP:Ljava/util/Map;

    const/16 v1, -0x190

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u8bf7\u6c42\u9519\u8bef(\u53c2\u6570\u4e0d\u5408\u6cd5,\u8bf7\u6c42\u65b9\u5f0f\u4e0d\u6b63\u786e)"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->CODE_MAP:Ljava/util/Map;

    const/16 v1, -0x193

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u62d2\u7edd\u8bbf\u95ee(\u672a\u767b\u5f55,\u6216\u7528\u6237\u6743\u9650\u4e0d\u8db3)"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->CODE_MAP:Ljava/util/Map;

    const/16 v1, -0x194

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u8bf7\u6c42\u7684\u5185\u5bb9\u4e0d\u5b58\u5728(\u7f51\u7ad9\u529f\u80fd)"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->CODE_MAP:Ljava/util/Map;

    const/16 v1, -0x1bc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u670d\u52a1\u7aef\u7ef4\u62a4\u4e2d"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->CODE_MAP:Ljava/util/Map;

    const/16 v1, -0x1f4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u670d\u52a1\u5668\u5185\u90e8\u9519\u8bef"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->CODE_MAP:Ljava/util/Map;

    const/16 v1, -0x1f5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u670d\u52a1\u5668\u6570\u636e\u5e93\u9519\u8bef"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->CODE_MAP:Ljava/util/Map;

    const/16 v1, -0x1f6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u670d\u52a1\u5668\u5185\u90e8API\u8bf7\u6c42\u9519\u8bef"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->CODE_MAP:Ljava/util/Map;

    const/16 v1, -0x1f7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u670d\u52a1\u5668\u8c03\u7528\u901f\u5ea6\u8fc7\u5feb"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->CODE_MAP:Ljava/util/Map;

    const v1, 0x7a126

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u7528\u6237\u540d\u6216\u5bc6\u7801\u957f\u5ea6\u4e0d\u5bf9"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->CODE_MAP:Ljava/util/Map;

    const v1, 0x7a127

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u7528\u6237\u540d\u4e0d\u5408\u6cd5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->CODE_MAP:Ljava/util/Map;

    const v1, 0x7a125

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u7528\u6237\u540d\u8fc7\u957f"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->CODE_MAP:Ljava/util/Map;

    const v1, 0x7a128

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u7528\u6237\u540d\u5df2\u5b58\u5728"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->CODE_MAP:Ljava/util/Map;

    const/16 v1, -0x26d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u90ae\u7bb1\u683c\u5f0f\u4e0d\u5408\u6cd5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->CODE_MAP:Ljava/util/Map;

    const v1, 0x7a129

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u90ae\u7bb1\u5df2\u6ce8\u518c"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->CODE_MAP:Ljava/util/Map;

    const v1, 0x7a121

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u6e38\u620f\u8fd8\u672a\u6fc0\u6d3b(\u7f51\u7ad9\u529f\u80fd)"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->CODE_MAP:Ljava/util/Map;

    const v1, 0x7a13f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u60a8\u5c1a\u672a\u7ed1\u5b9a\u624b\u673a/\u90ae\u7bb1\uff0c\u4e3a\u4e86\u60a8\u7684\u8d26\u53f7\u5b89\u5168\uff0c\u8bf7\u4f7f\u7528\u7528\u6237\u540d\u5bc6\u7801\u767b\u5f55"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->CODE_MAP:Ljava/util/Map;

    const/16 v1, -0x270

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u6fc0\u6d3b\u6b21\u6570\u8d85\u8fc7\u9650\u5236(\u7f51\u7ad9\u529f\u80fd)"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->CODE_MAP:Ljava/util/Map;

    const v1, 0x7a124

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u5bc6\u7801\u9519\u8bef\u6b21\u6570\u8fc7\u591a"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->CODE_MAP:Ljava/util/Map;

    const v1, 0x7a123

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u4e0d\u5b58\u5728\u6b64\u7528\u6237"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->CODE_MAP:Ljava/util/Map;

    const v1, 0x7a122

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u5bc6\u7801\u9519\u8bef"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->CODE_MAP:Ljava/util/Map;

    const/16 v1, -0x274

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u88ab\u6cc4\u9732\u8fc7\u7684\u5bc6\u7801"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->CODE_MAP:Ljava/util/Map;

    const v1, 0x7a12a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u65e0\u6548\u7684\u6fc0\u6d3b\u7801"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->CODE_MAP:Ljava/util/Map;

    const v1, 0x7a12b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u6fc0\u6d3b\u7801\u5df2\u88ab\u4f7f\u7528"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->CODE_MAP:Ljava/util/Map;

    const v1, 0x7a12c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u8be5\u6e38\u620f\u4e0d\u9700\u8981\u6fc0\u6d3b"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->CODE_MAP:Ljava/util/Map;

    const v1, 0x7a12d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u6fc0\u6d3b\u5931\u8d25\uff0c\u6fc0\u6d3b\u7801\u53ef\u80fd\u5df2\u88ab\u4f7f\u7528"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->CODE_MAP:Ljava/util/Map;

    const v1, 0x7a12e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u65e0\u6548\u7684\u6fc0\u6d3b\u7801"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->CODE_MAP:Ljava/util/Map;

    const v1, 0x7a12f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u624b\u673a\u53f7\u4e0d\u5408\u6cd5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->CODE_MAP:Ljava/util/Map;

    const v1, 0x7a130

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u624b\u673a\u53f7\u5df2\u5b58\u5728"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->CODE_MAP:Ljava/util/Map;

    const v1, 0x7a131

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u9a8c\u8bc1\u7801\u53d1\u9001\u5931\u8d25"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->CODE_MAP:Ljava/util/Map;

    const v1, 0x7a132

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u6dfb\u52a0\u8ba2\u5355\u5931\u8d25"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->CODE_MAP:Ljava/util/Map;

    const v1, 0x7a133

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u7528\u6237\u540d\u4e0d\u5b58\u5728"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->CODE_MAP:Ljava/util/Map;

    sget-object v1, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->E_NICKNAME_OR_PWD_TOO_SHORT:Ljava/lang/Integer;

    const-string v2, "\u6635\u79f0\u6216\u8005\u5bc6\u7801\u8fc7\u77ed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->CODE_MAP:Ljava/util/Map;

    sget-object v1, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->E_NICKNAME_TOO_LONG:Ljava/lang/Integer;

    const-string v2, "\u6635\u79f0\u8fc7\u957f"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->CODE_MAP:Ljava/util/Map;

    sget-object v1, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->E_NICKNAME_EXIST:Ljava/lang/Integer;

    const-string v2, "\u6635\u79f0\u5df2\u5b58\u5728"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->CODE_MAP:Ljava/util/Map;

    sget-object v1, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->E_PWD_ERROR:Ljava/lang/Integer;

    const-string v2, "\u91cd\u7f6e\u5bc6\u7801\u4e0e\u539f\u5bc6\u7801\u76f8\u540c"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->CODE_MAP:Ljava/util/Map;

    const/16 v1, -0x3e9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "(\u5185\u90e8\u9519\u8bef), code:-1001"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->CODE_MAP:Ljava/util/Map;

    const/16 v1, -0x3ea

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "(\u5185\u90e8\u9519\u8bef), code:-1002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->CODE_MAP:Ljava/util/Map;

    const/16 v1, -0x3eb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "(\u5185\u90e8\u9519\u8bef), code:-1003"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->CODE_MAP:Ljava/util/Map;

    const/16 v1, -0x3ec

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "(\u5185\u90e8\u9519\u8bef), code:-1004"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->CODE_MAP:Ljava/util/Map;

    const/16 v1, -0x3ed

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "(\u5185\u90e8\u9519\u8bef), code:-1005"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->CODE_MAP:Ljava/util/Map;

    const/16 v1, -0x3ee

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "(\u5185\u90e8\u9519\u8bef), code:-1006"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->CODE_MAP:Ljava/util/Map;

    const/16 v1, -0x3ef

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "(\u5185\u90e8\u9519\u8bef), code:-1007"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->CODE_MAP:Ljava/util/Map;

    const/16 v1, -0x3f0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "(\u5185\u90e8\u9519\u8bef), code:-1008"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->CODE_MAP:Ljava/util/Map;

    const/16 v1, -0x3f1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "(\u5185\u90e8\u9519\u8bef), code:-1009"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->CODE_MAP:Ljava/util/Map;

    const/16 v1, -0x3f2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "(\u5185\u90e8\u9519\u8bef), code:-1010"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->CODE_MAP:Ljava/util/Map;

    const/16 v1, -0x3f3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "(\u5185\u90e8\u9519\u8bef), code:-1011"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->CODE_MAP:Ljava/util/Map;

    const/16 v1, -0x2712

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u8bf7\u68c0\u67e5\u7f51\u7edc,-10002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->CODE_MAP:Ljava/util/Map;

    const/16 v1, -0x2711

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u8bf7\u68c0\u67e5\u7f51\u7edc,-10001"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->CODE_MAP:Ljava/util/Map;

    const/16 v1, -0x296

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u8bf7\u68c0\u67e5\u7f51\u7edc,-662"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->CODE_MAP:Ljava/util/Map;

    const/16 v1, -0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u6e38\u5ba2\u4e0d\u80fd\u5145\u503c"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->CODE_MAP:Ljava/util/Map;

    const/4 v1, -0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u8ba2\u5355\u53c2\u6570\u5f02\u5e38"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->CODE_MAP:Ljava/util/Map;

    const v1, 0xdbba1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u670d\u52a1\u5668\u8fde\u63a5\u9519\u8bef"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->CODE_MAP:Ljava/util/Map;

    const v1, 0xea65

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u670d\u52a1\u5668\u7e41\u5fd9\uff0c\u8bf7\u7a0d\u540e\u5c1d\u8bd5\uff0860005\uff09"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->CODE_MAP:Ljava/util/Map;

    const v1, 0xea66

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u670d\u52a1\u5668\u7e41\u5fd9\uff0c\u8bf7\u7a0d\u540e\u5c1d\u8bd5\uff0860006\uff09"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->CODE_MAP:Ljava/util/Map;

    const v1, 0x7a138

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u5bc6\u7801\u4e0d\u5b89\u5168\uff0c\u8bf7\u7acb\u5373\u4fee\u6539\u5bc6\u7801"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->CODE_MAP:Ljava/util/Map;

    const/16 v1, -0x2c3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u6ce8\u518c\u8fc7\u9891\u7e41"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->CODE_MAP:Ljava/util/Map;

    const/16 v1, -0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u5145\u503c\u5df2\u6682\u65f6\u5173\u95ed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->CODE_MAP:Ljava/util/Map;

    const/16 v1, -0x384

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u6e38\u5ba2\u6ce8\u518c\u5173\u95ed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->CODE_MAP:Ljava/util/Map;

    const v1, 0x7a139

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u4eca\u65e5\u9a8c\u8bc1\u7801\u53d1\u9001\u6b21\u6570\u5df2\u8fbe\u4e0a\u9650"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->CODE_MAP:Ljava/util/Map;

    const v1, 0xdbba0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u670d\u52a1\u5668\u8fde\u63a5\u5931\u8d25\uff08900000\uff09"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->CODE_MAP:Ljava/util/Map;

    const v1, 0x30d40

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u89e6\u53d1\u98ce\u63a7\uff0c\u9700\u8981\u6781\u9a8c\u8bc1/\u6216\u56fe\u5f62\u9a8c\u8bc1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->CODE_MAP:Ljava/util/Map;

    const v1, 0x30d41

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u6781\u9a8c\u8bc1\u5931\u8d25/\u6216\u56fe\u5f62\u9a8c\u8bc1\u5931\u8d25"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->CODE_MAP:Ljava/util/Map;

    const v1, 0x30d42

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u83b7\u53d6\u6781\u9a8c\u6216\u56fe\u5f62\u9a8c\u8bc1\u5931\u8d25"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->CODE_MAP:Ljava/util/Map;

    const v1, 0x30d43

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u9700\u8981\u8fdb\u884c\u5b9e\u540d\u8ba4\u8bc1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->CODE_MAP:Ljava/util/Map;

    const v1, 0x7a143

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u89e6\u53d1\u9632\u6c89\u8ff7\u529f\u80fd\u7684\u5728\u7ebf\u65f6\u957f"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->CODE_MAP:Ljava/util/Map;

    const v1, 0x7a142

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u89e6\u53d1\u9632\u6c89\u8ff7\u529f\u80fd\u7684\u767b\u5f55\u65f6\u6bb5\u9650\u5236"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->CODE_MAP:Ljava/util/Map;

    const v1, 0x7a146

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u89e6\u53d1\u5bb6\u957f\u5b88\u62a4\u529f\u80fd\u7684\u5728\u7ebf\u65f6\u957f"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->CODE_MAP:Ljava/util/Map;

    const v1, 0x7a145

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u89e6\u53d1\u5bb6\u957f\u5b88\u62a4\u529f\u80fd\u7684\u767b\u5f55\u65f6\u6bb5\u9650\u5236"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->CODE_MAP:Ljava/util/Map;

    sget-object v1, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->E_GAME_GOODS_NOT_EXIST:Ljava/lang/Integer;

    const-string v2, "\u6e38\u620f\u5546\u54c1\u4e0d\u5b58\u5728"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->CODE_MAP:Ljava/util/Map;

    const v1, 0x7a160

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u8bf7\u6c42\u7b2c\u4e09\u65b9\u5931\u8d25"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->CODE_MAP:Ljava/util/Map;

    const v1, 0x7a15d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u8be5\u8d26\u53f7\u5df2\u7ed1\u5b9a\u82f9\u679c\u8d26\u53f7,\u8bf7\u7ed1\u5b9a\u5176\u4ed6\u8d26\u53f7"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->CODE_MAP:Ljava/util/Map;

    const v1, 0x7a15f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u82f9\u679c\u5df2\u88ab\u7ed1\u5b9a"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->CODE_MAP:Ljava/util/Map;

    const v1, 0x7a15e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u6ce8\u518c\u6210\u529f\uff0c\u7ed1\u5b9a\u7b2c\u4e09\u65b9\u5931\u8d25"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const/16 v0, -0xb

    iput v0, p0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->mCode:I

    iput p1, p0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->mCode:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/16 v0, -0xb

    iput v0, p0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->mCode:I

    iput p1, p0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->mCode:I

    iput-object p2, p0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 6

    invoke-direct {p0, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/16 v0, -0xb

    iput v0, p0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->mCode:I

    iput p1, p0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->mCode:I

    iput-object p3, p0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->newConfig:Lorg/json/JSONObject;

    iput-object p2, p0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/16 v0, -0xb

    iput v0, p0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->mCode:I

    iput p1, p0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->mCode:I

    iput-object p3, p0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->newConfig:Lorg/json/JSONObject;

    iput-object p5, p0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->backUpUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/16 v0, -0xb

    iput v0, p0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->mCode:I

    iput-object p1, p0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    const/16 v0, -0xb

    iput v0, p0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->mCode:I

    return-void
.end method

.method public static initCDNCodeMap(Ljava/lang/String;)V
    .registers 6

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    :try_start_7
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "error_code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    sget-object v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->CDN_CODE_MAP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    sget-object v4, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->CDN_CODE_MAP:Ljava/util/Map;

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_34} :catch_35

    goto :goto_1b

    :catch_35
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_6
.end method


# virtual methods
.method public getErrorMessage()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->b:Ljava/lang/String;

    :goto_a
    return-object v0

    :cond_b
    sget-object v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->CDN_CODE_MAP:Ljava/util/Map;

    iget v1, p0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->mCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    sget-object v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->CDN_CODE_MAP:Ljava/util/Map;

    iget v1, p0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->mCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_a

    :cond_28
    sget-object v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->CODE_MAP:Ljava/util/Map;

    iget v1, p0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->mCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    sget-object v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->CODE_MAP:Ljava/util/Map;

    iget v1, p0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->mCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_a

    :cond_45
    iget-object v0, p0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_57

    const-string v0, "invalid response"

    iget-object v1, p0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5a

    :cond_57
    const-string v0, "unknown error"

    goto :goto_a

    :cond_5a
    iget-object v0, p0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->a:Ljava/lang/String;

    goto :goto_a
.end method
