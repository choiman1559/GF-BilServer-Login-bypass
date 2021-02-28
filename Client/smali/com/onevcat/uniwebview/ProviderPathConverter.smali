.class Lcom/onevcat/uniwebview/ProviderPathConverter;
.super Ljava/lang/Object;
.source "ProviderPathConverter.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 98
    const/4 v8, 0x0

    .line 99
    .local v8, "cursor":Landroid/database/Cursor;
    const-string v6, "_data"

    .line 100
    .local v6, "column":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 103
    .local v2, "projection":[Ljava/lang/String;
    :try_start_c
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 105
    if-eqz v8, :cond_30

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 106
    const-string v0, "_data"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 107
    .local v7, "column_index":I
    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_37

    move-result-object v0

    .line 110
    if-eqz v8, :cond_2f

    .line 111
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 114
    .end local v7    # "column_index":I
    :cond_2f
    :goto_2f
    return-object v0

    .line 110
    :cond_30
    if-eqz v8, :cond_35

    .line 111
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_35
    move-object v0, v9

    .line 114
    goto :goto_2f

    .line 110
    :catchall_37
    move-exception v0

    if-eqz v8, :cond_3d

    .line 111
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 113
    :cond_3d
    throw v0
.end method

.method static getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v8, 0x0

    .line 33
    invoke-static {p0, p1}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v9

    if-eqz v9, :cond_bf

    .line 34
    invoke-static {p1}, Lcom/onevcat/uniwebview/ProviderPathConverter;->isExternalStorageDocument(Landroid/net/Uri;)Z

    move-result v9

    if-eqz v9, :cond_41

    .line 35
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 36
    .local v1, "docId":Ljava/lang/String;
    const-string v9, ":"

    invoke-virtual {v1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 37
    .local v6, "split":[Ljava/lang/String;
    aget-object v7, v6, v10

    .line 39
    .local v7, "type":Ljava/lang/String;
    const-string v9, "primary"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_40

    .line 40
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v6, v11

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 82
    .end local v1    # "docId":Ljava/lang/String;
    .end local v6    # "split":[Ljava/lang/String;
    .end local v7    # "type":Ljava/lang/String;
    :cond_40
    :goto_40
    return-object v8

    .line 42
    :cond_41
    invoke-static {p1}, Lcom/onevcat/uniwebview/ProviderPathConverter;->isDownloadsDocument(Landroid/net/Uri;)Z

    move-result v9

    if-eqz v9, :cond_7d

    .line 43
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 44
    .local v3, "id":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_40

    .line 45
    const-string v9, "raw:"

    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_62

    .line 46
    const-string v8, "raw:"

    const-string v9, ""

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_40

    .line 49
    :cond_62
    :try_start_62
    sget-object v9, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    .line 50
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 49
    invoke-static {v9, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 51
    .local v0, "contentUri":Landroid/net/Uri;
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {p0, v0, v9, v10}, Lcom/onevcat/uniwebview/ProviderPathConverter;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    :try_end_79
    .catch Ljava/lang/NumberFormatException; {:try_start_62 .. :try_end_79} :catch_7b

    move-result-object v8

    goto :goto_40

    .line 52
    .end local v0    # "contentUri":Landroid/net/Uri;
    :catch_7b
    move-exception v2

    .line 53
    .local v2, "e":Ljava/lang/NumberFormatException;
    goto :goto_40

    .line 58
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "id":Ljava/lang/String;
    :cond_7d
    invoke-static {p1}, Lcom/onevcat/uniwebview/ProviderPathConverter;->isMediaDocument(Landroid/net/Uri;)Z

    move-result v9

    if-eqz v9, :cond_40

    .line 59
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 60
    .restart local v1    # "docId":Ljava/lang/String;
    const-string v8, ":"

    invoke-virtual {v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 61
    .restart local v6    # "split":[Ljava/lang/String;
    aget-object v7, v6, v10

    .line 63
    .restart local v7    # "type":Ljava/lang/String;
    const/4 v0, 0x0

    .line 64
    .restart local v0    # "contentUri":Landroid/net/Uri;
    const-string v8, "image"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a9

    .line 65
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 72
    :cond_9a
    :goto_9a
    const-string v4, "_id=?"

    .line 73
    .local v4, "selection":Ljava/lang/String;
    new-array v5, v11, [Ljava/lang/String;

    aget-object v8, v6, v11

    aput-object v8, v5, v10

    .line 74
    .local v5, "selectionArgs":[Ljava/lang/String;
    const-string v8, "_id=?"

    invoke-static {p0, v0, v8, v5}, Lcom/onevcat/uniwebview/ProviderPathConverter;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_40

    .line 66
    .end local v4    # "selection":Ljava/lang/String;
    .end local v5    # "selectionArgs":[Ljava/lang/String;
    :cond_a9
    const-string v8, "video"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b4

    .line 67
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_9a

    .line 68
    :cond_b4
    const-string v8, "audio"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9a

    .line 69
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_9a

    .line 76
    .end local v0    # "contentUri":Landroid/net/Uri;
    .end local v1    # "docId":Ljava/lang/String;
    .end local v6    # "split":[Ljava/lang/String;
    .end local v7    # "type":Ljava/lang/String;
    :cond_bf
    const-string v9, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d1

    .line 77
    invoke-static {p0, p1, v8, v8}, Lcom/onevcat/uniwebview/ProviderPathConverter;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_40

    .line 78
    :cond_d1
    const-string v9, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_40

    .line 79
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_40
.end method

.method private static isDownloadsDocument(Landroid/net/Uri;)Z
    .registers 3
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 130
    const-string v0, "com.android.providers.downloads.documents"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isExternalStorageDocument(Landroid/net/Uri;)Z
    .registers 3
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 122
    const-string v0, "com.android.externalstorage.documents"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isMediaDocument(Landroid/net/Uri;)Z
    .registers 3
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 138
    const-string v0, "com.android.providers.media.documents"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
