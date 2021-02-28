.class public abstract Lcn/sharesdk/framework/InnerShareParams;
.super Ljava/lang/Object;
.source "InnerShareParams.java"


# static fields
.field protected static final ADDRESS:Ljava/lang/String; = "address"

.field protected static final AUTHOR:Ljava/lang/String; = "author"

.field protected static final COMMENT:Ljava/lang/String; = "comment"

.field protected static final CONTENT_TYPE:Ljava/lang/String; = "contentType"

.field protected static final CUSTOM_FLAG:Ljava/lang/String; = "customFlag"

.field protected static final EXECUTE_URL:Ljava/lang/String; = "executeUrl"

.field protected static final EXT_INFO:Ljava/lang/String; = "extInfo"

.field protected static final FILE_PATH:Ljava/lang/String; = "filePath"

.field protected static final GROPU_ID:Ljava/lang/String; = "groupID"

.field protected static final HIDDEN:Ljava/lang/String; = "hidden"

.field protected static final IMAGE_ARRAY:Ljava/lang/String; = "imageArray"

.field protected static final IMAGE_DATA:Ljava/lang/String; = "imageData"

.field protected static final IMAGE_PATH:Ljava/lang/String; = "imagePath"

.field protected static final IMAGE_URL:Ljava/lang/String; = "imageUrl"

.field protected static final INSTALL_URL:Ljava/lang/String; = "installUrl"

.field protected static final IS_FAMILY:Ljava/lang/String; = "isFamily"

.field protected static final IS_FRIEND:Ljava/lang/String; = "isFriend"

.field protected static final IS_PUBLIC:Ljava/lang/String; = "isPublic"

.field protected static final IS_SHARE_TENCENT_WEIBO:Ljava/lang/String; = "isShareTencentWeibo"

.field protected static final LATITUDE:Ljava/lang/String; = "latitude"

.field protected static final LONGITUDE:Ljava/lang/String; = "longitude"

.field protected static final MUSIC_URL:Ljava/lang/String; = "musicUrl"

.field protected static final NOTEBOOK:Ljava/lang/String; = "notebook"

.field protected static final SAFETY_LEVEL:Ljava/lang/String; = "safetyLevel"

.field protected static final SCENCE:Ljava/lang/String; = "scene"

.field protected static final SHARE_TYPE:Ljava/lang/String; = "shareType"

.field protected static final SITE:Ljava/lang/String; = "site"

.field protected static final SITE_URL:Ljava/lang/String; = "siteUrl"

.field protected static final STACK:Ljava/lang/String; = "stack"

.field protected static final TAGS:Ljava/lang/String; = "tags"

.field protected static final TEXT:Ljava/lang/String; = "text"

.field protected static final TITLE:Ljava/lang/String; = "title"

.field protected static final TITLE_URL:Ljava/lang/String; = "titleUrl"

.field protected static final URL:Ljava/lang/String; = "url"

.field protected static final VENUE_DESCRIPTION:Ljava/lang/String; = "venueDescription"

.field protected static final VENUE_NAME:Ljava/lang/String; = "venueName"


# instance fields
.field private params:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/framework/InnerShareParams;->params:Ljava/util/HashMap;

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "jsonParams"    # Ljava/lang/String;

    .prologue
    .line 63
    new-instance v0, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v0}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v0, p1}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/sharesdk/framework/InnerShareParams;-><init>(Ljava/util/HashMap;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/util/HashMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Lcn/sharesdk/framework/InnerShareParams;-><init>()V

    .line 57
    if-eqz p1, :cond_a

    .line 58
    iget-object v0, p0, Lcn/sharesdk/framework/InnerShareParams;->params:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 60
    :cond_a
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v1, 0x0

    .line 71
    iget-object v0, p0, Lcn/sharesdk/framework/InnerShareParams;->params:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 72
    if-eqz v0, :cond_e

    .line 73
    invoke-virtual {p2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 89
    :goto_d
    return-object v0

    .line 74
    :cond_e
    const-class v0, Ljava/lang/Byte;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 75
    :cond_1e
    new-instance v0, Ljava/lang/Byte;

    invoke-direct {v0, v1}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {p2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_d

    .line 76
    :cond_28
    const-class v0, Ljava/lang/Short;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 77
    :cond_38
    new-instance v0, Ljava/lang/Short;

    invoke-direct {v0, v1}, Ljava/lang/Short;-><init>(S)V

    invoke-virtual {p2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_d

    .line 78
    :cond_42
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_52

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 79
    :cond_52
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_d

    .line 80
    :cond_5c
    const-class v0, Ljava/lang/Long;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6c

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 81
    :cond_6c
    new-instance v0, Ljava/lang/Long;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {p2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_d

    .line 82
    :cond_78
    const-class v0, Ljava/lang/Float;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_88

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_94

    .line 83
    :cond_88
    new-instance v0, Ljava/lang/Float;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {p2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_d

    .line 84
    :cond_94
    const-class v0, Ljava/lang/Double;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a4

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b1

    .line 85
    :cond_a4
    new-instance v0, Ljava/lang/Double;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {p2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_d

    .line 86
    :cond_b1
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c1

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cb

    .line 87
    :cond_c1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_d

    .line 89
    :cond_cb
    const/4 v0, 0x0

    goto/16 :goto_d
.end method

.method public getAddress()Ljava/lang/String;
    .registers 3

    .prologue
    .line 274
    const-string v0, "address"

    const-class v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/framework/InnerShareParams;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAuthor()Ljava/lang/String;
    .registers 3

    .prologue
    .line 314
    const-string v0, "author"

    const-class v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/framework/InnerShareParams;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getComment()Ljava/lang/String;
    .registers 3

    .prologue
    .line 258
    const-string v0, "comment"

    const-class v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/framework/InnerShareParams;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()I
    .registers 3

    .prologue
    .line 202
    const-string v0, "contentType"

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/framework/InnerShareParams;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getCustomFlag()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 354
    const-string v0, "customFlag"

    const-class v1, [Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/framework/InnerShareParams;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getExecuteUrl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 362
    const-string v0, "executeUrl"

    const-class v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/framework/InnerShareParams;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getExtInfo()Ljava/lang/String;
    .registers 3

    .prologue
    .line 346
    const-string v0, "extInfo"

    const-class v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/framework/InnerShareParams;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .registers 3

    .prologue
    .line 134
    const-string v0, "filePath"

    const-class v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/framework/InnerShareParams;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getGroupId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 306
    const-string v0, "groupID"

    const-class v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/framework/InnerShareParams;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getHidden()I
    .registers 3

    .prologue
    .line 210
    const-string v0, "hidden"

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/framework/InnerShareParams;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getImageArray()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 386
    const-string v0, "imageArray"

    const-class v1, [Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/framework/InnerShareParams;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getImageData()Landroid/graphics/Bitmap;
    .registers 3

    .prologue
    .line 322
    const-string v0, "imageData"

    const-class v1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/framework/InnerShareParams;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getImagePath()Ljava/lang/String;
    .registers 3

    .prologue
    .line 118
    const-string v0, "imagePath"

    const-class v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/framework/InnerShareParams;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 126
    const-string v0, "imageUrl"

    const-class v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/framework/InnerShareParams;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getInstallUrl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 370
    const-string v0, "installUrl"

    const-class v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/framework/InnerShareParams;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()F
    .registers 3

    .prologue
    .line 234
    const-string v0, "latitude"

    const-class v1, Ljava/lang/Float;

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/framework/InnerShareParams;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getLongitude()F
    .registers 3

    .prologue
    .line 242
    const-string v0, "longitude"

    const-class v1, Ljava/lang/Float;

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/framework/InnerShareParams;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getMusicUrl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 282
    const-string v0, "musicUrl"

    const-class v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/framework/InnerShareParams;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNotebook()Ljava/lang/String;
    .registers 3

    .prologue
    .line 146
    const-string v0, "notebook"

    const-class v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/framework/InnerShareParams;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSafetyLevel()I
    .registers 3

    .prologue
    .line 194
    const-string v0, "safetyLevel"

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/framework/InnerShareParams;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getScence()I
    .registers 3

    .prologue
    .line 338
    const-string v0, "scene"

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/framework/InnerShareParams;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getShareType()I
    .registers 3

    .prologue
    .line 330
    const-string v0, "shareType"

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/framework/InnerShareParams;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getSite()Ljava/lang/String;
    .registers 3

    .prologue
    .line 290
    const-string v0, "site"

    const-class v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/framework/InnerShareParams;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSiteUrl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 298
    const-string v0, "siteUrl"

    const-class v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/framework/InnerShareParams;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getStack()Ljava/lang/String;
    .registers 3

    .prologue
    .line 154
    const-string v0, "stack"

    const-class v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/framework/InnerShareParams;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTags()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 162
    const-string v0, "tags"

    const-class v1, [Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/framework/InnerShareParams;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 3

    .prologue
    .line 110
    const-string v0, "text"

    const-class v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/framework/InnerShareParams;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 3

    .prologue
    .line 138
    const-string v0, "title"

    const-class v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/framework/InnerShareParams;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTitleUrl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 250
    const-string v0, "titleUrl"

    const-class v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/framework/InnerShareParams;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 266
    const-string v0, "url"

    const-class v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/framework/InnerShareParams;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getVenueDescription()Ljava/lang/String;
    .registers 3

    .prologue
    .line 226
    const-string v0, "venueDescription"

    const-class v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/framework/InnerShareParams;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getVenueName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 222
    const-string v0, "venueName"

    const-class v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/framework/InnerShareParams;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public isFamily()Z
    .registers 3

    .prologue
    .line 186
    const-string v0, "isFamily"

    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/framework/InnerShareParams;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isFriend()Z
    .registers 3

    .prologue
    .line 178
    const-string v0, "isFriend"

    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/framework/InnerShareParams;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isPublic()Z
    .registers 3

    .prologue
    .line 170
    const-string v0, "isPublic"

    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/framework/InnerShareParams;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isShareTencentWeibo()Z
    .registers 3

    .prologue
    .line 378
    const-string v0, "isShareTencentWeibo"

    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/framework/InnerShareParams;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 67
    iget-object v0, p0, Lcn/sharesdk/framework/InnerShareParams;->params:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    return-void
.end method

.method public setAddress(Ljava/lang/String;)V
    .registers 3
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 278
    const-string v0, "address"

    invoke-virtual {p0, v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 279
    return-void
.end method

.method public setAuthor(Ljava/lang/String;)V
    .registers 3
    .param p1, "author"    # Ljava/lang/String;

    .prologue
    .line 318
    const-string v0, "author"

    invoke-virtual {p0, v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 319
    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .registers 3
    .param p1, "comment"    # Ljava/lang/String;

    .prologue
    .line 262
    const-string v0, "comment"

    invoke-virtual {p0, v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 263
    return-void
.end method

.method public setContentType(I)V
    .registers 4
    .param p1, "contentType"    # I

    .prologue
    .line 206
    const-string v0, "contentType"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/framework/InnerShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 207
    return-void
.end method

.method public setCustomFlag([Ljava/lang/String;)V
    .registers 3
    .param p1, "customFlag"    # [Ljava/lang/String;

    .prologue
    .line 358
    const-string v0, "customFlag"

    invoke-virtual {p0, v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 359
    return-void
.end method

.method public setExecuteUrl()V
    .registers 3

    .prologue
    .line 366
    const-string v0, "executeUrl"

    const-class v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/framework/InnerShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 367
    return-void
.end method

.method public setExtInfo(Ljava/lang/String;)V
    .registers 3
    .param p1, "extInfo"    # Ljava/lang/String;

    .prologue
    .line 350
    const-string v0, "extInfo"

    invoke-virtual {p0, v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 351
    return-void
.end method

.method public setFamily(Z)V
    .registers 4
    .param p1, "isFamily"    # Z

    .prologue
    .line 190
    const-string v0, "isFamily"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/framework/InnerShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 191
    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .registers 3
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 130
    const-string v0, "filePath"

    invoke-virtual {p0, v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 131
    return-void
.end method

.method public setFriend(Z)V
    .registers 4
    .param p1, "isFriend"    # Z

    .prologue
    .line 182
    const-string v0, "isFriend"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/framework/InnerShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 183
    return-void
.end method

.method public setGroupId(Ljava/lang/String;)V
    .registers 3
    .param p1, "groupId"    # Ljava/lang/String;

    .prologue
    .line 310
    const-string v0, "groupID"

    invoke-virtual {p0, v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 311
    return-void
.end method

.method public setHidden(I)V
    .registers 4
    .param p1, "hidden"    # I

    .prologue
    .line 214
    const-string v0, "hidden"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/framework/InnerShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 215
    return-void
.end method

.method public setImageArray([Ljava/lang/String;)V
    .registers 3
    .param p1, "imagePathArray"    # [Ljava/lang/String;

    .prologue
    .line 390
    const-string v0, "imageArray"

    invoke-virtual {p0, v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 391
    return-void
.end method

.method public setImageData(Landroid/graphics/Bitmap;)V
    .registers 3
    .param p1, "imageData"    # Landroid/graphics/Bitmap;

    .prologue
    .line 326
    const-string v0, "imageData"

    invoke-virtual {p0, v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 327
    return-void
.end method

.method public setImagePath(Ljava/lang/String;)V
    .registers 3
    .param p1, "imagePath"    # Ljava/lang/String;

    .prologue
    .line 114
    const-string v0, "imagePath"

    invoke-virtual {p0, v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 115
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .registers 3
    .param p1, "imageUrl"    # Ljava/lang/String;

    .prologue
    .line 122
    const-string v0, "imageUrl"

    invoke-virtual {p0, v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 123
    return-void
.end method

.method public setInstallUrl()V
    .registers 3

    .prologue
    .line 374
    const-string v0, "installUrl"

    const-class v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/framework/InnerShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 375
    return-void
.end method

.method public setLatitude(F)V
    .registers 4
    .param p1, "latitude"    # F

    .prologue
    .line 238
    const-string v0, "latitude"

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/framework/InnerShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 239
    return-void
.end method

.method public setLongitude(F)V
    .registers 4
    .param p1, "longitude"    # F

    .prologue
    .line 246
    const-string v0, "longitude"

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/framework/InnerShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 247
    return-void
.end method

.method public setMusicUrl(Ljava/lang/String;)V
    .registers 3
    .param p1, "musicUrl"    # Ljava/lang/String;

    .prologue
    .line 286
    const-string v0, "musicUrl"

    invoke-virtual {p0, v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 287
    return-void
.end method

.method public setNotebook(Ljava/lang/String;)V
    .registers 3
    .param p1, "notebook"    # Ljava/lang/String;

    .prologue
    .line 150
    const-string v0, "notebook"

    invoke-virtual {p0, v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 151
    return-void
.end method

.method public setPublic(Z)V
    .registers 4
    .param p1, "isPublic"    # Z

    .prologue
    .line 174
    const-string v0, "isPublic"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/framework/InnerShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 175
    return-void
.end method

.method public setSafetyLevel(I)V
    .registers 4
    .param p1, "safetyLevel"    # I

    .prologue
    .line 198
    const-string v0, "safetyLevel"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/framework/InnerShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 199
    return-void
.end method

.method public setScence(I)V
    .registers 4
    .param p1, "scence"    # I

    .prologue
    .line 342
    const-string v0, "scene"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/framework/InnerShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 343
    return-void
.end method

.method public setShareTencentWeibo(Z)V
    .registers 4
    .param p1, "isShareTencentWeibo"    # Z

    .prologue
    .line 382
    const-string v0, "isShareTencentWeibo"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/framework/InnerShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 383
    return-void
.end method

.method public setShareType(I)V
    .registers 4
    .param p1, "shareType"    # I

    .prologue
    .line 334
    const-string v0, "shareType"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/framework/InnerShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 335
    return-void
.end method

.method public setSite(Ljava/lang/String;)V
    .registers 3
    .param p1, "site"    # Ljava/lang/String;

    .prologue
    .line 294
    const-string v0, "site"

    invoke-virtual {p0, v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 295
    return-void
.end method

.method public setSiteUrl(Ljava/lang/String;)V
    .registers 3
    .param p1, "siteUrl"    # Ljava/lang/String;

    .prologue
    .line 302
    const-string v0, "siteUrl"

    invoke-virtual {p0, v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 303
    return-void
.end method

.method public setStack(Ljava/lang/String;)V
    .registers 3
    .param p1, "stack"    # Ljava/lang/String;

    .prologue
    .line 158
    const-string v0, "stack"

    invoke-virtual {p0, v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 159
    return-void
.end method

.method public setTags([Ljava/lang/String;)V
    .registers 3
    .param p1, "tags"    # [Ljava/lang/String;

    .prologue
    .line 166
    const-string v0, "tags"

    invoke-virtual {p0, v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 167
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 106
    const-string v0, "text"

    invoke-virtual {p0, v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 107
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 3
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 142
    const-string v0, "title"

    invoke-virtual {p0, v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 143
    return-void
.end method

.method public setTitleUrl(Ljava/lang/String;)V
    .registers 3
    .param p1, "titleUrl"    # Ljava/lang/String;

    .prologue
    .line 254
    const-string v0, "titleUrl"

    invoke-virtual {p0, v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 255
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .registers 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 270
    const-string v0, "url"

    invoke-virtual {p0, v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 271
    return-void
.end method

.method public setVenueDescription(Ljava/lang/String;)V
    .registers 3
    .param p1, "venueDescription"    # Ljava/lang/String;

    .prologue
    .line 230
    const-string v0, "venueDescription"

    invoke-virtual {p0, v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 231
    return-void
.end method

.method public setVenueName(Ljava/lang/String;)V
    .registers 3
    .param p1, "venueName"    # Ljava/lang/String;

    .prologue
    .line 218
    const-string v0, "venueName"

    invoke-virtual {p0, v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 219
    return-void
.end method

.method public toMap()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcn/sharesdk/framework/InnerShareParams;->params:Ljava/util/HashMap;

    if-nez v0, :cond_a

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcn/sharesdk/framework/InnerShareParams;->params:Ljava/util/HashMap;

    goto :goto_9
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 98
    :try_start_0
    new-instance v0, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v0}, Lcom/mob/tools/utils/Hashon;-><init>()V

    iget-object v1, p0, Lcn/sharesdk/framework/InnerShareParams;->params:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_a} :catch_c

    move-result-object v0

    .line 102
    :goto_b
    return-object v0

    .line 99
    :catch_c
    move-exception v0

    .line 100
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 102
    const/4 v0, 0x0

    goto :goto_b
.end method
