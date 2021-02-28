.class public Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;
.super Lcom/mob/tools/gui/PullToRequestListAdapter;
.source "FriendAdapter.java"

# interfaces
.implements Lcn/sharesdk/framework/PlatformActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$FollowersResult;,
        Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;
    }
.end annotation


# instance fields
.field private activity:Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;

.field private curPage:I

.field private follows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;",
            ">;"
        }
    .end annotation
.end field

.field private hasNext:Z

.field private llHeader:Lcn/sharesdk/onekeyshare/themes/classic/PRTHeader;

.field private map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final pageCount:I

.field private platform:Lcn/sharesdk/framework/Platform;

.field private ratio:F


# direct methods
.method public constructor <init>(Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;Lcom/mob/tools/gui/PullToRequestView;)V
    .registers 6
    .param p1, "activity"    # Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;
    .param p2, "view"    # Lcom/mob/tools/gui/PullToRequestView;

    .prologue
    .line 47
    invoke-direct {p0, p2}, Lcom/mob/tools/gui/PullToRequestListAdapter;-><init>(Lcom/mob/tools/gui/PullToRequestView;)V

    .line 34
    const/16 v0, 0xf

    iput v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->pageCount:I

    .line 48
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->activity:Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->curPage:I

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->hasNext:Z

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->map:Ljava/util/HashMap;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->follows:Ljava/util/ArrayList;

    .line 55
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const v2, -0x151516

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 56
    return-void
.end method

.method static synthetic access$1(Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;)I
    .registers 2

    .prologue
    .line 36
    iget v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->curPage:I

    return v0
.end method

.method static synthetic access$2(Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->follows:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3(Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;)Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->activity:Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;

    return-object v0
.end method

.method private next()V
    .registers 5

    .prologue
    .line 73
    iget-boolean v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->hasNext:Z

    if-eqz v0, :cond_10

    .line 74
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->platform:Lcn/sharesdk/framework/Platform;

    const/16 v1, 0xf

    iget v2, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->curPage:I

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcn/sharesdk/framework/Platform;->listFriend(IILjava/lang/String;)V

    .line 76
    :cond_10
    return-void
.end method

.method private parseFollowers(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$FollowersResult;
    .registers 26
    .param p1, "platform"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$FollowersResult;"
        }
    .end annotation

    .prologue
    .line 110
    .local p2, "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p3, "uidMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    if-eqz p2, :cond_8

    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->size()I

    move-result v19

    if-gtz v19, :cond_a

    .line 111
    :cond_8
    const/4 v13, 0x0

    .line 204
    :goto_9
    return-object v13

    .line 114
    :cond_a
    const/4 v7, 0x0

    .line 115
    .local v7, "hasNext":Z
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local v4, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;>;"
    const-string v19, "SinaWeibo"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_db

    .line 119
    const-string v19, "users"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/ArrayList;

    .line 120
    .local v18, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_2c
    :goto_2c
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-nez v20, :cond_5b

    .line 133
    const-string v19, "total_number"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    invoke-virtual/range {p3 .. p3}, Ljava/util/HashMap;->size()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_d8

    const/4 v7, 0x1

    .line 201
    .end local v18    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_4d
    :goto_4d
    new-instance v13, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$FollowersResult;

    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-direct {v13, v0}, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$FollowersResult;-><init>(Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$FollowersResult;)V

    .line 202
    .local v13, "ret":Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$FollowersResult;
    iput-object v4, v13, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$FollowersResult;->list:Ljava/util/ArrayList;

    .line 203
    iput-boolean v7, v13, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$FollowersResult;->hasNextPage:Z

    goto :goto_9

    .line 120
    .end local v13    # "ret":Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$FollowersResult;
    .restart local v18    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_5b
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/HashMap;

    .line 121
    .local v17, "user":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v20, "id"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 122
    .local v16, "uid":Ljava/lang/String;
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_2c

    .line 123
    new-instance v6, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;

    invoke-direct {v6}, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;-><init>()V

    .line 124
    .local v6, "following":Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;
    move-object/from16 v0, v16

    iput-object v0, v6, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;->uid:Ljava/lang/String;

    .line 125
    const-string v20, "name"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v6, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;->screenName:Ljava/lang/String;

    .line 126
    const-string v20, "description"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v6, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;->description:Ljava/lang/String;

    .line 127
    const-string v20, "profile_image_url"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v6, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;->icon:Ljava/lang/String;

    .line 128
    iget-object v0, v6, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;->screenName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iput-object v0, v6, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;->atName:Ljava/lang/String;

    .line 129
    iget-object v0, v6, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;->uid:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2c

    .line 133
    .end local v6    # "following":Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;
    .end local v16    # "uid":Ljava/lang/String;
    .end local v17    # "user":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_d8
    const/4 v7, 0x0

    goto/16 :goto_4d

    .line 134
    .end local v18    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_db
    const-string v19, "TencentWeibo"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1b1

    .line 135
    const-string v19, "hasnext"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    if-nez v19, :cond_1ae

    const/4 v7, 0x1

    .line 138
    :goto_fa
    const-string v19, "info"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    .line 139
    .local v9, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_10a
    :goto_10a
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_4d

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    .line 140
    .local v8, "info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v20, "name"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 141
    .restart local v16    # "uid":Ljava/lang/String;
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_10a

    .line 142
    new-instance v6, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;

    invoke-direct {v6}, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;-><init>()V

    .line 143
    .restart local v6    # "following":Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;
    const-string v20, "nick"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v6, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;->screenName:Ljava/lang/String;

    .line 144
    move-object/from16 v0, v16

    iput-object v0, v6, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;->uid:Ljava/lang/String;

    .line 145
    move-object/from16 v0, v16

    iput-object v0, v6, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;->atName:Ljava/lang/String;

    .line 147
    const-string v20, "tweet"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    .line 148
    .local v15, "tweets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_173

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/HashMap;

    .line 149
    .local v14, "tweet":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v20, "text"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v6, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;->description:Ljava/lang/String;

    .line 152
    .end local v14    # "tweet":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_173
    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "head"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, "/100"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v6, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;->icon:Ljava/lang/String;

    .line 153
    iget-object v0, v6, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;->uid:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_10a

    .line 135
    .end local v6    # "following":Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;
    .end local v8    # "info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v9    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v15    # "tweets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v16    # "uid":Ljava/lang/String;
    :cond_1ae
    const/4 v7, 0x0

    goto/16 :goto_fa

    .line 157
    :cond_1b1
    const-string v19, "Facebook"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_279

    .line 160
    const-string v19, "data"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 161
    .local v5, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_1cd
    :goto_1cd
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-nez v20, :cond_1e9

    .line 180
    const-string v19, "paging"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/HashMap;

    .line 181
    .local v11, "paging":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v19, "next"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    .line 182
    goto/16 :goto_4d

    .line 161
    .end local v11    # "paging":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1e9
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 162
    .local v3, "d":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v20, "id"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 163
    .restart local v16    # "uid":Ljava/lang/String;
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_1cd

    .line 164
    new-instance v6, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;

    invoke-direct {v6}, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;-><init>()V

    .line 165
    .restart local v6    # "following":Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;
    move-object/from16 v0, v16

    iput-object v0, v6, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;->uid:Ljava/lang/String;

    .line 166
    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "["

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "]"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v6, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;->atName:Ljava/lang/String;

    .line 167
    const-string v20, "name"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v6, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;->screenName:Ljava/lang/String;

    .line 169
    const-string v20, "picture"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/HashMap;

    .line 170
    .local v12, "picture":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v12, :cond_261

    .line 172
    const-string v20, "data"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/HashMap;

    .line 173
    .local v10, "pData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v20, "url"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v6, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;->icon:Ljava/lang/String;

    .line 175
    .end local v10    # "pData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_261
    iget-object v0, v6, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;->uid:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1cd

    .line 182
    .end local v3    # "d":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v6    # "following":Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;
    .end local v12    # "picture":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v16    # "uid":Ljava/lang/String;
    :cond_279
    const-string v19, "Twitter"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4d

    .line 185
    const-string v19, "users"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/ArrayList;

    .line 186
    .restart local v18    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_295
    :goto_295
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_4d

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/HashMap;

    .line 187
    .restart local v17    # "user":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v20, "screen_name"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 188
    .restart local v16    # "uid":Ljava/lang/String;
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_295

    .line 189
    new-instance v6, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;

    invoke-direct {v6}, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;-><init>()V

    .line 190
    .restart local v6    # "following":Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;
    move-object/from16 v0, v16

    iput-object v0, v6, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;->uid:Ljava/lang/String;

    .line 191
    move-object/from16 v0, v16

    iput-object v0, v6, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;->atName:Ljava/lang/String;

    .line 192
    const-string v20, "name"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v6, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;->screenName:Ljava/lang/String;

    .line 193
    const-string v20, "description"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v6, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;->description:Ljava/lang/String;

    .line 194
    const-string v20, "profile_image_url"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v6, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;->icon:Ljava/lang/String;

    .line 195
    iget-object v0, v6, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;->uid:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_295
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 229
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->follows:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->follows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_5
.end method

.method public getFooterView()Landroid/view/View;
    .registers 3

    .prologue
    .line 285
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 286
    .local v0, "footerView":Landroid/widget/LinearLayout;
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 287
    return-object v0
.end method

.method public getHeaderView()Landroid/view/View;
    .registers 3

    .prologue
    .line 233
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->llHeader:Lcn/sharesdk/onekeyshare/themes/classic/PRTHeader;

    if-nez v0, :cond_f

    .line 234
    new-instance v0, Lcn/sharesdk/onekeyshare/themes/classic/PRTHeader;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/sharesdk/onekeyshare/themes/classic/PRTHeader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->llHeader:Lcn/sharesdk/onekeyshare/themes/classic/PRTHeader;

    .line 236
    :cond_f
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->llHeader:Lcn/sharesdk/onekeyshare/themes/classic/PRTHeader;

    return-object v0
.end method

.method public getItem(I)Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 221
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->follows:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->getItem(I)Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 225
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 256
    if-nez p2, :cond_e

    .line 257
    new-instance v0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListItem;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->ratio:F

    invoke-direct {v0, v1, v2}, Lcn/sharesdk/onekeyshare/themes/classic/FriendListItem;-><init>(Landroid/content/Context;F)V

    .line 258
    .local v0, "llItem":Lcn/sharesdk/onekeyshare/themes/classic/FriendListItem;
    move-object p2, v0

    .end local v0    # "llItem":Lcn/sharesdk/onekeyshare/themes/classic/FriendListItem;
    :cond_e
    move-object v0, p2

    .line 260
    check-cast v0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListItem;

    .line 261
    .restart local v0    # "llItem":Lcn/sharesdk/onekeyshare/themes/classic/FriendListItem;
    invoke-virtual {p0, p1}, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->getItem(I)Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;

    move-result-object v1

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->isFling()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/onekeyshare/themes/classic/FriendListItem;->update(Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;Z)V

    .line 263
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_27

    .line 264
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->next()V

    .line 266
    :cond_27
    return-object p2
.end method

.method public onCancel(Lcn/sharesdk/framework/Platform;I)V
    .registers 5
    .param p1, "plat"    # Lcn/sharesdk/framework/Platform;
    .param p2, "action"    # I

    .prologue
    .line 212
    const/4 v0, 0x0

    new-instance v1, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$3;

    invoke-direct {v1, p0}, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$3;-><init>(Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;)V

    invoke-static {v0, v1}, Lcom/mob/tools/utils/UIHandler;->sendEmptyMessage(ILandroid/os/Handler$Callback;)Z

    .line 218
    return-void
.end method

.method public onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    .registers 8
    .param p1, "plat"    # Lcn/sharesdk/framework/Platform;
    .param p2, "action"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/sharesdk/framework/Platform;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p3, "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->platform:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v2}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->map:Ljava/util/HashMap;

    invoke-direct {p0, v2, p3, v3}, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->parseFollowers(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$FollowersResult;

    move-result-object v0

    .line 80
    .local v0, "followersResult":Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$FollowersResult;
    if-nez v0, :cond_18

    .line 81
    const/4 v2, 0x0

    new-instance v3, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$1;

    invoke-direct {v3, p0}, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$1;-><init>(Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;)V

    invoke-static {v2, v3}, Lcom/mob/tools/utils/UIHandler;->sendEmptyMessage(ILandroid/os/Handler$Callback;)Z

    .line 107
    :cond_17
    :goto_17
    return-void

    .line 90
    :cond_18
    iget-boolean v2, v0, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$FollowersResult;->hasNextPage:Z

    iput-boolean v2, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->hasNext:Z

    .line 91
    iget-object v2, v0, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$FollowersResult;->list:Ljava/util/ArrayList;

    if-eqz v2, :cond_17

    iget-object v2, v0, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$FollowersResult;->list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_17

    .line 92
    iget v2, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->curPage:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->curPage:I

    .line 93
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 94
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 95
    iget-object v2, v0, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$FollowersResult;->list:Ljava/util/ArrayList;

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 96
    new-instance v2, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$2;

    invoke-direct {v2, p0, v0}, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$2;-><init>(Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$FollowersResult;)V

    invoke-static {v1, v2}, Lcom/mob/tools/utils/UIHandler;->sendMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Z

    goto :goto_17
.end method

.method public onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    .registers 4
    .param p1, "plat"    # Lcn/sharesdk/framework/Platform;
    .param p2, "action"    # I
    .param p3, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 208
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 209
    return-void
.end method

.method public onPullDown(I)V
    .registers 3
    .param p1, "percent"    # I

    .prologue
    .line 240
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->llHeader:Lcn/sharesdk/onekeyshare/themes/classic/PRTHeader;

    invoke-virtual {v0, p1}, Lcn/sharesdk/onekeyshare/themes/classic/PRTHeader;->onPullDown(I)V

    .line 241
    return-void
.end method

.method public onRefresh()V
    .registers 2

    .prologue
    .line 244
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->llHeader:Lcn/sharesdk/onekeyshare/themes/classic/PRTHeader;

    invoke-virtual {v0}, Lcn/sharesdk/onekeyshare/themes/classic/PRTHeader;->onRequest()V

    .line 245
    const/4 v0, -0x1

    iput v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->curPage:I

    .line 246
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->hasNext:Z

    .line 247
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 248
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->next()V

    .line 249
    return-void
.end method

.method public onReversed()V
    .registers 2

    .prologue
    .line 252
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->llHeader:Lcn/sharesdk/onekeyshare/themes/classic/PRTHeader;

    invoke-virtual {v0}, Lcn/sharesdk/onekeyshare/themes/classic/PRTHeader;->reverse()V

    .line 253
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 3

    .prologue
    .line 64
    .local p1, "listener":Landroid/widget/AdapterView$OnItemClickListener;, "Landroid/widget/AdapterView$OnItemClickListener;"
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 65
    return-void
.end method

.method public setPlatform(Lcn/sharesdk/framework/Platform;)V
    .registers 2
    .param p1, "platform"    # Lcn/sharesdk/framework/Platform;

    .prologue
    .line 68
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->platform:Lcn/sharesdk/framework/Platform;

    .line 69
    invoke-virtual {p1, p0}, Lcn/sharesdk/framework/Platform;->setPlatformActionListener(Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 70
    return-void
.end method

.method public setRatio(F)V
    .registers 5
    .param p1, "ratio"    # F

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 59
    iput p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->ratio:F

    .line 60
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->getListView()Landroid/widget/ListView;

    move-result-object v1

    cmpg-float v2, p1, v0

    if-gez v2, :cond_d

    move p1, v0

    .end local p1    # "ratio":F
    :cond_d
    float-to-int v0, p1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 61
    return-void
.end method
